# SCRIP's debug adapter for the Sublime package Debugger (daveleroy): scrip --dap on standard input and output.
# Written 2026-11-21 by the chairman on Lon's word. It lives in a package of its own so an update of Debugger never removes it;
# Debugger registers an adapter the moment its class is made (its AdapterRegistery metaclass), so nothing of Debugger is edited.
# A launch configuration needs one thing, the program: {"name": "SCRIP", "type": "scrip", "request": "launch", "program": "${file}"}
from __future__ import annotations
import os
import sublime

SCRIP = '/home/install/bin/scrip'
LAUNCH = {'name': 'SCRIP: run the current file', 'type': 'scrip', 'request': 'launch', 'program': '${file}'}


def plugin_loaded():
	try:
		from Debugger.modules import dap
	except Exception as error:
		print('SCRIP debug adapter: the Debugger package did not import, nothing registered:', error)
		return

	dap.Adapter.registered[:] = [a for a in dap.Adapter.registered if 'scrip' not in a.types]

	class Scrip(dap.Adapter):
		type = 'scrip'
		docs = 'file:///home/corpus/editor_configs/sublime/README.md'

		async def start(self, console, configuration):
			scrip = sublime.load_settings('SCRIP.sublime-settings').get('scrip_path', SCRIP)
			program = configuration.get('program') or ''
			return dap.StdioTransport([scrip, '--dap'], cwd=os.path.dirname(program) or None)

		@property
		def installed_version(self):
			return '1.0.0' if os.access(sublime.load_settings('SCRIP.sublime-settings').get('scrip_path', SCRIP), os.X_OK) else None

		@property
		def configuration_snippets(self):
			return [{'label': 'SCRIP: run the current file', 'description': 'Run a SNOBOL4, Snocone, Rebus, Icon, Prolog, Pascal, Raku or SCRIPtix file under scrip --dap', 'body': dict(LAUNCH)}]

		@property
		def configuration_schema(self):
			return {'launch': {'properties': {'program': {'type': 'string', 'description': 'The program or SCRIPtix document scrip runs', 'default': '${file}'}}, 'required': ['program']}}

		async def configurations(self, variables):
			return [dap.Configuration.from_json(dict(LAUNCH), -1)]

	try:
		from Debugger.modules.dap.schema import generate_lsp_json_schema
		generate_lsp_json_schema()
	except Exception as error:
		print('SCRIP debug adapter: registered; the configuration schema was not regenerated:', error)
