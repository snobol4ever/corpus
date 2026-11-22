#!/usr/bin/env python3
import json, os, sys, zipfile
from xml.sax.saxutils import escape, quoteattr

HERE = os.path.dirname(os.path.abspath(__file__))
STAMP = (2026, 11, 21, 0, 0, 0)
TOP = ['package.json', 'extension.js', 'lsp_client.js']
TREES = ['language-configuration', 'syntaxes', 'node_modules']


def types(rels):
    extless = [r for r in rels if not os.path.splitext(r)[1]]
    return ('<?xml version="1.0" encoding="utf-8"?>\n'
            '<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">'
            '<Default Extension=".json" ContentType="application/json"/>'
            '<Default Extension=".js" ContentType="application/javascript"/>'
            '<Default Extension=".md" ContentType="text/markdown"/>'
            '<Default Extension=".txt" ContentType="text/plain"/>'
            '<Default Extension=".sh" ContentType="text/x-shellscript"/>'
            '<Default Extension=".vsixmanifest" ContentType="text/xml"/>'
            + ''.join(f'<Override PartName={quoteattr("/extension/" + r.replace(os.sep, "/"))} ContentType="text/plain"/>' for r in extless)
            + '</Types>\n')


def manifest(pkg):
    engine = pkg['engines']['vscode']
    cats = ','.join(pkg.get('categories', []))
    return ('<?xml version="1.0" encoding="utf-8"?>\n'
            '<PackageManifest Version="2.0.0" xmlns="http://schemas.microsoft.com/developer/vsx-schema/2011" '
            'xmlns:d="http://schemas.microsoft.com/developer/vsx-schema-design/2011">\n'
            '  <Metadata>\n'
            f'    <Identity Language="en-US" Id={quoteattr(pkg["name"])} Version={quoteattr(pkg["version"])} Publisher={quoteattr(pkg["publisher"])}/>\n'
            f'    <DisplayName>{escape(pkg.get("displayName", pkg["name"]))}</DisplayName>\n'
            f'    <Description xml:space="preserve">{escape(pkg.get("description", ""))}</Description>\n'
            f'    <Categories>{escape(cats)}</Categories>\n'
            '    <GalleryFlags>Public</GalleryFlags>\n'
            '    <Properties>\n'
            f'      <Property Id="Microsoft.VisualStudio.Code.Engine" Value={quoteattr(engine)}/>\n'
            '      <Property Id="Microsoft.VisualStudio.Code.ExtensionDependencies" Value=""/>\n'
            '      <Property Id="Microsoft.VisualStudio.Code.ExtensionPack" Value=""/>\n'
            '    </Properties>\n'
            '  </Metadata>\n'
            '  <Installation><InstallationTarget Id="Microsoft.VisualStudio.Code"/></Installation>\n'
            '  <Dependencies/>\n'
            '  <Assets><Asset Type="Microsoft.VisualStudio.Code.Manifest" Path="extension/package.json" Addressable="true"/></Assets>\n'
            '</PackageManifest>\n')


def files():
    out = [f for f in TOP if os.path.isfile(os.path.join(HERE, f))]
    for t in TREES:
        for root, dirs, names in os.walk(os.path.join(HERE, t)):
            dirs.sort()
            for n in sorted(names):
                out.append(os.path.relpath(os.path.join(root, n), HERE))
    return out


def put(z, name, data):
    zi = zipfile.ZipInfo(name, STAMP)
    zi.compress_type = zipfile.ZIP_DEFLATED
    zi.external_attr = (0o755 if name.endswith('.sh') else 0o644) << 16
    z.writestr(zi, data)


def main(argv):
    out_dir = argv[1] if len(argv) > 1 else os.getcwd()
    with open(os.path.join(HERE, 'package.json'), encoding='utf-8') as f:
        pkg = json.load(f)
    os.makedirs(out_dir, exist_ok=True)
    path = os.path.join(out_dir, f'{pkg["name"]}-{pkg["version"]}.vsix')
    with zipfile.ZipFile(path, 'w') as z:
        rels = files()
        put(z, '[Content_Types].xml', types(rels))
        put(z, 'extension.vsixmanifest', manifest(pkg))
        for rel in rels:
            with open(os.path.join(HERE, rel), 'rb') as f:
                put(z, 'extension/' + rel.replace(os.sep, '/'), f.read())
    print(path)
    return 0


if __name__ == '__main__':
    sys.exit(main(sys.argv))
