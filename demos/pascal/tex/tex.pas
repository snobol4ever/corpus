{4:}{9:}{:9}program TEX(Input,output);label{6:}1,9998,9999;
{:6}const{11:}memmax=30000;memmin=0;bufsize=500;errorline=72;
halferrorline=42;maxprintline=79;stacksize=200;maxinopen=6;fontmax=75;
fontmemsize=20000;paramsize=60;nestsize=40;maxstrings=3000;
stringvacancies=8000;poolsize=32000;savesize=600;triesize=8000;
trieopsize=500;dvibufsize=800;filenamesize=40;
poolname='TeXformats:TEX.POOL                     ';
{:11}type{18:}ASCIIcode=0..255;{:18}{25:}eightbits=0..255;
alphafile=record kind,doc,pos,last:integer;end;
bytefile=record doc,pos,last:integer;end;
embchunk=packed array[1..240]of char;embnm=packed array[1..16]of char;
{:25}{38:}poolpointer=0..poolsize;strnumber=0..maxstrings;
packedASCIIcode=0..255;{:38}{101:}scaled=integer;
nonnegativeinteger=0..2147483647;smallnumber=0..63;
{:101}{109:}glueratio=real;{:109}{113:}quarterword=0..255;
halfword=0..65535;twochoices=1..2;fourchoices=1..4;
twohalves=packed record rh:halfword;case twochoices of 1:(lh:halfword);
2:(b0:quarterword;b1:quarterword);end;
fourquarters=packed record b0:quarterword;b1:quarterword;b2:quarterword;
b3:quarterword;end;
memoryword=record case fourchoices of 1:(int:integer);2:(gr:glueratio);
3:(hh:twohalves);4:(qqqq:fourquarters);end;wordfile=file of memoryword;
{:113}{150:}glueord=0..3;
{:150}{212:}liststaterecord=record modefield:-203..203;
headfield,tailfield:halfword;pgfield,mlfield:integer;
auxfield:memoryword;end;{:212}{269:}groupcode=0..16;
{:269}{300:}instaterecord=record statefield,indexfield:quarterword;
startfield,locfield,limitfield,namefield:halfword;end;
{:300}{548:}internalfontnumber=0..fontmax;fontindex=0..fontmemsize;
{:548}{594:}dviindex=0..dvibufsize;{:594}{920:}triepointer=0..triesize;
{:920}{925:}hyphpointer=0..307;{:925}var{13:}bad:integer;
{:13}{20:}xord:array[char]of ASCIIcode;xchr:array[ASCIIcode]of char;
{:20}{26:}nameoffile:packed array[1..filenamesize]of char;
namelength:0..filenamesize;
{:26}{30:}buffer:array[0..bufsize]of ASCIIcode;first:0..bufsize;
last:0..bufsize;maxbufstack:0..bufsize;{:30}{32:}termin:alphafile;
embtext:packed array[1..220800]of char;embtotal:integer;embdocs:0..52;
embname:array[1..52]of packed array[1..16]of char;
embstart,emblen:array[1..52]of integer;
dvidata:packed array[1..20000]of eightbits;dvitotal:integer;
{:32}{39:}strpool:packed array[poolpointer]of packedASCIIcode;
strstart:array[strnumber]of poolpointer;poolptr:poolpointer;
strptr:strnumber;initpoolptr:poolpointer;initstrptr:strnumber;
{:39}{50:}poolfile:alphafile;{:50}{54:}logfile:alphafile;selector:0..21;
dig:array[0..22]of 0..15;tally:integer;termoffset:0..maxprintline;
fileoffset:0..maxprintline;trickbuf:array[0..errorline]of ASCIIcode;
trickcount:integer;firstcount:integer;{:54}{73:}interaction:0..3;
{:73}{76:}deletionsallowed:boolean;setboxallowed:boolean;history:0..3;
errorcount:-1..100;{:76}{79:}helpline:array[0..5]of strnumber;
helpptr:0..6;useerrhelp:boolean;{:79}{96:}interrupt:integer;
OKtointerrupt:boolean;{:96}{104:}aritherror:boolean;remainder:scaled;
{:104}{115:}tempptr:halfword;
{:115}{116:}mem:array[memmin..memmax]of memoryword;lomemmax:halfword;
himemmin:halfword;{:116}{117:}varused,dynused:integer;
{:117}{118:}avail:halfword;memend:halfword;{:118}{124:}rover:halfword;
{:124}{165:}{free:packed array[memmin..memmax]of boolean;
wasfree:packed array[memmin..memmax]of boolean;
wasmemend,waslomax,washimin:halfword;panicking:boolean;}
{:165}{173:}fontinshortdisplay:integer;
{:173}{181:}depththreshold:integer;breadthmax:integer;
{:181}{213:}nest:array[0..nestsize]of liststaterecord;
nestptr:0..nestsize;maxneststack:0..nestsize;curlist:liststaterecord;
shownmode:-203..203;{:213}{246:}oldsetting:0..21;
systime,sysday,sysmonth,sysyear:integer;
{:246}{253:}eqtb:array[1..6106]of memoryword;
xeqlevel:array[5263..6106]of quarterword;
{:253}{256:}hash:array[514..2880]of twohalves;hashused:halfword;
nonewcontrolsequence:boolean;cscount:integer;
{:256}{271:}savestack:array[0..savesize]of memoryword;
saveptr:0..savesize;maxsavestack:0..savesize;curlevel:quarterword;
curgroup:groupcode;curboundary:0..savesize;{:271}{286:}magset:integer;
{:286}{297:}curcmd:eightbits;curchr:halfword;curcs:halfword;
curtok:halfword;
{:297}{301:}inputstack:array[0..stacksize]of instaterecord;
inputptr:0..stacksize;maxinstack:0..stacksize;curinput:instaterecord;
{:301}{304:}inopen:0..maxinopen;openparens:0..maxinopen;
inputfile:array[1..maxinopen]of alphafile;line:integer;
linestack:array[1..maxinopen]of integer;{:304}{305:}scannerstatus:0..5;
warningindex:halfword;defref:halfword;
{:305}{308:}paramstack:array[0..paramsize]of halfword;
paramptr:0..paramsize;maxparamstack:integer;
{:308}{309:}alignstate:integer;{:309}{310:}baseptr:0..stacksize;
{:310}{333:}parloc:halfword;partoken:halfword;
{:333}{361:}forceeof:boolean;{:361}{382:}curmark:array[0..4]of halfword;
{:382}{387:}longstate:111..114;
{:387}{388:}pstack:array[0..8]of halfword;{:388}{410:}curval:integer;
curvallevel:0..5;{:410}{438:}radix:smallnumber;
{:438}{447:}curorder:glueord;
{:447}{480:}readfile:array[0..15]of alphafile;
readopen:array[0..16]of 0..2;{:480}{489:}condptr:halfword;iflimit:0..4;
curif:smallnumber;ifline:integer;{:489}{493:}skipline:integer;
{:493}{512:}curname:strnumber;curarea:strnumber;curext:strnumber;
{:512}{513:}areadelimiter:poolpointer;extdelimiter:poolpointer;
{:513}{520:}TEXformatdefault:packed array[1..20]of char;
{:520}{527:}nameinprogress:boolean;jobname:strnumber;logopened:boolean;
{:527}{532:}dvifile:bytefile;outputfilename:strnumber;logname:strnumber;
{:532}{539:}tfmfile:bytefile;
{:539}{549:}fontinfo:array[fontindex]of memoryword;fmemptr:fontindex;
fontptr:internalfontnumber;
fontcheck:array[internalfontnumber]of fourquarters;
fontsize:array[internalfontnumber]of scaled;
fontdsize:array[internalfontnumber]of scaled;
fontparams:array[internalfontnumber]of fontindex;
fontname:array[internalfontnumber]of strnumber;
fontarea:array[internalfontnumber]of strnumber;
fontbc:array[internalfontnumber]of eightbits;
fontec:array[internalfontnumber]of eightbits;
fontglue:array[internalfontnumber]of halfword;
fontused:array[internalfontnumber]of boolean;
hyphenchar:array[internalfontnumber]of integer;
skewchar:array[internalfontnumber]of integer;
bcharlabel:array[internalfontnumber]of fontindex;
fontbchar:array[internalfontnumber]of 0..256;
fontfalsebchar:array[internalfontnumber]of 0..256;
{:549}{550:}charbase:array[internalfontnumber]of integer;
widthbase:array[internalfontnumber]of integer;
heightbase:array[internalfontnumber]of integer;
depthbase:array[internalfontnumber]of integer;
italicbase:array[internalfontnumber]of integer;
ligkernbase:array[internalfontnumber]of integer;
kernbase:array[internalfontnumber]of integer;
extenbase:array[internalfontnumber]of integer;
parambase:array[internalfontnumber]of integer;
{:550}{555:}nullcharacter:fourquarters;{:555}{592:}totalpages:integer;
maxv:scaled;maxh:scaled;maxpush:integer;lastbop:integer;
deadcycles:integer;doingleaders:boolean;c,f:quarterword;
ruleht,ruledp,rulewd:scaled;g:halfword;lq,lr:integer;
{:592}{595:}dvibuf:array[dviindex]of eightbits;halfbuf:dviindex;
dvilimit:dviindex;dviptr:dviindex;dvioffset:integer;dvigone:integer;
{:595}{605:}downptr,rightptr:halfword;{:605}{616:}dvih,dviv:scaled;
curh,curv:scaled;dvif:internalfontnumber;curs:integer;
{:616}{646:}totalstretch,totalshrink:array[glueord]of scaled;
lastbadness:integer;{:646}{647:}adjusttail:halfword;
{:647}{661:}packbeginline:integer;{:661}{684:}emptyfield:twohalves;
nulldelimiter:fourquarters;{:684}{719:}curmlist:halfword;
curstyle:smallnumber;cursize:smallnumber;curmu:scaled;
mlistpenalties:boolean;{:719}{724:}curf:internalfontnumber;
curc:quarterword;curi:fourquarters;{:724}{764:}magicoffset:integer;
{:764}{770:}curalign:halfword;curspan:halfword;curloop:halfword;
alignptr:halfword;curhead,curtail:halfword;{:770}{814:}justbox:halfword;
{:814}{821:}passive:halfword;printednode:halfword;passnumber:halfword;
{:821}{823:}activewidth:array[1..6]of scaled;
curactivewidth:array[1..6]of scaled;background:array[1..6]of scaled;
breakwidth:array[1..6]of scaled;{:823}{825:}noshrinkerroryet:boolean;
{:825}{828:}curp:halfword;secondpass:boolean;finalpass:boolean;
threshold:integer;{:828}{833:}minimaldemerits:array[0..3]of integer;
minimumdemerits:integer;bestplace:array[0..3]of halfword;
bestplline:array[0..3]of halfword;{:833}{839:}discwidth:scaled;
{:839}{847:}easyline:halfword;lastspecialline:halfword;
firstwidth:scaled;secondwidth:scaled;firstindent:scaled;
secondindent:scaled;{:847}{872:}bestbet:halfword;fewestdemerits:integer;
bestline:halfword;actuallooseness:integer;linediff:integer;
{:872}{892:}hc:array[0..65]of 0..256;hn:0..64;ha,hb:halfword;
hf:internalfontnumber;hu:array[0..63]of 0..256;hyfchar:integer;
curlang,initcurlang:ASCIIcode;lhyf,rhyf,initlhyf,initrhyf:integer;
hyfbchar:halfword;{:892}{900:}hyf:array[0..64]of 0..9;initlist:halfword;
initlig:boolean;initlft:boolean;{:900}{905:}hyphenpassed:smallnumber;
{:905}{907:}curl,curr:halfword;curq:halfword;ligstack:halfword;
ligaturepresent:boolean;lfthit,rthit:boolean;
{:907}{921:}trie:array[triepointer]of twohalves;
hyfdistance:array[1..trieopsize]of smallnumber;
hyfnum:array[1..trieopsize]of smallnumber;
hyfnext:array[1..trieopsize]of quarterword;
opstart:array[ASCIIcode]of 0..trieopsize;
{:921}{926:}hyphword:array[hyphpointer]of strnumber;
hyphlist:array[hyphpointer]of halfword;hyphcount:hyphpointer;
{:926}{943:}trieophash:array[-trieopsize..trieopsize]of 0..trieopsize;
trieused:array[ASCIIcode]of quarterword;
trieoplang:array[1..trieopsize]of ASCIIcode;
trieopval:array[1..trieopsize]of quarterword;trieopptr:0..trieopsize;
{:943}{947:}triec:packed array[triepointer]of packedASCIIcode;
trieo:packed array[triepointer]of quarterword;
triel:packed array[triepointer]of triepointer;
trier:packed array[triepointer]of triepointer;trieptr:triepointer;
triehash:packed array[triepointer]of triepointer;
{:947}{950:}trietaken:packed array[1..triesize]of boolean;
triemin:array[ASCIIcode]of triepointer;triemax:triepointer;
trienotready:boolean;{:950}{971:}bestheightplusdepth:scaled;
{:971}{980:}pagetail:halfword;pagecontents:0..2;pagemaxdepth:scaled;
bestpagebreak:halfword;leastpagecost:integer;bestsize:scaled;
{:980}{982:}pagesofar:array[0..7]of scaled;lastglue:halfword;
lastpenalty:integer;lastkern:scaled;insertpenalties:integer;
{:982}{989:}outputactive:boolean;{:989}{1032:}mainf:internalfontnumber;
maini:fourquarters;mainj:fourquarters;maink:fontindex;mainp:halfword;
mains:integer;bchar:halfword;falsebchar:halfword;cancelboundary:boolean;
insdisc:boolean;{:1032}{1074:}curbox:halfword;
{:1074}{1266:}aftertoken:halfword;{:1266}{1281:}longhelpseen:boolean;
{:1281}{1299:}formatident:strnumber;{:1299}{1305:}fmtfile:wordfile;
{:1305}{1331:}readyalready:integer;
{:1331}{1342:}writefile:array[0..15]of alphafile;
writeopen:array[0..17]of boolean;{:1342}{1345:}writeloc:halfword;
{:1345}procedure initialize;var{19:}i:integer;{:19}{163:}k:integer;
{:163}{927:}z:hyphpointer;{:927}begin{8:}{21:}xchr[32]:=' ';
xchr[33]:='!';xchr[34]:='"';xchr[35]:='#';xchr[36]:='$';xchr[37]:='%';
xchr[38]:='&';xchr[39]:='''';xchr[40]:='(';xchr[41]:=')';xchr[42]:='*';
xchr[43]:='+';xchr[44]:=',';xchr[45]:='-';xchr[46]:='.';xchr[47]:='/';
xchr[48]:='0';xchr[49]:='1';xchr[50]:='2';xchr[51]:='3';xchr[52]:='4';
xchr[53]:='5';xchr[54]:='6';xchr[55]:='7';xchr[56]:='8';xchr[57]:='9';
xchr[58]:=':';xchr[59]:=';';xchr[60]:='<';xchr[61]:='=';xchr[62]:='>';
xchr[63]:='?';xchr[64]:='@';xchr[65]:='A';xchr[66]:='B';xchr[67]:='C';
xchr[68]:='D';xchr[69]:='E';xchr[70]:='F';xchr[71]:='G';xchr[72]:='H';
xchr[73]:='I';xchr[74]:='J';xchr[75]:='K';xchr[76]:='L';xchr[77]:='M';
xchr[78]:='N';xchr[79]:='O';xchr[80]:='P';xchr[81]:='Q';xchr[82]:='R';
xchr[83]:='S';xchr[84]:='T';xchr[85]:='U';xchr[86]:='V';xchr[87]:='W';
xchr[88]:='X';xchr[89]:='Y';xchr[90]:='Z';xchr[91]:='[';xchr[92]:='\';
xchr[93]:=']';xchr[94]:='^';xchr[95]:='_';xchr[96]:='`';xchr[97]:='a';
xchr[98]:='b';xchr[99]:='c';xchr[100]:='d';xchr[101]:='e';
xchr[102]:='f';xchr[103]:='g';xchr[104]:='h';xchr[105]:='i';
xchr[106]:='j';xchr[107]:='k';xchr[108]:='l';xchr[109]:='m';
xchr[110]:='n';xchr[111]:='o';xchr[112]:='p';xchr[113]:='q';
xchr[114]:='r';xchr[115]:='s';xchr[116]:='t';xchr[117]:='u';
xchr[118]:='v';xchr[119]:='w';xchr[120]:='x';xchr[121]:='y';
xchr[122]:='z';xchr[123]:='{';xchr[124]:='|';xchr[125]:='}';
xchr[126]:='~';{:21}{23:}for i:=0 to 31 do xchr[i]:=' ';
for i:=127 to 255 do xchr[i]:=' ';
{:23}{24:}for i:=0 to 255 do xord[chr(i)]:=127;
for i:=128 to 255 do xord[xchr[i]]:=i;
for i:=0 to 126 do xord[xchr[i]]:=i;{:24}{74:}interaction:=3;
{:74}{77:}deletionsallowed:=true;setboxallowed:=true;errorcount:=0;
{:77}{80:}helpptr:=0;useerrhelp:=false;{:80}{97:}interrupt:=0;
OKtointerrupt:=true;{:97}{166:}{wasmemend:=memmin;waslomax:=memmin;
washimin:=memmax;panicking:=false;}{:166}{215:}nestptr:=0;
maxneststack:=0;curlist.modefield:=1;curlist.headfield:=29999;
curlist.tailfield:=29999;curlist.auxfield.int:=-65536000;
curlist.mlfield:=0;curlist.pgfield:=0;shownmode:=0;
{991:}pagecontents:=0;pagetail:=29998;mem[29998].hh.rh:=0;
lastglue:=65535;lastpenalty:=0;lastkern:=0;pagesofar[7]:=0;
pagemaxdepth:=0{:991};{:215}{254:}for k:=5263 to 6106 do xeqlevel[k]:=1;
{:254}{257:}nonewcontrolsequence:=true;hash[514].lh:=0;hash[514].rh:=0;
for k:=515 to 2880 do hash[k]:=hash[514];{:257}{272:}saveptr:=0;
curlevel:=1;curgroup:=0;curboundary:=0;maxsavestack:=0;
{:272}{287:}magset:=0;{:287}{383:}curmark[0]:=0;curmark[1]:=0;
curmark[2]:=0;curmark[3]:=0;curmark[4]:=0;{:383}{439:}curval:=0;
curvallevel:=0;radix:=0;curorder:=0;
{:439}{481:}for k:=0 to 16 do readopen[k]:=2;{:481}{490:}condptr:=0;
iflimit:=0;curif:=0;ifline:=0;
{:490}{521:}TEXformatdefault:='TeXformats:plain.fmt';
{:521}{551:}for k:=0 to fontmax do fontused[k]:=false;
{:551}{556:}nullcharacter.b0:=0;nullcharacter.b1:=0;nullcharacter.b2:=0;
nullcharacter.b3:=0;{:556}{593:}totalpages:=0;maxv:=0;maxh:=0;
maxpush:=0;lastbop:=-1;doingleaders:=false;deadcycles:=0;curs:=-1;
{:593}{596:}halfbuf:=dvibufsize div 2;dvilimit:=dvibufsize;dviptr:=0;
dvioffset:=0;dvigone:=0;{:596}{606:}downptr:=0;rightptr:=0;
{:606}{648:}adjusttail:=0;lastbadness:=0;{:648}{662:}packbeginline:=0;
{:662}{685:}emptyfield.rh:=0;emptyfield.lh:=0;nulldelimiter.b0:=0;
nulldelimiter.b1:=0;nulldelimiter.b2:=0;nulldelimiter.b3:=0;
{:685}{771:}alignptr:=0;curalign:=0;curspan:=0;curloop:=0;curhead:=0;
curtail:=0;{:771}{928:}for z:=0 to 307 do begin hyphword[z]:=0;
hyphlist[z]:=0;end;hyphcount:=0;{:928}{990:}outputactive:=false;
insertpenalties:=0;{:990}{1033:}ligaturepresent:=false;
cancelboundary:=false;lfthit:=false;rthit:=false;insdisc:=false;
{:1033}{1267:}aftertoken:=0;{:1267}{1282:}longhelpseen:=false;
{:1282}{1300:}formatident:=0;
{:1300}{1343:}for k:=0 to 17 do writeopen[k]:=false;
{:1343}{164:}for k:=1 to 19 do mem[k].int:=0;k:=0;
while k<=19 do begin mem[k].hh.rh:=1;mem[k].hh.b0:=0;mem[k].hh.b1:=0;
k:=k+4;end;mem[6].int:=65536;mem[4].hh.b0:=1;mem[10].int:=65536;
mem[8].hh.b0:=2;mem[14].int:=65536;mem[12].hh.b0:=1;mem[15].int:=65536;
mem[12].hh.b1:=1;mem[18].int:=-65536;mem[16].hh.b0:=1;rover:=20;
mem[rover].hh.rh:=65535;mem[rover].hh.lh:=1000;
mem[rover+1].hh.lh:=rover;mem[rover+1].hh.rh:=rover;
lomemmax:=rover+1000;mem[lomemmax].hh.rh:=0;mem[lomemmax].hh.lh:=0;
for k:=29987 to 30000 do mem[k]:=mem[lomemmax];
{790:}mem[29990].hh.lh:=6714;{:790}{797:}mem[29991].hh.rh:=256;
mem[29991].hh.lh:=0;{:797}{820:}mem[29993].hh.b0:=1;
mem[29994].hh.lh:=65535;mem[29993].hh.b1:=0;
{:820}{981:}mem[30000].hh.b1:=255;mem[30000].hh.b0:=1;
mem[30000].hh.rh:=30000;{:981}{988:}mem[29998].hh.b0:=10;
mem[29998].hh.b1:=0;{:988};avail:=0;memend:=30000;himemmin:=29987;
varused:=20;dynused:=14;{:164}{222:}eqtb[2881].hh.b0:=101;
eqtb[2881].hh.rh:=0;eqtb[2881].hh.b1:=0;
for k:=1 to 2880 do eqtb[k]:=eqtb[2881];{:222}{228:}eqtb[2882].hh.rh:=0;
eqtb[2882].hh.b1:=1;eqtb[2882].hh.b0:=117;
for k:=2883 to 3411 do eqtb[k]:=eqtb[2882];
mem[0].hh.rh:=mem[0].hh.rh+530;{:228}{232:}eqtb[3412].hh.rh:=0;
eqtb[3412].hh.b0:=118;eqtb[3412].hh.b1:=1;
for k:=3413 to 3677 do eqtb[k]:=eqtb[2881];eqtb[3678].hh.rh:=0;
eqtb[3678].hh.b0:=119;eqtb[3678].hh.b1:=1;
for k:=3679 to 3933 do eqtb[k]:=eqtb[3678];eqtb[3934].hh.rh:=0;
eqtb[3934].hh.b0:=120;eqtb[3934].hh.b1:=1;
for k:=3935 to 3982 do eqtb[k]:=eqtb[3934];eqtb[3983].hh.rh:=0;
eqtb[3983].hh.b0:=120;eqtb[3983].hh.b1:=1;
for k:=3984 to 5262 do eqtb[k]:=eqtb[3983];
for k:=0 to 255 do begin eqtb[3983+k].hh.rh:=12;eqtb[5007+k].hh.rh:=k+0;
eqtb[4751+k].hh.rh:=1000;end;eqtb[3996].hh.rh:=5;eqtb[4015].hh.rh:=10;
eqtb[4075].hh.rh:=0;eqtb[4020].hh.rh:=14;eqtb[4110].hh.rh:=15;
eqtb[3983].hh.rh:=9;for k:=48 to 57 do eqtb[5007+k].hh.rh:=k+28672;
for k:=65 to 90 do begin eqtb[3983+k].hh.rh:=11;
eqtb[3983+k+32].hh.rh:=11;eqtb[5007+k].hh.rh:=k+28928;
eqtb[5007+k+32].hh.rh:=k+28960;eqtb[4239+k].hh.rh:=k+32;
eqtb[4239+k+32].hh.rh:=k+32;eqtb[4495+k].hh.rh:=k;
eqtb[4495+k+32].hh.rh:=k;eqtb[4751+k].hh.rh:=999;end;
{:232}{240:}for k:=5263 to 5573 do eqtb[k].int:=0;eqtb[5280].int:=1000;
eqtb[5264].int:=10000;eqtb[5304].int:=1;eqtb[5303].int:=25;
eqtb[5308].int:=92;eqtb[5311].int:=13;
for k:=0 to 255 do eqtb[5574+k].int:=-1;eqtb[5620].int:=0;
{:240}{250:}for k:=5830 to 6106 do eqtb[k].int:=0;
{:250}{258:}hashused:=2614;cscount:=0;eqtb[2623].hh.b0:=116;
hash[2623].rh:=502;{:258}{552:}fontptr:=0;fmemptr:=7;fontname[0]:=801;
fontarea[0]:=338;hyphenchar[0]:=45;skewchar[0]:=-1;bcharlabel[0]:=0;
fontbchar[0]:=256;fontfalsebchar[0]:=256;fontbc[0]:=1;fontec[0]:=0;
fontsize[0]:=0;fontdsize[0]:=0;charbase[0]:=0;widthbase[0]:=0;
heightbase[0]:=0;depthbase[0]:=0;italicbase[0]:=0;ligkernbase[0]:=0;
kernbase[0]:=0;extenbase[0]:=0;fontglue[0]:=0;fontparams[0]:=7;
parambase[0]:=-1;for k:=0 to 6 do fontinfo[k].int:=0;
{:552}{946:}for k:=-trieopsize to trieopsize do trieophash[k]:=0;
for k:=0 to 255 do trieused[k]:=0;trieopptr:=0;
{:946}{951:}trienotready:=true;triel[0]:=0;triec[0]:=0;trieptr:=0;
{:951}{1216:}hash[2614].rh:=1191;{:1216}{1301:}formatident:=1258;
{:1301}{1369:}hash[2622].rh:=1297;eqtb[2622].hh.b1:=1;
eqtb[2622].hh.b0:=113;eqtb[2622].hh.rh:=0;{:1369}{:8}end;
{57:}procedure println;begin begin if ((selector>=16)and(selector<=21)) then case selector of 19:begin writeln(output);;
termoffset:=0;fileoffset:=0;end;18:begin;fileoffset:=0;end;
17:begin writeln(output);termoffset:=0;end;16,20,21: end end;end;
{:57}{58:}procedure printchar(s:ASCIIcode);label 10;
begin if{244:}s=eqtb[5312].int{:244}then if selector<20 then begin
println;goto 10;end;begin if ((selector>=16)and(selector<=21)) then case selector of 19:begin write(output,xchr[s]);;
termoffset:=termoffset+1;fileoffset:=fileoffset+1;
if termoffset=maxprintline then begin writeln(output);termoffset:=0;end;
if fileoffset=maxprintline then begin;fileoffset:=0;end;end;18:begin;
fileoffset:=fileoffset+1;if fileoffset=maxprintline then println;end;
17:begin write(output,xchr[s]);termoffset:=termoffset+1;
if termoffset=maxprintline then println;end;16:;
20:if tally<trickcount then trickbuf[tally mod errorline]:=s;
21:begin if poolptr<poolsize then begin strpool[poolptr]:=s;
poolptr:=poolptr+1;end;end end end;tally:=tally+1;10:end;
{:58}{59:}procedure print(s:integer);label 10;var j:poolpointer;
nl:integer;
begin if s>=strptr then s:=259 else if s<256 then if s<0 then s:=259
else begin if selector>20 then begin printchar(s);goto 10;end;
if({244:}s=eqtb[5312].int{:244})then if selector<20 then begin println;
goto 10;end;nl:=eqtb[5312].int;eqtb[5312].int:=-1;j:=strstart[s];
while j<strstart[s+1]do begin printchar(strpool[j]);j:=j+1;end;
eqtb[5312].int:=nl;goto 10;end;j:=strstart[s];
while j<strstart[s+1]do begin printchar(strpool[j]);j:=j+1;end;10:end;
{:59}{60:}procedure slowprint(s:integer);var j:poolpointer;
begin if(s>=strptr)or(s<256)then print(s)else begin j:=strstart[s];
while j<strstart[s+1]do begin print(strpool[j]);j:=j+1;end;end;end;
{:60}{62:}procedure printnl(s:strnumber);
begin if((termoffset>0)and(odd(selector)))or((fileoffset>0)and(selector
>=18))then println;print(s);end;
{:62}{63:}procedure printesc(s:strnumber);var c:integer;
begin{243:}c:=eqtb[5308].int{:243};if c>=0 then if c<256 then print(c);
slowprint(s);end;{:63}{64:}procedure printthedigs(k:eightbits);
begin while k>0 do begin k:=k-1;
if dig[k]<10 then printchar(48+dig[k])else printchar(55+dig[k]);end;end;
{:64}{65:}procedure printint(n:integer);var k:0..23;m:integer;
begin k:=0;if n<0 then begin printchar(45);
if n>-100000000 then n:=-n else begin m:=-1-n;n:=m div 10;
m:=(m mod 10)+1;k:=1;if m<10 then dig[0]:=m else begin dig[0]:=0;n:=n+1;
end;end;end;repeat dig[k]:=n mod 10;n:=n div 10;k:=k+1;until n=0;
printthedigs(k);end;{:65}{262:}procedure printcs(p:integer);
begin if p<514 then if p>=257 then if p=513 then begin printesc(504);
printesc(505);printchar(32);end else begin printesc(p-257);
if eqtb[3983+p-257].hh.rh=11 then printchar(32);
end else if p<1 then printesc(506)else print(p-1)else if p>=2881 then
printesc(506)else if(hash[p].rh<0)or(hash[p].rh>=strptr)then printesc(
507)else begin printesc(hash[p].rh);printchar(32);end;end;
{:262}{263:}procedure sprintcs(p:halfword);
begin if p<514 then if p<257 then print(p-1)else if p<513 then printesc(
p-257)else begin printesc(504);printesc(505);
end else printesc(hash[p].rh);end;
{:263}{518:}procedure printfilename(n,a,e:integer);begin slowprint(a);
slowprint(n);slowprint(e);end;
{:518}{699:}procedure printsize(s:integer);
begin if s=0 then printesc(412)else if s=16 then printesc(413)else
printesc(414);end;{:699}{1355:}procedure printwritewhatsit(s:strnumber;
p:halfword);begin printesc(s);
if mem[p+1].hh.lh<16 then printint(mem[p+1].hh.lh)else if mem[p+1].hh.lh
=16 then printchar(42)else printchar(45);end;
{:1355}{78:}procedure normalizeselector;forward;procedure gettoken;
forward;procedure terminput;forward;procedure showcontext;forward;
procedure beginfilereading;forward;procedure openlogfile;forward;
procedure closefilesandterminate;forward;procedure clearforerrorprompt;
forward;procedure giveerrhelp;forward;{procedure debughelp;forward;}
{:78}{81:}procedure jumpout;begin goto 9998;end;
{:81}{82:}procedure error;label 22,10;var c:ASCIIcode;
s1,s2,s3,s4:integer;begin if history<2 then history:=2;printchar(46);
showcontext;
if interaction=3 then{83:}while true do begin 22:if interaction<>3 then
goto 10;clearforerrorprompt;begin;print(264);terminput;end;
if last=first then goto 10;c:=buffer[first];if c>=97 then c:=c-32;
{84:}begin if ((c>=48)and(c<=57))or(c=69)or(c=72)or(c=73)or((c>=81)and(c<=83))or(c=88) then case c of 48,49,50,51,52,53,54,55,56,57:if deletionsallowed then
{88:}begin s1:=curtok;s2:=curcmd;s3:=curchr;s4:=alignstate;
alignstate:=1000000;OKtointerrupt:=false;
if(last>first+1)and(buffer[first+1]>=48)and(buffer[first+1]<=57)then c:=
c*10+buffer[first+1]-48*11 else c:=c-48;while c>0 do begin gettoken;
c:=c-1;end;curtok:=s1;curcmd:=s2;curchr:=s3;alignstate:=s4;
OKtointerrupt:=true;begin helpptr:=2;helpline[1]:=279;helpline[0]:=280;
end;showcontext;goto 22;end{:88};{68:begin debughelp;goto 22;end;}
69:if baseptr>0 then if inputstack[baseptr].namefield>=256 then begin
printnl(265);slowprint(inputstack[baseptr].namefield);print(266);
printint(line);interaction:=2;jumpout;end;
72:{89:}begin if useerrhelp then begin giveerrhelp;useerrhelp:=false;
end else begin if helpptr=0 then begin helpptr:=2;helpline[1]:=281;
helpline[0]:=282;end;repeat helpptr:=helpptr-1;print(helpline[helpptr]);
println;until helpptr=0;end;begin helpptr:=4;helpline[3]:=283;
helpline[2]:=282;helpline[1]:=284;helpline[0]:=285;end;goto 22;end{:89};
73:{87:}begin beginfilereading;
if last>first+1 then begin curinput.locfield:=first+1;buffer[first]:=32;
end else begin begin;print(278);terminput;end;curinput.locfield:=first;
end;first:=last;curinput.limitfield:=last-1;goto 10;end{:87};
81,82,83:{86:}begin errorcount:=0;interaction:=0+c-81;print(273);
case c of 81:begin printesc(274);selector:=selector-1;end;
82:printesc(275);83:printesc(276);end;print(277);println;;goto 10;
end{:86};88:begin interaction:=2;jumpout;end end end;
{85:}begin print(267);printnl(268);printnl(269);
if baseptr>0 then if inputstack[baseptr].namefield>=256 then print(270);
if deletionsallowed then printnl(271);printnl(272);end{:85}{:84};
end{:83};errorcount:=errorcount+1;
if errorcount=100 then begin printnl(263);history:=3;jumpout;end;
{90:}if interaction>0 then selector:=selector-1;
if useerrhelp then begin println;giveerrhelp;
end else while helpptr>0 do begin helpptr:=helpptr-1;
printnl(helpline[helpptr]);end;println;
if interaction>0 then selector:=selector+1;println{:90};10:end;
{:82}{93:}procedure fatalerror(s:strnumber);begin normalizeselector;
begin if interaction=3 then;printnl(262);print(287);end;
begin helpptr:=1;helpline[0]:=s;end;
begin if interaction=3 then interaction:=2;if logopened then error;
{if interaction>0 then debughelp;}history:=3;jumpout;end;end;
{:93}{94:}procedure overflow(s:strnumber;n:integer);
begin normalizeselector;begin if interaction=3 then;printnl(262);
print(288);end;print(s);printchar(61);printint(n);printchar(93);
begin helpptr:=2;helpline[1]:=289;helpline[0]:=290;end;
begin if interaction=3 then interaction:=2;if logopened then error;
{if interaction>0 then debughelp;}history:=3;jumpout;end;end;
{:94}{95:}procedure confusion(s:strnumber);begin normalizeselector;
if history<2 then begin begin if interaction=3 then;printnl(262);
print(291);end;print(s);printchar(41);begin helpptr:=1;helpline[0]:=292;
end;end else begin begin if interaction=3 then;printnl(262);print(293);
end;begin helpptr:=2;helpline[1]:=294;helpline[0]:=295;end;end;
begin if interaction=3 then interaction:=2;if logopened then error;
{if interaction>0 then debughelp;}history:=3;jumpout;end;end;
{:95}{:4}{27:}function embfind:integer;var d,k,j,s,e:integer;
same:boolean;begin embfind:=0;s:=1;e:=filenamesize;
while(e>0)and(nameoffile[e]=' ')do e:=e-1;
for k:=1 to e do if nameoffile[k]=':'then s:=k+1;
for d:=1 to embdocs do begin same:=true;j:=0;
for k:=s to e do begin j:=j+1;
if j>16 then same:=false else if nameoffile[k]<>embname[d][j]then same:=
false;end;if j<16 then if embname[d][j+1]<>' 'then same:=false;
if same and(j>0)then embfind:=d;end;end;
function aopenin(var f:alphafile):boolean;var d:integer;
begin d:=embfind;if d=0 then aopenin:=false else begin f.kind:=1;
f.doc:=d;f.pos:=embstart[d];f.last:=embstart[d]+emblen[d]-1;
aopenin:=true;end;end;function aopenout(var f:alphafile):boolean;
begin aopenout:=true;end;function bopenin(var f:bytefile):boolean;
var d:integer;begin d:=embfind;
if d=0 then bopenin:=false else begin f.doc:=d;f.pos:=embstart[d];
f.last:=embstart[d]+emblen[d]-1;bopenin:=true;end;end;
function bopenout(var f:bytefile):boolean;begin f.doc:=0;f.pos:=0;
f.last:=0;bopenout:=true;end;function wopenin(var f:wordfile):boolean;
begin wopenin:=false;end;function wopenout(var f:wordfile):boolean;
begin wopenout:=false;end;function hexvalue(c:char):integer;
begin if(c>='0')and(c<='9')then hexvalue:=ord(c)-ord('0')else if(c>='a')
and(c<='f')then hexvalue:=ord(c)-ord('a')+10 else hexvalue:=0;end;
function hexchar(v:integer):char;
begin if v<10 then hexchar:=chr(ord('0')+v)else hexchar:=chr(ord('a')+v
-10);end;function tfmbyte(var f:bytefile):eightbits;
begin if f.pos>f.last then tfmbyte:=0 else tfmbyte:=hexvalue(embtext[f.
pos])*16+hexvalue(embtext[f.pos+1]);end;
procedure embchunkin(c:embchunk);var i:integer;
begin for i:=1 to 240 do embtext[embtotal+i]:=c[i];
embtotal:=embtotal+240;end;procedure embdoc(d:integer;nm:embnm;
s,l:integer);var i:integer;begin for i:=1 to 16 do embname[d][i]:=nm[i];
embstart[d]:=s;emblen[d]:=l;end;procedure embpart0;
begin
embchunkin('-11buffer size+09pool size317number of strings%03???/13m2d5c2l5x2v5i>28End of file on the terminal!#02!L42(That makes 100 errors; please try again.)#02?722You want to edit file*09 at line^60Type <return> to proceed, S to scroll future error');
embchunkin(' messages,N44R to run without stopping, Q to run quietly,823I to insert something,620E to edit your file,Z561 or ... or 9 to ignore the next 1 to 9 tokens of input,822H for help, X to quit..13OK, entering+09batchmode-11nonstopmode,10scrollm');
embchunkin('ode%03...)07insert>N44I have just deleted some text, as you asked.R48You can now delete more, or insert, or whatever.T50Sorry, I don''t know how to help in this situation.F36Maybe you should try asking a human?L42Sorry, I already gave what h');
embchunkin('elp I could...]59An error might have occurred before I noticed any problems.O45``If all else fails, read the instructions.''''$02 (014Emergency stop@30TeX capacity exceeded, sorry [N44If you really absolutely need more capacity,E35you can ask');
embchunkin(' a wizard to enlarge me.519This can''t happen (]59I''m broken. Please show this to someone who can fix can fixE35I can''t go on meeting you like thisY55One of your faux pas seems to have wounded me deeply...]59in fact, I''m barely conscious. Pl');
embchunkin('ease fix it and try again..12Interruption+09You rang?\58Try to insert an instruction for me (e.g., `I\showlists''),M43unless you just want to quit by typing `X''.216main memory size924AVAIL list clobbered at@31Double-AVAIL list clobbered at92');
embchunkin('4Doubly free location at-12Bad flag at014New busy locs:''05LINK(''05INFO($02[],10CLOBBERED.&04foul%03fil''06 plus(07 minus%03 []<26Bad link, display aborted.&04etc.418Unknown node type!''05unset&04box($02)x+10, shifted+09 columns)+10, stretch*0');
embchunkin('9, shrink,11, glue set#02-%03?.?%03< -''05rule((06insert015, natural size*08; split(/14); float cost&04glue+09nonscript''05mskip$02mu"00)08leaders&04kern/13 (for accent)''05mkern&04math$02on%03off.13, surrounded,11 (ligature)08penalty/13discre');
embchunkin('tionary,11 replacing&04mark)07vadjust*08flushing)07copying*08vertical,10horizontal.12display math$02no317internal vertical721restricted horizontal''05 mode418semantic nest size%04###217 entered at line,10 (language,10:hyphenmin418 (\output r');
embchunkin('outine);25### recent contributions:+10prevdepth)07ignored,11, prevgraf''05 line-12spacefactor419, current languageA31this will begin denominator of:*08lineskip.12baselineskip)07parskip216abovedisplayskip216belowdisplayskip721abovedisplayshor');
embchunkin('tskip721belowdisplayshortskip*08leftskip+09rightskip)07topskip.12splittopskip)07tabskip+09spaceskip,10xspaceskip-11parfillskip,10thinmuskip+09medmuskip-11thickmuskip;25[unknown glue parameter!]&04skip(06muskip$02pt(06output*08everypar+09eve');
embchunkin('rymath.12everydisplay+09everyhbox+09everyvbox*08everyjob)07everycr)07errhelp&04toks*08parshape%03box&04void.12current font*08textfont,10scriptfont216scriptscriptfont)07catcode(06lccode(06uccode(06sfcode*08mathcode.12pretolerance+09tolerance');
embchunkin('-11linepenalty/13hyphenpenalty115exhyphenpenalty-11clubpenalty.12widowpenalty519displaywidowpenalty/13brokenpenalty.12binoppenalty,10relpenalty317predisplaypenalty418postdisplaypenalty216interlinepenalty620doublehyphendemerits519finalhyphen');
embchunkin('demerits-11adjdemerits%03mag115delimiterfactor+09looseness&04time%03day''05month&04year014showboxbreadth.12showboxdepth*08hbadness*08vbadness)07pausing/13tracingonline/13tracingmacros.12tracingstats317tracingparagraphs.12tracingpages/13traci');
embchunkin('ngoutput216tracinglostchars115tracingcommands115tracingrestores(06uchyph/13outputpenalty/13maxdeadcycles+09hangafter115floatingpenalty,10globaldefs%03fam,10escapechar317defaulthyphenchar115defaultskewchar-11endlinechar-11newlinechar*08langu');
embchunkin('age/13lefthyphenmin014righthyphenmin014holdinginserts317errorcontextlines>28[unknown integer parameter!]''05count)07delcode+09parindent.12mathsurround/13lineskiplimit''05hsize''05vsize*08maxdepth/13splitmaxdepth-11boxmaxdepth''05hfuzz''05vfuzz41');
embchunkin('8delimitershortfall418nulldelimiterspace-11scriptspace014predisplaysize.12displaywidth/13displayindent.12overfullrule,10hangindent)07hoffset)07voffset216emergencystretch<26[unknown dimen parameter!]''05dimen(06EQUIV(.12notexpanded:+09hash si');
embchunkin('ze(06csname+09endcsname-11IMPOSSIBLE..12NONEXISTENT.(06accent)07advance115afterassignment,10aftergroup,10begingroup&04char+09delimiter(06divide*08endgroup-11expandafter&04font+09fontdimen(06halign''05hrule.12ignorespaces,10mathaccent*08mathc');
embchunkin('har,10mathchoice*08multiply)07noalign,10noboundary*08noexpand&04omit)07penalty*08prevgraf)07radical&04read''05relax(06setbox%03the(06valign)07vcenter''05vrule+09save size115grouping levels*08curlevel+09retaining+09restoring''05SAVE(>28Incompat');
embchunkin('ible magnification ($02);F36 the previous value will be retained\58I can handle only one magnification ratio per job. So I''ve]59reverted to the magnification you used earlier on this run.P46Illegal magnification has been changed to 1000V52T');
embchunkin('he magnification ratio must be between 1 and 32768.&04ETC.&04BAD.$02->722begin-group character520end-group character621math shift character;26macro parameter character722superscript character520subscript character;25end of alignment templat');
embchunkin('e-12blank space,11the letter/14the character923[unknown command code!]#02:)08Runaway,10definition*08argument*08preamble&04text%03<*>*09<insert>''06<read$02l.,11<argument>,11<template>116<recently read>419<to be read again>116<inserted text>*');
embchunkin('09<output>,11<everypar>-12<everymath>015<everydisplay>-12<everyhbox>-12<everyvbox>,11<everyjob>+10<everycr>(07<mark>)08<write>216input stack size''05writeR48(interwoven alignment preambles are not allowed)317text input levels%03par,11Incompl');
embchunkin('eteC34; all text was ignored after lineX54A forbidden control sequence occurred in skipped text.]59This kind of error happens when you say `\if...'' and forget]59the matching `\fi''. I''ve inserted a `\fi''; this might work.W53The file ended wh');
embchunkin('ile I was skipping conditional text.,10File endedB32Forbidden control sequence found116 while scanning%04 ofP46I suspect you have forgotten a `}'', causing meK41to read past where you wanted me to stop.S49I''ll try to recover; but if the erro');
embchunkin('r is serious,U51you''d better type `E'' or `X'' now and fix your file.%03useI39Text line contains an invalid characterW53A funny symbol that I can''t read has just been input.R48Continue, and I''ll forget that it ever happened.G37(Please type a ');
embchunkin('command or say `\end'')H38*** (job aborted, no legal \end found)$02=><26Undefined control sequenceQ47The control sequence at the end of the top lineV52of your error message was never \def''ed. If you haveY55misspelled it (e.g., `\hobx''), type');
embchunkin(' `I'' and the correctU51spelling (e.g., `I\hbox''). Otherwise just continue,O45and I''ll forget about whatever was undefined.)08Missing+09 insertedW53The control sequence marked <to be read again> shouldL42not appear between \csname and \endcs');
embchunkin('name.''05input*08endinput)07topmark+09firstmark)07botmark014splitfirstmark.12splitbotmark620parameter stack size-12Argument of115 has an extra }\58I''ve run across a `}'' that doesn''t seem to match anything.V52For example, `\def\a#1{...}'' and ');
embchunkin('`\a}'' would produceX54this error. If you simply proceed now, the `\par'' thatV52I''ve just inserted will cause me to report a runawayX54argument that might be the root of the problem. But if[57your `}'' was spurious, just type `2'' and it will ');
embchunkin('go away.823Paragraph ended before/13 was complete\58I suspect you''ve forgotten a `}'', causing me to apply thisX54control sequence to too much text. How can we recover?]59My plan is to forget the whole thing and hope for the best.(07Use of?2');
embchunkin('9 doesn''t match its definitionX54If you say, e.g., `\def\a1{...}'', then you must alwaysV52put `1'' after `\a'', since control sequence names areV52made up of letters only. The macro here has not beenU51followed by the required stuff, so I''m i');
embchunkin('gnoring it.$02<-418Missing { insertedV52A left brace was mandatory here, so I''ve put one in.Y55You might want to delete and/or insert some correctionsR48so that I will find a matching right brace soon.X54(If you''re confused by all this, try');
embchunkin(' typing `I}'' now.)923Incompatible glue unitsV52I''m going to assume that 1mu=1pt when they''re mixed.A31Missing number, treated as zeroQ47A number should have been here; I inserted `0''.X54(If you can''t figure out why I needed to see a number,');
embchunkin('U51look up `weird error'' in the index to The TeXbook.)-11spacefactor+09prevdepth,10deadcycles115insertpenalties$02wd$02ht$02dp-11lastpenalty*08lastkern*08lastskip-11inputlineno)07badness*09ImproperX54You can refer to \spacefactor only in ho');
embchunkin('rizontal mode;X54you can refer to \prevdepth only in vertical mode; andR48neither of these is meaningful inside \write. SoV52I''m forgetting what you said and using zero instead.115You can''t use `)08'' after317Bad register codeN44A register n');
embchunkin('umber must be between 0 and 255.=27I changed this one to zero.418Bad character codeO45A character number must be between 0 and 255.,10Bad numberU51Since I expected to read a number between 0 and 15,.12Bad mathcharP46A mathchar number must b');
embchunkin('e between 0 and 32767.418Bad delimiter codeZ56A numeric delimiter code must be between 0 and 2^{27}-1.>28Improper alphabetic constantZ56A one-character control sequence belongs after a ` mark.G37So I''m essentially inserting \0 here.014Numbe');
embchunkin('r too bigX54I can only go up to 2147483647=''17777777777="7FFFFFFF,L42so I''m using that number instead of yours.&04true;25Illegal unit of measure (418replaced by filll)E35I dddon''t go any higher than filll.$02em$02ex.12mu inserted)R48The uni');
embchunkin('t of measurement in math glue must be mu.U51To recover gracefully from this error, it''s best toV52delete the erroneous units; e.g., type `2'' to deleteO45two letters. (See Chapter 27 of The TeXbook.)$02in$02pc$02cm$02mm$02bp$02dd$02cc$02sp.1');
end;
procedure embpart1;
begin
embchunkin('2pt inserted)S49Dimensions can be in units of em, ex, in, pt, pc,T50cm, mm, dd, cc, bp, or sp; but yours is a new one!]59I''ll assume that you meant to say pt, for printer''s points.519Dimension too largeT50I can''t work with sizes bigger than');
embchunkin(' about 19 feet.P46Continue and I''ll use the largest value I can.&04plus''05minus''05width(06height''05depth(06number.12romannumeral(06string)07meaning*08fontname)07jobname%04 at^60Where was the left brace? You said something like `\def\a}'',M43');
embchunkin('which I''m going to interpret as `\def\a{}''.B32You already have nine parametersO45I''m going to ignore the # sign you just used,H38as well as the token that followed it.K41Parameters must be numbered consecutively[57I''ve inserted the digit yo');
embchunkin('u should have used after the #.F36Type `1'' to delete what you did use.K42Illegal parameter number in definition ofK41You meant to type ## instead of #, right?Z56Or maybe a } was forgotten somewhere earlier, and things\58are all screwed up? ');
embchunkin('I''m going to assume that you meant ##.S49*** (cannot \read from terminal in nonstop modes)318File ended withinC33This \read has unbalanced braces.$02if''05ifcat''05ifnum''05ifdim''05ifodd)07ifvmode)07ifhmode)07ifmmode)07ifinner(06ifvoid(06ifhbo');
embchunkin('x(06ifvbox%03ifx''05ifeof(06iftrue)07iffalse(06ifcase$02fi$02or&04else''06ExtraN44I''m ignoring this; it doesn''t match any \if.(06{true})07{false}823Missing = inserted forR48I was expecting to see `<'', `='', or `>''. Didn''t.''06{case,10TeXinputs:');
embchunkin('+09TeXfonts:&04.fmt115input file name519I can''t find file `923I can''t write on file `$02''.&04.tex520Please type anotherO45*** (job aborted, file error in nonstop mode)&04.dvi620file name for output(06texput&04.log$02**620transcript file nam');
embchunkin('e"02*08nullfont&05Font)08 scaledF36 not loadable: Bad metric (TFM) fileL42 not loadable: Metric (TFM) file not foundT50I wasn''t able to read the size data for this font,J40so I will ignore the font specification.R48[Wizards can fix TFM file');
embchunkin('s using TFtoPL/PLtoTF.]P46You might try inserting a different font spec;[57e.g., type `I\font<same font id>=<substitute font name>''.&04.tfmC33 not loaded: Not enough room leftV52I''m afraid I won''t be able to make use of this font,Y55because');
embchunkin(' my memory for character-size data is too small.U51If you''re really stuck, ask a wizard to enlarge me.\58Or maybe try `I\font<same font id>=<name of loaded font>''.923Missing font identifierL42I was looking for a control sequence whoseL42cur');
embchunkin('rent meaning has been defined by \font.+10 has only721 fontdimen parametersU51To increase the number of font parameters, you mustW53use \fontdimen immediately after the \font is loaded.-11font memory@31Missing character: There is no*09 in f');
embchunkin('ont*08DVI size-12 TeX output*08vlistoutA31Completed box being shipped out621Memory usage before:)08 after:419; still untouched:A31Huge page cannot be shipped outT50The page just created is more than 18 feet tall or\58more than 18 feet wide,');
embchunkin(' so I suspect something went wrong.E35The following box has been deleted:519No pages of output.318Output written on''05 page#02,*08 bytes).$02to(06spread+09Underfull''05Loose116 \hbox (badnessH38) has occurred while \output is active924) in p');
embchunkin('aragraph at lines924) in alignment at lines$02--419) detected at line216Overfull \hbox (-11pt too wide621Tight \hbox (badness''05vpack116 \vbox (badness216Overfull \vbox (-11pt too high621Tight \vbox (badness$02{}.12displaystyle+09textstyle-');
embchunkin('11scriptstyle317scriptscriptstyle014Unknown style!)07mathord(06mathop)07mathbin)07mathrel*08mathopen+09mathclose+09mathpunct+09mathinner*08overline+09underline&04left''05right(06limits*08nolimits520fraction, thickness+09= default217, left-de');
embchunkin('limiter318, right-delimiter:25 is undefined (characterX54Somewhere in the math formula just ended, you used the^60stated character from an undefined font family. For example,\58plain TeX doesn''t allow \it or \sl in subscripts. Proceed,V52an');
embchunkin('d I''ll try to forget that I needed that character.(06mlist1(06mlist2(06mlist3b640234000122*4000133**3**344*0400400*000000234000111*1111112341011(06mlist4.12 inside $$''sW53Displays can use special alignments (like \eqalignno)[57only if nothi');
embchunkin('ng but the alignment itself is between $$''s.\58So I''ve deleted the formulas that preceded this alignment.&04span$02cr&04crcr-11endtemplate924alignment tab characterJ40Missing # inserted in alignment preambleT50There should be exactly one # ');
embchunkin('between &''s, when anZ56\halign or \valign is being set up. In this case you hadQ47none, so I''ve put one in; maybe that will work.?29Only one # is allowed per tabS49more than one, so I''m ignoring all but the first.&04endvI40Extra alignment t');
embchunkin('ab has been changed toV52You have given more \span or & marks than there were\58in the preamble to the \halign or \valign now in progress.T50So I''ll assume that you meant to type \cr instead.+09256 spans(06align1(06align0N44Infinite glue sh');
embchunkin('rinkage found in a paragraphV52The paragraph just ended includes some glue that hasX54infinite shrinkability, e.g., `\hskip 0pt minus 1fil''.X54Such glue doesn''t belong there---it allows a paragraph]59of any length to fit on one line. But it');
embchunkin('''s safe to proceed,Y55since the offensive shrinkability has been made finite.''05disc1''05disc2$02@@(07: line%03 t=(06 -> @@)07 via @@%03 b=%03 p=%03 d=,10@firstpass-11@secondpass014@emergencypass+09paragraph''05disc3''05disc4/13line breaking''0');
embchunkin('5HYPH(-11hyphenation216 will be flushedR48Hyphenation exceptions must contain only lettersU51and hyphens. But continue; I''ll forgive and forget..12Not a letterT50Letters in \hyphenation words must have \lccode>0.Q47Proceed; I''ll ignore the ');
embchunkin('character I just read.620exception dictionary418pattern memory opsA31pattern memory ops per language014pattern memory.13Too late for*08patternsW53All patterns must be given before typesetting begins.%04Bad317(See Appendix H.)+09Nonletter317');
embchunkin('Duplicate pattern)07pruning+09vertbreakR48Infinite glue shrinkage found in box being splitV52The box you are \vsplitting contains some infinitely[57shrinkable glue, e.g., `\vss'' or `\vskip 0pt minus 1fil''.]59Such glue doesn''t belong there; ');
embchunkin('but you can safely proceed,(06vsplit*09 needs a&04vboxN44The box you are trying to split is an \hbox.S49I can''t split such a box, so I''ll leave it alone.*08pagegoal+09pagetotal-11pagestretch014pagefilstretch115pagefillstretch216pagefilllstr');
embchunkin('etch,10pageshrink+09pagedepth&04fill''05filll317### current page:>28 (held over for next output).13total height.13 goal height''06 adds%03, #.12 might split115%% goal height=.12, max depth=H38Insertions can only be added to a vboxJ40Tut tut: ');
embchunkin('You''re trying to \insert into aK41\box register that now contains an \hbox.Q47Proceed, and I''ll discard its present contents.&04pageO45Infinite glue shrinkage found on current pageV52The page about to be output contains some infinitely%03 g');
embchunkin('=%03 c=G38Infinite glue shrinkage inserted fromW53The correction glue for page breaking with insertionsV52must have finite shrinkability. But you may proceed,)07% split%04 to115255 is not voidW53You shouldn''t use \box255 except in \output r');
embchunkin('outines.014Output loop---:24 consecutive dead cycles[57I''ve concluded that your \output is awry; it never does aY55\shipout, so I''m shipping \box255 out myself. Next time\58increase \maxdeadcycles if you want me to be more patient!;25Unbala');
embchunkin('nced output routine\58Your sneaky output routine has problematic {''s and/or }''s.K41I can''t handle that very well; good luck.B33Output routine didn''t use all ofM43Your \output commands should empty \box255,D34e.g., by saying `\shipout\box255');
embchunkin('''.M43Proceed; I''ll discard its present contents.418Missing $ insertedZ56I''ve inserted a begin-math/end-math symbol since I thinkR48you left one out. Proceed, with fingers crossed.&05'' inT50Sorry, but I''m not programmed to handle this case;O');
embchunkin('45I''ll just pretend that you didn''t ask for it.S49If you''re in the wrong mode, you might be able to\58return to the right one by typing `I}'' or `I$'' or `I\par''.%03end&04dump''05hskip&04hfil''05hfill%03hss)07hfilneg''05vskip&04vfil''05vfill%03vs');
embchunkin('s)07vfilnegV52I''ve inserted something that you may have forgotten.B32(See the <inserted text> above.)R48With luck, this will get me unwedged. But if youY55really didn''t forget anything, try typing `2'' now; thenZ56my insertion and my current');
embchunkin(' dilemma will both disappear.(06right.\58Things are pretty mixed up, but I think the worst is over..12Too many }''sL42You''ve closed more groups than you opened.U51Such booboos are generally harmless, so keep going.,10rightbrace722Extra }, or');
embchunkin(' forgotten\58I''ve deleted a group-closing symbol because it seems to be]59spurious, as in `$x}$''. But perhaps the } is legitimate and]59you forgot something else, as in `\hbox{$x}''. In such cases\58the way to recover is to insert both the f');
embchunkin('orgotten and theJ40deleted material, e.g., by typing `I$}''.*08moveleft+09moveright''05raise''05lower&04copy)07lastbox&04vtop&04hbox)07shipout)07leaders*08cleaders*08xleadersE35Leaders not followed by proper glueZ56You should say `\leaders <bo');
embchunkin('x or rule><hskip or vskip>''.T50I found the <box or rule>, but there''s no suitableR48<hskip or vskip>, so I''m ignoring these leaders.D34Sorry; this \lastbox will be void.\58Sorry...I usually can''t take things from the current page.G37This \l');
embchunkin('astbox will therefore be void.721Missing `to'' insertedR48I''m working on `\vsplit<box number> to <dimen>'';A31will look for the <dimen> next.A31A <box> was supposed to be here[57I was expecting to see \hbox or \vbox or \copy or \box or]59some');
embchunkin('thing like that. So you might find something missing inW53your output. But keep trying; you can fix this later.(06indent*08noindent<26'' here except with leadersV52To put a horizontal rule in an hbox or an alignment,Z56you should use \leader');
end;
procedure embpart2;
begin
embchunkin('s or \hrulefill (see The TeXbook).+10You can''tO45I''m changing to \insert0; box 255 is special.B32Try `I\vskip-\lastskip'' instead.A31Try `I\kern-\lastkern'' instead.P46Perhaps you can make the output routine do it.+09unpenalty(06unkern(06unsk');
embchunkin('ip(06unhbox)07unhcopy(06unvbox)07unvcopyD34Incompatible list can''t be unboxedE35Sorry, Pandora. (You sneaky devil.)\58I refuse to unbox an \hbox in vertical mode or vice versa.J40And I can''t open any boxes in math mode..13Illegal mathX54Sor');
embchunkin('ry: The third part of a discretionary break must be[57empty, in math formulas. I had to delete your third part.@30Discretionary list is too longT50Wow---I never thought anybody would tweak me here.Z56You can''t seriously need such a huge dis');
embchunkin('cretionary list?=27Improper discretionary listX54Discretionary lists must contain only boxes and kerns.W53The following discretionary sublist has been deleted:418Missing } insertedO45I''ve put in what seems to be necessary to fixN44the curre');
embchunkin('nt column of the current alignment.M43Try to go on, since this might almost work.+10MisplacedY55I can''t figure out why you would want to use a tab markT50here. If you just want an ampersand, the remedy isV52simple: Just type `I\&'' now. But ');
embchunkin('if some right braceV52up above has ended a previous alignment prematurely,V52you''re probably due for more error messages, and you[57might try typing `S'' now just to see what is salvageable.[57or \cr or \span just now. If something like a ri');
embchunkin('ght braceP46I expect to see \noalign only after the \cr ofS49an alignment. Proceed, and I''ll ignore this case.Z56I expect to see \omit only after tab marks or the \cr ofW53I''m guessing that you meant to end an alignment here.T50I''m ignoring');
embchunkin(' this, since I wasn''t doing a \csname.&04eqno''05leqno/13displaylimitsL42Limit controls must follow a math operator[57I''m ignoring this misplaced \limits or \nolimits command.@30Missing delimiter (. inserted)V52I was expecting to see somethi');
embchunkin('ng like `('' or `\{'' orY55`\}'' here. If you typed, e.g., `{'' instead of `\{'', you[57should probably delete the `{'' by typing `1'' now, so thatV52braces don''t get unbalanced. Otherwise just proceed.X54Acceptable delimiters are characters whose');
embchunkin(' \delcode is\58nonnegative, or you can use `\delimiter <delimiter code>''.,11Please use;25 for accents in math modeY55I''m changing \accent to \mathaccent here; wish me luck.]59(Accents are not the same in formulas as they are in text.)418Dou');
embchunkin('ble superscriptM43I treat `x^1^2'' essentially like `x^1{}^2''.216Double subscriptM43I treat `x_1_2'' essentially like `x_1{}_2''.''05above&04over&04atop115abovewithdelims014overwithdelims014atopwithdelimsE35Ambiguous; you need another { and }Y5');
embchunkin('5I''m ignoring this fraction specification, since I don''tV52know whether a construction like `x \over y \over z''W53means `{x \over y} \over z'' or `x \over {y \over z}''.S49I''m ignoring a \right that had no matching \left.Q47Math formula delet');
embchunkin('ed: Insufficient symbol fontsT50Sorry, but I can''t typeset math unless \textfont 2T50and \scriptfont 2 and \scriptscriptfont 2 have allT50the \fontdimen values needed in math symbol fonts.T50Math formula deleted: Insufficient extension font');
embchunkin('sT50Sorry, but I can''t typeset math unless \textfont 3T50and \scriptfont 3 and \scriptscriptfont 3 have allW53the \fontdimen values needed in math extension fonts.A31Display math should end with $$]59The `$'' that I just saw supposedly match');
embchunkin('es a previous `$$''.S49So I shall assume that you typed `$$'' both times.)07display519Missing $$ inserted&04long''05outer(06global%03def&04gdef&04edef&04xdef(06prefix?29You can''t use a prefix with `Y55I''ll pretend you didn''t say \long or \oute');
embchunkin('r or \global.(06'' or `*08'' with `S49I''ll pretend you didn''t say \long or \outer here.C33Missing control sequence insertedV52Please don''t say `\def cs{...}'', say `\def\cs{...}''.]59I''ve inserted an inaccessible control sequence so that your^6');
embchunkin('0definition will be completed without mixing me up too badly.W53You can recover graciously from this error, if you''reL42careful; see exercise 27.2 in The TeXbook..12inaccessible%03let+09futurelet)07chardef-11mathchardef*08countdef*08dimende');
embchunkin('f)07skipdef+09muskipdef)07toksdefN44You should have said `\read<number> to \cs''.D34I''m going to look for the \cs now.014Invalid code (?29), should be in the range 0..621), should be at mostX54I''m going to use 0 instead of that illegal code ');
embchunkin('value.$02by519Arithmetic overflowT50I can''t carry out that multiplication or division,C33since the result is out of range.Y55I''m forgetting what you said and not changing anything.[57Sorry, \setbox is not allowed after \halign in a display,');
embchunkin('O45or between \accent and an accented character.216Bad space factorQ47I allow only values in the range 1..32767 here.G37I allow only nonnegative values here.G37Patterns can be loaded only by INITEX,10hyphenchar*08skewchar&04FONT$02at(06scal');
embchunkin('ed620Improper `at'' size (721pt), replaced by 10ptT50I can only handle fonts at positive sizes that areZ56less than 2048pt, so I''ve changed what you said to 10pt.-12select font/13errorstopmode(06openin)07closein)07message,10errmessageA31(Tha');
embchunkin('t was another \errmessage.)T50This error message was generated by an \errmessageM43command, so I can''t give any explicit help.X54Pretend that you''re Hercule Poirot: Examine all clues,K41and deduce the truth by order and method.+09lowercase+');
embchunkin('09uppercase&04show)07showbox)07showthe+09showlists[57This isn''t an error message; I''m just \showing something.P46Type `I\show...'' to show more (e.g., \show\cs,M43\showthe\count10, \showbox255, \showlists).X54And type `I\tracingonline=1\show');
embchunkin('...'' to show boxes and[57lists on your terminal as well as in the transcript file.#02>+09undefined''05macro,10long macro-11outer macro317outer endtemplate(06> \box$02OK<26 (see the transcript file)+09 (INITEX)?29You can''t dump inside a group');
embchunkin(':24`{...\dump}'' is a no-no.:25 strings of total lengthL43 memory locations dumped; current usage is@30 multiletter control sequences924 words of font info for115 preloaded font''05\font822 hyphenation exception<27Hyphenation trie of length&0');
embchunkin('5 has%03 op)08 out of/14 for language519 (preloaded format=216format file name;26Beginning to dump on file722Transcript written on$02 ).13end occurred924inside a group at level&05when*09 on line216 was incomplete)V52(see the transcript file');
embchunkin(' for additional information)E35(\dump is performed only by INITEX)721debug # (-1 to exit):)07openout*08closeout)07special+09immediate-11setlanguage620[unknown extension!]&04ext1-12 (hyphenmin*08whatsit?&04ext2&04ext3*08endwrite:24Unbalanced');
embchunkin(' write command]59On this page there''s a \write with fewer real {''s than }''s.&04ext4216output file name**172418254_% This is the plain TeX format that''s described in The TeXbook.a% N.B.: A version number is defined at the very end of this fi');
embchunkin('le;`%       please change that number whenever the file is modified!W% And don''t modify the file unless you change its name:c%       Everybody''s "plain.tex" file should be the same, worldwide. i% Unlimited copying and redistribution of this');
embchunkin(' file are permitted as longh% as this file is not modified. Modifications are permitted, but only ifL% the resulting file is not named plain.tex. S\catcode`\{=1 % left brace is begin-group characterR\catcode`\}=2 % right brace is end-group ');
embchunkin('characterI\catcode`\$=3 % dollar sign is math shiftJ\catcode`\&=4 % ampersand is alignment tabV\catcode`\#=6 % hash mark is macro parameter characterk\catcode`\^=7 \catcode`\^^K=7 % circumflex and uparrow are for superscriptsj\catcode`\_=8 ');
embchunkin('\catcode`\^^A=8 % underline and downarrow are for subscriptsM\catcode`\^^I=10 % ascii tab is a blank spaceX\chardef\active=13 \catcode`\~=\active % tilde is activek\catcode`\^^L=\active \outer\def^^L{\par} % ascii form-feed is "\outer\par" ');
embchunkin('M\message{Preloading the plain format: codes,} e% We had to define the \catcodes right away, before the message line,M% since \message uses the { and } characters.N% When INITEX (the TeX initializer) starts up,O% it has defined the followin');
embchunkin('g \catcode values:I% \catcode`\^^@=9 % ascii null is ignoredL% \catcode`\^^M=5 % ascii return is end-lineS% \catcode`\\=0 % backslash is TeX escape characterT% \catcode`\%=14 % percent sign is comment characterM% \catcode`\ =10 % ascii spac');
embchunkin('e is blank spaceL% \catcode`\^^?=15 % ascii delete is invalidW% \catcode`\A=11 ... \catcode`\Z=11 % uppercase lettersW% \catcode`\a=11 ... \catcode`\z=11 % lowercase letters@% all others are type 12 (other) e% Here is a list of the characte');
embchunkin('rs that have been specially catcoded:O\def\dospecials{\do\ \do\\\do\{\do\}\do\$\do\&%J  \do\#\do\^\do\^^K\do\_\do\^^A\do\%\do\~}d% (not counting ascii null, tab, linefeed, formfeed, return, delete)b% Each symbol in the list is preceded by \');
embchunkin('do, which can be definedX% if you want to do something to every item in the list. b% We make @ signs act like letters, temporarily, to avoid conflictd% between user names and internal control sequences of plain format.-\catcode`@=11 Y% INIT');
embchunkin('EX sets up \mathcode x=x, for x=0..255, except thatU% \mathcode x=x+"7100, for x = `A to `Z and `a to `z;H% \mathcode x=x+"7000, for x = `0 to `9.\% The following changes define internal codes as recommended?% in Appendix C of The TeXbook:<');
embchunkin('\mathcode`\^^@="2201 % \cdotA\mathcode`\^^A="3223 % \downarrow=\mathcode`\^^B="010B % \alpha<\mathcode`\^^C="010C % \beta<\mathcode`\^^D="225E % \land<\mathcode`\^^E="023A % \lnot:\mathcode`\^^F="3232 % \in:\mathcode`\^^G="0119 % \pi>\mathc');
embchunkin('ode`\^^H="0115 % \lambda=\mathcode`\^^I="010D % \gamma=\mathcode`\^^J="010E % \delta?\mathcode`\^^K="3222 % \uparrow:\mathcode`\^^L="2206 % \pm=\mathcode`\^^M="2208 % \oplus=\mathcode`\^^N="0231 % \infty?\mathcode`\^^O="0140 % \partial>\mat');
end;
procedure embpart3;
begin
embchunkin('hcode`\^^P="321A % \subset>\mathcode`\^^Q="321B % \supset;\mathcode`\^^R="225C % \cap;\mathcode`\^^S="225B % \cup>\mathcode`\^^T="0238 % \forall>\mathcode`\^^U="0239 % \exists>\mathcode`\^^V="220A % \otimesF\mathcode`\^^W="3224 % \leftright');
embchunkin('arrowA\mathcode`\^^X="3220 % \leftarrowB\mathcode`\^^Y="3221 % \rightarrow:\mathcode`\^^Z="8000 % \ne?\mathcode`\^^[="2205 % \diamond:\mathcode`\^^\="3214 % \le:\mathcode`\^^]="3215 % \ge=\mathcode`\^^^="3211 % \equiv;\mathcode`\^^_="225F %');
embchunkin(' \lor;\mathcode`\ ="8000 % \space2\mathcode`\!="5021<\mathcode`\''="8000 % ^\prime2\mathcode`\(="40282\mathcode`\)="50299\mathcode`\*="2203 % \ast2\mathcode`\+="202B2\mathcode`\,="613B2\mathcode`\-="22002\mathcode`\.="013A2\mathcode`\/="013D');
embchunkin('2\mathcode`\:="303A2\mathcode`\;="603B2\mathcode`\<="313C2\mathcode`\=="303D2\mathcode`\>="313E2\mathcode`\?="503F2\mathcode`\[="405B?\mathcode`\\="026E % \backslash2\mathcode`\]="505D7\mathcode`\_="8000 % \_2\mathcode`\{="42662\mathcode`\|');
embchunkin('="026A2\mathcode`\}="5267@\mathcode`\^^?="1273 % \smallint _% INITEX sets \uccode`x=`X and \uccode `X=`X for all letters x,\% and \lccode`x=`x, \lccode`X=`x; all other values are zero.\% No changes to those tables are needed in plain TeX fo');
embchunkin('rmat. a% INITEX sets \sfcode x=1000 for all x, except that \sfcode`X=999Z% for uppercase letters. The following changes are needed:F\sfcode`\)=0 \sfcode`\''=0 \sfcode`\]=0j% The \nonfrenchspacing macro will make further changes to \sfcode va');
embchunkin('lues. e% Finally, INITEX sets all \delcode values to -1, except \delcode`.=03\delcode`\(="0283003\delcode`\)="0293013\delcode`\[="05B3023\delcode`\]="05D3033\delcode`\<="26830A3\delcode`\>="26930B3\delcode`\/="02F30E3\delcode`\|="26A30C3\de');
embchunkin('lcode`\\="26E30Fk% N.B. { and } should NOT get delcodes; otherwise parameter grouping fails! \% To make the plain macros more efficient in time and space,a% several constant values are declared here as control sequences.k% If they were chan');
embchunkin('ged, anything could happen; so they are private symbols..\chardef\@ne=1.\chardef\tw@=20\chardef\thr@@=33\chardef\sixt@@n=162\chardef\@cclv=2557\mathchardef\@cclvi=2564\mathchardef\@m=10005\mathchardef\@M=100006\mathchardef\@MM=20000 9% Allo');
embchunkin('cation of registers g% Here are macros for the automatic allocation of \count, \box, \dimen,b% \skip, \muskip, and \toks registers, as well as \read and \writec% stream numbers, \fam codes, \language codes, and \insert numbers. 4\message{re');
embchunkin('gisters,} e% When a register is used only temporarily, it need not be allocated;j% grouping can be used, making the value previously in the register returnd% after the close of the group.  The main use of these macros is fori% registers tha');
embchunkin('t are defined by one macro and used by others, possibly ati% different nesting levels.  All such registers should be defined throughj% these macros; otherwise conflicts may occur, especially when two or moreH% macro packages are being used ');
embchunkin('at once. F% The following counters are reserved::%   0 to 9  page numbering<%       10  count allocation<%       11  dimen allocation;%       12  skip allocation=%       13  muskip allocation:%       14  box allocation;%       15  toks allo');
embchunkin('cation@%       16  read file allocationA%       17  write file allocationB%       18  math family allocation?%       19  language allocation=%       20  insert allocationN%       21  the most recently allocated number7%       22  constant -');
embchunkin('1l% New counters are allocated starting with 23, 24, etc.  Other registers arek% allocated starting with 10.  This leaves 0 through 9 for the user to playj% with safely, except that counts 0 to 9 are considered to be the page andk% subpage ');
embchunkin('numbers (since they are displayed during output). In this scheme,k% \count 10 always contains the number of the highest-numbered counter that^% has been allocated, \count 14 the highest-numbered box, etc.h% Inserts are given numbers 254, 25');
embchunkin('3, etc., since they require a \count,j% \dimen, \skip, and \box all with the same number; \count 20 contains theg% lowest-numbered insert that has been allocated. Of course, \box255 isn% reserved for \output; \count255, \dimen255, and \skip');
embchunkin('255 can be used freely. S% It is recommended that macro designers always usek% \global assignments with respect to registers numbered 1, 3, 5, 7, 9, andn% always non-\global assignments with respect to registers 0, 2, 4, 6, 8, 255.f% This w');
embchunkin('ill prevent ``save stack buildup'''' that might otherwise occur. T\count10=22 % allocates \count registers 23, 24, ...S\count11=9 % allocates \dimen registers 10, 11, ...R\count12=9 % allocates \skip registers 10, 11, ...T\count13=9 % allocat');
embchunkin('es \muskip registers 10, 11, ...Q\count14=9 % allocates \box registers 10, 11, ...R\count15=9 % allocates \toks registers 10, 11, ...O\count16=-1 % allocates input streams 0, 1, ...P\count17=-1 % allocates output streams 0, 1, ...N\count18=');
embchunkin('3 % allocates math families 4, 5, ...P\count19=0 % allocates \language codes 1, 2, ...Q\count20=255 % allocates insertions 254, 253, ...M\countdef\insc@unt=20 % the insertion counterZ\countdef\allocationnumber=21 % the most recent allocatio');
embchunkin('nM\countdef\m@ne=22 \m@ne=-1 % a handy constant[\def\wlog{\immediate\write\m@ne} % write on log file (only) [% Here are abbreviations for the names of scratch registersB% that don''t need to be allocated. 4\countdef\count@=2552\dimendef\dime');
embchunkin('n@=0A\dimendef\dimen@i=1 % global only4\dimendef\dimen@ii=20\skipdef\skip@=00\toksdef\toks@=0 k% Now, we define \newcount, \newbox, etc. so that you can say \newcount\fooc% and \foo will be defined (with \countdef) to be the next counter.g%');
embchunkin(' To find out which counter \foo is, you can look at \allocationnumber.i% Since there''s no \boxdef command, \chardef is used to define a \newbox,A% \newinsert, \newfam, and so on. U\outer\def\newcount{\alloc@0\count\countdef\insc@unt}U\outer');
embchunkin('\def\newdimen{\alloc@1\dimen\dimendef\insc@unt}R\outer\def\newskip{\alloc@2\skip\skipdef\insc@unt}U\outer\def\newmuskip{\alloc@3\muskip\muskipdef\@cclv}P\outer\def\newbox{\alloc@4\box\chardef\insc@unt}g\let\newtoks=\relax % we do this to al');
embchunkin('low plain.tex to be read in twicee\outer\def\newhelp#1#2{\newtoks#1#1\expandafter{\csname#2\endcsname}}O\outer\def\newtoks{\alloc@5\toks\toksdef\@cclv}Q\outer\def\newread{\alloc@6\read\chardef\sixt@@n}S\outer\def\newwrite{\alloc@7\write\cha');
embchunkin('rdef\sixt@@n}O\outer\def\newfam{\alloc@8\fam\chardef\sixt@@n}X\outer\def\newlanguage{\alloc@9\language\chardef\@cclvi}T\def\alloc@#1#2#3#4#5{\global\advance\count1#1by\@neL  \ch@ck#1#4#2% make sure there''s still room>  \allocationnumber=\co');
embchunkin('unt1#1%?  \global#3#5=\allocationnumberR  \wlog{\string#5=\string#2\the\allocationnumber}}W\outer\def\newinsert#1{\global\advance\insc@unt by\m@ne8  \ch@ck0\insc@unt\count8  \ch@ck1\insc@unt\dimen7  \ch@ck2\insc@unt\skip6  \ch@ck4\insc@unt\');
embchunkin('box=  \allocationnumber=\insc@untE  \global\chardef#1=\allocationnumberW  \wlog{\string#1=\string\insert\the\allocationnumber}}D\def\ch@ck#1#2#3{\ifnum\count1#1<#2%L  \else\errmessage{No room for a new #3}\fi} G% Here are some examples of a');
embchunkin('llocation.f\newdimen\maxdimen \maxdimen=16383.99999pt % the largest legal <dimen>f\newskip\hideskip \hideskip=-1000pt plus 1fill % negative but can growZ\newskip\centering \centering=0pt plus 1000pt minus 1000ptV\newdimen\p@ \p@=1pt % this ');
embchunkin('saves macro space and timeU\newdimen\z@ \z@=0pt % can be used both for 0pt and 0L\newskip\z@skip \z@skip=0pt plus0pt minus0ptO\newbox\voidb@x % permanently void box register L% And here''s a different sort of allocation:j% For example, \newi');
embchunkin('f\iffoo creates \footrue, \foofalse to go with \iffoo.V\outer\def\newif#1{\count@\escapechar \escapechar\m@neF  \expandafter\expandafter\expandafterD   \def\@if#1{true}{\let#1=\iftrue}%F  \expandafter\expandafter\expandafterF   \def\@if#1{f');
embchunkin('alse}{\let#1=\iffalse}%c  \@if#1{false}\escapechar\count@} % the condition starts out falseZ\def\@if#1#2{\csname\expandafter\if@\string#1#2\endcsname}h{\uccode`1=`i \uccode`2=`f \uppercase{\gdef\if@12{}}} % `if'' is required K% Assign initia');
embchunkin('l values to TeX''s parameters 5\message{parameters,} R% All of TeX''s numeric parameters are listed here,d% but the code is commented out if no special value needs to be set.V% INITEX makes all parameters zero except where noted. 1\pretoleran');
embchunkin('ce=100J\tolerance=200 % INITEX sets this to 10000.\hbadness=1000.\vbadness=1000/\linepenalty=101\hyphenpenalty=503\exhyphenpenalty=501\binoppenalty=700/\relpenalty=5000\clubpenalty=1501\widowpenalty=1507\displaywidowpenalty=502\brokenpenalt');
embchunkin('y=1008\predisplaypenalty=100007% \postdisplaypenalty=05% \interlinepenalty=0H% \floatingpenalty=0, set during \insertQ% \outputpenalty=0, set before TeX enters \output;\doublehyphendemerits=100009\finalhyphendemerits=50002\adjdemerits=10000');
embchunkin('S% \looseness=0, cleared by TeX after each paragraph,% \pausing=03% \holdinginserts=02% \tracingonline=02% \tracingmacros=01% \tracingstats=06% \tracingparagraphs=01% \tracingpages=02% \tracingoutput=03\tracinglostchars=14% \tracingcommands');
embchunkin('=04% \tracingrestores=0-% \language=0)\uchyph=1N% \lefthyphenmin=2 \righthyphenmin=3 set below/% \globaldefs=0F% \maxdeadcycles=25 % INITEX does this`% \hangafter=1 % INITEX does this, also TeX after each paragraph(% \fam=0>% \mag=1000 % IN');
embchunkin('ITEX does thisD% \escapechar=`\\ % INITEX does this6\defaulthyphenchar=`\-3\defaultskewchar=-1G% \endlinechar=`\^^M % INITEX does this/\newlinechar=-14\delimiterfactor=901O% \time=now % TeX does this at beginning of jobN% \day=now % TeX doe');
embchunkin('s this at beginning of jobP% \month=now % TeX does this at beginning of jobO% \year=now % TeX does this at beginning of job1\showboxbreadth=5/\showboxdepth=34\errorcontextlines=5 ,\hfuzz=0.1pt,\vfuzz=0.1pt1\overfullrule=5pt,\hsize=6.5in,\vs');
end;
procedure embpart4;
begin
embchunkin('ize=8.9in-\maxdepth=4pt8\splitmaxdepth=\maxdimen6\boxmaxdepth=\maxdimenQ% \lineskiplimit=0pt, changed by \normalbaselines7\delimitershortfall=5pt9\nulldelimiterspace=1.2pt2\scriptspace=0.5pt3% \mathsurround=0ptO% \predisplaysize=0pt, set be');
embchunkin('fore TeX enters $$M% \displaywidth=0pt, set before TeX enters $$N% \displayindent=0pt, set before TeX enters $$/\parindent=20ptU% \hangindent=0pt, zeroed by TeX after each paragraph.% \hoffset=0pt.% \voffset=0pt P% \baselineskip=0pt, change');
embchunkin('d by \normalbaselinesL% \lineskip=0pt, changed by \normalbaselines5\parskip=0pt plus 1ptI\abovedisplayskip=12pt plus 3pt minus 9ptC\abovedisplayshortskip=0pt plus 3ptI\belowdisplayskip=12pt plus 3pt minus 9ptM\belowdisplayshortskip=7pt plus');
embchunkin(' 3pt minus 4pt/% \leftskip=0pt0% \rightskip=0pt-\topskip=10pt2\splittopskip=10pt.% \tabskip=0pt0% \spaceskip=0pt1% \xspaceskip=0pt:\parfillskip=0pt plus 1fil /\thinmuskip=3muA\medmuskip=4mu plus 2mu minus 4mu9\thickmuskip=5mu plus 5mu a% We');
embchunkin(' also define special registers that function like parameters:`\newskip\smallskipamount \smallskipamount=3pt plus 1pt minus 1pt\\newskip\medskipamount \medskipamount=6pt plus 2pt minus 2pt]\newskip\bigskipamount \bigskipamount=12pt plus 4pt ');
embchunkin('minus 4ptT\newskip\normalbaselineskip \normalbaselineskip=12ptK\newskip\normallineskip \normallineskip=1ptV\newdimen\normallineskiplimit \normallineskiplimit=0pt6\newdimen\jot \jot=3pt^\newcount\interdisplaylinepenalty \interdisplaylinepena');
embchunkin('lty=100`\newcount\interfootnotelinepenalty \interfootnotelinepenalty=100 A% Definitions for preloaded fonts 7\def\magstephalf{1095 }n\def\magstep#1{\ifcase#1 \@m\or 1200\or 1440\or 1728\or 2074\or 2488\fi\relax} [% Fonts assigned to \preloa');
embchunkin('ded are not part of "plain TeX",d% but they are preloaded so that other format packages can use them.a% For example, if another set of macros says "\font\ninerm=cmr9",c% TeX will not have to reload the font metric information for cmr9. 0\me');
embchunkin('ssage{fonts,} >\font\tenrm=cmr10 % roman text4\font\preloaded=cmr94\font\preloaded=cmr82\font\sevenrm=cmr74\font\preloaded=cmr61\font\fiverm=cmr5 ?\font\teni=cmmi10 % math italic5\font\preloaded=cmmi95\font\preloaded=cmmi82\font\seveni=cmmi');
embchunkin('75\font\preloaded=cmmi61\font\fivei=cmmi5 A\font\tensy=cmsy10 % math symbols5\font\preloaded=cmsy95\font\preloaded=cmsy83\font\sevensy=cmsy75\font\preloaded=cmsy62\font\fivesy=cmsy5 C\font\tenex=cmex10 % math extension C\font\preloaded=cmss');
embchunkin('10 % sans serif6\font\preloaded=cmssq8 K\font\preloaded=cmssi10 % sans serif italic7\font\preloaded=cmssqi8 F\font\tenbf=cmbx10 % boldface extended5\font\preloaded=cmbx95\font\preloaded=cmbx83\font\sevenbf=cmbx75\font\preloaded=cmbx62\font\');
embchunkin('fivebf=cmbx5 ?\font\tentt=cmtt10 % typewriter5\font\preloaded=cmtt95\font\preloaded=cmtt8 M\font\preloaded=cmsltt10 % slanted typewriter B\font\tensl=cmsl10 % slanted roman5\font\preloaded=cmsl95\font\preloaded=cmsl8 @\font\tenit=cmti10 % t');
embchunkin('ext italic5\font\preloaded=cmti95\font\preloaded=cmti85\font\preloaded=cmti7 5\message{more fonts,}M\font\preloaded=cmu10 % unslanted text italic J\font\preloaded=cmmib10 % bold math italicK\font\preloaded=cmbsy10 % bold math symbols M\font');
embchunkin('\preloaded=cmcsc10 % caps and small caps S\font\preloaded=cmssbx10 % sans serif bold extended H\font\preloaded=cmdunh10 % Dunhill style R\font\preloaded=cmr7 scaled \magstep4 % for titlesG\font\preloaded=cmtt10 scaled \magstep2I\font\preloa');
embchunkin('ded=cmssbx10 scaled \magstep2 k\font\preloaded=manfnt % METAFONT logo and dragon curve and special symbols T% Additional \preloaded fonts can be specified here.[% (And those that were \preloaded above can be eliminated.) h\let\preloaded=\un');
embchunkin('defined % preloaded fonts must be declared anew later. ^\skewchar\teni=''177 \skewchar\seveni=''177 \skewchar\fivei=''177^\skewchar\tensy=''60 \skewchar\sevensy=''60 \skewchar\fivesy=''60 b\textfont0=\tenrm \scriptfont0=\sevenrm \scriptscriptfont');
embchunkin('0=\fiverm6\def\rm{\fam\z@\tenrm}_\textfont1=\teni \scriptfont1=\seveni \scriptscriptfont1=\fiveiO\def\mit{\fam\@ne} \def\oldstyle{\fam\@ne\teni}b\textfont2=\tensy \scriptfont2=\sevensy \scriptscriptfont2=\fivesy2\def\cal{\fam\tw@}_\textfont');
embchunkin('3=\tenex \scriptfont3=\tenex \scriptscriptfont3=\tenexY\newfam\itfam \def\it{\fam\itfam\tenit} % \it is family 46\textfont\itfam=\tenitY\newfam\slfam \def\sl{\fam\slfam\tensl} % \sl is family 56\textfont\slfam=\tenslY\newfam\bffam \def\bf{\');
embchunkin('fam\bffam\tenbf} % \bf is family 6Q\textfont\bffam=\tenbf \scriptfont\bffam=\sevenbf?\scriptscriptfont\bffam=\fivebfY\newfam\ttfam \def\tt{\fam\ttfam\tentt} % \tt is family 76\textfont\ttfam=\tentt B% Macros for setting ordinary text1\messa');
embchunkin('ge{macros,} \\def\frenchspacing{\sfcode`\.\@m \sfcode`\?\@m \sfcode`\!\@mL  \sfcode`\:\@m \sfcode`\;\@m \sfcode`\,\@m}a\def\nonfrenchspacing{\sfcode`\.3000\sfcode`\?3000\sfcode`\!3000%N  \sfcode`\:2000\sfcode`\;1500\sfcode`\,1250 } M\def\no');
embchunkin('rmalbaselines{\lineskip\normallineskipf  \baselineskip\normalbaselineskip \lineskiplimit\normallineskiplimit} Q\def\^^M{\ } % control <return> = control <space>=\def\^^I{\ } % same for <tab> 5\def\lq{`} \def\rq{''}=\def\lbrack{[} \def\rbrack');
embchunkin('{]} B\let\endgraf=\par \let\endline=\cr -\def\space{ },\def\empty{}2\def\null{\hbox{}} ;\let\bgroup={ \let\egroup=} a% In \obeylines, we say `\let^^M=\par'' instead of `\def^^M{\par}''g% since this allows, for example, `\let\par=\cr \obeyline');
embchunkin('s \halign{...''T{\catcode`\^^M=\active % these lines must end with %T  \gdef\obeylines{\catcode`\^^M\active \let^^M\par}%_  \global\let^^M\par} % this is in case ^^M appears in a \writeC\def\obeyspaces{\catcode`\ \active}@{\obeyspaces\global');
embchunkin('\let =\space} I\def\loop#1\repeat{\def\body{#1}\iterate}c\def\iterate{\body \let\next\iterate \else\let\next\relax\fi \next}\\let\repeat=\fi % this makes \loop...\if...\repeat skippable ?\def\thinspace{\kern .16667em }B\def\negthinspace{\ke');
embchunkin('rn-.16667em }8\def\enspace{\kern.5em } =\def\enskip{\hskip.5em\relax}:\def\quad{\hskip1em\relax};\def\qquad{\hskip2em\relax} F\def\smallskip{\vskip\smallskipamount}B\def\medskip{\vskip\medskipamount}B\def\bigskip{\vskip\bigskipamount} H\def');
embchunkin('\nointerlineskip{\prevdepth-1000\p@}K\def\offinterlineskip{\baselineskip-1000\p@G  \lineskip\z@ \lineskiplimit\maxdimen} e\def\topglue{\nointerlineskip\vglue-\topskip\vglue} % for top of pageH\def\vglue{\afterassignment\vgl@\skip@=}Q\def\vg');
embchunkin('l@{\par \dimen@\prevdepth \hrule height\z@I  \nobreak\vskip\skip@ \prevdepth\dimen@}H\def\hglue{\afterassignment\hgl@\skip@=}Y\def\hgl@{\leavevmode \count@\spacefactor \vrule width\z@K  \nobreak\hskip\skip@ \spacefactor\count@} ;\def~{\pena');
embchunkin('lty\@M \ } % tieb\def\slash{/\penalty\exhyphenpenalty} % a `/'' that acts like a `-'' 8\def\break{\penalty-\@M}:\def\nobreak{\penalty \@M}=\def\allowbreak{\penalty \z@} L\def\filbreak{\par\vfil\penalty-200\vfilneg}A\def\goodbreak{\par\penalty');
embchunkin('-500 }6\def\eject{\par\break}B\def\supereject{\par\penalty-\@MM} `\def\removelastskip{\ifdim\lastskip=\z@\else\vskip-\lastskip\fi}T\def\smallbreak{\par\ifdim\lastskip<\smallskipamountJ  \removelastskip\penalty-50\smallskip\fi}P\def\medbreak');
embchunkin('{\par\ifdim\lastskip<\medskipamountI  \removelastskip\penalty-100\medskip\fi}P\def\bigbreak{\par\ifdim\lastskip<\bigskipamountI  \removelastskip\penalty-200\bigskip\fi} 9\def\line{\hbox to\hsize}>\def\leftline#1{\line{#1\hss}}?\def\rightlin');
embchunkin('e#1{\line{\hss#1}}D\def\centerline#1{\line{\hss#1\hss}} @\def\rlap#1{\hbox to\z@{#1\hss}}@\def\llap#1{\hbox to\z@{\hss#1}} ;\def\m@th{\mathsurround\z@}M\def\underbar#1{$\setbox\z@\hbox{#1}\dp\z@\z@=  \m@th \underline{\box\z@}$} 0\newbox\str');
embchunkin('utbox^\setbox\strutbox=\hbox{\vrule height8.5pt depth3.5pt width\z@}a\def\strut{\relax\ifmmode\copy\strutbox\else\unhcopy\strutbox\fi} j\def\hidewidth{\hskip\hideskip} % for alignment entries that can stick outc\def\ialign{\everycr{}\tabski');
embchunkin('p\z@skip\halign} % initialized \halign1\newcount\mscountG\def\multispan#1{\omit \mscount#1\relaxH  \loop\ifnum\mscount>\@ne \sp@n\repeat}J\def\sp@n{\span\omit\advance\mscount\m@ne} 9\newif\ifus@ \newif\if@crM\newbox\tabs \newbox\tabsyet \ne');
embchunkin('wbox\tabsdone ]\def\cleartabs{\global\setbox\tabsyet\null \setbox\tabs\null}V\def\settabs{\setbox\tabs\null \futurelet\next\sett@b}X\let\+=\relax % in case this file is being read in twicea\def\sett@b{\ifx\next\+\def\nxt{\afterassignment\s@');
embchunkin('tt@b\let\nxt}%P  \else\let\nxt\s@tcols\fi \let\next\relax \nxt}P\def\s@tt@b{\let\nxt\relax \us@false\m@ketabbox}]\def\tabalign{\us@true\m@ketabbox} % non-\outer version of \+7\outer\def\+{\tabalign}M\def\s@tcols#1\columns{\count@#1\dimen@\h');
embchunkin('sizeJ  \loop\ifnum\count@>\z@ \@nother \repeat}U\def\@nother{\dimen@ii\dimen@ \divide\dimen@ii\count@U  \setbox\tabs\hbox{\hbox to\dimen@ii{}\unhbox\tabs}%Q  \advance\dimen@-\dimen@ii \advance\count@\m@ne} ;\def\m@ketabbox{\begingroupB  \gl');
embchunkin('obal\setbox\tabsyet\copy\tabs>  \global\setbox\tabsdone\nullE  \def\cr{\@crtrue\crcr\egroup\egroupH    \ifus@\unvbox\z@\lastbox\fi\endgroupX    \setbox\tabs\hbox{\unhbox\tabsyet\unhbox\tabsdone}}%A  \setbox\z@\vbox\bgroup\@crfalseI    \iali');
embchunkin('gn\bgroup&\t@bbox##\t@bb@x\crcr} C\def\t@bbox{\setbox\z@\hbox\bgroup}X\def\t@bb@x{\if@cr\egroup % now \box\z@ holds the column^  \else\hss\egroup \global\setbox\tabsyet\hbox{\unhbox\tabsyet^      \global\setbox\@ne\lastbox}% now \box\@ne ho');
embchunkin('lds its sizeR    \ifvoid\@ne\global\setbox\@ne\hbox to\wd\z@{}%Q    \else\setbox\z@\hbox to\wd\@ne{\unhbox\z@}\fi]    \global\setbox\tabsdone\hbox{\box\@ne\unhbox\tabsdone}\fi*  \box\z@} @\def\hang{\hangindent\parindent}X\def\textindent#1{\');
embchunkin('indent\llap{#1\enspace}\ignorespaces}?\def\item{\par\hang\textindent}]\def\itemitem{\par\indent \hangindent2\parindent \textindent}I\def\narrower{\advance\leftskip\parindent?  \advance\rightskip\parindent} `\outer\def\beginsection#1\par{\vs');
end;
procedure embpart5;
begin
embchunkin('kip\z@ plus.3\vsize\penalty-250O  \vskip\z@ plus-.3\vsize\bigskip\vskip\parskipZ  \message{#1}\leftline{\bf#1}\nobreak\smallskip\noindent}H\outer\def\proclaim #1. #2\par{\medbreakG  \noindent{\bf#1.\enspace}{\sl#2\par}%f  \ifdim\lastskip<\m');
embchunkin('edskipamount \removelastskip\penalty55\medskip\fi} o\def\raggedright{\rightskip\z@ plus2em \spaceskip.3333em \xspaceskip.5em\relax}j\def\ttraggedright{\tt\rightskip\z@ plus2em\relax} % for use with \tt only .\chardef\%=`\%.\chardef\&=`\&.\c');
embchunkin('hardef\#=`\#.\chardef\$=`\$/\chardef\ss="19/\chardef\ae="1A/\chardef\oe="1B.\chardef\o="1C/\chardef\AE="1D/\chardef\OE="1E.\chardef\O="1FO\chardef\i="10 \chardef\j="11 % dotless letters3\def\aa{\accent23a}0\def\l{\char32l}]\def\L{\leavevmod');
embchunkin('e\setbox0\hbox{L}\hbox to\wd0{\hss\char32L}} c\def\leavevmode{\unhbox\voidb@x} % begins a paragraph, if necessaryV\def\_{\leavevmode \kern.06em \vbox{\hrule width.3em}}b\def\AA{\leavevmode\setbox0\hbox{!}\dimen@\ht0\advance\dimen@-1ex%J  \r');
embchunkin('lap{\raise.67\dimen@\hbox{\char''27}}A} A\def\mathhexbox#1#2#3{\leavevmodeB  \hbox{$\m@th \mathchar"#1#2#3$}}8\def\dag{\mathhexbox279}9\def\ddag{\mathhexbox27A}6\def\S{\mathhexbox278}6\def\P{\mathhexbox27B}8\def\Orb{\mathhexbox20D} c\def\oal');
embchunkin('ign#1{\leavevmode\vtop{\baselineskip\z@skip \lineskip.25ex%b  \ialign{##\crcr#1\crcr}}} \def\o@lign{\lineskiplimit\z@ \oalign}f\def\ooalign{\lineskiplimit-\maxdimen \oalign} % chars over each other_{\catcode`p=12 \catcode`t=12 \gdef\\#1pt{#');
embchunkin('1}} \let\getf@ctor=\\e\def\sh@ft#1{\dimen@#1\kern\expandafter\getf@ctor\the\fontdimen1\fontO  \dimen@} % kern by #1 times the current slantc\def\d#1{{\o@lign{\relax#1\crcr\hidewidth\sh@ft{-1ex}.\hidewidth}}}V\def\b#1{{\o@lign{\relax#1\crcr\');
embchunkin('hidewidth\sh@ft{-3ex}%Q    \vbox to.2ex{\hbox{\char22}\vss}\hidewidth}}}Z\def\c#1{{\setbox\z@\hbox{#1}\ifdim\ht\z@=1ex\accent24 #1%`  \else\ooalign{\unhbox\z@\crcr\hidewidth\char24\hidewidth}\fi}}b\def\copyright{{\ooalign{\hfil\raise.07ex\h');
embchunkin('box{c}\hfil\crcr\Orb}}} V\def\dots{\relax\ifmmode\ldots\else$\m@th\ldots\,$\fi}W\def\TeX{T\kern-.1667em\lower.5ex\hbox{E}\kern-.125emX} 8\def\`#1{{\accent18 #1}}8\def\''#1{{\accent19 #1}}D\def\v#1{{\accent20 #1}} \let\^^_=\vD\def\u#1{{\accen');
embchunkin('t21 #1}} \let\^^S=\u8\def\=#1{{\accent22 #1}}D\def\^#1{{\accent94 #1}} \let\^^D=\^8\def\.#1{{\accent95 #1}}9\def\H#1{{\accent"7D #1}}9\def\~#1{{\accent"7E #1}}9\def\"#1{{\accent"7F #1}}`\def\t#1{{\edef\next{\the\font}\the\textfont1\accent"7');
embchunkin('F\next#1}} D\def\hrulefill{\leaders\hrule\hfill}c\def\dotfill{\cleaders\hbox{$\m@th \mkern1.5mu.\mkern1.5mu$}\hfill}L\def\rightarrowfill{$\m@th\smash-\mkern-7mu%U  \cleaders\hbox{$\mkern-2mu\smash-\mkern-2mu$}\hfillA  \mkern-7mu\mathord\rig');
embchunkin('htarrow$}V\def\leftarrowfill{$\m@th\mathord\leftarrow\mkern-7mu%U  \cleaders\hbox{$\mkern-2mu\smash-\mkern-2mu$}\hfill5  \mkern-7mu\smash-$}S\mathchardef\braceld="37A \mathchardef\bracerd="37BS\mathchardef\bracelu="37C \mathchardef\braceru=');
embchunkin('"37DV\def\downbracefill{$\m@th \setbox\z@\hbox{$\braceld$}%\  \braceld\leaders\vrule height\ht\z@ depth\z@\hfill\braceru^  \bracelu\leaders\vrule height\ht\z@ depth\z@\hfill\bracerd$}T\def\upbracefill{$\m@th \setbox\z@\hbox{$\braceld$}%\  \');
embchunkin('bracelu\leaders\vrule height\ht\z@ depth\z@\hfill\bracerd^  \braceld\leaders\vrule height\ht\z@ depth\z@\hfill\braceru$} I\outer\def\bye{\par\vfill\supereject\end} 9% Macros for math setting;\message{math definitions,} 3\let\sp=^ \let\sb=_9');
embchunkin('\def\,{\mskip\thinmuskip}8\def\>{\mskip\medmuskip}:\def\;{\mskip\thickmuskip}:\def\!{\mskip-\thinmuskip}Z\def\*{\discretionary{\thinspace\the\textfont2\char2}{}{}}M{\catcode`\''=\active \gdef''{^\bgroup\prim@s}}I\def\prim@s{\prime\futurelet\n');
embchunkin('ext\pr@m@s}d\def\pr@m@s{\ifx''\next\let\nxt\pr@@@s \else\ifx^\next\let\nxt\pr@@@tB  \else\let\nxt\egroup\fi\fi \nxt}Q\def\pr@@@s#1{\prim@s} \def\pr@@@t#1#2{#2\egroup}a{\catcode`\^^Z=\active \gdef^^Z{\not=}} % ^^Z is like \ne in math k{\catco');
embchunkin('de`\_=\active \global\let_=\_} % _ in math is either subscript or \_ 8\mathchardef\alpha="010B7\mathchardef\beta="010C8\mathchardef\gamma="010D8\mathchardef\delta="010E:\mathchardef\epsilon="010F7\mathchardef\zeta="01106\mathchardef\eta="01');
embchunkin('118\mathchardef\theta="01127\mathchardef\iota="01138\mathchardef\kappa="01149\mathchardef\lambda="01155\mathchardef\mu="01165\mathchardef\nu="01175\mathchardef\xi="01185\mathchardef\pi="01196\mathchardef\rho="011A8\mathchardef\sigma="011B6\');
embchunkin('mathchardef\tau="011C:\mathchardef\upsilon="011D6\mathchardef\phi="011E6\mathchardef\chi="011F6\mathchardef\psi="01208\mathchardef\omega="0121=\mathchardef\varepsilon="0122;\mathchardef\vartheta="01238\mathchardef\varpi="01249\mathchardef\v');
embchunkin('arrho="0125;\mathchardef\varsigma="01269\mathchardef\varphi="01278\mathchardef\Gamma="70008\mathchardef\Delta="70018\mathchardef\Theta="70029\mathchardef\Lambda="70035\mathchardef\Xi="70045\mathchardef\Pi="70058\mathchardef\Sigma="7006:\mat');
embchunkin('hchardef\Upsilon="70076\mathchardef\Phi="70086\mathchardef\Psi="70098\mathchardef\Omega="700A 8\mathchardef\aleph="0240D\def\hbar{{\mathchar''26\mkern-9muh}}8\mathchardef\imath="017B8\mathchardef\jmath="017C6\mathchardef\ell="01605\mathchard');
embchunkin('ef\wp="017D5\mathchardef\Re="023C5\mathchardef\Im="023D:\mathchardef\partial="01408\mathchardef\infty="02318\mathchardef\prime="0230;\mathchardef\emptyset="023B8\mathchardef\nabla="0272;\def\surd{{\mathchar"1270}}6\mathchardef\top="023E6\ma');
embchunkin('thchardef\bot="023FT\def\angle{{\vbox{\ialign{$\m@th\scriptstyle##$\crcrC      \not\mathrel{\mkern14mu}\crcr@      \noalign{\nointerlineskip}e      \mkern2.5mu\leaders\hrule height.34pt\hfill\mkern2.5mu\crcr}}}};\mathchardef\triangle="02349');
embchunkin('\mathchardef\forall="02389\mathchardef\exists="0239E\mathchardef\neg="023A \let\lnot=\neg7\mathchardef\flat="015B:\mathchardef\natural="015C8\mathchardef\sharp="015D;\mathchardef\clubsuit="027C>\mathchardef\diamondsuit="027D<\mathchardef\he');
embchunkin('artsuit="027E<\mathchardef\spadesuit="027F 9\mathchardef\coprod="13609\mathchardef\bigvee="1357;\mathchardef\bigwedge="1356;\mathchardef\biguplus="13559\mathchardef\bigcap="13549\mathchardef\bigcup="1353R\mathchardef\intop="1352 \def\int{\i');
embchunkin('ntop\nolimits}7\mathchardef\prod="13516\mathchardef\sum="1350<\mathchardef\bigotimes="134E;\mathchardef\bigoplus="134C:\mathchardef\bigodot="134AU\mathchardef\ointop="1348 \def\oint{\ointop\nolimits};\mathchardef\bigsqcup="1346;\mathchardef');
embchunkin('\smallint="1273 ?\mathchardef\triangleleft="212F@\mathchardef\triangleright="212E@\mathchardef\bigtriangleup="2234B\mathchardef\bigtriangledown="2235I\mathchardef\wedge="225E \let\land=\wedgeD\mathchardef\vee="225F \let\lor=\vee6\mathcharde');
embchunkin('f\cap="225C6\mathchardef\cup="225B:\mathchardef\ddagger="227A9\mathchardef\dagger="22798\mathchardef\sqcap="22758\mathchardef\sqcup="22748\mathchardef\uplus="225D8\mathchardef\amalg="2271:\mathchardef\diamond="22059\mathchardef\bullet="220F');
embchunkin('5\mathchardef\wr="226F6\mathchardef\div="22047\mathchardef\odot="220C9\mathchardef\oslash="220B9\mathchardef\otimes="220A9\mathchardef\ominus="22098\mathchardef\oplus="22085\mathchardef\mp="22075\mathchardef\pm="22067\mathchardef\circ="220E');
embchunkin(':\mathchardef\bigcirc="220D]\mathchardef\setminus="226E % for set difference A\setminus B7\mathchardef\cdot="22016\mathchardef\ast="22038\mathchardef\times="22027\mathchardef\star="213F 9\mathchardef\propto="322F=\mathchardef\sqsubseteq="32');
embchunkin('76=\mathchardef\sqsupseteq="3277;\mathchardef\parallel="326B6\mathchardef\mid="326A8\mathchardef\dashv="32618\mathchardef\vdash="3260:\mathchardef\nearrow="3225:\mathchardef\searrow="3226:\mathchardef\nwarrow="322D:\mathchardef\swarrow="322');
embchunkin('EA\mathchardef\Leftrightarrow="322C<\mathchardef\Leftarrow="3228=\mathchardef\Rightarrow="3229<\def\neq{\not=} \let\ne=\neqC\mathchardef\leq="3214 \let\le=\leqC\mathchardef\geq="3215 \let\ge=\geq7\mathchardef\succ="321F7\mathchardef\prec="3');
embchunkin('21E9\mathchardef\approx="32199\mathchardef\succeq="32179\mathchardef\preceq="32169\mathchardef\supset="321B9\mathchardef\subset="321A;\mathchardef\supseteq="3213;\mathchardef\subseteq="32125\mathchardef\in="3232C\mathchardef\ni="3233 \let\o');
embchunkin('wns=\ni5\mathchardef\gg="321D5\mathchardef\ll="321C6\mathchardef\not="3236A\mathchardef\leftrightarrow="3224Q\mathchardef\leftarrow="3220 \let\gets=\leftarrowQ\mathchardef\rightarrow="3221 \let\to=\rightarrowa\mathchardef\mapstochar="3237 \');
embchunkin('def\mapsto{\mapstochar\rightarrow}6\mathchardef\sim="32188\mathchardef\simeq="32277\mathchardef\perp="323F8\mathchardef\equiv="32118\mathchardef\asymp="32108\mathchardef\smile="315E8\mathchardef\frown="315F@\mathchardef\leftharpoonup="3128B');
embchunkin('\mathchardef\leftharpoondown="3129A\mathchardef\rightharpoonup="312AC\mathchardef\rightharpoondown="312B B\def\joinrel{\mathrel{\mkern-3mu}}k\def\relbar{\mathrel{\smash-}} % \smash, because - has the same height as +6\def\Relbar{\mathrel=}g');
embchunkin('\mathchardef\lhook="312C \def\hookrightarrow{\lhook\joinrel\rightarrow}e\mathchardef\rhook="312D \def\hookleftarrow{\leftarrow\joinrel\rhook}`\def\bowtie{\mathrel\triangleright\joinrel\mathrel\triangleleft}?\def\models{\mathrel|\joinrel=}O\');
embchunkin('def\Longrightarrow{\Relbar\joinrel\Rightarrow}O\def\longrightarrow{\relbar\joinrel\rightarrow}M\def\longleftarrow{\leftarrow\joinrel\relbar}M\def\Longleftarrow{\Leftarrow\joinrel\Relbar}K\def\longmapsto{\mapstochar\longrightarrow}V\def\long');
embchunkin('leftrightarrow{\leftarrow\joinrel\rightarrow}V\def\Longleftrightarrow{\Leftarrow\joinrel\Rightarrow}A\def\iff{\;\Longleftrightarrow\;} U\mathchardef\ldotp="613A % ldot as a punctuation markU\mathchardef\cdotp="6201 % cdot as a punctuation m');
embchunkin('arkV\mathchardef\colon="603A % colon as a punctuation markJ\def\ldots{\mathinner{\ldotp\ldotp\ldotp}}J\def\cdots{\mathinner{\cdotp\cdotp\cdotp}}T\def\vdots{\vbox{\baselineskip4\p@ \lineskiplimit\z@G    \kern6\p@\hbox{.}\hbox{.}\hbox{.}}}j\d');
end;
procedure embpart6;
begin
embchunkin('ef\ddots{\mathinner{\mkern1mu\raise7\p@\vbox{\kern7\p@\hbox{.}}\mkern2mu[    \raise4\p@\hbox{.}\mkern2mu\raise\p@\hbox{.}\mkern1mu}} =\def\acute{\mathaccent"7013 }=\def\grave{\mathaccent"7012 }<\def\ddot{\mathaccent"707F }=\def\tilde{\matha');
embchunkin('ccent"707E };\def\bar{\mathaccent"7016 }=\def\breve{\mathaccent"7015 }=\def\check{\mathaccent"7014 };\def\hat{\mathaccent"705E };\def\vec{\mathaccent"017E };\def\dot{\mathaccent"705F }A\def\widetilde{\mathaccent"0365 }?\def\widehat{\mathacc');
embchunkin('ent"0362 }P\def\overrightarrow#1{\vbox{\m@th\ialign{##\crcr]      \rightarrowfill\crcr\noalign{\kern-\p@\nointerlineskip}K      $\hfil\displaystyle{#1}\hfil$\crcr}}}O\def\overleftarrow#1{\vbox{\m@th\ialign{##\crcr\      \leftarrowfill\crcr\');
embchunkin('noalign{\kern-\p@\nointerlineskip}K      $\hfil\displaystyle{#1}\hfil$\crcr}}}f\def\overbrace#1{\mathop{\vbox{\m@th\ialign{##\crcr\noalign{\kern3\p@}\      \downbracefill\crcr\noalign{\kern3\p@\nointerlineskip}S      $\hfil\displaystyle{#1}');
embchunkin('\hfil$\crcr}}}\limits}T\def\underbrace#1{\mathop{\vtop{\m@th\ialign{##\crcrk      $\hfil\displaystyle{#1}\hfil$\crcr\noalign{\kern3\p@\nointerlineskip}U      \upbracefill\crcr\noalign{\kern3\p@}}}}\limits}e\def\skew#1#2#3{{\muskip\z@#1mu\di');
embchunkin('vide\muskip\z@\tw@ \mkern\muskip\z@b    #2{\mkern-\muskip\z@{#3}\mkern\muskip\z@}\mkern-\muskip\z@}{}} `\def\lmoustache{\delimiter"437A340 } % top from (, bottom from )`\def\rmoustache{\delimiter"537B341 } % top from ), bottom from (a\def\l');
embchunkin('group{\delimiter"462833A } % extensible ( with sharper tipsa\def\rgroup{\delimiter"562933B } % extensible ) with sharper tips]\def\arrowvert{\delimiter"26A33C } % arrow without arrowheadsd\def\Arrowvert{\delimiter"26B33D } % double arrow wi');
embchunkin('thout arrowheadsi\def\bracevert{\delimiter"77C33E } % the vertical bar that extends bracesJ\def\Vert{\delimiter"26B30D } \let\|=\Vert=\def\vert{\delimiter"26A30C }A\def\uparrow{\delimiter"3222378 }C\def\downarrow{\delimiter"3223379 }E\def\u');
embchunkin('pdownarrow{\delimiter"326C33F }A\def\Uparrow{\delimiter"322A37E }C\def\Downarrow{\delimiter"322B37F }E\def\Updownarrow{\delimiter"326D377 }c\def\backslash{\delimiter"26E30F } % for double coset G\backslash H@\def\rangle{\delimiter"526930B }');
embchunkin('@\def\langle{\delimiter"426830A }O\def\rbrace{\delimiter"5267309 } \let\}=\rbraceO\def\lbrace{\delimiter"4266308 } \let\{=\lbrace?\def\rceil{\delimiter"5265307 }?\def\lceil{\delimiter"4264306 }@\def\rfloor{\delimiter"5263305 }@\def\lfloor{\');
embchunkin('delimiter"4262304 } 8\def\bigl{\mathopen\big}7\def\bigm{\mathrel\big}9\def\bigr{\mathclose\big}8\def\Bigl{\mathopen\Big}7\def\Bigm{\mathrel\Big}9\def\Bigr{\mathclose\Big}:\def\biggl{\mathopen\bigg}9\def\biggm{\mathrel\bigg};\def\biggr{\math');
embchunkin('close\bigg}:\def\Biggl{\mathopen\Bigg}9\def\Biggm{\mathrel\Bigg};\def\Biggr{\mathclose\Bigg}]\def\big#1{{\hbox{$\left#1\vbox to8.5\p@{}\right.\n@space$}}}^\def\Big#1{{\hbox{$\left#1\vbox to11.5\p@{}\right.\n@space$}}}_\def\bigg#1{{\hbox{$\l');
embchunkin('eft#1\vbox to14.5\p@{}\right.\n@space$}}}_\def\Bigg#1{{\hbox{$\left#1\vbox to17.5\p@{}\right.\n@space$}}}J\def\n@space{\nulldelimiterspace\z@ \m@th} >\def\choose{\atopwithdelims()}=\def\brack{\atopwithdelims[]}?\def\brace{\atopwithdelims\{\');
embchunkin('}} ;\def\sqrt{\radical"270370 } V\def\mathpalette#1#2{\mathchoice{#1\displaystyle{#2}}%c  {#1\textstyle{#2}}{#1\scriptstyle{#2}}{#1\scriptscriptstyle{#2}}}/\newbox\rootbox>\def\root#1\of{\setbox\rootboxX  \hbox{$\m@th\scriptscriptstyle{#1}$');
embchunkin('}\mathpalette\r@@t}^\def\r@@t#1#2{\setbox\z@\hbox{$\m@th#1\sqrt{#2}$}\dimen@\ht\z@8  \advance\dimen@-\dp\z@[  \mkern5mu\raise.6\dimen@\copy\rootbox \mkern-10mu\box\z@}7\newif\ifv@ \newif\ifh@D\def\vphantom{\v@true\h@false\ph@nt}D\def\hphant');
embchunkin('om{\v@false\h@true\ph@nt}B\def\phantom{\v@true\h@true\ph@nt}U\def\ph@nt{\ifmmode\def\next{\mathpalette\mathph@nt}%C  \else\let\next\makeph@nt\fi\next}N\def\makeph@nt#1{\setbox\z@\hbox{#1}\finph@nt}[\def\mathph@nt#1#2{\setbox\z@\hbox{$\m@th#');
embchunkin('1{#2}$}\finph@nt}>\def\finph@nt{\setbox\tw@\nullF  \ifv@ \ht\tw@\ht\z@ \dp\tw@\dp\z@\fiB  \ifh@ \wd\tw@\wd\z@\fi \box\tw@}:\def\mathstrut{\vphantom(}_\def\smash{\relax % \relax, in case this comes first in \halignc  \ifmmode\def\next{\mathp');
embchunkin('alette\mathsm@sh}\else\let\next\makesm@sh+  \fi\next}N\def\makesm@sh#1{\setbox\z@\hbox{#1}\finsm@sh}[\def\mathsm@sh#1#2{\setbox\z@\hbox{$\m@th#1{#2}$}\finsm@sh}J\def\finsm@sh{\ht\z@\z@ \dp\z@\z@ \box\z@} ^\def\cong{\mathrel{\mathpalette\@ve');
embchunkin('req\sim}} % congruence signg\def\@vereq#1#2{\lower.5\p@\vbox{\lineskiplimit\maxdimen\lineskip-.5\p@V    \ialign{$\m@th#1\hfil##\hfil$\crcr#2\crcr=\crcr}}}L\def\notin{\mathrel{\mathpalette\c@ncel\in}}c\def\c@ncel#1#2{\m@th\ooalign{$\hfil#1\m');
embchunkin('kern1mu/\hfil$\crcr$#1#2$}}U\def\rightleftharpoons{\mathrel{\mathpalette\rlh@{}}}R\def\rlh@#1{\vcenter{\m@th\hbox{\ooalign{\raise2ptI          \hbox{$#1\rightharpoonup$}\crcr@        $#1\leftharpoondown$}}}}a\def\buildrel#1\over#2{\mathrel{');
embchunkin('\mathop{\kern\z@#2}\limits^{#1}}}F\def\doteq{\buildrel\textstyle.\over=} C\def\log{\mathop{\rm log}\nolimits}A\def\lg{\mathop{\rm lg}\nolimits}A\def\ln{\mathop{\rm ln}\nolimits}:\def\lim{\mathop{\rm lim}}B\def\limsup{\mathop{\rm lim\,sup}}B');
embchunkin('\def\liminf{\mathop{\rm lim\,inf}}C\def\sin{\mathop{\rm sin}\nolimits}I\def\arcsin{\mathop{\rm arcsin}\nolimits}E\def\sinh{\mathop{\rm sinh}\nolimits}C\def\cos{\mathop{\rm cos}\nolimits}I\def\arccos{\mathop{\rm arccos}\nolimits}E\def\cosh{\');
embchunkin('mathop{\rm cosh}\nolimits}C\def\tan{\mathop{\rm tan}\nolimits}I\def\arctan{\mathop{\rm arctan}\nolimits}E\def\tanh{\mathop{\rm tanh}\nolimits}C\def\cot{\mathop{\rm cot}\nolimits}E\def\coth{\mathop{\rm coth}\nolimits}C\def\sec{\mathop{\rm se');
embchunkin('c}\nolimits}C\def\csc{\mathop{\rm csc}\nolimits}:\def\max{\mathop{\rm max}}:\def\min{\mathop{\rm min}}:\def\sup{\mathop{\rm sup}}:\def\inf{\mathop{\rm inf}}C\def\arg{\mathop{\rm arg}\nolimits}C\def\ker{\mathop{\rm ker}\nolimits}C\def\dim{\m');
embchunkin('athop{\rm dim}\nolimits}C\def\hom{\mathop{\rm hom}\nolimits}:\def\det{\mathop{\rm det}}C\def\exp{\mathop{\rm exp}\nolimits}8\def\Pr{\mathop{\rm Pr}}:\def\gcd{\mathop{\rm gcd}}C\def\deg{\mathop{\rm deg}\nolimits} N\def\bmod{\nonscript\mskip-');
embchunkin('\medmuskip\mkern5muc  \mathbin{\rm mod}\penalty900\mkern5mu\nonscript\mskip-\medmuskip}S\def\pmod#1{\allowbreak\mkern18mu({\rm mod}\,\,#1)} T\def\cases#1{\left\{\,\vcenter{\normalbaselines\m@thX    \ialign{$##\hfil$&\quad##\hfil\crcr#1\crcr');
embchunkin('}}\right.}S\def\matrix#1{\null\,\vcenter{\normalbaselines\m@thT    \ialign{\hfil$##$\hfil&&\quad\hfil$##$\hfil\crcrR      \mathstrut\crcr\noalign{\kern-\baselineskip}^      #1\crcr\mathstrut\crcr\noalign{\kern-\baselineskip}}}\,}H\def\pmatr');
embchunkin('ix#1{\left(\matrix{#1}\right)}1\newdimen\p@renwd`\setbox0=\hbox{\tenex B} \p@renwd=\wd0 % width of the big left (E\def\bordermatrix#1{\begingroup \m@thj  \setbox\z@\vbox{\def\cr{\crcr\noalign{\kern2\p@\global\let\cr\endline}}%d    \ialign{$');
embchunkin('##$\hfil\kern2\p@\kern\p@renwd&\thinspace\hfil$##$\hfil@      &&\quad\hfil$##$\hfil\crcrY      \omit\strut\hfil\crcr\noalign{\kern-\baselineskip}%>      #1\crcr\omit\strut\cr}}%Z  \setbox\tw@\vbox{\unvcopy\z@\global\setbox\@ne\lastbox}%a  \');
embchunkin('setbox\tw@\hbox{\unhbox\@ne\unskip\global\setbox\@ne\lastbox}%a  \setbox\tw@\hbox{$\kern\wd\@ne\kern-\p@renwd\left(\kern-\wd\@neO    \global\setbox\@ne\vbox{\box\@ne\kern2\p@}%d    \vcenter{\kern-\ht\@ne\unvbox\z@\kern-\baselineskip}\,\righ');
embchunkin('t)$}%N  \null\;\vbox{\kern\ht\@ne\box\tw@}\endgroup} L\def\openup{\afterassignment\@penup\dimen@=}D\def\@penup{\advance\lineskip\dimen@>  \advance\baselineskip\dimen@@  \advance\lineskiplimit\dimen@}O\def\eqalign#1{\null\,\vcenter{\openup\j');
embchunkin('ot\m@thc  \ialign{\strut\hfil$\displaystyle{##}$&$\displaystyle{{}##}$\hfil7      \crcr#1\crcr}}\,}-\newif\ifdt@pM\def\displ@y{\global\dt@ptrue\openup\jot\m@thg  \everycr{\noalign{\ifdt@p \global\dt@pfalse \ifdim\prevdepth>-1000\p@Z      \v');
embchunkin('skip-\lineskiplimit \vskip\normallineskiplimit \fiS      \else \penalty\interdisplaylinepenalty \fi}}}_\def\@lign{\tabskip\z@skip\everycr{}} % restore inside \displ@yL\def\displaylines#1{\displ@y \tabskip\z@skipg  \halign{\hbox to\displaywi');
embchunkin('dth{$\@lign\hfil\displaystyle##\hfil$}\crcr-    #1\crcr}}L\def\eqalignno#1{\displ@y \tabskip\centeringg  \halign to\displaywidth{\hfil$\@lign\displaystyle{##}$\tabskip\z@skipW    &$\@lign\displaystyle{{}##}$\hfil\tabskip\centeringJ    &\lla');
embchunkin('p{$\@lign##$}\tabskip\z@skip\crcr-    #1\crcr}}M\def\leqalignno#1{\displ@y \tabskip\centeringg  \halign to\displaywidth{\hfil$\@lign\displaystyle{##}$\tabskip\z@skipW    &$\@lign\displaystyle{{}##}$\hfil\tabskip\centeringc    &\kern-\displa');
embchunkin('ywidth\rlap{$\@lign##$}\tabskip\displaywidth\crcr-    #1\crcr}} ?% Definitions related to output :\message{output routines,} U\countdef\pageno=0 \pageno=1 % first page is number 1`\newtoks\headline \headline={\hfil} % headline is normally b');
embchunkin('lankR\newtoks\footline \footline={\hss\tenrm\folio\hss}^  % footline is normally a centered page number in font \tenrm5\newif\ifr@ggedbottom]\def\raggedbottom{\topskip 10\p@ plus60\p@ \r@ggedbottomtrue}k\def\normalbottom{\topskip 10\p@ \r@g');
embchunkin('gedbottomfalse} % undoes \raggedbottomk\def\folio{\ifnum\pageno<\z@ \romannumeral-\pageno \else\number\pageno \fi}]\def\nopagenumbers{\footline{\hfil}} % blank out the footline`\def\advancepageno{\ifnum\pageno<\z@ \global\advance\pageno\m@n');
embchunkin('eZ  \else\global\advance\pageno\@ne \fi} % increase |pageno| 2\newinsert\footinsf\def\footnote#1{\let\@sf\empty % parameter #2 (the text) is read laterV  \ifhmode\edef\@sf{\spacefactor\the\spacefactor}\/\fi7  #1\@sf\vfootnote{#1}}G\def\vfoo');
embchunkin('tnote#1{\insert\footins\bgroupL  \interlinepenalty\interfootnotelinepenalty_  \splittopskip\ht\strutbox % top baseline for broken footnotesQ  \splitmaxdepth\dp\strutbox \floatingpenalty\@MMi  \leftskip\z@skip \rightskip\z@skip \spaceskip\z@');
end;
procedure embpart7;
begin
embchunkin('skip \xspaceskip\z@skipP  \textindent{#1}\footstrut\futurelet\next\fo@t}T\def\fo@t{\ifcat\bgroup\noexpand\next \let\next\f@@t>  \else\let\next\f@t\fi \next}L\def\f@@t{\bgroup\aftergroup\@foot\let\next}4\def\f@t#1{#1\@foot}9\def\@foot{\strut');
embchunkin('\egroup}G\def\footstrut{\vbox to\splittopskip{}}c\skip\footins=\bigskipamount % space added when footnote is present\\count\footins=1000 % footnote magnification factor (1 to 1)O\dimen\footins=8in % maximum footnotes per page 1\newinsert\to');
embchunkin('pins;\newif\ifp@ge \newif\if@midI\def\topinsert{\@midfalse\p@gefalse\@ins}>\def\midinsert{\@midtrue\@ins}I\def\pageinsert{\@midfalse\p@getrue\@ins}a\skip\topins=\z@skip % no space added when a topinsert is presentR\count\topins=1000 % magni');
embchunkin('fication factor (1 to 1)K\dimen\topins=\maxdimen % no limit per page`\def\@ins{\par\begingroup\setbox\z@\vbox\bgroup} % start a \vboxI\def\endinsert{\egroup % finish the \vboxb  \if@mid \dimen@\ht\z@ \advance\dimen@\dp\z@ \advance\dimen@12\');
embchunkin('p@Y    \advance\dimen@\pagetotal \advance\dimen@-\pageshrinkU    \ifdim\dimen@>\pagegoal\@midfalse\p@gefalse\fi\fiB  \if@mid \bigskip\box\z@\bigbreakV  \else\insert\topins{\penalty100 % floating insertion8    \splittopskip\z@skipO    \split');
embchunkin('maxdepth\maxdimen \floatingpenalty\z@9    \ifp@ge \dimen@\dp\z@Z    \vbox to\vsize{\unvbox\z@\kern-\dimen@}% depth is zeroR    \else \box\z@\nobreak\bigskip\fi}\fi\endgroup} 5\output{\plainoutput}d\def\plainoutput{\shipout\vbox{\makeheadlin');
embchunkin('e\pagebody\makefootline}%0  \advancepagenoS  \ifnum\outputpenalty>-\@MM \else\dosupereject\fi}b\def\pagebody{\vbox to\vsize{\boxmaxdepth\maxdepth \pagecontents}}L\def\makeheadline{\vbox to\z@{\vskip-22.5\p@\  \line{\vbox to8.5\p@{}\the\head');
embchunkin('line}\vss}\nointerlineskip}j\def\makefootline{\baselineskip24\p@\lineskiplimit\z@\line{\the\footline}}k\def\dosupereject{\ifnum\insertpenalties>\z@ % something is being held overT  \line{}\kern-\topskip\nobreak\vfill\supereject\fi} V\def\pa');
embchunkin('gecontents{\ifvoid\topins\else\unvbox\topins\fiS  \dimen@=\dp\@cclv \unvbox\@cclv % open up \box255Q  \ifvoid\footins\else % footnote info is present7    \vskip\skip\footins1    \footnoterule6    \unvbox\footins\fiJ  \ifr@ggedbottom \kern-\');
embchunkin('dimen@ \vfil \fi}<\def\footnoterule{\kern-3\p@^  \hrule width 2truein \kern 2.6\p@} % the \hrule is .4pt high k% Hyphenation, miscellaneous macros, and initial values for standard layout5\message{hyphenation} ^\lefthyphenmin=2 \righthyphenm');
embchunkin('in=3 % disallow x- or -xx breaks-\input hyphen O\def\magnification{\afterassignment\m@g\count@}4\def\m@g{\mag\count@V  \hsize6.5truein\vsize8.9truein\dimen\footins8truein} U\def\loggingall{\tracingcommands\tw@\tracingstats\tw@Z  \tracingpag');
embchunkin('es\@ne\tracingoutput\@ne\tracinglostchars\@ne^  \tracingmacros\tw@\tracingparagraphs\@ne\tracingrestores\@neQ  \showboxbreadth\maxdimen\showboxdepth\maxdimen}N\def\tracingall{\tracingonline\@ne\loggingall} i\def\showhyphens#1{\setbox0\vbox{');
embchunkin('\parfillskip\z@skip\hsize\maxdimen\tenrma  \pretolerance\m@ne\tolerance\m@ne\hbadness0\showboxdepth0\ #1}} G\normalbaselines\rm % select roman fontS\nonfrenchspacing % punctuation affects the spacingN\catcode`@=12 % at signs are no longer l');
embchunkin('etters p\def\fmtname{plain}\def\fmtversion{3.1415926535} % identifies the current formatb% The Plain TeX hyphenation tables [NOT TO BE CHANGED IN ANY WAY!]i% Unlimited copying and redistribution of this file are permitted as longh% as this ');
embchunkin('file is not modified. Modifications are permitted, but only ifM% the resulting file is not named hyphen.tex.Z\patterns{ % just type <return> if you''re not using INITEX%.ach4''.ad4der%.af1t%.al3t&.am5at%.an5c%.ang4&.ani5m%.ant4&.an3te''.anti5s');
embchunkin('%.ar5s''.ar4tie&.ar4ty%.as3c%.as1p%.as1s''.aster5&.atom5%.au1d%.av4i%.awn4%.ba4g&.ba5na&.bas4e%.ber4&.be5ra&.be3sm''.be5sto%.bri2''.but4ti''.cam4pe&.can5c''.capa5b''.car5ol%.ca4t&.ce4la$.ch4(.chill5i$.ci2&.cit5r%.co3e%.co4r(.cor5ner''.de4moi%.de3o&');
embchunkin('.de3ra&.de3ri&.des4c(.dictio5%.do4t%.du4c&.dumb5''.earth5&.eas3i$.eb4%.eer4$.eg2%.el5d&.el3em&.enam3%.en3g%.en3s(.eq5ui5t&.er4ri$.es3$.eu3%.eye5%.fes3(.for5mer$.ga2$.ge2''.gen3t4&.ge5og%.gi5a%.gi4b%.go4r''.hand5i&.han5k$.he2''.hero5i%.hes3%.het');
embchunkin('3%.hi3b&.hi3er''.hon5ey&.hon3o%.hov5%.id4l&.idol3%.im3m''.im5pin$.in1&.in3ci%.ine2%.in2k%.in3s%.ir5r%.is4i%.ju3r&.la4cy%.la4m''.lat5er&.lath5$.le2&.leg5e%.len4%.lep5%.lev1%.li4g&.lig5a%.li2n%.li3o%.li4t''.mag5a5&.mal5o&.man5a''.mar5ti$.me2&.mer3');
embchunkin('c''.me5ter%.mis1''.mist5i&.mon3e&.mo3ro&.mu5ta''.muta5b%.ni4c$.od2%.odd5&.of5te''.or5ato%.or3c%.or1d%.or3t$.os3&.os4tl%.oth3%.out3''.ped5al&.pe5te''.pe5tit%.pi4e&.pio5n%.pi2t&.pre3m%.ra4c&.ran4t).ratio5na%.ree2''.re5mit%.res2(.re5stat%.ri4g&.rit5u');
embchunkin('%.ro4q&.ros5t&.row5d%.ru4d&.sci3e&.self5&.sell5%.se2n''.se5rie$.sh2$.si2&.sing4$.st4''.sta5bl$.sy2$.ta4$.te4''.ten5an$.th2$.ti2%.til4''.tim5o5&.ting4&.tin5k&.ton4a%.to4p&.top5i&.tou5s(.trib5ut%.un1a&.un3ce''.under5%.un1e%.un5k%.un5o%.un3u$.up3%.');
embchunkin('ure3%.us5a''.ven4de&.ve5ra&.wil5i$.ye4$4ab.%a5bal%a5ban$abe2&ab5erd%abi5a(ab5it5ab&ab5lat(ab5o5liz$4abr&ab5rog%ab3ul%a4car&ac5ard&ac5aro&a5ceou%ac1er&a5chet%4a2ci%a3cie%ac1in%a3cio&ac5rob&act5if%ac3ul%ac4um#a2d&ad4din&ad5er.$2adi%a3dia&ad3ic');
embchunkin('a&adi4er%a3dio%a3dit%a5diu%ad4le%ad3ow&ad5ran%ad4su$4adu%a3duc%ad5um$ae4r&aeri4e#a2f$aff4%a4gab%aga4n&ag5ell%age4o%4ageu$ag1i%4ag4l$ag1n$a2go%3agog&ag3oni&a5guer%ag5ul$a4gy$a3ha$a3he$ah4l$a3ho#ai2$a5ia%a3ic.%ai5ly%a4i4n&ain5in%ain5o&ait5en#');
embchunkin('a1j%ak1en%al5ab%al3ad%a4lar%4aldi$2ale&al3end''a4lenti&a5le5o$al1i&al4ia.%ali4e&al5lev&4allic$4alm&a5log.%a4ly.%4alys''5a5lyst%5alyt%3alyz$4ama%am5ab%am3ag&ama5ra&am5asc''a4matis''a4m5ato&am5era%am3ic%am5if&am5ily%am1in&ami4no$a2mo%a5mon&amor5i');
embchunkin('&amp5en#a2n&an3age&3analy%a3nar&an3arc&anar4i&a3nati$4and&ande4s&an3dis%an1dl&an4dow%a5nee%a3nen''an5est.%a3neu$2ang&ang5ie%an1gl&a4n1ic&a3nies&an3i3f&an4ime&a5nimi&a5nine%an3io%a3nip&an3ish%an3it%a3niu&an4kli&5anniz$ano4%an5ot&anoth5%an2sa&');
embchunkin('an4sco%an4sn%an2sp&ans3po%an4st&an4sur&antal4&an4tie%4anto%an2tr%an4tw%an3ua%an3ul%a5nur#4ao%apar4%ap5at&ap5ero&a3pher%4aphi''a4pilla(ap5illar%ap3in&ap3ita&a3pitu$a2pl%apoc5&ap5ola&apor5i&apos3t&aps5es$a3pu%aque5$2a2r&ar3act&a5rade''ar5adis%a');
embchunkin('r3al(a5ramete&aran4g%ara3p%ar4at''a5ratio''ar5ativ%a5rau&ar5av4%araw4&arbal4''ar4chan''ar5dine%ar4dr&ar5eas%a3ree&ar3ent&a5ress%ar4fi%ar4fl$ar1i&ar5ial&ar3ian&a3riet%ar4im''ar5inat%ar3io%ar2iz%ar2mi&ar5o5d&a5roni%a3roo$ar2p$ar3q%arre4%ar4sa%ar2s');
embchunkin('h$4as.%as4ab&as3ant%ashi4&a5sia.%a3sib%a3sic''5a5si4t%ask3i$as4l%a4soc%as5ph%as4sh&as3ten%as1tr&asur5a$a2ta&at3abl%at5ac&at3alo%at5ap%ate5c&at5ech&at3ego&at3en.&at3era&ater5n''a5terna&at3est%at5ev$4ath&ath5em&a5then%at4ho&ath5om%4ati.%a5tia&a');
embchunkin('t5i5b%at1ic%at3if(ation5ar&at3itu%a4tog%a2tom''at5omiz%a4top%a4tos$a1tr&at5rop%at4sk&at4tag%at5te%at4th$a2tu%at5ua%at5ue%at3ul&at3ura$a2ty$au4b%augh3%au3gu%au4l2%aun5d$au3r&au5sib&aut5en%au1th$a2va%av3ag%a5van&ave4no&av3era&av5ern&av5ery$av1');
embchunkin('i&avi4er%av3ig%av5oc%a1vor%3away$aw3i%aw4ly$aws4%ax4ic%ax4id%ay5al$aye4$ays4&azi4er%azz5i$5ba.''bad5ger%ba4ge%bal1a''ban5dag%ban4e%ban3i&barbi5&bari4a&bas4si$1bat$ba4z$2b1b$b2be%b3ber&bbi4na$4b1d$4be.%beak4%beat3%4be2d%be3da%be3de%be3di%be3gi');
embchunkin('%be5gu$1bel%be1li%be3lo%4be5m&be5nig%be5nu%4bes4%be3sp&be5str$3bet&bet5iz%be5tr%be3tw$be3w%be5yo#2bf$4b3h$bi2b$bi4d$3bie%bi5en%bi4er%2b3if$1bil&bi3liz''bina5r4%bin4d&bi5net&bi3ogr%bi5ou$bi2t''3bi3tio%bi3tr''3bit5ua%b5itz#b1j#bk4$b2l2&blath5%b4');
embchunkin('le.%blen4&5blesp%b3lis$b4lo&blun4t$4b1m$4b3n%bne5g$3bod%bod3i$bo4e&bol3ic&bom4bi%bon4a&bon5at$3boo%5bor.&4b1ora%bor5d%5bore%5bori%5bos4%b5ota%both5%bo4to&bound3#4bp%4brit&broth3%2b5s2%bsor4#2bt$bt4l$b4to$b3tr''buf4fer%bu4ga%bu3li%bumi4$bu4n&');
embchunkin('bunt4i%bu3re&bus5ie&buss4e%5bust%4buta&3butio%b5uto#b1v$4b5w$5by.$bys4#1ca&cab3in%ca1bl%cach4&ca5den%4cag4%2c5ah&ca3lat&cal4la''call5in%4calo%can5d%can4e&can4ic&can5is&can3iz&can4ty%cany4&ca5per&car5om''cast5er''cas5tig%4casy%ca4th&4cativ&cav5');
embchunkin('al#c3c%ccha5%cci4a''ccompa5%ccon4&ccou3t$2ce.%4ced.&4ceden$3cei%5cel.%3cell$1cen%3cenc&2cen4e%4ceni%3cent$3cep&ce5ram%4cesa&3cessi(ces5si5b%ces5t$cet4&c5e4ta$cew4#2ch$4ch.&4ch3ab''5chanic(ch5a5nis$che2&cheap3%4ched&che5lo&3chemi&ch5ene&ch3er.');
embchunkin('&ch3ers&4ch1in''5chine.(ch5iness&5chini%5chio%3chit%chi2z%3cho2%ch4ti#1ci$3cia&ci2a5b%cia5r$ci5c%4cier''5cific.$4cii%ci4la%3cili$2cim$2cin%c4ina&3cinat&cin3em%c1ing&c5ing.%5cino%cion4%4cipe%ci3ph&4cipic&4cista&4cisti%2c1it&cit3iz$5ciz#ck1$ck3');
embchunkin('i%1c4l4%4clar)c5laratio&5clare%cle4m%4clic%clim4$cly4#c5n#1co%co5ag$coe2$2cog%co4gr$coi4&co3inc%col5i%5colo&col3or&com5er%con4a%c4one%con3g%con5t%co3pa&cop3ic%co4pl%4corb&coro3n%cos4e$cov1%cove4%cow5a%coz5e%co5zi#c1q&cras5t&5crat.''5cratic&c');
embchunkin('re3at%5cred''4c3reta%cre4v$cri2%cri5f%c4rin%cris4&5criti&cro4pl&crop5o&cros4e%cru4d%4c3s2$2c1t%cta4b&ct5ang&c5tant$c2te%c3ter&c4ticu&ctim3i%ctu4r$c4tw$cud5$c4uf$c4ui&cu5ity%5culi''cul4tis&3cultu%cu2ma%c3ume%cu4mi$3cun%cu3pi%cu5py''cur5a4b&cu5r');
embchunkin('ia$1cus&cuss4i%3c4ut&cu4tie''4c5utiv%4cutr#1cy$cze4$1d2a$5da.&2d3a4b%dach4$4daf$2dag%da2m2%dan3g%dard5%dark5%4dary$3dat&4dativ%4dato%5dav4%dav5e$5day#d1b#d5c$d1d4$2de.%deaf5&deb5it&de4bon&decan4&de4cil&de5com%2d1ed%4dee.%de5if&deli4e''del5i5q');
embchunkin('%de5lo$d4em%5dem.&3demic''dem5ic.&de5mil''de4mons&demor5$1den&de4nar%de3no''denti5f%de3nu$de1p%de3pa%depi4%de2pu$d3eq%d4erh%5derm''dern5iz%der5s$des2%d2es.%de1sc&de2s5o&des3ti&de3str%de4su$de1t%de2to$de1v&dev3il$4dey$4d1f$d4ga&d3ge4t$dg1i$d2gy$');
embchunkin('d1h2$5di.&1d4i3a%dia5b&di4cam%d4ice%3dict$3did&5di3en$d1if%di3ge''di4lato$d1in%1dina&3dine.%5dini&di5niz$1dio%dio5g%di4pl$dir2%di1re&dirt5i$dis1%5disi&d4is3t%d2iti%1di1v#d1j$d5k2%4d5la%3dle.%3dled&3dles.&4dless%2d3lo%4d5lu$2dly#d1m%4d1n4#1do');
embchunkin('$3do.%do5de$5doe%2d5of$d4og%do4la%doli4&do5lor&dom5iz&do3nat%doni4%doo3d%dop4p$d4or$3dos&4d5out$do4v$3dox#d1p#1dr''drag5on%4drai$dre4&drea5r%5dren%dri4b%dril4%dro4p%4drow''5drupli$4dry%2d1s2$ds4p$d4sw$d4sy$d2th#1du%d1u1a$du2c%d1uca&duc5er&4du');
end;
procedure embpart8;
begin
embchunkin('ct.&4ducts%du5el$du4g%d3ule&dum4be$du4n$4dup%du4pe#d1v#d1w#d2y$5dyn%dy4se%dys5p%e1a4b%e3act$ead1&ead5ie%ea4ge&ea5ger$ea4l&eal5er&eal3ou&eam3er%e5and%ear3a%ear4c&ear5es&ear4ic&ear4il%ear5k%ear2t&eart3e%ea5sp%e3ass%east3$ea2t&eat5en&eath3i&e5');
embchunkin('atif&e4a3tu$ea2v&eav3en%eav5i%eav5o$2e1b&e4bel.&e4bels%e4ben%e4bit$e3br%e4cad&ecan5c%ecca5$e1ce''ec5essa$ec2i%e4cib)ec5ificat''ec5ifie&ec5ify%ec3im%eci4t&e5cite&e4clam&e4clus%e2col&e4comm''e4compe&e4conc%e2cor&ec3ora&eco5ro$e1cr&e4crem&ec4tan%');
embchunkin('ec4te$e1cu%e4cul&ec3ula%2e2da%4ed3d&e4d1er%ede4s$4edi%e3dia%ed3ib&ed3ica%ed3im%ed1it%edi5z$4edo%e4dol%edon2%e4dri%e4dul&ed5ulo$ee2c%eed3i$ee2f%eel3i%ee4ly$ee2m%ee4na%ee4p1%ee2s4%eest4%ee4ty$e5ex#e1f''e4f3ere$1eff%e4fic&5efici%efil4&e3fine)ef');
embchunkin('5i5nite%3efit''efor5es''e4fuse.%4egal%eger4%eg5ib%eg4ic&eg5ing&e5git5$eg5n%e4go.%e4gos%eg1ul%e5gur$5egy$e1h4%eher4#ei2$e5ic$ei5d$eig2%ei5gl%e3imb%e3inf%e1ing&e5inst%eir4d%eit3e%ei3th%e5ity#e1j%e4jud&ej5udi%eki4n%ek4la$e1la%e4la.%e4lac&elan4d''');
embchunkin('el5ativ%e4law&elaxa4%e3lea''el5ebra%5elec%e4led&el3ega%e5len&e4l1er%e1les$el2f$el2i&e3libe''e4l5ic.&el3ica&e3lier''el5igib%e5lim''e4l3ing%e3lio%e2lis&el5ish&e3liv3%4ella&el4lab%ello4%e5loc%el5og&el3op.%el2sh%el4ta%e5lud%el5ug%e4mac%e4mag%e5man&');
embchunkin('em5ana$em5b$e1me%e2mel%e4met&em3ica%emi4e''em5igra&em1in2&em5ine''em3i3ni%e4mis&em5ish&e5miss%em3iz&5emniz%emo4g''emoni5o%em3pi%e4mul&em5ula%emu3n$e3my&en5amo&e4nant''ench4er&en3dic%e5nea%e5nee%en3em&en5ero&en5esi&en5est&en3etr%e3new&en5ics%e5n');
embchunkin('ie%e5nil%e3nio&en3ish%en3it%e5niu%5eniz$4enn$4eno%eno4g%e4nos%en3ov%en4sw''ent5age''4enthes%en3ua%en5uf%e3ny.%4en3z$e5of$eo2g%e4oi4$e3ol&eop3ar$e1or%eo3re&eo5rol$eos4$e4ot%eo4to%e5out$e5ow$e2pa%e3pai&ep5anc%e5pel&e3pent)ep5etitio%ephe4%e4pli$');
embchunkin('e1po&e4prec''ep5reca&e4pred&ep3reh%e3pro&e4prob%ep4sh''ep5ti5b%e4put&ep5uta#e1q&equi3l(e4q3ui3s$er1a%era4b&4erand%er3ar''4erati.$2erb%er4bl%er3ch&er4che%2ere.&e3real&ere5co&ere3in&er5el.&er3emo&er5ena''er5ence&4erene&er3ent%ere4q&er5ess&er3est%');
embchunkin('eret4$er1h$er1i&e1ria4&5erick&e3rien&eri4er&er3ine%e1rio%4erit%er4iu%eri4v&e4riva%er3m4&er4nis&4ernit&5erniz%er3no$2ero%er5ob%e5roc%ero4r%er1ou$er1s&er3set&ert3er%4ertl%er3tw$4eru%eru4t&5erwau%e1s4a''e4sage.''e4sages$es2c%e2sca&es5can%e3scr%e');
embchunkin('s5cu%e1s2e%e2sec&es5ecr&es5enc''e4sert.''e4serts''e4serva$4esh%e3sha&esh5en$e1si%e2sic%e2sid''es5iden''es5igna&e2s5im&es4i4n''esis4te%esi4u&e5skin%es4mi%e2sol&es3olu%e2son&es5ona$e1sp&es3per''es5pira&es4pre$2ess''es4si4b&estan4&es3tig&es5tim&4es2to');
embchunkin('&e3ston%2estr&e5stro''estruc5%e2sur&es5urr$es4w%eta4b&eten4d%e3teo&ethod3%et1ic&e5tide%etin4&eti4no%e5tir''e5titio''et5itiv$4etn&et5ona%e3tra%e3tre&et3ric&et5rif&et3rog&et5ros%et3ua%et5ym$et5z#4eu$e5un$e3up%eu3ro$eus4%eute4&euti5l%eu5tr&eva2p5');
embchunkin('%e2vas&ev5ast%e5vea&ev3ell&evel3o&e5veng&even4i%ev1er&e5verb$e1vi%ev3id%evi4l%e4vin%evi4v%e5voc$e5vu$e1wa%e4wag%e5wee$e3wh%ewil5&ew3ing%e3wit$1exp$5eyc%5eye.$eys4#1fa%fa3bl%fab3r%fa4ce$4fag%fain4&fall5e&4fa4ma&fam5is$5far&far5th%fa3ta&fa3th');
embchunkin('e%4fato&fault5$4f5b#4fd$4fe.%feas4&feath3$fe4b%4feca%5fect$2fed%fe3li%fe4mo%fen2d&fend5e$fer1%5ferr$fev4$4f1f%f4fes%f4fie&f5fin.&f2f5is%f4fly$f2fy#4fh#1fi$fi3a&2f3ic.''4f3ical&f3ican''4ficate&f3icen&fi3cer%fic4i&5ficia&5ficie%4fics%fi3cu&fi5d');
embchunkin('el&fight5%fil5i''fill5in%4fily$2fin%5fina&fin2d5%fi2ne&f1in3g%fin4n&fis4ti$f4l2&f5less%flin4&flo3re%f2ly5#4fm#4fn#1fo$5fon&fon4de%fon4t$fo2r&fo5rat&for5ay&fore5t%for4i&fort5a$fos5$4f5p%fra4t%f5rea&fres5c$fri2%fril4%frol5$2f3s#2ft$f4to$f2ty#3');
embchunkin('fu%fu5el$4fug&fu4min%fu5ne%fu3ri%fusi4%fus4s%4futa#1fy#1ga$gaf4%5gal.%3gali%ga3lo$2gam&ga5met%g5amo&gan5is&ga3niz''gani5za%4gano&gar5n4%gass4%gath3&4gativ$4gaz#g3b#gd4$2ge.$2ged%geez4&gel4in&ge5lis&ge5liz%4gely$1gen&ge4nat&ge5niz%4geno%4geny');
embchunkin('$1geo%ge3om%g4ery%5gesi%geth5%4geto%ge4ty$ge4v%4g1g2$g2ge%g3ger%gglu5$ggo4%gh3in&gh5out%gh4to$5gi.%1gi4a%gia5r$g1ic&5gicia%g4ico%gien5&5gies.$gil4&g3imen&3g4in.&gin5ge&5g4ins$5gio$3gir%gir4l%g3isl$gi4u$5giv$3giz#gl2$gla4&glad5i%5glas$1gle%g');
embchunkin('li4b%g3lig$3glo%glo3r#g1m$g4my$gn4a%g4na.&gnet4t$g1ni%g2nin%g4nio$g1no%g4non#1go$3go.$gob5$5goe&3g4o4g%go3is$gon2''4g3o3na&gondo5%go3ni$5goo&go5riz&gor5ou%5gos.$gov1#g3p#1gr&4grada%g4rai%gran2''5graph.(g5rapher(5graphic''4graphy%4gray%gre4n''4g');
embchunkin('ress.%4grit$g4ro%gruf4#gs2%g5ste$gth3$gu4a&3guard$2gue&5gui5t$3gun$3gus%4gu4t#g3w#1gy&2g5y3n%gy5ra&h3ab4l%hach4%hae4m%hae4t%h5agu%ha3la&hala3m$ha4m&han4ci&han4cy&5hand.%han4g''hang5er&hang5o''h5a5niz%han4k&han4te%hap3l%hap5t&ha3ran&ha5ras%har');
embchunkin('2d&hard3e&har4le''harp5en''har5ter%has5s%haun4$5haz%haz3a#h1b%1head%3hear&he4can&h5ecat$h4ed&he5do5&he3l4i''hel4lis&hel4ly%h5elo%hem4p$he2n%hena4&hen5at%heo5r$hep5%h4era&hera3p&her4ba&here5a%h3ern&h5erou%h3ery$h1es&he2s5p$he4t&het4ed$heu4#h1f#');
embchunkin('h1h%hi5an%hi4co%high5%h4il2&himer4%h4ina&hion4e$hi4p%hir4l%hi3ro%hir4p%hir4r&his3el%his4s''hith5er$hi2v#4hk%4h1l4%hlan4$h2lo&hlo3ri$4h1m%hmet4$2h1n&h5odiz%h5ods$ho4g%hoge4&hol5ar&3hol4e%ho4ma%home3%hon4a%ho5ny%3hood%hoon4&hor5at&ho5ris&hort3');
embchunkin('e%ho5ru%hos4e&ho5sen%hos1p%1hous&house3&hov5el$4h5p$4hr4%hree5''hro5niz&hro3po%4h1s2$h4sh%h4tar%ht1en%ht5es$h4ty$hu4g&hu4min&hun5ke%hun4t&hus3t4$hu4t#h1w&h4wart%hy3pe%hy3ph$hy2s$2i1a$i2al$iam4''iam5ete$i2an%4ianc%ian3i&4ian4t%ia5pe%iass4&i4at');
embchunkin('iv''ia4tric%i4atu$ibe4&ib3era&ib5ert%ib5ia%ib3in&ib5it.&ib5ite$i1bl%ib3li$i5bo$i1br&i2b5ri%i5bun%4icam%5icap%4icar&i4car.&i4cara%icas5%i4cay%iccu4%4iceo$4ich$2ici%i5cid&ic5ina%i2cip&ic3ipa%i4cly&i2c5oc%4i1cr%5icra%i4cry%ic4te%ictu2''ic4t3ua&i');
embchunkin('c3ula%ic4um%ic5uo%i3cur#2id%i4dai&id5anc$id5d&ide3al%ide4s$i2di&id5ian&idi4ar%i5die%id3io&idi5ou%id1it%id5iu%i3dle%i4dom%id3ow$i4dr$i2du%id5uo$2ie4%ied4e&5ie5ga%ield3&ien5a4%ien4e%i5enn&i3enti%i1er.%i3esc%i1est$i3et$4if.&if5ero&iff5en%if4fr');
embchunkin('&4ific.%i3fie$i3fl$4ift#2ig%iga5b&ig3era&ight3i$4igi%i3gib%ig3il%ig3in%ig3it%i4g4l$i2go%ig3or%ig5ot%i5gre%igu5i%ig1ur#i3h%4i5i4#i3j#4ik$i1la&il3a4b&i4lade&i2l5am&ila5ra%i3leg%il1er%ilev4$il5f$il1i%il3ia%il2ib%il3io&il4ist%2ilit%il2iz&ill5ab');
embchunkin('$4iln%il3oq%il4ty%il5ur$il3v%i4mag&im3age&ima5ry(imenta5r%4imet$im1i&im5ida&imi5le&i5mini%4imit%im4ni%i3mon$i2mu&im3ula$2in.&i4n3au%4inav&incel4&in3cer$4ind(in5dling$2ine%i3nee''iner4ar&i5ness%4inga%4inge&in5gen%4ingi(in5gling%4ingo%4ingu$2i');
embchunkin('ni%i5ni.%i4nia%in3io%in1is''i5nite.''5initio&in3ity$4ink$4inl$2inn%2i1no&i4no4c%ino4s%i4not$2ins%in3se''insur5a%2int.&2in4th$in1u%i5nus$4iny#2io$4io.%ioge4%io2gr$i1ol$io4m&ion3at''ion4ery%ion3i%io5ph%ior3i$i4os%io5th%i5oti%io4to%i4our#2ip$ipe4''');
embchunkin('iphras4$ip3i%ip4ic&ip4re4%ip3ul%i3qua&iq5uef&iq3uid''iq3ui3t#4ir$i1ra%ira4b%i4rac%ird5e&ire4de%i4ref&i4rel4%i4res%ir5gi$ir1i&iri5de%ir4is&iri3tu''5i5r2iz&ir4min%iro4g&5iron.%ir5ul$2is.%is5ag%is3ar%isas5%2is1c%is3ch$4ise%is3er$3isf&is5han&is3h');
embchunkin('on&ish5op%is3ib%isi4d%i5sis''is5itiv%4is4k&islan4%4isms$i2so''iso5mer$is1p%is2pi%is4py%4is1s&is4sal&issen4&is4ses&is4ta.%is1te%is1ti&ist4ly''4istral$i2su%is5us%4ita.&ita4bi%i4tag&4ita5m%i3tan%i3tat$2ite&it3era&i5teri%it4es$2ith$i1ti%4itia&4i2t');
embchunkin('ic&it3ica''5i5tick%it3ig&it5ill%i2tim%2itio%4itis&i4tism''i2t5o5m%4iton&i4tram%it5ry$4itt&it3uat%i5tud%it3ul%4itz.#i1u#2iv&iv3ell&iv3en.''i4v3er.''i4vers.&iv5il.%iv5io%iv1it&i5vore''iv3o3ro&i4v3ot$4i5w$ix4o#4iy%4izar$izi4&5izont#5ja%jac4q$ja4p#1');
embchunkin('je%jer5s''4jestie&4jesty$jew3$jo4p%5judg$3ka.$k3ab$k5ag%kais4$kal4#k1b$k2ed$1kee$ke4g%ke5li&k3en4d$k1er$kes4&k3est.%ke4ty#k3f#kh4#k1i$5ki.%5k2ic%k4ill%kilo5$k4im%k4in.&kin4de''k5iness%kin4g$ki4p$kis4%k5ish#kk4#k1l%4kley$4kly#k1m%k5nes%1k2no$k');
embchunkin('o5r%kosh4$k3ou%kro5n%4k1s2$k4sc$ks4l$k4sy#k5t#k1w&lab3ic%l4abo%laci4%l4ade%la3dy%lag4n%lam3o%3land&lan4dl&lan5et&lan4te%lar4g%lar3i%las4e&la5tan''4lateli&4lativ$4lav&la4v4a$2l1b%lbin4%4l1c2$lce4$l3ci#2ld$l2de&ld4ere&ld4eri$ldi4%ld5is$l3dr%l4');
embchunkin('dri$le2a%le4bi%left5%5leg.%5legg&le4mat(lem5atic%4len.%3lenc&5lene.%1lent%le3ph%le4pr&lera5b%ler4e%3lerg&3l4eri%l4ero$les2&le5sco%5lesq%3less&5less.%l3eva''lev4er.''lev4era''lev4ers$3ley%4leye#2lf$l5fr%4l1g4$l5ga%lgar3%l4ges$lgo3$2l3h%li4ag%li');
embchunkin('2am''liar5iz%li4as&li4ato%li5bi&5licio&li4cor%4lics&4lict.%l4icu%l3icy%l3ida&lid5er%3lidi&lif3er%l4iff%li4fl''5ligate%3ligh&li4gra$3lik&4l4i4l&lim4bl%lim3i%li4mo&l4im4p%l4ina&1l4ine&lin3ea%lin3i''link5er%li5og%4l4iq%lis4p$l1it%l2it.''5litica(l5');
embchunkin('i5tics&liv3er$l1iz#4lj$lka3%l3kal%lka4t#l1l%l4law$l2le%l5lea%l3lec%l3leg%l3lel&l3le4n&l3le4t$ll2i&l2lin4&l5lina$ll4o''lloqui5&ll5out%l5low#2lm%l5met&lm3ing%l4mod%lmon4%2l1n2$3lo.&lob5al%lo4ci$4lof&3logic%l5ogo%3logu&lom3er%5long%lon4i''l3o3ni');
embchunkin('z%lood5&5lope.%lop3i%l3opm%lora4''lo4rato&lo5rie&lor5ou%5los.&los5et)5losophiz(5losophy%los4t%lo4ta&loun5d%2lout$4lov#2lp%lpa5b%l3pha%l5phi&lp5ing%l3pit$l4pl$l5pr$4l1r%2l1s2$l4sc$l2se%l4sie#4lt%lt5ag&ltane5$l1te%lten4&ltera4%lth3i''l5ties.%lt');
embchunkin('is4$l1tr$ltu2&ltur3a$lu5a%lu3br%luch4%lu3ci%lu3en$luf4%lu5id%lu4ma%5lumi&l5umn.''5lumnia$lu3o%luo3r$4lup%luss4&lus3te$1lut%l5ven&l5vet4$2l1w#1ly$4lya$4lyb%ly5me%ly3no%2lys4%l5yse#1ma$2mab%ma2ca(ma5chine%ma4cl&mag5in%5magn$2mah%maid5%4mald&ma');
embchunkin('3lig&ma5lin&mal4li&mal4ty&5mania&man5is&man3iz$4map(ma5rine.&ma5riz&mar4ly%mar3v&ma5sce%mas4e%mas1t%5mate%math3&ma3tis''4matiza$4m1b&mba4t5%m5bil''m4b3ing%mbi4v$4m5c$4me.$2med%4med.&5media&me3die&m5e5dy$me2g&mel5on%mel4t$me2m&mem1o3$1men%men4');
embchunkin('a&men5ac&men4de%4mene%men4i%mens4&mensu5%3ment&men4te%me5on&m5ersa$2mes&3mesti%me4ta&met3al%me1te&me5thi%m4etr''5metric''me5trie&me3try$me4v$4m1f#2mh$5mi.$mi3a%mid4a%mid4g$mig4&3milia''m5i5lie%m4ill%min4a%3mind&m5inee&m4ingl''min5gli''m5ingly%mi');
embchunkin('n4t%m4inu%miot4$m2is''mis4er.%mis5l&mis4ti''m5istry%4mith$m2iz#4mk$4m1l#m1m&mma5ry$4m1n$mn4a%m4nin$mn4o#1mo%4mocr)5mocratiz%mo2d1%mo4go%mois2&moi5se$4mok''mo5lest%mo3me&mon5et&mon5ge&moni3a''mon4ism''mon4ist&mo3niz&monol4&mo3ny.$mo2r&4mora.$mos2');
embchunkin('&mo5sey%mo3sp%moth3%m5ouf%3mous$mo2v$4m1p&mpara5''mpa5rab&mpar5i%m3pet&mphas4$m2pi%mpi4a&mp5ies&m4p1in%m5pir%mp5is&mpo3ri(mpos5ite&m4pous%mpov5%mp4tr$m2py$4m3r%4m1s2$m4sh$m5si#4mt#1mu''mula5r4%5mult&multi3$3mum$mun2$4mup$mu4u#4mw#1na&2n1a2b%n');
end;
procedure embpart9;
begin
embchunkin('4abu%4nac.%na4ca%n5act''nag5er.$nak4%na4li&na5lia%4nalt&na5mit$n2an&nanci4&nan4it%nank4%nar3c%4nare%nar3i%nar4l%n5arm$n4as%nas4c&nas5ti$n2at&na3tal(nato5miz$n2au&nau3se%3naut%nav4e%4n1b4%ncar5&n4ces.%n3cha&n5cheo&n5chil&n3chis%nc1in%nc4it''nc');
embchunkin('our5a$n1cr$n1cu%n4dai%n5dan$n1de''nd5est.%ndi4b&n5d2if%n1dit%n3diz%n5duc%ndu4r%nd2we$2ne.%n3ear$ne2b%neb3u$ne2c%5neck$2ned&ne4gat(neg5ativ%5nege%ne4la&nel5iz%ne5mi%ne4mo$1nen%4nene$3neo%ne4po$ne2q$n1er&nera5b&n4erar%n2ere&n4er5i%ner4r$1nes%2');
embchunkin('nes.%4nesp%2nest%4nesw&3netic$ne4v%n5eve$ne4w#n3f%n4gab%n3gel''nge4n4e&n5gere&n3geri%ng5ha%n3gib%ng1in%n5git%n4gla%ngov4%ng5sh$n1gu%n4gum$n2gy%4n1h4$nha4%nhab3$nhe4%3n4ia%ni3an%ni4ap%ni3ba%ni4bl$ni4d%ni5di%ni4er%ni2fi(ni5ficat%n5igr$nik4$n1i');
embchunkin('m&ni3miz$n1in&5nine.%nin4g$ni4o%5nis.&nis4ta$n2it%n4ith&3nitio&n3itor%ni3tr#n1j$4nk2&n5kero%n3ket%nk3in$n1kl$4n1l#n5m$nme4%nmet4%4n1n2$nne4&nni3al%nni4v%nob4l&no3ble%n5ocl&4n3o2d$3noe$4nog%noge4&nois5i&no5l4i(5nologis&3nomic''n5o5miz%no4mo%n');
embchunkin('o3my$no4n&non4ag%non5i&n5oniz$4nop)5nop5o5li&nor5ab''no4rary%4nosc%nos4e%nos5t%no5ta$1nou%3noun''nov3el3%nowl3$n1p4$npi4&npre4c#n1q#n1r$nru4%2n1s2%ns5ab&nsati4$ns4c$n2se&n4s3es%nsid1%nsig4$n2sl$ns3m%n4soc%ns4pe%n5spi''nsta5bl#n1t%nta4b&nter3s$');
embchunkin('nt2i%n5tib&nti4er%nti2f&n3tine''n4t3ing%nti4p(ntrol5li$nt4s&ntu3me$nu1a$nu4d%nu5en&nuf4fe%n3uin&3nu3it$n4um%nu1me%n5umi%3nu4n$n3uo%nu3tr$n1v2$n1w4$nym4$nyp4#4nz$n3za#4oa$oad3''o5a5les%oard3%oas4e&oast5e%oat5i&ob3a3b%o5bar%obe4l$o1bi%o2bin&ob5');
embchunkin('ing$o3br%ob3ul$o1ce$och4&o3chet%ocif3%o4cil&o4clam%o4cod&oc3rac(oc5ratiz%ocre3&5ocrit''octor5a&oc3ula&o5cure&od5ded%od3ic%odi3o%o2do4%odor3''od5uct.''od5ucts$o4el%o5eng$o3er%oe4ta$o3ev$o2fi&of5ite&ofit4t''o2g5a5r''og5ativ&o4gato$o1ge&o5gene%o5ge');
embchunkin('o%o4ger%o3gie&1o1gis%og3it$o4gl&o5g2ly&3ogniz%o4gro%ogu5i$1ogy%2ogyn$o1h2%ohab5#oi2&oic3es&oi3der%oiff4$oig4&oi5let%o3ing''oint5er%o5ism&oi5son''oist5en&oi3ter#o5j#2ok%o3ken%ok5ie$o1la%o4lan&olass4$ol2d%old1e%ol3er&o3lesc%o3let%ol4fi$ol2i%o3l');
embchunkin('ia&o3lice&ol5id.&o3li4f%o5lil&ol3ing%o5lio&o5lis.&ol3ish&o5lite''o5litio%o5liv&olli4e''ol5ogiz%olo4r%ol5pl$ol2t%ol3ub&ol3ume%ol3un%o5lus$ol2v$o2ly%om5ah%oma5l''om5atiz%om2be%om4bl$o2me&om3ena''om5erse%o4met''om5etry%o3mia&om3ic.&om3ica%o5mid%om1');
embchunkin('in&o5mini''5ommend&omo4ge%o4mon%om3pi&ompro5#o2n$on1a%on4ac%o3nan$on1c&3oncil$2ond%on5do%o3nen&on5est%on4gu%on1ic%o3nio%on1is%o5niu&on3key&on4odi&on3omy$on3s&onspi4(onspir5a%onsu4&onten4&on3t4i&ontif5%on5um%onva5#oo2%ood5e%ood5i$oo4k%oop3i%o');
embchunkin('3ord%oost5$o2pa%ope5d%op1er&3opera''4operag$2oph&o5phan&o5pher&op3ing%o3pit%o5pon&o4posi$o1pr$op1u$opy5#o1q$o1ra%o5ra.&o4r3ag''or5aliz''or5ange%ore5a&o5real%or3ei&ore5sh''or5est.%orew4%or4gu&4o5ria&or3ica%o5ril%or1in%o1rio&or3ity%o3riu%or2mi%or');
embchunkin('n2e%o5rof&or3oug%or5pe%3orrh%or4se&ors5en%orst4&or3thi&or3thy%or4ty%o5rum$o1ry%os3al$os2c%os4ce&o3scop''4oscopi%o5scr&os4i4e''os5itiv&os3ito&os3ity%osi4u$os4l$o2so%os4pa%os4po%os2ta''o5stati&os5til&os5tit%o4tan''otele4g&ot3er.&ot5ers%o4tes$4oth');
embchunkin('''oth5esi&oth3i4&ot3ic.&ot5ica&o3tice%o3tif%o3tis%oto5s#ou2%ou3bl&ouch5i%ou5et$ou4l''ounc5er%oun2d$ou5v%ov4en''over4ne&over3s&ov4ert%o3vis&oviti4&o5v4ol&ow3der%ow3el&ow5est$ow1i%own5i$o4wo$oy1a#1pa%pa4ca%pa4ce%pac4t$p4ad&5pagan&p3agat$p4ai%pai');
embchunkin('n4$p4al%pan4a&pan3el&pan4ty%pa3ny$pa1p%pa4pu''para5bl''par5age&par5di%3pare&par5el&p4a4ri&par4is%pa2te&pa5ter''5pathic&pa5thy''pa4tric$pav4$3pay$4p1b#pd4$4pe.%3pe4a&pear4l$pe2c%2p2ed%3pede%3pedi&pedia4&ped4ic$p4ee%pee4d$pek4%pe4la&peli4e&pe4nan');
embchunkin('%p4enc&pen4th%pe5on&p4era.''pera5bl&p4erag%p4eri''peri5st''per4mal&perme5%p4ern%per3o&per3ti%pe5ru%per1v$pe2t&pe5ten&pe5tiz#4pf#4pg$4ph.&phar5i&phe3no%ph4er&ph4es.%ph1ic%5phie&ph5ing''5phisti%3phiz$ph2l%3phob&3phone&5phoni%pho4r$4phs$ph3t$5phu$');
embchunkin('1phy$pi3a%pian4&pi4cie%pi4cy$p4id%p5ida%pi3de%5pidi%3piec%pi3en''pi4grap%pi3lo$pi2n%p4in.%pind4%p4ino%3pi1o%pion4%p3ith&pi5tha%pi2tu%2p3k2%1p2l2%3plan&plas5t%pli3a&pli5er%4plig%pli4n%ploi4%plu4m&plum4b$4p1m$2p3n$po4c%5pod.%po5em&po3et5%5po4g');
embchunkin('%poin2&5point&poly5t%po4ni$po4p%1p4or%po4ry$1pos%pos1s$p4ot%po4ta%5poun$4p1p&ppa5ra$p2pe%p4ped%p5pel%p3pen%p3per%p3pet(ppo5site#pr2&pray4e&5preci&pre5co&pre3em''pref5ac&pre4la%pre3r&p3rese&3press''pre5ten%pre3v&5pri4e''prin4t3%pri4s&pris3o&p3r');
embchunkin('oca''prof5it%pro3l&pros3e%pro1t%2p1s2$p2se$ps4h%p4sib$2p1t&pt5a4b$p2te$p2th%pti3m%ptu4r$p4tw$pub3$pue4$puf4%pul3c$pu4m$pu2n%pur4r$5pus$pu2t%5pute&put3er%pu3tr''put4ted''put4tin#p3w#qu2%qua5v%2que.%3quer%3quet$2rab%ra3bi&rach4e%r5acl&raf5fi%raf');
embchunkin('4t$r2ai%ra4lo&ram3et%r2ami&rane5o&ran4ge%r4ani%ra5no&rap3er&3raphy%rar5c%rare4&rar5ef&4raril$r2as''ration4%rau4t&ra5vai&rav3el&ra5zie#r1b%r4bab%r4bag$rbi2%rbi4f%r2bin&r5bine''rb5ing.$rb4o#r1c$r2ce%rcen4%r3cha&rch4er&r4ci4b%rc4it%rcum3%r4dal$r');
embchunkin('d2i%rdi4a&rdi4er%rdin4&rd3ing$2re.%re1al%re3an&re5arr%5reav%re4aw''r5ebrat''rec5oll(rec5ompe&re4cre%2r2ed%re1de&re3dis&red5it&re4fac%re2fe''re5fer.%re3fi%re4fy&reg3is%re5it%re1li%re5lu''r4en4ta&ren4te$re1o&re5pin''re4posi%re1pu%r1er4%r4eri%rero4');
embchunkin('%re5ru%r4es.&re4spi''ress5ib%res2t''re5stal&re3str&re4ter''re4ti4z&re3tri$reu2&re5uti$rev2&re4val&rev3el(r5ev5er.''re5vers''re5vert&re5vil''rev5olu%re4wh#r1f$rfu4$r4fy#rg2%rg3er%r3get%r3gic%rgi4n&rg3ing%r5gis%r5git$r1gl%rgo4n$r3gu#rh4$4rh.%4rhal$');
embchunkin('ri3a%ria4b%ri4ag$r4ib%rib3a&ric5as%r4ice%4rici&5ricid&ri4cie%r4ico&rid5er&ri3enc&ri3ent%ri1er%ri5et&rig5an%5rigi&ril3iz&5riman%rim5i%3rimo&rim4pe%r2ina&5rina.%rin4d%rin4e%rin4g$ri1o%5riph&riph5e%ri2pl''rip5lic$r4iq$r2is%r4is.%ris4c%r3ish%ris');
embchunkin('4p''ri3ta3b''r5ited.''rit5er.''rit5ers&rit3ic%ri2tu&rit5ur&riv5el&riv3et%riv3i#r3j%r3ket%rk4le&rk4lin#r1l$rle4%r2led%r4lig%r4lis&rl5ish%r3lo4#r1m%rma5c$r2me%r3men&rm5ers&rm3ing''r4ming.%r4mio%r3mit$r4my%r4nar%r3nel%r4ner%r5net%r3ney%r5nic&r1nis4');
embchunkin('%r3nit%r3niv$rno4%r4nou$r3nu%rob3l$r2oc%ro3cr$ro4e%ro1fe&ro5fil$rok2&ro5ker&5role.''rom5ete%rom4i%rom4p&ron4al%ron4e''ro5n4is&ron4ta%1room%5root&ro3pel&rop3ic%ror3i%ro5ro''ros5per%ros4s&ro4the%ro4ty%ro4va&rov5el$rox5#r1p%r4pea&r5pent&rp5er.%r3');
embchunkin('pet%rp4h4&rp3ing$r3po$r1r4%rre4c%rre4f%r4reo&rre4st%rri4o%rri4v%rron4%rros4%rrys4$4rs2$r1sa&rsa5ti$rs4c$r2se%r3sec&rse4cr&rs5er.%rs3es&rse5v2$r1sh%r5sha$r1si&r4si4b%rson3$r1sp$r5sw&rtach4%r4tag%r3teb&rten4d%rte5o$r1ti%rt5ib%rti4d&r4tier%r3t');
embchunkin('ig&rtil3i&rtil4l&r4tily&r4tist%r4tiv%r3tri''rtroph4%rt4sh$ru3a&ru3e4l%ru3en%ru4gl%ru3in&rum3pl$ru2n%runk5&run4ty%r5usc&ruti5n$rv4e&rvel4i%r3ven&rv5er.&r5vest%r3vey%r3vic%rvi4v$r3vo#r1w$ry4c&5rynge$ry3t#sa2%2s1ab%5sack&sac3ri%s3act$5sai&salar');
embchunkin('4%sal4m%sa5lo%sal4t%3sanc&san4de$s1ap%sa5ta''5sa3tio%sat3u$sau4&sa5vor$5saw$4s5b''scan4t5%sca4p%scav5%s4ced%4scei%s4ces$sch2%s4cho&3s4cie''5scin4d%scle5%s4cli%scof4&4scopy''scour5a$s1cu$4s5d$4se.$se4a%seas4%sea5w&se2c3o%3sect%4s4ed&se4d4e%s5edl');
embchunkin('$se2g%seg3r$5sei%se1le%5self%5selv%4seme&se4mol&sen5at%4senc%sen4d&s5ened%sen5g&s5enin&4sentd&4sentl&sep3a3&4s1er.%s4erl%ser4o&4servo%s1e4s%se5sh%ses5t&5se5um$5sev&sev3en%sew4i$5sex$4s3f$2s3g#s2h$2sh.%sh1er%5shev%sh1in%sh3io%3ship%shiv5$sho');
embchunkin('4&sh5old%shon3%shor4&short5$4shw$si1b%s5icc&3side.&5sides%5sidi&si5diz&4signa%sil4e%4sily%2s1in%s2ina&5sine.%s3ing$1sio%5sion&sion5a$si2r%sir5a$1sis&3sitio$5siu$1siv$5siz#sk2$4ske%s3ket&sk5ine&sk5ing$s1l2%s3lat$s2le&slith5$2s1m$s3ma&small3%');
embchunkin('sman3%smel4%s5men&5smith''smol5d4$s1n4#1so%so4ce%soft3&so4lab&sol3d2&so3lic%5solv$3som&3s4on.%sona4%son4g$s4op''5sophic''s5ophiz&s5ophy%sor5c%sor5d$4sov%so5vi$2spa%5spai%spa4n&spen4d&2s5peo%2sper%s2phe&3spher%spho5%spil4&sp5ing%4spio%s4ply%s4p');
embchunkin('on%spor4%4spot''squal4l#s1r#2ss$s1sa%ssas3%s2s5c%s3sel&s5seng&s4ses.%s5set$s1si%s4sie&ssi4er&ss5ily$s4sl%ss4li$s4sn''sspend4$ss2t&ssur5a$ss5w$2st.%s2tag%s2tal&stam4i&5stand&s4ta4p&5stat.%s4ted''stern5i&s5tero%ste2w&stew5a%s3the$st2i%s4ti.%s5ti');
embchunkin('a%s1tic&5stick%s4tie%s3tif&st3ing%5stir%s1tle&5stock&stom3a&5stone%s4top&3store$st4r&s4trad''5stratu&s4tray&s4trid%4stry%4st3w$s2ty#1su%su1al%su4b3%su2g3%su5is%suit3$s4ul$su2m%sum3i$su2n$su2r#4sv#sw2$4swo#s4y$4syc$3syl%syn5o&sy5rin#1ta$3ta.$');
embchunkin('2tab''ta5bles(5taboliz%4taci%ta5do%4taf4&tai5lo$ta2l%ta5la&tal5en%tal3i%4talk''tal4lis&ta5log%ta5mo&tan4de&tanta3&ta5per%ta5pl%tar4a%4tarc%4tare&ta3riz%tas4e%ta5sy&4tatic&ta4tur%taun4$tav4$2taw&tax4is$2t1b#4tc$t4ch&tch5et$4t1d$4te.&tead4i%4te');
embchunkin('at%tece4%5tect%2t1ed%te5di$1tee$teg4&te5ger%te5gi%3tel.%teli4%5tels&te2ma2&tem3at&3tenan%3tenc%3tend&4tenes%1tent''ten4tag$1teo$te4p%te5pe%ter3c&5ter3d%1teri''ter5ies&ter3is''teri5za''5ternit%ter5v%4tes.%4tess&t3ess.&teth5e$3teu$3tex$4tey$2t1f$');
embchunkin('4t1g$2th.%than4$th2e%4thea&th3eas&the5at&the3is%3thet&th5ic.&th5ica%4thil&5think$4thl&th5ode''5thodic%4thoo''thor5it''tho5riz$2ths$1tia%ti4ab&ti4ato%2ti2b%4tick%t4ico&t4ic1u%5tidi%3tien$tif2%ti5fy$2tig%5tigu''till5in$1tim%4timp&tim5ul%2t1in%t2i');
embchunkin('na&3tine.%3tini$1tio%ti5oc''tion5ee$5tiq%ti3sa%3tise%tis4m%ti5so%tis4p(5tistica%ti3tl$ti4u$1tiv%tiv4a$1tiz%ti3za&ti3zen#2tl$t5la%tlan4%3tle.%3tled&3tles.&t5let.$t5lo$4t1m$tme4%2t1n2#1to$to3b''to5crat%4todo$2tof%to2gr%to5ic%to2ma%tom4b%to3my''t');
embchunkin('on4ali&to3nat%4tono%4tony%to2ra&to3rie&tor5iz$tos2%5tour%4tout&to3war$4t1p$1tra%tra3b&tra5ch&traci4''trac4it''trac4te%tras4''tra5ven(trav5es5%tre5f%tre4m&trem5i%5tria''tri5ces''5tricia&4trics%2trim%tri4v&tro5mi&tron5i&4trony''tro5phe&tro3sp%tro3v');
embchunkin('%tru5i%trus4%4t1s2$t4sc$tsh4$t4sw%4t3t2%t4tes$t5to$ttu4#1tu$tu1a%tu3ar%tu4bi$tud2$4tue%4tuf4%5tu3i$3tum&tu4nis&2t3up.%3ture%5turi&tur3is%tur5o%tu5ry$3tus#4tv#tw4%4t1wa%twis4$4two#1ty$4tya$2tyl%type3%ty5ph#4tz$tz4e$4uab$uac4%ua5na%uan4i''uar5');
embchunkin('ant%uar2d%uar3i%uar3t$u1at$uav4$ub4e%u4bel%u3ber&u4bero%u1b4i''u4b5ing&u3ble.$u3ca%uci4b%uc4it%ucle3$u3cr$u3cu$u4cy$ud5d%ud3er&ud5est%udev4%u1dic&ud3ied&ud3ies%ud5is%u5dit%u4don%ud4si$u4du%u4ene%uens4&uen4te&uer4il$3ufa$u3fl&ugh3en%ug5in$2ui');
embchunkin('2&uil5iz$ui4n%u1ing%uir4m%uita4$uiv3''uiv4er.#u5j#4uk$u1la%ula5b&u5lati%ulch4&5ulche&ul3der$ul4e%u1len%ul4gi$ul2i%u5lia&ul3ing&ul5ish&ul4lar''ul4li4b&ul4lis%4ul3m%u1l4o$4uls&uls5es%ul1ti&ultra3%4ultu$u3lu%ul5ul$ul5v%um5ab%um4bi&um4bly$u1mi''u4');
end;
procedure embpart10;
begin
embchunkin('m3ing&umor5o$um2p%unat4$u2ne%un4er$u1ni%un4im%u2nin&un5ish%uni3v%un3s4%un4sw&unt3ab''un4ter.&un4tes$unu4$un5y$un5z%u4ors$u5os$u1ou$u1pe&uper5s%u5pia&up3ing$u3pl$up3p''upport5&upt5ib%uptu4$u1ra%4ura.%u4rag%u4ras%ur4be$urc4$ur1d&ure5at&ur4fer%u');
embchunkin('r4fr%u3rif''uri4fic%ur1in%u3rio%u1rit%ur3iz$ur2l(url5ing.%ur4no%uros4%ur4pe%ur4pi&urs5er&ur5tes&ur3the%urti4&ur4tie$u3ru#2us%u5sad%u5san%us4ap$usc2%us3ci%use5a%u5sia%u3sic&us4lin$us1p%us5sl''us5tere%us1tr$u2su%usur4%uta4b%u3tat%4ute.%4utel%4u');
embchunkin('ten&uten4i&4u1t2i''uti5liz&u3tine&ut3ing''ution5a%u4tis&5u5tiz%u4t1l%ut5of%uto5g)uto5matic%u5ton%u4tou$uts4#u3u$uu4m$u1v2$uxu3$uz4e#1va$5va.&2v1a4b&vac5il%vac3u$vag4%va4ge&va5lie%val5o%val1u%va5mo&va5niz%va5pi''var5ied$3vat$4ve.$4ved$veg3%v3el');
embchunkin('.&vel3li%ve4lo%v4ely&ven3om&v5enue%v4erd&5vere.&v4erel&v3eren''ver5enc&v4eres&ver3ie''vermi4n&3verse&ver3th%v4e2s%4ves.&ves4te%ve4te&vet3er%ve4ty&vi5ali%5vian&5vide.&5vided''4v3iden&5vides%5vidi$v3if%vi5gn$vik4$2vil&5vilit''v3i3liz$v1in&4vi4na%');
embchunkin('v2inc%vin5d%4ving%vio3l&v3io4r%vi1ou$vi4p%vi5ro&vis3it%vi3so%vi3su%4viti%vit3r%4vity$3viv$5vo.$voi4$3vok%vo4la%v5ole%5volt%3volv%vom5i&vor5ab%vori4%vo4ry%vo4ta&4votee$4vv4#v4y%w5abl$2wac&wa5ger%wag5o%wait5%w5al.$wam4%war4t%was4t%wa1te&wa5ve');
embchunkin('r#w1b''wea5rie&weath3%wed4n%weet3%wee5v%wel4l$w1er%west3$w3ev$whi4#wi2$wil2''will5in&win4de%win4g$wir4%3wise%with3$wiz5#w4k%wl4es%wl3in$w4no$1wo2$wom1&wo5ven#w5p$wra4$wri4&writa4$w3sh$ws4l%ws4pe%w5s4t#4wt#wy4#x1a%xac5e%x4ago$xam3$x4ap$xas5$x3');
embchunkin('c2#x1e''xe4cuto$x2ed%xer4i%xe5ro#x1h$xhi2%xhil5$xhu4#x3i$xi5a$xi5c%xi5di%x4ime&xi5miz#x3o$x4ob#x3p&xpan4d''xpecto5%xpe3d$x1t2$x3ti#x1u$xu3a#xx4$y5ac%3yar4$y5at#y1b#y1c$y2ce%yc5er$y3ch%ych4e%ycom4%ycot4#y1d$y5ee$y1er%y4erf$yes4$ye4t$y5gi$4y3h#');
embchunkin('y1i$y3la''ylla5bl$y3lo$y5lu&ymbol5$yme4%ympa3&yn3chr$yn5d$yn5g%yn5ic$5ynx$y1o4$yo5d%y4o5g$yom4&yo5net%y4ons$y4os%y4ped%yper5$yp3i$y3po%y4poc%yp2ta$y5pu%yra5m%yr5ia$y3ro$yr4r$ys4c%y3s2e&ys3ica%ys3io%3ysis$y4so$yss4$ys1t%ys3ta%ysur4&y3thin%yt3');
embchunkin('ic#y1w#za1%z5a2b$zar2#4zb#2ze$ze4n$ze4p$z1er%ze3ro$zet4$2z1i$z4il$z4is#5zl#4zm#1zo$zo4m%zo5ol$zte4%4z1z2$z4zy!}a\hyphenation{ % Do NOT make any alterations to this list! --- DEK+as-so-ciate,as-so-ciates.dec-li-na-tion,oblig-a-tory/phil-an-t');
embchunkin('hropic''present(presents''project(projects,reci-procity/re-cog-ni-zance.ref-or-ma-tion.ret-ri-bu-tion&ta-ble!}&\hrule*\vskip 1in>\centerline{\bf A SHORT STORY}*\vskip 6ptU\centerline{\sl    by A. U. Thor} % !`?`?! (modified)+\vskip .5cm>Once ');
embchunkin('upon a time, in a distant;  galaxy called \"O\"o\c c,6there lived a computer5named R.~J. Drofnats. ?Mr.~Drofnats---or ``R. J.,'''' asShe preferred to be called---% error has been fixed!@was happiest when he was at work@typesetting beautiful d');
embchunkin('ocuments.*\vskip 1in&\hrule,\vfill\ejectH\headline={\hfil\sl A Small Sample\hfil}<\footline={\hfil\folio\hfil}O\centerline{\bf Typesetting a Little Plain TeX}(\medskipo\noindent Plain \TeX\ sets paragraphs by breaking a long line of boxes a');
embchunkin('nd gluelinto lines of equal width, choosing the breaks that make the whole paragraphmlook best. It does the same for pages\footnote{$^1$}{A footnote is set at thecbottom of the page, under a short rule.} and for mathematics, where\$$\int_0^');
embchunkin('1 {dx\over 1+x^2}={\pi\over4}\qquad\hbox{and}\qquadA\sum_{k=1}^{n}k={n(n+1)\over2}.$$(\medskipX\halign{\hfil#\hfil\quad&\hfil#\hfil\quad&\hfil#\hfil\cr<\bf n&\bf $n^2$&\bf $2^n$\cr4\noalign{\smallskip}Q1&1&2\cr 2&4&4\cr 3&9&8\cr 4&16&16\cr ');
embchunkin('5&25&32\cr}(\bigskipn\noindent Hyphenation is by Liang''s algorithm: a paragraph of ordinary runningmtext such as this one, with words like typesetting, computer, hyphenation andrmathematical, lets the line breaker split them when that gives');
embchunkin(' a better paragraph.,\vfill\ejectc\noindent The second page holds only this line, followed by a rule.1\vskip 1in \hrule,\vfill\eject011700120000007f002c000f001000100007000700000016e0c98c0c00a0000010546558206d6174682073796d626f6c730000000000');
embchunkin('00000000000000000000000000000000000005434d4253590000000000000000000000000000000000ea1faa0000025300001faa0000084200001faa0000085300001faa00001faa00001faa00001faa00001faa00001faa00001faa000029cc000008530000085300001f6400001f6400001fdd00001fdd');
embchunkin('00001fdd00001fdd00001fdd00001fdd00001f2100001f7500001f9700001f97000029970000299700001f9700001f970000292100002921000008cb000008cb00002921000029cb000029cb00001f640000292100002921000010cb000010cb00002921000029cb000029cb00001f300000038000002930');
embchunkin('0000159700001597000028cc000028cc000001cb0000012100000bc000000bc000001530000008e600001cc000001cc000001fc000001fc0000010c0000022b0010613b005040ab00d041eb0090209b0210319b029030eb8110326b001030cb01d0016b839051db0010117b001042bb0010423b0350221b0');
embchunkin('090318b0250224b8010327b001020fb015040db03d0011b0290212b025002ab025021ab0310414b825021bb01904158000001580000015800000158000001580000010c0000010c0000005ee000005ee000005ee000005ee000008ee000008ee000004ee000004ee000002ee000008ee000008ee000010ee');
embchunkin('000008ee000002cb0000251f000020b0000025b0000007cc2c0015800000158000001fdd00001fdd000006cc000005cc000005cc000010cc00001fc900001fc900001fc900001fc90000000000000000000000051c70000582d6000727d000082d8000086c150009199a000933300009b6080009cec6000a');
embchunkin('38e0000a473b000a4e68000ae7d0000b2465000b3e90000b6f78000bcc38000bf72b000c2343000c4440000c7896000c9c6d000cf52d000d0682000d114b000d1875000d49f0000df0a3000e45f5000e4fa0000e6662000e7d23000ebb4d000eff45000f06ce000f5550000fcc58000fd54e00105b000012');
embchunkin('66600012b29b00160b93000000000000f5c3000641fe00071c7200078e3a000793e80008091b000864200008e39000095e70000a2220000afa50000b1c72000b258d000c000000000000fffe41feffff8e3affff93e80000091b000064200000e38e00015e7000018e3a000212f60002222000031c700003');
embchunkin('1c720003258d00040000000f0a3d0000000000005c33000082d80000c11b0000e44b0001240000014d5d00014d7a0001539e00015a730001a0b600020b6000025a3600026ea6000300020004471d80308000803080018030800280308003803080048030800580308006000082d8000105b0000188880002');
embchunkin('0b6000028e3800031110000393e80004000000000000000000000000000000071c720012666000000000000bf2880006c86e0007953b000c19360006002d00069b350005ce6800049f4a000266660004f29000062d800000cccd00263d70001028f600040000014c00120000007f002d000f000a00050058');
embchunkin('000a000000071af2225600a000000854655820746578740000000000000000000000000000000000000000000000000000000000000004434d4258000000000000000000000000000000000000ea14b0000027b0000023b000001bb0000018b0000024b000001db0000023b000001db0000023b000001db0');
embchunkin('000013c0110a12c0000012c0000027c0000027c0000001300000033800000dc000000dc000000d7000000dc000000d60000020c00000090600000fc000001d300000233000000d54000028b000002bb0000023d200000130010002c0011710c0000027c700000de3000027e3000023c0000001c0011206e9');
embchunkin('000006e900000de00000238500000118000004300115011000000de900000da000000da000000da000000da000000da000000da000000da000000da000000da000000da00000013000000138000002480000232100000b4800000bc0011823c0000020b0014c1cb000001db0000021b0013517b0000016b0');
embchunkin('012426b0000024b0000005b001570eb0000025b0012a14b0015229b0000024b000001fb0013519b0011e1fb800001eb0014c12b000001ab0012e22b0000020b005242cb0052420b0012a20b0092f15b0000001e9000010c0000001e900000dc0000001c0000001c001110c30014812c001420930014012c0');
embchunkin('00000a30000003c011020d38055612c0013a01c0000003c8000011c0011901c000002730013a1230013a0d300142123801421138000008300000073000000690014a1230014b113005191d30051a113000001138051f093000000d300d162a300c000dc000000dc000000dc000000000000000051c700005');
embchunkin('999800059f48000622200006fa4e000727d0000741fb000793e800082d8000086eed0008b0580008f1c300093330000982d500098e360009a4f80009b608000a38e0000abbb8000b110d000b3e90000b93e5000c16bd000c4440000c93e5000cccc8000ce38a000d16bd000d49f0000dccc8000dd278000d');
embchunkin('e93a000e1c6d000e27ce000e4fa0000e6662000e6c12000e7773000f55500010aaa500117772001266600012b605001305aa0000000000027d28000641fe00071c72000800000008aaab000989aa000a1c72000a2220000a28a3000a4fa5000afa50000b1c72000bc16d000c000000000000fffe41fe0000');
embchunkin('c71d0000e38e00018e3a000222200002b8e300031c7000031c7200040000000000000000416d000075c2000082d80001be93006c8000804c80010069000c0066000b006c000d00278002003f80020021800200298002805d80020069000e006c000f00278002003f80020021800200298002805d80028060');
embchunkin('005c00270022003f800380218003802d007b802d007c8060003c8060003e006180040065800500618005006f80058063800500418006006f80050065800500618005002e8006802c8006006f80060065800600758006007280060061800600418007004f8005004380050047800580518005007980050065');
embchunkin('8006006f800600728006006180060041800680758006005880050057800500418005005680058059800500748005007580050062800500798005007680058077800500688005806b800500658008006f80080078800500648008006380080071800800768005006a80090079800580778005007480050043');
embchunkin('8005004f800500478005005580050051800500548006005980060056800780578007806a800880498008fffae390fff9f4a00001be9300020b60fffefa50ffff7d28fffe7778fffdf4a0000082d8000105b000000000000622200003111000020b6000071c720012666000020b60014d00120000007f002f');
embchunkin('000f000900050058000a00000007ab2d8c68005000000854655820746578740000000000000000000000000000000000000000000000000000000000000004434d4258000000000000000000000000000000000000f415a0000029a0000027a000001ca000001aa0000025a000001fa0000027a000001fa0');
embchunkin('000027a000001fa0000016b0110a14b0000014b000002ab000002ab0000001300000043600000eb000000eb000000e7000000eb000000e60000021b000000a0500000fb000001f300000273000000e5400002ba000002da0000027d200000130010003b0011710b0000029b600000ee3000029e3000027b0');
embchunkin('000001b0011207e8000007e800000ee0000027c700000116000005300115011000000ee800000e9000000e9000000e9000000e9000000e9000000e9000000e9000000e9000000e9000000e900000013000000136000003460000272100000c4600000cb0011827b0000021a0014c1ea000001fa0000024a0');
embchunkin('013519a0000018a0012428a0000025a0000006a0015711a0000026a0012a15a001522ca0000025a0000022a001351ba0011e22a6000020a0014c13a000001da0012e23a0000021a005242ea0052421a0012a21a0092f17a0000002e8000010b0000002e800000eb0000001b0000001b001110d30014813b0');
end;
procedure embpart11;
begin
embchunkin('01420a30014013b000000b30000004b011020e36055613b0013a01b0000004b6000012b0011901b000002930013a1330013a0e300142133601421236000009300000083000000780014a1330014b123005191f30051a123000001236051f0a3000000e300d162e300c000eb000000eb000000eb000000000');
embchunkin('00000006fa460007056d0007999000079f400008443a0008ccc000098e2d0009af2d0009f496000ad820000b13dd000b7d1a000bcf96000c2213000c332d000c4f9a000c6656000cc70d000d6c06000df48d000e5af3000e9986000eb5fa000effed000fa4e6000fffed00104430001088730010aa960010');
embchunkin('e92a001149e00011a4e60011d2660011f48a0012220d0012331d001271b000127760001293d30012b5f60013ddc60014eed300156bfd00164f8a0017ffe300184426000000000002c16d0006d24300071c73000800000008aaad0009d950000a1c73000a28a6000a4fa6000afa50000b1c73000bbbb3000b');
embchunkin('c16d000c000000000000fffed2430000c71d0000e38d00018e3a0002b8e600031c730003bbb300040000000000000000527d0000947a0000a4fa000213ea006c8000804c80010069000c0066000b006c000d00278002003f80020021800200298002805d80020069000e006c000f00278002003f80020021');
embchunkin('800200298002805d80028060005c00270022003f800380218003802d007b802d007c8060003c8060003e006180040065800500618005006f80058063800500418006006f80050065800500618005002e8006802c8006006f80060065800600758006007280060061800600418007004f8005004380050047');
embchunkin('8005805180050079800500658006006f800600728006006180060041800680758006005880050057800500418005005680058059800500748005007580050062800500798005007680058077800500688005806b800500658008006f80080078800500648008006380080071800800768005006a80090079');
embchunkin('8005807780050074800500438005004f800500478005005580050051800500548006005980060056800780578007806a800880498008fff905bafff81c7d000213ea000293e6fffeb60dffff5b06fffe1113fffd6c1a0000a4fa000149f3000000000008443a0003ddda000293e600071c73001844260002');
embchunkin('93e6015000120000007f0031000f000a00050058000a000000078045c074006000000854655820746578740000000000000000000000000000000000000000000000000000000000000004434d4258000000000000000000000000000000000000f217a000002aa0000028a000001da000001ba0000026a0');
embchunkin('000020a0000028a0000020a0000028a0000020a0000016b0110a15b0000015b000002bb000002bb0000001300000043700000eb000000eb000000e7000000eb000000e60000022b000000a0500000fb0000020300000283000000e5400002ca000002ea0000028d200000130010003b0011710b000002ab6');
embchunkin('00000ee300002ae3000028b0000001b0011207e9000007e900000ee0000028c800000117000005300115011000000ee900000e9000000e9000000e9000000e9000000e9000000e9000000e9000000e9000000e9000000e900000013000000137000003470000282100000c4700000cb0011828b0000022a0');
embchunkin('014c1fa0000020a0000025a001351aa0000019a0012429a0000026a0000006a0015711a0000027a0012a17a001522da0000026a0000023a001351ca0011e23a7000021a0014c14a000001ea0012e24a0000022a0052430a0052422a0012a22a0092f18a0000002e9000010b0000002e900000eb0000001b0');
embchunkin('000001b001110d30014814b001420a30014014b000000b30000004b011020e37055614b0013a01b0000004b7000013b0011901b000002a30013a1430013a0e300142143701421237000009300000083000000780014a1430014b133005192030051a133000001337051f0a3000000e300d162f300c000eb0');
embchunkin('00000eb000000eb000000000000000064bd8000652ad0006dfc00006e57300077f0b00081a8d0008b23d0008d0f5000923150009e570000a24f8000a7f0b000acbd5000b18a3000b5370000b5ce8000b60b3000bb23b000bb23d000c4bd5000c97b0000d314b000d3330000d7f08000dcccb000e6663000e');
embchunkin('b23b000efa4b000f425b000f5185000f93e5000fe56d00104fa00010758d001084b80010bf830010c7180011097500110f28001118a000113ca800124bd30012e3880013c7150014a30d00162d7b001631450016758b000000000002aaab0006b05d00071c73000800000008aaad0009c71b000a1c73000a');
embchunkin('28a5000a4fa5000afa50000b1c73000b3330000bc16d000c000000000000fffeb05d0000c71d0000e38d00018e3b0002b8e500031c7000031c7300033330000400000000000000004ccd00008a3d0000999b0001ff0d006c8000804c80010069000c0066000b006c000d00278002003f8002002180020029');
embchunkin('8002805d80020069000e006c000f00278002003f80020021800200298002805d80028060005c00270022003f800380218003802d007b802d007c8060003c8060003e006180040065800500618005006f80058063800500418006006f80050065800500618005002e8006802c8006006f8006006580060075');
embchunkin('8006007280060061800600418007004f80050043800500478005805180050079800500658006006f800600728006006180060041800680758006005880050057800500418005005680058059800500748005007580050062800500798005007680058077800500688005806b800500658008006f80080078');
embchunkin('800500648008006380080071800800768005006a800900798005807780050074800500438005004f800500478005005580050051800500548006005980060056800780578007806a800880498008fff9b428fff8cccb0001ff0d00026665fffecccdffff6665fffe3333fffd999b0000999b000133330000');
embchunkin('000000077f0b000399980002666500071c730016314500026665014e00120000007f0030000f000900050058000a00000007661724d8007000000854655820746578740000000000000000000000000000000000000000000000000000000000000004434d42580000000000000000000000000000000000');
embchunkin('00f016b0000029b0000026b000001cb000001ab0000025b000001fb0000026b000001fb0000026b000001fb0000015c0110a14c0000014c000002ac000002ac0000001300000043700000ec000000ec000000e7000000ec000000e60000021c000000a05000011c000001f300000263000000e5400002bb0');
embchunkin('00002eb0000026d200000130010003c0011710c0000029c700000ee3000029e3000026c0000001c0011207e8000007e800000ee0000026a600000117000005300115011000000ee800000e9000000e9000000e9000000e9000000e9000000e9000000e9000000e9000000e9000000e900000013000000137');
embchunkin('000003470000262100000c4700000cc0011826c0000021b0014c1eb000001fb0000024b0013519b0000018b0012428b0000025b0000006b001570fb0000027b0012a16b001522cb0000025b0000022b001351bb0011e22b7000020b0014c13b000001db0012e23b0000021b005242fb0052421b0012a21b0');
embchunkin('092f17b0000002e8000010c0000002e800000ec0000001c0000001c001110d30014813c001420a30014013c000000b30000004c011020e37055613c0013a01c0000004c7000012c0011901c000002930013a1330013a0e300142133701421237000009300000083000000780014a1330014b123005191f30');
embchunkin('051a123000001237051f0a3000000e300d162d300c000ec000000ec000000ec00000000000000005cf3b0005d2f900065b05000660b50006f22e0007ab79000815200008323900088d690009381200097a500009c98b000a1247000a5b05000aa5c9000aaf89000ab39b000aec7e000b7df7000b9e77000c');
embchunkin('2ff0000c5fe5000ca0e9000cf15e000d82d7000dc3db000e0ea0000e5965000e5b05000ea019000ee6ce000f5bd5000f7c57000f7df7000fc23b000fc30b00100820001009c000100dd000102f2200112cb200116db200129a69001370f70014b6090014e04e00152b120000000000029a69000692f00007');
embchunkin('1c72000800000008aaab0009b39b000a1c72000a28a5000a4fa5000ad1ae000afa50000b1c72000bc16e000c000000000000fffe92f00000c71e0000e38e00018e390002b8e50002d1ae00031c720004000000000000000048be000082ee000091790001f027006c8000804c80010069000c0066000b006c');
embchunkin('000d00278002003f80020021800200298002805d80020069000e006c000f00278002003f80020021800200298002805d80028060005c00270022003f800380218003802d007b802d007c8060003c8060003e006180040065800500618005006f80058063800500418006006f80050065800500618005002e');
embchunkin('8006802c8006006f80060065800600758006007280060061800600418007004f80050043800500478005805180050079800500658006006f80060072800600618006004180068075800600588005005780050041800500568005805980050074800500758005006280050079800500768005807780050068');
embchunkin('8005806b800500658008006f80080078800500648008006380080071800800768005006a800900798005807780050074800500438005004f800500478005005580050051800500548006005980060056800780578007806a800880498008fffa30c5fff942a50001f027000245e5fffedd0effff6e87fffe');
embchunkin('4b95fffdba1b00009179000122f2000000000006f22e000368d7000245e500071c720014b609000245e5014d00120000007f002e000f000a00050058000a0000000732c740c9008000000854655820746578740000000000000000000000000000000000000000000000000000000000000004434d425800');
embchunkin('0000000000000000000000000000000000ee15b0000028b0000024b000001cb0000019b0000025b000001eb0000024b000001eb0000024b000001eb0000014c0110a13c0000013c0000028c0000028c0000001300000033800000dc000000dc000000d7000000dc000000d60000021c000000906000010c0');
embchunkin('00001e300000243000000d54000029b000002cb0000024d200000130010002c001170fc0000028c700000de3000028e3000024c0000001c0011206e9000006e900000de0000024a500000118000004300115011000000de900000d9000000d9000000d9000000d9000000d9000000d9000000d9000000d90');
embchunkin('00000d9000000d900000013000000138000002480000242100000b4800000bc0011824c0000021b0014c1db000001eb0000022b0013518b0000017b0012427b0000025b0000005b001570eb0000026b0012a15b001522ab0000025b0000020b001351ab0011e20b800001fb0014c13b000001bb0012e23b0');
embchunkin('000021b005242db0052421b0012a21b0092f16b0000001e900000fc0000001e900000dc0000001c0000001c001110c30014813c001420930014013c000000a30000003c011020d38055613c0013a01c0000003c8000012c0011901c000002830013a1330013a0d3001421338014211380000083000000730');
embchunkin('00000680014a1330014b123005191e30051a123000001238051f093000000d300d162b300c000dc000000dc000000dc0000000000000000571ca0005f77a0005fd2c0006888c0007582e00079f4e0007bb2e0008199e0008b6100008fa5400094172000987220009ccd2000a199e000a2d86000a34a2000a');
embchunkin('5832000a5834000ae394000b6ef6000bc172000bfa56000c4cd4000cd834000d1118000d5de4000da22a000daab0000de946000e27da000ea500000eb8ec000ec172000f0008000f044a000f3e9c000f4722000f4cd4000f65020010555e0011b8ec00128b68001399a40013e6700014333c000000000002');
embchunkin('8e38000675c400071c72000800000008aaac0009a220000a1c72000a28a4000a4fa6000a888c000afa50000b1c72000bc16c000c000000000000fffe75c40000c71c0000e38e00018e3a0002888c0002b8e400031c7000031c720004000000000000000045b000007d7000008b620001e4fa006c8000804c');
embchunkin('80010069000c0066000b006c000d00278002003f80020021800200298002805d80020069000e006c000f00278002003f80020021800200298002805d80028060005c00270022003f800380218003802d007b802d007c8060003c8060003e006180040065800500618005006f80058063800500418006006f');
embchunkin('80050065800500618005002e8006802c8006006f80060065800600758006007280060061800600418007004f80050043800500478005805180050079800500658006006f80060072800600618006004180068075800600588005005780050041800500568005805980050074800500758005006280050079');
embchunkin('8005007680058077800500688005806b800500658008006f80080078800500648008006380080071800800768005006a800900798005807780050074800500438005004f800500478005005580050051800500548006005980060056800780578007806a800880498008fffa8e36fff99b020001e4fa0002');
end;
procedure embpart12;
begin
embchunkin('2d84fffee93effff749efffe5ddcfffdd27c00008b62000116c2000000000006888c0003444600022d8400071c72001399a400022d84014c00120000007f002e000f000900050058000a00000007740c893a0090000008546558207465787400000000000000000000000000000000000000000000000000');
embchunkin('00000000000004434d4258000000000000000000000000000000000000ec15b0000028b0000024b000001cb0000019b0000025b000001eb0000024b000001eb0000024b000001eb0000014c0110a13c0000013c0000028c0000028c0000001300000033700000dc000000dc000000d7000000dc000000d60');
embchunkin('000021c00000090600000fc000001e300000243000000d54000029b000002cb0000024d200000130010002c0011710c0000028c700000de3000028e3000024c0000001c0011206e8000006e800000de00000249500000117000004300115011000000de800000da000000da000000da000000da000000da0');
embchunkin('00000da000000da000000da000000da000000da00000013000000137000002470000242100000b4700000bc0011824c0000021b0014c1db000001eb0000022b0013518b0000017b0012427b0000025b0000005b001570eb0000026b0012a15b001522ab0000025b0000020b001351ab0011e20b700001fb0');
embchunkin('014c13b000001bb0012e23b0000021b005242db0052421b0012a21b0092f16b0000001e8000010c0000001e800000dc0000001c0000001c001110c30014813c001420930014013c000000a30000003c011020d37055613c0013a01c0000003c7000012c0011901c000002830013a1330013a0d3001421337');
embchunkin('01421137000008300000073000000680014a1330014b123005191e30051a123000001237051f093000000d300d162b300c000dc000000dc000000dc00000000000000005425b0005c34e0005c8fe00064fa00007240500075ce5000777d40007cf5200086a2b0008b0050008f0ce0009341e000977700009');
embchunkin('c5d20009de7e0009e1a40009fe120009fe14000a84b5000b0b59000b5f69000b91fb000be60c000c6cae000c9f40000ceda2000d2b92000d3c04000d7445000dac85000e3002000e38d7000e4949000e818b000e89c4000eb9cb000eca3c000ecfec000ee0fc000fc710001122b70011f20c0012eee00013');
embchunkin('3d4200138ba400000000000284be00065b0700071c72000800000008aaab0009948b000a1c72000a28a4000a4fa0000a4fa5000afa50000b1c72000bc16c000c000000000000fffe5b070000c71c0000e38e00018e3900024fa00002b8e400031c720004000000000000000043520000792c000086a40001');
embchunkin('cfa5006c8000804c80010069000c0066000b006c000d00278002003f80020021800200298002805d80020069000e006c000f00278002003f80020021800200298002805d80028060005c00270022003f800380218003802d007b802d007c8060003c8060003e006180040065800500618005006f80058063');
embchunkin('800500418006006f80050065800500618005002e8006802c8006006f80060065800600758006007280060061800600418007004f80050043800500478005805180050079800500658006006f8006007280060061800600418006807580060058800500578005004180050056800580598005007480050075');
embchunkin('80050062800500798005007680058077800500688005806b800500658008006f80080078800500648008006380080071800800768005006a800900798005807780050074800500438005004f800500478005005580050051800500548006005980060056800780578007806a800880498008fffabda5fff9');
embchunkin('ccce0001cfa500021a8bfffef2bbffff795cfffe6c17fffde575000086a400010d450000000000064fa0000327d000021a8b00071c720012eee000021a8b014500120000007f00310010000b00060049000b000000078c2df81400a000001c546558207465787420776974686f757420662d6c6967617475');
embchunkin('726573000000000000000000000005434d4353430000000000000000000000000000000000ea1ac000002bc0000029c0000020c000001cc0000024c0000022c0000029c0000022c0000029c0000022c000000dd800000dd8000002d00000024900000b49000001500000055000000dd000000dd000000d90');
embchunkin('00000dd000000d70000024d00000080700002c5000001d50000025500000167300002dc000002fc0000029e300000230010002d001080dd000002bd800000df400002bf4000029d0000002d0010306fa000006fa00000df00000298500000219000003300106021000000dfa00000da000000da000000da0');
embchunkin('00000da000000da000000da000000da000000da000000da000000da0000002300000023900002962000029210000296200000bd0010929d0000024c0012021c0000022c0000026c001161ec000001bc0010c2ac0000024c0000004c001320fc0000028c0010e1ac0012a2ec0000024c0000029c001161ec0');
embchunkin('010a29c9000023c0012013c0000022c0010a24c0000024c0090c30c0090c24c0010e24c0110a19c0000002fa00000dd0000002fa00000dd0000002b0000002d001021450013e1050000011500000155001390e5000000c50013418500000145000000150014805500000175001350a5001431f5000001450');
embchunkin('0000165001390e500133165600001250013e07500000115001331450000014500534275005341450013514500d33095000000d301507303014000dd000000db000000db00000000000000004d5e600051c6e00060b5d00067d230006ca850006fa4b0007530d0007e93a000809180008369b000860b20008');
embchunkin('91a20008d8280008eca60009110b000947ad0009752e0009a2b20009c7160009d0350009fdb8000a2b3a000a2b3b000a41fb000ab605000aeee8000b6660000ba4f3000bc4d3000bddd6000bf256000c16ba000c554e000c93e2000cccc5000d05a8000d30ea000d443d000d5e6d000d7d20000d82d0000d');
embchunkin('9f42000e71be000ea61a000f9990000fd2730011776d0011b050000000000001b05b0005deb80006e38e00080000000838e30008a02500090ace00099996000a0e3a000a4fa5000aaf8d000aeeee000b1c72000bb60b000c000000000000fffddeb80000a0250000c71d0000e38e0001999600024fa50002');
embchunkin('b8e300031c7000031c72000400000000000000002d8300003bbb000051eb00006b8500007778006c8000804c80018060005c00270022003f800280218002802d007b802d007c8060000e8060000f00618003804180030061800400418004006f8005004f8005006380050043800500678005004780050071');
embchunkin('800580518005007880050058800500778005005780050061800500418005007680050056800500798005805980050063800500438005006f8005004f800500678005004780050075800500558005007180050051800500548003007480030059800300798003005680040076800400578004807780048049');
embchunkin('80068061800700618008006f8009006380090067800980718009007880090077800900618009007680098079800900638009006f800900678009007580090071800900278007007480070079800700768008807780088069800afffae392fffa33360001ddddfffe999afffe2223ffff888800007778fffe');
embchunkin('eeeefffe93eaffffa4fa00005b060000000000060b5d0002cccb0001dddd0006e38e0011b0500001dddd014400120000007f00240010000a00050058000a000000074bf1607900a000000854655820746578740000000000000000000000000000000000000000000000000000000000000006434d44554e');
embchunkin('4800000000000000000000000000000000ea12c000001ec000001cc0000016c0000014c000001ac0000018c000001cc0000018c000001cc0000018c0000010d0110a0fd000000fd000001ed000001ed0000001300000023700000aa000000aa000000a8000000aa000000a7000001ad00000080600000bd0');
embchunkin('0000183000001c3000000a4500001fc0000022c000001ce200000130010001d001170ad000001ed800000af300001ef300001cd0000001d0011205f9000005f900000af000001c5400000117000003300115011000000af900000ab000000ab000000ab000000ab000000ab000000ab000000ab000000ab0');
embchunkin('00000ab000000ab000000130000001370000019700001c2100000997000009d001181cd000001ac0014c17c0000018c000001bc0013515c0000013c001241dc000001ac0000004c001570cc000001cc0012a12c0015220c000001ac000001cc0013515c0011e1cc7000019c0014c0fc0000018c0012e1ac0');
embchunkin('00001ac0052423c005241ac0012a1ac0092f11c0000001f900000ad0000001f900000aa000000170000001d001110a3001480fd00142083001400fd000000830000002d011020a3705560fd0013a01700000027700000ed0011901d000001e30013a0f30013a0a3001420f3701420d370000063000000730');
embchunkin('00000560014a0f30014b0e3005191830051a0e3000000e37051f083000000a300d1621300c000aa000000a7000000a70000000000000000471c80004e390000555560005c71d000638e50006444600064fa600071c7300078e3b0008000200080003000838e5000871c8000871ca0008e390000955580009');
embchunkin('c71e000a0002000a71ca000aaaad000ae390000b1c73000b5558000b8e3b000bc71e000c0002000c38e6000c71ca000c8e3b000d5558000e71ca000eaaad00100003001038e6001071ca000000000001b05b0005deb80006e38e000871c8000955560009d75e000ac622000c0e3a000c71c8000dc71d000e');
embchunkin('c16d000f60b6000f8e3a001027d3001071c600000000fffddeb80000c71d0000e38d0001555600018e3a0002b8e300031c7200078e3a000871c600000000000038e300006666000071c800013e95006c8000804c80010069000c0066000b006c000d00278002003f80020021800200298002805d80020069');
embchunkin('000e006c000f00278002003f80020021800200298002805d80028060005c00270022003f800380218003802d007b802d007c8060003c8060003e006180040065800500618005006f80058063800500418006006f80050065800500618005002e8006802c8006006f80060065800600758006007280060061');
embchunkin('800600418007004f80050043800500478005805180050079800500658006006f800600728006006180060041800680758006005880050057800500418005005680058059800500748005007580050062800500798005007680058077800500688005806b800500658008006f800800788005006480080063');
embchunkin('80080071800800768005006a800900798005807780050074800500438005004f800500478005005580050051800500548006005980060056800780578007806a800880498008fffb8e38fffae38d00013e950001c71dffff1c72ffff8e38fffeaaaafffe38e3000071c80000e38e00000000000555560002');
embchunkin('aaab0001c71d0006e38e001000030001c71d00f800120000007f00200006000e000300000000001c000dfab1751200a0000012546558206d61746820657874656e73696f6e00000000000000000000000000000000000000000004434d4558000000000000000000000000000000000000ea041702100417');
embchunkin('021102170268021702690617026a0617026b0617026c0617026d0a17026e0a17026f061702440617024501030300080303010917022e0917022f0b1902120b1902130f1c02200f1c0221071c0222071c02230a1c02240a1c02250a1c02260a1c0227101c0228101c0229101c022a101c022b1a1c022c1a1c');
embchunkin('022d121d0230121d02310a1d02320a1d02330d1d02340d1d02350d1d02360d1d0237131d0238131d0239131d0000131d00001d1d00001d1d00001419021e1419021f16190302161903030e1903040e1903050e1903060e1903070e0303080e0303091704030a1704030b1704030c1704030d170a030e170a');
embchunkin('030f170103100e030311161903121619031316030314160303150c19021c0c19021d150502471c28000005060649080b08001c05024b1f2800001c05024d1f2800001c05024f1f2800001b050258180502590506065a1505025b1505025c1505025d1505025e1505025f1e2800001d280000080b08001c28');
embchunkin('00001c2800001c2800001c2800001c280000180502611d28000008400263195002641e50000008400266195002671e5000000619021406190215071902160719021707190218071902190e19021a0e19021b1917027119190272191c0273191d02741b0a03161b0300001b120000110303170e0303180e03');
embchunkin('0319033000000330000003300000033000001103031a1103031b00000000000555560006aaad000733380007555800078e3a00078e3b000871ca0008e39000093e950009555800098e3b0009c71e000a38e6000aaaad000bc720000c0002000c71ca000caaae000ce393000cfa53000d5558000e0003000e');
embchunkin('38e6000f1c75001000030010b60e0010e3920011c720001471cb00171c7600182d88000000000000a3d60001999b0001eb83000b8e3a000c0000000000000004ccd00008f5ca000999a0000e66700010000e0011c72800128f6a0018000d001c290a001ccce000238e520025c2aa002f5c4a000000000003');
end;
procedure embpart13;
begin
embchunkin('1c7300071c730000000c0000000d3000404231004143320034363300353700003436000035373200003633000037383c3a3e393d3b3e38003a3e39003b3e0000003f000000770000003e7800793f38003b3e39003a3e0000004200000043760074757e007f777800003f0000793f7e00007700007f770000');
embchunkin('00000000000000000000000000000006e38e00100003000000000000a3d60001c71d0002aaab000333330009999a0001999a017e00120000007f0062000f00090020003a000c000000060ba0623e00a000000f546558206d617468206974616c696300000000000000000000000000000000000000000000');
embchunkin('000004434d4d49000000000000000000000000000000000000ea3cb0711d5cb0012751b0151849b001274db04d185bb0591054b03d1832b0710c45b001183ab0690852b02d18404005032bc731182447340012c021090a40010b10c7491820471d0b19c015180540010b3040000034c00000394701031f40');
embchunkin('410110c729212c401c00234701182d401d2f0f406d0129401d0337c701183e47010b43c71d213d401c001740011836c0011859401400234701180746551844470118613200006132000061320000613200000153000001530000216400002164000021400000214000002140000021470000214700002147');
embchunkin('00002190000021470000219000002147000001100000011700005375000021e80134537500002164000028c035184eb001224fb02d184ab0451558b0150b4cb03d1842b0711d55b001185bb0591011b051212ab05d2b5db0450846b0010360b0651957b0651451b0151841b0711d56b7011850b009183bb0');
embchunkin('3d1935b0711548b0650433b079315fb071315ab0511431b0793147b0451909e0000009c7000009c7000061210000612100000cc00121274000000dc000000e40010b25c001231640010b1dc761281a471d0330c0010004a000000ba7392f26c0180002c00d185e400000384000001b40010b224701181347');
embchunkin('1d18144015091840010b068001182f4001031c401d034b4011182e4001031e471d0b1540250b03400103084701183f47012121d0740001c07c0000000000000471c80004c62a000528c8000583200005a9ba0005c71e0005ce3a000624fd000638e500067e95000696c30006aaae0006ddde0006ec920006');
embchunkin('fe96000700020007088a00071c7200072483000737f3000770d8000773350007760a00078000000782d80007a1aa0007c16d0007c16e0007d5580007d8320007e75b0007f1cb0008000200080cce000845b2000848a0000853eb000854650008751b00087e950008a4fd0008df4a00090cce00091ed50009');
embchunkin('2483000924fb000928ca000937f3000949f60009555500095556000955580009599b0009768a0009888a00099a900009a40b0009cbaa0009cfa60009d82e0009f593000a02d6000a2ef0000a3c38000a45b0000a49f6000a6c1a000a7778000aaaab000ae390000aec18000aeca8000b1c73000b6f80000b');
embchunkin('7466000bcfa6000be0b8000c0002000c22db000c260d000c3455000c5bbe000c71ca000c7a52000c947a000ca61d000cdb06000d3f26000d4005000d416e000d4cce000d5558000d96c3000e0c58000f1c73000f85b200100003000000000001b05b0005b8e50005deb80006e38e00076b83000771c80008');
embchunkin('a0250009d75e000a4fa5000a8d6a000aeeee000b1c72000b6e5d000c000000000000fffdb8e5fffddeb8ffff6b83ffff71c80000a02500018e3a00031c72000400000000000000000f2a00001fa50000509a00006e38000071c8000080f2000092f600009b050000b4250000bc720000cd820000d82e0000');
embchunkin('e38e0000ea780000ec16000104be000124fa00012e380001360b0001416b0001471b00014ccb000189f50001b8e50001be930001c2900001cfa6000238e50002760b00038e3a00066432807f8000003b8001003a8001807f8002003b8003003a8003003d8001807f8002003d8001003b8001003a8001807f');
embchunkin('8004003d8001003b8003003a8003807f8004003d8001003b8001003a8001807f8004003d8005003d8000003b8001003a8001807f8006003d8001003b8001003a8001807f8006003d8001003b8003003a8003807f8006807f8007807f800800598009005a8001006a80030066800a807f800b003b8001003a');
embchunkin('8001807f800b003d8001003b8003003a8003807f800b003b8001803a8001003b800a003a800a803d80030001800100418001004d8001004e800100598009805a8001ffff8e38ffff1c72000071c8fffe38e30000e390fffeaaaa000155580001c720000238e80000e38efffd55550002aab0000400000000');
embchunkin('000000000000000000000006e38e00100003017900120000007f0060000f0009001e003a000b000000064f0dda5c005000000f546558206d617468206974616c696300000000000000000000000000000000000000000000000004434d4d49000000000000000000000000000000000000f432b06d1d5bb0');
embchunkin('01274fb0191847b001274bb0491857b04d1052b02d1833b06d0c45b001183fb0650850b025184040010329c72d1824473c000fc015090b40010b11c7311823471d0b16c019180440010b2e40000033c00000364701031c40410111c70d2130401c001e4701182c401d2f17405d012b401d0334c701183947');
embchunkin('010b42c71d213d401c001440011837c001185a4018001e47011807454518414701185f3200005f3200005f3200005f320000016400000164000020530000205300002040000020400000204000002047000020470000204700002090000020470000209000002047000001100000011700005576000020e8');
embchunkin('0134557600002053000025c03d184db001224eb0251848b0391556b0190b49b02d183ab06d1d51b0011857b04d100cb0512127b0552b59b0390846b001035eb0591953b059144fb019183bb06d1d54b701184cb0051838b0291931b06d1544b059042fb071315db06d3158b051142db0713143b039190ae0');
embchunkin('00000ac700000ac700005f2100005f21000009c00121284000000dc000000e40010b21c001231540010b18c761281a471d032ec0010003a0000008a7352f26c0080002c001185c4000003c4000001b40010b2247011810471d18134019091240010b06800118354001031d401d034a4011182a4001031f47');
embchunkin('1d0b1940210b03400103054701183e47012120d0680001c07400000000000007555a0007af6d000889830008cbe00008db0a000904c6000940060009694300098e3d00098e400009d116000a0723000a2226000a640d000a777d000a8aed000aaab3000ab8ea000abdaa000acb66000ad510000ad55a000a');
embchunkin('e7dd000af1cd000b04c6000b359a000b3e9a000b648a000b8e43000b9de6000bb066000bc726000bd5d6000bd5da000be673000bf353000bfbc0000c213a000c5de6000c6410000ca670000caab3000caab6000d0af0000d3066000d3dad000d3ea0000d4c60000d511d000d5286000d71d3000d7780000d');
embchunkin('898a000d98b3000daf76000db340000dd560000de0c0000e0176000e17c3000e2e83000e3a5d000e4bb6000e9cf6000eb066000ee39d000f16d0000f1a36000f1c80000f4a03000f7786000fef9000101c80001024cd0010489600107aba001093fa001097860010c29d0010f83d0011065000110b700011');
embchunkin('361a001150d6001155660011c20d0011c4530011ce4a001238f600125123001271da0013a6030014778d00148b730015c733000000000001f4a00005b8e3000657ad0006e38d000771c600083ca600099d5a0009d75d000a4fa6000aa9da000aeef0000b1c73000b8f23000c000000000000fffdb8e3fffe');
embchunkin('57adffff71c600003ca600018e3a00019d5a00031c730004000000000000000006c00000425d00004aaa00006e3a0000844300008e3a000092f6000097b30000bf4a0000cfa30000d27d0000d8e30000f193000116c000011c730001213000012aaa00012c160001305a00013a50000185b00001be930001');
embchunkin('db060001e3900001ed3d0002760d0002c720000471cd00094d73807f8000003b8001003a8001807f8002003b8003003a8003003d8001807f8002003d8001003b8001003a8001807f8004003d8001003b8003003a8003807f8004003d8001003b8001003a8001807f8004003d8005003d8000003b8001003a');
embchunkin('8001807f8006003d8001003b8001003a8001807f8006003d8001003b8003003a8003807f8006807f8007807f800800598004005a8001006a800300668009807f800a003b8001003a8001807f800a003d8001003b8003003a8003807f800a003b8001803a8001003b8009003a8009803d8003000180010041');
embchunkin('8001004d8001004e800100598004805a8001ffff71c6fffee38d00008e3afffdc71a00011c73fffe55530001aaad000238e60002c720fffcaaa60003555a000400000000000000000000000000000006e38d00178e4d017a00120000007f005f000f00090020003a000b0000000610cdbece006000000f54');
embchunkin('6558206d617468206974616c696300000000000000000000000000000000000000000000000004434d4d49000000000000000000000000000000000000f234b0751d5ab001274eb0151846b001274ab04d1856b0551050b0351831b0750c42b001183db06d084fb029183f4001032ac72d18234740000fc0');
embchunkin('19090b40010b11c73d182247210b17c015180440010b2c40000031c00000354701031c40450111c711212e402000204701182b40212f1340690128401d0333c701183847010b41c71d213b401c001540011836c00118584014002047011807465118404701185e3200005e3200005e3200005e3200000164');
embchunkin('0000016400001f5300001f5300001f4000001f4000001f4000001f4700001f4700001f4700001f9000001f4700001f9000001f4700000110000001170000527500001fe80134527500001f53000024c041184cb001224db0291847b0491555b0150b49b035183ab0751d51b0011856b055100cb0592127b0');
embchunkin('5d2b59b0490845b001035db0611954b061144eb015183cb0751d53b701184bb0051837b0311930b0751544b061042fb079315cb0753157b059142db0793143b0491908e0000008c7000008c700005e2100005e2100000ac00121264000000dc000000e40010b21c001231640010b19c765281a4721032cc0');
embchunkin('010003a0000009a7392f25c0080002c001185b400000394000001b40010b2147011810472118124015091440010b05800118324001031d401d0348400d18294001031e47210b1840250b03400103064701183e4701211fd0700001c07c0000000000000612f500066d0b00072130000776850007a12d0007');
embchunkin('aaab0007ce35000825eb00082f6800084bdb00085f480008c3500008c3530008f24000090f2b000921a5000925eb0009471b0009501b00095a130009631000096c90000971cb0009897b00099c700009b9550009cccd0009f1c30009fffd000a212b000a38e0000a3960000a4795000a4dbb000a6e88000a');
embchunkin('89f5000a92f5000acc53000ae7d3000b0978000b2aa8000b2b25000b76fb000b9c70000b9f45000ba0b0000bac8d000bb2b5000bc718000bcbd8000bdfc3000be1a5000c0000000c02d5000c1b7d000c4718000c5095000c6663000c7a4b000c7ac5000c7fc8000c982b000cdf48000cfc30000d1c6d000d');
embchunkin('5550000d6755000d68d8000d8a68000dbf80000e23a0000e4aa5000e6570000e84bb000ec10b000ec8fb000ed32d000ef1f0000f22d3000f39d3000f3f20000f6845000f76ad000f7958000ff8f5000ffe15001005ab0010599300106938001071c000117ffb00126a2b001295c800138e30000000000001');
embchunkin('ed0b0005b8e500063d280006e38d000771c800081080000968650009d75d000a4fa5000a99bd000aeef0000b1c73000b8643000c000000000000fffdb8e5fffe3d28ffff71c8000010800001686500018e3b00031c73000400000000000000000f0d0000555300006e380000709b000084bd00008dc00000');
embchunkin('92f5000092f80000a12d0000c4080000d27b0000d9200000db050000ed8d0000f5580001097b000117b500011b8000012f68000134250001351b00013cad000183530001b9d80001d5580001da130001df030002760b000297b3000425eb00080b10807f8000003b8001003a8001807f8002003b8003003a');
embchunkin('8003003d8001807f8002003d8001003b8001003a8001807f8004003d8001003b8003003a8003807f8004003d8001003b8001003a8001807f8004003d8005003d8000003b8001003a8001807f8006003d8001003b8001003a8001807f8006003d8001003b8003003a8003807f8006807f8007807f80080059');
embchunkin('8004005a8001006a800300668009807f800a003b8001003a8001807f800a003d8001003b8003003a8003807f800a003b8001803a8001003b8009003a8009803d80030001800100418001004d8001004e800100598004805a8001ffff7b43fffef685000084bdfffded0b0001097bfffe71c800018e380002');
embchunkin('12f5000297b3fffce39000031c70000400000000000000000000000000000006e38d001471c0017e00120000007f0062000f00090020003a000c0000000630659772007000000f546558206d617468206974616c696300000000000000000000000000000000000000000000000004434d4d490000000000');
end;
procedure embpart14;
begin
embchunkin('00000000000000000000000000f038b0711d5cb0012751b0151849b001274db04d1859b0511053b0351834b0710c45b001183db0690852b02918424001032bc72d1825473c0010c021090b40010b11c7411821471d0b18c015180540010b2f40000035c00000394701031e40450111c719212e401c002347');
embchunkin('01182d401d2f13406d012a401d0336c701183c47010b44c71d213e401c001640011837c001185b401400234701180746551843470118613200006132000061320000613200000164000001640000205300002053000020400000204000002040000020470000204700002047000020900000204700002090');
embchunkin('00002047000001100000011700005575000020e80134557500002053000027c03d184eb0012250b029184ab0491558b0150b4cb035183fb0711d54b0011859b051100eb0592129b05d2b5db0490848b0010360b0611957b0611451b0151840b0711d56b701184fb005183ab0311932b0711546b0610431b0');
embchunkin('79315fb071315ab0591430b0793147b0491909e0000009c7000009c7000061210000612100000cc00121284000000dc000000f40010b24c001231740010b1ac765281b471d032fc0010004a000000aa7392f26c00c0002c009185e4000003b4000001c40010b2247011812471d18144015091540010b0680');
embchunkin('0118334001031d401d034b4011182c4001031f471d0b1940250b03400103084701184147012120d0740001c07c000000000000056db90005c7cb000660de0006778b0006c3be0006e7a20007071e00071250000765990007904700079e490007a6a0000809c2000819d200082b2700084ed7000851470008');
embchunkin('60a900086dee00087ca20008a0850008a2c00008ac1b0008b4d20008bba00008e9ae0008ead2000905b20009249700092a020009451b00095d7900096ae500096c2b00097bc0000983e0000999e90009b78e0009c2d90009ea25000a1cdb000a2087000a5d47000a5d79000a9785000ab050000ab37e000a');
embchunkin('be9b000acb32000acbcb000ace97000ad75e000ad762000afd92000b09a5000b199e000b1d27000b3950000b4c8e000b6bb2000b785e000b83d0000b9797000ba329000bae8b000be205000c05b5000c1867000c5147000c7395000c743b000c8a2e000cc312000d1c37000d3915000d6b4b000d8310000d');
embchunkin('bf02000dc50e000dcf92000de722000e14a5000e2e57000e3b17000e4929000e651b000e7a55000ef1f5000ef84e000efd62000f3307000f4519000f5bde0010383e001130c900116e25001238e9000000000001d75e0005b8e5000625300006e38e000771c70007e6e5000935f70009d75e000a4fa5000a');
embchunkin('9659000aeef0000b1c72000b7feb000c000000000000fffdb8e5fffe2530ffff71c7ffffe6e5000135f700018e3900031c720004000000000000000014f9000017b7000062e000006e3900007df900008bae000092f7000094850000a7f50000c7690000d27e0000dfe50000e11e0000ecb20000fbf00001');
embchunkin('09a5000110f000011ee0000131c70001394900013aeb00013e60000182700001b7420001cb2e0001d4d90001d969000275d90002760b0003efc0000765d5807f8000003b8001003a8001807f8002003b8003003a8003003d8001807f8002003d8001003b8001003a8001807f8004003d8001003b8003003a');
embchunkin('8003807f8004003d8001003b8001003a8001807f8004003d8005003d8000003b8001003a8001807f8006003d8001003b8001003a8001807f8006003d8001003b8003003a8003807f8006807f8007807f800800598009005a8001006a80030066800a807f800b003b8001003a8001807f800b003d8001003b');
embchunkin('8003003a8003807f800b003b8001803a8001003b800a003a800a803d80030001800100418001004d8001004e800100598009805a8001ffff8207ffff041000007df9fffe08200000fbf2fffe8617000179eb0001f7e5000275de0000fbf0fffd0c300002f3d7000400000000000000000000000000000006');
embchunkin('e38e0012baf2017c00120000007f0061000f00090020003a000b00000006d7011732008000000f546558206d617468206974616c696300000000000000000000000000000000000000000000000004434d4d49000000000000000000000000000000000000ee38b0711d5bb0012750b0151848b001274cb0');
embchunkin('4d1858b0511052b0351834b0710c44b001183bb0690851b02918414001032bc72d1825473c0011c01d090a40010b10c745182147190b19c015180540010b2f40000034c00000374701031e40410110c721212e401800234701182d40192f12406d012940190335c701183c47010b43c719213d4018001540');
embchunkin('011836c001185a40140023470118074659184247011860320000603200006032000060320000016400000164000020530000205300002040000020400000204000002047000020470000204700002090000020470000209000002047000001100000011700005375000020e80134537500002053000027c0');
embchunkin('3d184db001224fb0291849b0491557b0150b4bb035183eb0711d54b0011858b051100fb055212ab05d2b5cb0490847b001035fb0611956b0611450b0151840b0711d55b701184eb005183ab0311932b0711545b0610433b079315eb0713159b0551431b0793146b0491909e0000009c7000009c700006021');
embchunkin('0000602100000cc00121284000000dc000000e40010b24c001231740010b1bc765281a4719032fc0010004a000000ba7392f26c00c0002c009185d400000394000001c40010b2247011813471918144015091640010b06800118304001031d4019034a4011182c4001031f47190b1840250b034001030847');
embchunkin('01183f47012120d0740001c07c00000000000004b8e8000512fa000597b80005c9b4000604c200062394000638ea0006672000069c780006df500006e0040006f1cc000745b800075cf200075ef6000778ec000785b800078b68000797060007abe00007d9a00007dc780007e2e00007e8520007ee3e0008');
embchunkin('170600082ab0000837800008472400085b4a0008672400088008000887da00088eba0008b4a60008bf500008c18c0008da1a0008f4a60009079e000938ec00094946000989fc000991ce0009b7080009c31e0009cbe20009d7bc0009da5a0009e5ba0009e6700009eab4000a1b10000a1cf4000a3a1a000a');
embchunkin('4946000a50a0000a56ca000a79ec000a8e40000a920e000ac22a000ac670000ac724000aeb2e000b13f4000b1c7c000b5560000b8040000b8504000b8fb0000bca00000c1dc4000c3302000c7560000c88ee000cbbc8000ccdba000cd288000ce628000d111c000d2cd8000d38f0000d3f30000d5f0c000d');
embchunkin('7e44000df264000df728000dfb6e000e1d34000e2ab8000e5618000f098800100a040010539c00110010000000000001c71c0005b8e400060c3c0006e38e000771c80007bc4e000902900009d75e000a4fa6000a93d0000aeeee000b1c72000b789c000c000000000000fffdb8e4fffe0c3cffff71c8ffff');
embchunkin('bc4e0001029000018e3a00031c7200040000000000000000196c0000309600006d0a00006e38000078e4000092f60000999800009ffe0000ad0a0000c9f40000d27c0000e4fa0000e5b00000ec100000f1c800010bda000118e20001216c0001338e00013b6000013fa400014000000180b60001b4440001');
embchunkin('c38e0001cd3c0001d8e400025c740002760c0003c7200006b100807f8000003b8001003a8001807f8002003b8003003a8003003d8001807f8002003d8001003b8001003a8001807f8004003d8001003b8003003a8003807f8004003d8001003b8001003a8001807f8004003d8005003d8000003b8001003a');
embchunkin('8001807f8006003d8001003b8001003a8001807f8006003d8001003b8003003a8003807f8006807f8007807f800800598004005a8001006a800300668009807f800a003b8001003a8001807f800a003d8001003b8003003a8003807f800a003b8001803a8001003b8009003a8009803d8003000180010041');
embchunkin('8001004d8001004e800100598004805a8001ffff871cffff0e38000078e4fffe1c700000f1c8fffe955400016aac0001e39000025c74fffd2aa80002d558000400000000000000000000000000000006e38e00110010017d00120000007f0061000f00090021003a000b0000000635f99e22009000000f54');
embchunkin('6558206d617468206974616c696300000000000000000000000000000000000000000000000004434d4d49000000000000000000000000000000000000ec39b0751d5bb0012750b0151848b001274cb0511859b05d1052b0391833b0750c44b001183bb06d0851b02d18414005032bc7311824473c0012c0');
embchunkin('21090a40010b10c74d1820471d0b19c015180540010b3040000033c00000374701031f40450110c725212e401c00234701182d401d2f1140710129401d0336c701183d47010b42c71d213c401c001540011835c001185a401400234701180746591843470118603200006032000060320000603200000164');
embchunkin('00000164000021530000215300002140000021400000214000002147000021470000214700002190000021470000219000002147000001100000011700005375000021e80134537500002153000027c03d184db001224fb02d1849b0491557b0150b4bb0391840b0751d54b0011859b05d100fb055212ab0');
embchunkin('612b5cb0490847b001035fb0651956b0651450b015183fb0751d55b701184eb009183ab0351934b0751545b0650432b07d315eb0753158b0551431b07d3146b0491909e0000009c7000009c7000060210000602100000cc00121284000000dc000000e40010b25c001231640010b1cc769281a471d0330c0');
embchunkin('010004a000000ba7412f26c0180002c00d185d400000384000001b40010b2247011813471d18144015091840010b068001182f4001031d401d034a4011182c4001031e471d0b1740290b03400103084701183e47012121d0780001c0800000000000000491600004e84b00055a120005a0840005d22b0005');
embchunkin('f0300005fd9e000643f2000665200006a98c0006b8e20006ca4400070c0000071e7c00073030000735b700073d2400074b35000758f400076b740007a2470007a5200007a5eb0007a9150007b2900007d75e0007f5e00007fb400007fcd40008194500081c6e00083609000838e000084142000878920008');
embchunkin('7e570008853400088fcb0008b3070008b6300008e6b400090f7b0009446b0009522b0009672c0009696200097682000979ab00098b5c00099710000997b0000997d90009c0770009c9a00009e8490009eb72000a0b0c000a0bae000a1910000a3b15000a40c7000a73d2000a7fd4000a7ffc000a89f0000a');
embchunkin('ba74000abcfb000af680000b2f54000b3007000b30a7000b6ace000bbceb000bc912000c19e7000c2b70000c54ae000c712b000c7185000c8354000cac4e000cc9a0000cca40000ce050000cf844000d2547000d8f67000d9550000d9a37000da3d9000db420000ded05000e7cd2000f8740000fe2e70010');
embchunkin('71c0000000000001ba790005b8e40005f4e90006e38e000771c7000793570008d0c90009d75e000a4fa5000a8eae000aeeee000b1c72000b72eb000c000000000000fffdb8e4fffdf4e9ffff71c7ffff93570000d0c900018e3900031c7200040000000000000000032900001ce0000043f400006e390000');
embchunkin('74f000007819000092f700009a640000afce0000b0fc0000cbee0000d5a50000e8ee0000e93e0000e9e00000eac9000107e700012365000124be000134f0000140a2000143f400014589000186520001ba790001bda20001c7500001d555000248b00002760b0003a78000068650807f8000003b8001003a');
embchunkin('8001807f8002003b8003003a8003003d8001807f8002003d8001003b8001003a8001807f8004003d8001003b8003003a8003807f8004003d8001003b8001003a8001807f8004003d8005003d8000003b8001003a8001807f8006003d8001003b8001003a8001807f8006003d8001003b8003003a8003807f');
embchunkin('8006807f8007807f800800598004005a8001006a800300668009807f800a003b8001003a8001807f800a003d8001003b8003003a8003807f800a003b8001803a8001003b8009003a8009803d80030001800100418001004d8001004e800100598004805a8001ffff8b10ffff1620000074f0fffe2c400000');
embchunkin('e9e0fffea13000015ed00001d3c0000248b0fffd42600002bda0000400000000000000000000000000000006e38e001071c0017d00120000007f0062000f00090020003a000b000000064446899400a000000f546558206d617468206974616c696300000000000000000000000000000000000000000000');
embchunkin('000005434d4d49420000000000000000000000000000000000ea2ca0751d5aa001274fa0191848a001274da04d185da0591054a0351830a0750c45a001183ca0690853a02d18444001032ec71d182047400012c025090c40010b0dc739182247210b1ac019180540010b2f40000030c00000394701031e40');
embchunkin('45010dc7152134402000264701183540212f11406d01284021033ac701183e47010b43c721213d4020001440011837c001185c4018002647011807465518414701186132000061320000613200006132000001640000016400001d5300001d5300001d4000001d4000001d4000001d4700001d4700001d47');
end;
procedure embpart15;
begin
embchunkin('00001d9000001d4700001d9000001d4700000110000001170000567500001de80134567500001d53000027c0411851a001224ea02d184aa0491557a0190b49a0351836a0751d55a001185da059100ea0512129a05d2b5ba0490842a0010360a0651959a065144ca019183fa0751d50a7011852a0051838a0');
embchunkin('31192ba0751547a0650432a079315fa0753158a0511431a0793146a0491909e0000009c7000009c7000061210000612100000bc001212a40000010c000000f40010b25c001231840010b1cc76128174721032fc0010004b000000ab73d2f24c00c0002c009185e4000003b4000001f40010b234701181647');
embchunkin('2118134019091540010b06800118334001031b4021034b4011182d4001032147210b1940290b0340010308470118404701211dd0700001c07c000000000000051c700005920300064bda00067a0b000697b30006a4f80006c71a000705b0000727d000078888000793ea0007bbba0008222000082d820008');
embchunkin('36fb000855520008555300085b02000875920008760a000880000008ac8d0008b7ed0008db950008e1a80008fd250009110e000916c30009333000093ac600095b02000970c3000971c50009999800099d620009a8c30009c16a0009c9f3000a0e35000a16be000a1998000a203a000a2fa0000a82d5000a');
embchunkin('8b60000a8e36000aae73000abbb8000acb13000ad82b000ae572000aeb22000af95a000b05ad000b1095000b1553000b536e000b6662000b684a000b6ca2000b7c30000b7d26000b91c5000bd82a000bf49a000c16bd000c221e000c2b9a000c4440000c5c6e000ccded000ce38a000cf608000d1230000d');
embchunkin('4dbd000d62f8000d75be000ddcca000de020000de5d0000de93a000df525000e0ffd000e293b000e300e000e4fa0000f028b000f27ce000f349b000f5550000f89f0000f9996000fb773001084ba00117d23001245ab001266600000000000027d280005c71d000641fe00071c7200078e3a0008091b0009');
embchunkin('5e70000a28a3000a4fa5000afa50000b1793000b1c72000b9753000c000000000000fffdc71dfffe41feffff8e3a0000091b00015e7000018e3a00031c7200040000000000000000113e0000240800004bda000071c600007bbd000082d800008b62000097b500009c720000ac900000c60b0000dc720000');
embchunkin('df4a0000fe950000fec8000105b000011a8d00011dde0001317e00013e93000144450001511200019c720001c4450001d3ea0001dd4e000227d300027a5000028e38000416c000073332807f8000003b8001003a8001807f8002003b8003003a8003003d8001807f8002003d8001003b8001003a8001807f');
embchunkin('8004003d8001003b8003003a8003807f8004003d8001003b8001003a8001807f8004003d8005003d8000003b8001003a8001807f8006003d8001003b8001003a8001807f8006003d8001003b8003003a8003807f8006807f8007807f800800598004005a8001006a800300668009807f800a003b8001003a');
embchunkin('8001807f800a003d8001003b8003003a8003807f800a003b8001803a8001003b8009003a8009803d80030001800100418001004d8001004e800100598004805a8001ffff7d28fffefa50000082d8fffdf4a0000105b0fffe77780001888800020b6000028e38fffceef00003111000040000000000000000');
embchunkin('00000000000000071c7200126660014400120000007f00240010000a00050058000a000000074bf1607900a000000854655820746578740000000000000000000000000000000000000000000000000000000000000003434d5200000000000000000000000000000000000000ea12c000001ec000001cc0');
embchunkin('000016c0000014c000001ac0000018c000001cc0000018c000001cc0000018c0000010d0110a0fd000000fd000001ed000001ed0000001300000023800000ad000000ad000000a9000000ad000000a6000001ad00000080600000bd00000183000001c3000000a5500001fc0000022c000001ce200000130');
embchunkin('010001d001170ad000001ed700000af300001ef300001cd0000001d0011205f9000005f900000af000001c7400000118000003300115011000000af900000aa000000aa000000aa000000aa000000aa000000aa000000aa000000aa000000aa000000aa000000130000001380000014800001c2100000948');
embchunkin('000009d001181cd000001ac0014c17c0000018c000001bc0013515c0000013c001241dc000001ac0000004c001570cc000001cc0012a12c0015220c000001ac000001cc0013515c0011e1cc8000019c0014c0fc0000018c0012e1ac000001ac0052423c005241ac0012a1ac0092f11c0000001f900000ad0');
embchunkin('000001f900000ad0000001b0000001d001110a3001480fd00142083001400fd000000830000002d011020a3805560fd0013a01b0000002b800000ed0011901d000001e30013a0f30013a0a3001420f3801420d38000006300000073000000580014a0f30014b0e3005191830051a0e3000000e38051f0830');
embchunkin('00000a300d1621300c000ad000000ab000000ab0000000000000000471c80004e390000555560005c71d000638e50006444600064fa600071c7300078e3b0008000200080003000838e5000871c8000871ca0008e390000955580009c71e000a0002000a71ca000aaaad000ae390000b1c73000b5558000b');
embchunkin('8e3b000bc71e000c0002000c38e6000c71ca000c8e3b000d5558000e71ca000eaaad00100003001038e6001071ca000000000001b05b0005deb80006e38e00080000000871c80009159d000955560009d75e000a0e3a000a4fa5000aaf8d000aeeee000b1c72000bb60b000c000000000000fffddeb80000');
embchunkin('c71d0000e38e0001555600018e3a0002b8e300031c7000031c720004000000000000000038e300006666000071c800013e95006c8000804c80010069000c0066000b006c000d00278002003f80020021800200298002805d80020069000e006c000f00278002003f80020021800200298002805d80028060');
embchunkin('005c00270022003f800380218003802d007b802d007c8060003c8060003e006180040065800500618005006f80058063800500418006006f80050065800500618005002e8006802c8006006f80060065800600758006007280060061800600418007004f8005004380050047800580518005007980050065');
embchunkin('8006006f800600728006006180060041800680758006005880050057800500418005005680058059800500748005007580050062800500798005007680058077800500688005806b800500658008006f80080078800500648008006380080071800800768005006a80090079800580778005007480050043');
embchunkin('8005004f800500478005005580050051800500548006005980060056800780578007806a800880498008fffb8e38fffae38d00013e950001c71dffff1c72ffff8e38fffeaaaafffe38e3000071c80000e38e00000000000555560002aaab0001c71d0006e38e001000030001c71d013100120000007f0021');
embchunkin('0010000a0005004900090000000786039b5a005000001c546558207465787420776974686f757420662d6c6967617475726573000000000000000000000003434d5200000000000000000000000000000000000000f40ec000001bc0000019c0000012c0000010c0000016c0000014c0000019c0000014c0');
embchunkin('000019c0000014c0000009d8000009d8000001d000000148000008480000013000000238000009d0000009d000000990000009d000000960000016d000000707000009d000001430000019300000095400001cc000001ec0000019e200000130010001d0010809d000001bd8000009f300001bf3000019d0');
embchunkin('000001d0010305f9000005f9000009f0000019b6000001180000033001060110000009f9000009a0000009a0000009a0000009a0000009a0000009a0000009a0000009a0000009a0000009a00000013000000138000019750000192100001975000008d0010919d0000016c0013d13c0000014c0000017c0');
embchunkin('012611c000000fc001151ac0000016c0000004c001480ac0000018c0011b0ec001431dc0000016c0000019c0012611c0010f19c8000015c0013d0cc0000014c0011f16c0000016c005151fc0051516c0011b16c009200dc0000001f9000009d0000001f9000009d0000001c0000001d00102093001390cd0');
embchunkin('0133073001310cd000000730000002d01000093805470cd0012b01c0000002c800000bd0010a01d000001b30012b0c30012b093001330c3801330b38000005300000063000000580013b0c30013c0b30050a1430050b0b3000000b3805100730000009300d0720300c0009d0000009c0000009c000000000');
embchunkin('0000000671cd0007000600078e400007e9460008aab30008c7260009c726000a5560000ae39a000b111d000b71d3000c000d000d1c80000d4a03000dd83d000e38f3000e6676000e93fa000ef4b0000f5566000f82ea000fb06d0010112300103ea6001071da0010889d00118e4d0012d843001305c60015');
embchunkin('112a00153ead0015c733000000000001f4a0000657ad0006e38d00080000000871c6000949f300099d5a0009d75d000a0e3a000a4fa6000aaab3000ae04d000b1c73000bb60d000c000000000000fffe57ad0000c71d0000e38d00018e3a00019d5a0002aab30002b8e600031c7300040000000000000000');
embchunkin('471d0000800000008e3a0001693d006c8000804c80018060005c00270022003f800280218002802d007b802d007c8060000e8060000f006180030065800400618004006f80048063800400418005006f80040065800400618004002e8005802c8005006f8005006580050075800500728005006180050041');
embchunkin('8006004f80040043800400478004805180040079800400658005006f800500728005006180050041800580758005005880040057800400418004005680048059800400748004007580040062800400798004007680048077800400688004806b800400658007006f80070078800400648007006380070071');
embchunkin('800700768004006a800800798004807780040074800400438004004f800400478004005580040051800400548005005980050056800680578006806a800780498007fff98e33fff8d276000238e6fffee38dffff71c6fffe5553fffdc71a00008e3a00011c730000000000078e400003555a000238e60006');
embchunkin('e38d0015c733000238e6014500120000007f00250010000a00050058000a00000007b94161a8006000000854655820746578740000000000000000000000000000000000000000000000000000000000000003434d5200000000000000000000000000000000000000f211c000001ec000001cc0000015c0');
embchunkin('000013c0000019c0000017c000001cc0000017c000001cc0000017c000000fd0110a0ed000000ed000001fd000001fd0000001300000023800000ad000000ad000000a8000000ad000000a60000019d00000070600000ad00000173000001c3000000a54000020c0000022c000001ce200000130010001d0');
embchunkin('01170ad000001ed700000af300001ef300001cd0000001d0011205f9000005f900000af000001c9500000118000003300115011000000af900000aa000000aa000000aa000000aa000000aa000000aa000000aa000000aa000000aa000000aa000000130000001380000014800001c2100000948000009d0');
embchunkin('01181cd0000019c0014c16c0000017c000001ac0013514c0000012c001241dc0000019c0000004c001570bc000001bc0012a11c0015221c0000019c000001cc0013514c0011e1cc8000018c0014c0dc0000017c0012e19c0000019c0052423c0052419c0012a19c0092f10c0000001f900000ad0000001f9');
embchunkin('00000ad0000001b0000001d001110a3001480dd00142073001400dd000000830000002d011020a3805560dd0013a01b0000002b800000cd0011901d000001e30013a0d30013a0a3001420d3801420c38000005300000063000000570014a0d30014b0c3005191730051a0c3000000c38051f073000000a30');
embchunkin('0d1624300c000ad000000ab000000ab00000000000000005a12b000625e80006aaa5000714d50007b4200007cead0008bd9b0008bd9d000942580009c7150009fc2d000a4bd3000ad090000b4255000bc713000bda0b000c0f23000c93e0000ce385000d189d000d4db5000d9d5b000ded00000e2218000e');
embchunkin('5730000ea6d5000edbed000ef67b000f1108000ffff50010e38000113e88001173a00013517d0013869500138e2b000000000001ed0b00063d280006e38d00080000000871c80009425d0009d75d000a0e3b000a38e0000a4fa5000acde3000aeef0000b1c73000bb60d000c000000000000fffe3d280000');
embchunkin('c71d0000e38d00018e3b000238e00002b8e500031c7000031c7300040000000000000000426000007778000084bd00014bd8006c8000804c80010069000c0066000b006c000d00278002003f80020021800200298002805d80020069000e006c000f00278002003f80020021800200298002805d80028060');
embchunkin('005c00270022003f800380218003802d007b802d007c8060003c8060003e006180040065800500618005006f80058063800500418006006f80050065800500618005002e8006802c8006006f80060065800600758006007280060061800600418007004f8005004380050047800580518005007980050065');
end;
procedure embpart16;
begin
embchunkin('8006006f800600728006006180060041800680758006005880050057800500418005005680058059800500748005007580050062800500798005007680058077800500688005806b800500658008006f80080078800500648008006380080071800800768005006a80090079800580778005007480050043');
embchunkin('8005004f800500478005005580050051800500548006005980060056800780578007806a800880498008fffa5ed5fff9a50000014bd8000212f5fffef685ffff7b43fffe71c8fffded0b000084bd0001097b000000000006aaa500031c70000212f50006e38d00138e2b000212f5014500120000007f0026');
embchunkin('0010000900050058000a00000007d993a052007000000854655820746578740000000000000000000000000000000000000000000000000000000000000003434d5200000000000000000000000000000000000000f012c000001fc000001dc0000016c0000014c000001ac0000018c000001dc0000018c0');
embchunkin('00001dc0000018c0000010d0110a0fd000000fd0000020d0000020d00000013000000237000009d0000009d000000990000009d00000096000001ad00000070600000ad00000183000001d3000000954000021c0000023c000001de200000130010001d0011709d000001fd7000009f300001ff300001dd0');
embchunkin('000001d0011205f8000005f8000009f000001d85000001170000033001150110000009f8000009a0000009a0000009a0000009a0000009a0000009a0000009a0000009a0000009a0000009a000000130000001370000014700001d2100000847000008d001181dd000001ac0014c17c0000018c000001bc0');
embchunkin('013515c0000013c001241ec000001ac0000004c001570bc000001cc0012a12c0015222c000001ac000001dc0013515c0011e1dc7000019c0014c0ec0000018c0012e1ac000001ac0052425c005241ac0012a1ac0092f11c0000001f8000009d0000001f8000009d0000001b0000001d00111093001480ed0');
embchunkin('0142073001400ed000000730000002d01102093705560ed0013a01b0000002b700000dd0011901d000001f30013a0e30013a093001420e3701420c37000005300000063000000570014a0e30014b0d3005191830051a0d3000000d37051f0730000009300d1624300c0009d0000009b0000009b000000000');
embchunkin('000000052cb50005aaae000628a500069a6e0007249500073dc70008208500089e7e00091c7500091c770009555900099a6b00099a6e000a1865000a5969000ad762000b1455000b4d39000bcb32000c1045000c4929000c820e000cc722000d0c35000d4519000d7dfe000dc312000dfbf7000e0825000e');
embchunkin('2497000f0415000f861e001038e9001071ce001230c9001238e9001269ae000000000001d75e000625300006e38e00080000000871c700092ff00009d75e0009e7a0000a0e39000a4fa5000ac30e000aeef0000b1c72000bb60e000c000000000000fffe25300000c71e0000e38e00018e390001e7a00002');
embchunkin('b8e500031c72000400000000000000003efb0000716000007df90001471e006c8000804c80010069000c0066000b006c000d00278002003f80020021800200298002805d80020069000e006c000f00278002003f80020021800200298002805d80028060005c00270022003f800380218003802d007b802d');
embchunkin('007c8060003c8060003e006180040065800500618005006f80058063800500418006006f80050065800500618005002e8006802c8006006f80060065800600758006007280060061800600418007004f80050043800500478005805180050079800500658006006f80060072800600618006004180068075');
embchunkin('8006005880050057800500418005005680058059800500748005007580050062800500798005007680058077800500688005806b800500658008006f80080078800500648008006380080071800800768005006a800900798005807780050074800500438005004f80050047800500558005005180050054');
embchunkin('8006005980060056800780578007806a800880498008fffad34bfffa1c6e0001471e0001f7e0ffff0410ffff8207fffe8617fffe082000007df90000fbf000000000000628a50002f3d00001f7e00006e38e001238e90001f7e0014300120000007f00230010000a00050058000a000000077c7b59070080');
embchunkin('00000854655820746578740000000000000000000000000000000000000000000000000000000000000003434d5200000000000000000000000000000000000000ee10c000001dc000001bc0000014c0000012c0000018c0000016c000001bc0000016c000001bc0000016c000000ed0110a0dd000000dd0');
embchunkin('00001dd000001dd0000001300000023800000ad000000ad000000a9000000ad000000a60000018d00000080600000ad00000163000001b3000000a5400001ec0000021c000001be200000130010001d001170ad000001dd700000af300001df300001bd0000001d0011205f9000005f900000af000001b75');
embchunkin('00000118000003300115011000000af900000aa000000aa000000aa000000aa000000aa000000aa000000aa000000aa000000aa000000aa000000130000001380000014800001b2100000948000009d001181bd0000018c0014c15c0000016c0000019c0013513c0000011c001241cc0000018c0000004c0');
embchunkin('01570bc000001ac0012a10c001521fc0000018c000001bc0013513c0011e1bc8000017c0014c0dc0000016c0012e18c0000018c0052422c0052418c0012a18c0092f0fc0000001f900000ad0000001f900000ad0000001b0000001d001110a3001480dd00142083001400dd000000830000002d011020a38');
embchunkin('05560dd0013a01b0000002b800000cd0011901d000001d30013a0d30013a0a3001420d3801420c38000006300000073000000580014a0d30014b0c3005191630051a0c3000000c38051f083000000a300d1620300c000ad000000ab000000ab00000000000000004b8e8000531cc0005aab000061f500006');
embchunkin('9c780006a0060006b4a600078e4000080724000880080008ba580008f8ec000971d00009eab4000a6398000a9de8000b16cc000b5560000b8fb0000bca00000c0894000c4728000c8178000cbbc8000cfa5c000d34ac000d38f0000d5618000e2ab8000f56d0000f91200011001000113a60001174b00000');
embchunkin('00000001c71c00060c3c0006e38e00080000000871c800092d820009aab00009d75e000a0e3a000a4fa6000abaec000aeeee000b1c72000bb60a000c000000000000fffe0c3c0000c71c0000e38e00018e3a0001aab00002b8e400031c7000031c72000400000000000000003c7200006cce000078e40001');
embchunkin('438e006c8000804c80010069000c0066000b006c000d00278002003f80020021800200298002805d80020069000e006c000f00278002003f80020021800200298002805d80028060005c00270022003f800380218003802d007b802d007c8060003c8060003e006180040065800500618005006f80058063');
embchunkin('800500418006006f80050065800500618005002e8006802c8006006f80060065800600758006007280060061800600418007004f80050043800500478005805180050079800500658006006f8006007280060061800600418006807580060058800500578005004180050056800580598005007480050075');
embchunkin('80050062800500798005007680058077800500688005806b800500658008006f80080078800500648008006380080071800800768005006a800900798005807780050074800500438005004f800500478005005580050051800500548006005980060056800780578007806a800880498008fffb4718fffa');
embchunkin('93e40001438e0001e390ffff0e38ffff871cfffe9554fffe1c70000078e40000f1c8000000000005aab00002d5580001e3900006e38e001100100001e390014300120000007f00240010000900050058000a000000076fb48bc7009000000854655820746578740000000000000000000000000000000000');
embchunkin('000000000000000000000000000003434d5200000000000000000000000000000000000000ec11c000001ec000001cc0000015c0000013c0000019c0000017c000001cc0000017c000001cc0000017c000000fd0110a0ed000000ed000001ed000001ed0000001300000023700000bd000000bd000000b90');
embchunkin('00000bd000000b60000019d00000080600000bd00000173000001c3000000b5500001fc0000022c000001ce200000130010001d001170bd000001ed700000bf300001ef300001cd0000001d0011205f8000005f800000bf000001c7400000117000003300115011000000bf800000ba000000ba000000ba0');
embchunkin('00000ba000000ba000000ba000000ba000000ba000000ba000000ba000000130000001370000014700001c2100000a4700000ad001181cd0000019c0014c16c0000017c000001ac0013514c0000012c001241dc0000019c0000004c001570cc000001bc0012a11c0015220c0000019c000001cc0013514c0');
embchunkin('011e1cc7000018c0014c0ec0000017c0012e19c0000019c0052423c0052419c0012a19c0092f10c0000001f800000bd0000001f800000bd0000001b0000001d001110b3001480ed00142083001400ed000000930000002d011020b3705560ed0013a01b0000002b700000dd0011901d000001e30013a0e30');
embchunkin('013a0b3001420e3701420d37000006300000073000000580014a0e30014b0d3005191730051a0d3000000d37051f083000000b300d1621300c000bd000000bb000000bb0000000000000000491600005065000057b400005ef8e0006652000066e9c00067c8400074f00000750950007c3f0000838e00008');
embchunkin('73070008add0000922c0000997b0000a0ca0000a46c7000abbb7000af680000b30a7000b6ace000ba597000be060000c1a87000c54ae000c8f77000cc99e000cca40000ce754000db420000ed827000f124e001071c00010abe70010e60e000000000001ba790005f4e90006e38e00080000000871c70009');
embchunkin('217e00097b400009d75e000a0e39000a4fa5000ab49b000aeeee000b1c72000bb60b000c000000000000fffdf4e90000c71c0000e38e00017b4000018e390002b8e400031c72000400000000000000003a790000693e000074f0000140c9006c8000804c80010069000c0066000b006c000d00278002003f');
embchunkin('80020021800200298002805d80020069000e006c000f00278002003f80020021800200298002805d80028060005c00270022003f800380218003802d007b802d007c8060003c8060003e006180040065800500618005006f80058063800500418006006f80050065800500618005002e8006802c8006006f');
embchunkin('80060065800600758006007280060061800600418007004f80050043800500478005805180050079800500658006006f800600728006006180060041800680758006005880050057800500418005005680058059800500748005007580050062800500798005007680058077800500688005806b80050065');
embchunkin('8008006f80080078800500648008006380080071800800768005006a800900798005807780050074800500438005004f800500478005005580050051800500548006005980060056800780578007806a800880498008fffb6ea0fffabf89000140c90001d3c0ffff1620ffff8b10fffea130fffe2c400000');
embchunkin('74f00000e9e00000000000057b400002bda00001d3c00006e38e001071c00001d3c0017900120000007f00250010000a00390058000a0000000770ae304a00a000000854655820746578740000000000000000000000000000000000000000000000000000000000000004434d534c000000000000000000');
embchunkin('000000000000000000ea12c0a4001fc000001cc0600016c0000014c0c0001ac0cc0018c084001cc0900018c030001cc0900018c0800010d0e10a0fd04c000fd04c001fd04c001fd04c0001300000023800000ad000000ad038000a9018000ad054000a6064001ed00000080600000bd08800183078001c30');
embchunkin('78000a55040020c0840023c084001ce260000130010001d07d170ad000001fd73c000af3a8001ff398001cd0580001d07d1205f9c40005f914000af0b0001c7414000118000003300915011000000af9c4000aa0a8000aa0a8000aa0a8000aa0a8000aa0a8000aa0a8000aa0a8000aa0a8000aa0a8000aa0');
embchunkin('a800013010000138100001482c001c213c000948000009d0bd181cd06c001ac0014c17c0800018c0b8001bc0613515c0840013c0a5241dc028001ac0cc0004c0c9570cc0ac001cc0b92a12c0015221c0cc001ac0cc001cc0613515c0811e1cc8600019c0014c0fc0840018c0a52e1ac0cc001ac0d92424c0');
embchunkin('d9241ac0c92a1ac0dd2f11c0b80001f9d4000ad0d00001f940000ad00c0001b0680001d07d110a3001480fd0214208308d400fd04c000830780002d0e1020a38b5560fd0013a01b0680002b844000ed08d1901d04c001f30013a0f30013a0a305d420f3835420d38240006309c000730500005801d4a0f30');
embchunkin('014b0e30b5191830b51a0e3094000e38b51f083070000a30a1162230a0000ad088000ab074000ab0480000000000000471c80004e390000555560005c71d000638e50006444600064fa600071c7300078e3b0008000200080003000838e5000871c8000871ca0008e390000955580009c71e000a0002000a');
end;
procedure embpart17;
begin
embchunkin('71ca000aaaad000ae390000b1c73000b5558000b8e3b000bc71e000c0002000c38e6000c71ca000c8e3b000cf036000d5558000e71ca000eaaad00100003001038e6001071ca000000000001b05b0005deb80006e38e00080000000871c80009159d000955560009d75e000a0e3a000a4fa5000aaf8d000a');
embchunkin('eeee000b1c72000bb60b000c000000000000fffddeb80000c71d0000e38e0001555600018e3a0002b8e300031c7000031c7200040000000000000000079800002130000024fd00003702000038e5000052060000592300005a1500005ed5000060b80000666a0000777800007c36000084c0000088ae0000');
embchunkin('8ad300008f0d0000a01e0000a1330000a8c80000b2430000caeb0000cdc20000d4c50000d8f20000d9020000da150000e1ab0000e4620000e5730000eb280000ec180000eef20000f6880000f86d0001036d00011a8e00011c76000125f000012772000127d60001462d0001527e0001555a00015ed30001');
embchunkin('60b800017b46000182db00018e3d0001999d0001bbbd0001c3550002000500020b63000238e6000318ab006c8000804c80010069000c0066000b006c000d00278002003f80020021800200298002805d80020069000e006c000f00278002003f80020021800200298002805d80028060005c00270022003f');
embchunkin('800380218003802d007b802d007c8060003c8060003e006180040065800500618005006f80058063800500418006006f80050065800500618005002e8006802c8006006f80060065800600758006007280060061800600418007004f80050043800500478005805180050079800500658006006f80060072');
embchunkin('8006006180060041800680758006005880050057800500418005005680058059800500748005007580050062800500798005007680058077800500688005806b800500658008006f80080078800500648008006380080071800800768005006a800900798005807780050074800500438005004f80050047');
embchunkin('8005005580050051800500548006005980060056800780578007806a800880498008fffb8e38fffae38d00013e950001c71dffff1c72ffff8e38fffeaaaafffe38e3000071c80000e38e0002aab0000555560002aaab0001c71d0006e38e001000030001c71d017800120000007f00240010000a00390058');
embchunkin('000a00000007a13829cf008000000854655820746578740000000000000000000000000000000000000000000000000000000000000004434d534c000000000000000000000000000000000000ee10c09c001ec000001bc05c0014c0000012c0c00018c0c80016c07c001bc0900016c030001bc0900016c0');
embchunkin('80000ed0e10a0dd048000dd048001ed048001ed0480001300000023800000ad000000ad02c000a9014000ad050000a6064001dd00000080600000ad08800163084001b3084000a5400001fc07c0022c07c001be25c000130010001d071170ad000001ed740000af3ac001ef394001bd0540001d0711205f9');
embchunkin('c40005f910000af0b0001b7510000118000003300915011000000af9c4000aa0ac000aa0ac000aa0ac000aa0ac000aa0ac000aa0ac000aa0ac000aa0ac000aa0ac000aa0ac0001300c0001380c00014820001b2140000948000009d0bd181bd0680018c0014c15c0800016c0b40019c05d3513c07c0011c0');
embchunkin('9d241cc0180018c0c80004c0cd570bc0a4001ac0b52a10c0015220c0c80018c0c8001bc05d3513c0811e1bc85c0017c0014c0dc0780016c09d2e18c0c80018c0d92423c0d92418c0cd2a18c0dd2f0fc0b40001f9d4000ad0d00001f934000ad0040001b0580001d071110a3001480dd0254208308d400dd0');
embchunkin('48000830840002d0e1020a38b9560dd0013a01b0580002b83c000cd08d1901d048001e30013a0d30013a0a3061420d3839420c3828000630a00007304c0005801d4a0d30014b0c30b9191630b91a0c3098000c38b91f083074000a30a9162130a8000ad088000ab06c000ab04400000000000004b8e80005');
embchunkin('31cc0005aab000061f5000069c780006a0060006b4a600078e4000080724000880080008ba580008f8ec000971d00009eab4000a6398000a9de8000b16cc000b5560000b8fb0000bca00000c0894000c4728000c8178000cbbc8000cfa5c000d34ac000d38f0000d5618000dabfc000e2ab8000f56d0000f');
embchunkin('91200011001000113a60001174b0000000000001c71c00060c3c0006e38e00080000000871c800092d820009aab00009d75e000a0e3a000a4fa6000abaec000aeeee000b1c72000bb60a000c000000000000fffe0c3c0000c71c0000e38e00018e3a0001aab00002b8e400031c7000031c72000400000000');
embchunkin('0000000018e600001a14000025ee000031c8000045f000004aac00004c560000555600005686000057b600006f6a0000705c0000789e00007aca000082b80000892800008d62000092f80000a0f60000a84e0000c53a0000c9d40000cda80000cdc00000d2420000d2f80000d80e0000da140000dd680000');
embchunkin('e0b80000e2240000e4fc0000e5740000e84e0000f5940000fc5000010e3c000119da00011e96000125f000012d8400012e8c00013f1000014aae0001599c0001626200017b4600017de000018720000194a00001960e0001c1e80002000400020ef200023f4e00031da4006c8000804c80010069000c0066');
embchunkin('000b006c000d00278002003f80020021800200298002805d80020069000e006c000f00278002003f80020021800200298002805d80028060005c00270022003f800380218003802d007b802d007c8060003c8060003e006180040065800500618005006f80058063800500418006006f8005006580050061');
embchunkin('8005002e8006802c8006006f80060065800600758006007280060061800600418007004f80050043800500478005805180050079800500658006006f800600728006006180060041800680758006005880050057800500418005005680058059800500748005007580050062800500798005007680058077');
embchunkin('800500688005806b800500658008006f80080078800500648008006380080071800800768005006a800900798005807780050074800500438005004f800500478005005580050051800500548006005980060056800780578007806a800880498008fffb4718fffa93e40001438e0001e390ffff0e38ffff');
embchunkin('871cfffe9554fffe1c70000078e40000f1c80002aab00005aab00002d5580001e3900006e38e001100100001e390017800120000007f00250010000900390058000a0000000794715b9800900000085465582074657874000000000000000000000000000000000000000000000000000000000000000443');
embchunkin('4d534c000000000000000000000000000000000000ec11c09c001fc000001cc05c0015c0000013c0c00019c0cc0017c084001cc0900017c02c001cc0900017c080000fd0e10a0ed048000ed048001fd048001fd0480001300000023700000bd000000bd030000b9018000bd050000b6064001ed000000806');
embchunkin('00000bd08800173078001c3078000b55040020c0840023c084001ce25c000130010001d075170bd000001fd73c000bf3ac001ff394001cd0540001d0751205f8c40005f814000bf0b0001c7414000117000003300915011000000bf8c4000ba0ac000ba0ac000ba0ac000ba0ac000ba0ac000ba0ac000ba0');
embchunkin('ac000ba0ac000ba0ac000ba0ac000130100001371000014728001c213c000a4700000ad0bd181cd0680019c0014c16c0800017c0b4001ac05d3514c0840012c09d241dc0200019c0cc0004c0c9570cc0a8001bc0b52a11c0015221c0cc0019c0cc001cc05d3514c0811e1cc75c0018c0014c0ec07c0017c0');
embchunkin('9d2e19c0cc0019c0d92424c0d92419c0c92a19c0dd2f10c0b40001f8d4000bd0d00001f838000bd00c0001b0600001d075110b3001480ed0254208308d400ed048000930780002d0e1020b37b9560ed0013a01b0600002b740000dd08d1901d048001f30013a0e30013a0b3059420e3735420d3728000630');
embchunkin('a00007304c0005801d4a0e30014b0d30b9191730b91a0d3098000d37b91f083070000b30a5162230a4000bd088000bb06c000bb0440000000000000491600005065000057b400005ef8e0006652000066e9c00067c8400074f00000750950007c3f0000838e0000873070008add0000922c0000997b0000a');
embchunkin('0ca0000a46c7000abbb7000af680000b30a7000b6ace000ba597000be060000c1a87000c54ae000c8f77000cc99e000cca40000ce754000d44e2000db420000ed827000f124e001071c00010abe70010e60e000000000001ba790005f4e90006e38e00080000000871c70009217e00097b400009d75e000a');
embchunkin('0e39000a4fa5000ab49b000aeeee000b1c72000bb60b000c000000000000fffdf4e90000c71c0000e38e00017b4000018e390002b8e400031c7200040000000000000000019700001e0700001f9e00002f6c000035bc00004ca7000053740000569c0000587e00005ed50000745000007b4700007b940000');
embchunkin('82bc0000893900008cbe000097cc00009e0c0000a54e0000add90000c8640000cdc20000d19c0000d2450000d6300000d6ec0000dee90000dfc50000e3940000e5750000e8a00000e8f00000e9420000f0370000f72b000100440001162400011a3e000123b9000125f000012a9900013fdc000143040001');
embchunkin('509b00015d900001606900017b45000180a400018b14000198070001a8290001c2b40002000400020cf900023bbe00031ae0006c8000804c80010069000c0066000b006c000d00278002003f80020021800200298002805d80020069000e006c000f00278002003f80020021800200298002805d80028060');
embchunkin('005c00270022003f800380218003802d007b802d007c8060003c8060003e006180040065800500618005006f80058063800500418006006f80050065800500618005002e8006802c8006006f80060065800600758006007280060061800600418007004f8005004380050047800580518005007980050065');
embchunkin('8006006f800600728006006180060041800680758006005880050057800500418005005680058059800500748005007580050062800500798005007680058077800500688005806b800500658008006f80080078800500648008006380080071800800768005006a80090079800580778005007480050043');
embchunkin('8005004f800500478005005580050051800500548006005980060056800780578007806a800880498008fffb6ea0fffabf89000140c90001d3c0ffff1620ffff8b10fffea130fffe2c40000074f00000e9e00002aab000057b400002bda00001d3c00006e38e001071c00001d3c000c100120000007f0002');
embchunkin('0010000c00020002000000000007dfea3c7800a000001354655820747970657772697465722074657874000000000000000000000000000000000000000006434d534c545400000000000000000000000000000000ea01d0040001d0040001d0040001d0040001d0040001d0040001d0040001d0040001d0');
embchunkin('040001d0040001d0040001d0040001d0040001d00400013b0400013b040001500400015b040001d0040001d0040001c0040001d0040001b0040001d00400010a040001d0040001500400015004000188040001d0040001d0040001e404000128040001d0050001d0040001d0040001f6040001f6040001d0');
embchunkin('040001d0040001f5040001f50400016004000172040001190400017204000110040001f5040001d0040001d0040001d0040001d0040001d0040001d0040001d0040001d0040001d0040001d00400015004000159040001a304000141040001a3040001d0050101d0040001d0040001d0040001d0040001d0');
embchunkin('040001d0040001d0040001d0040001d0040001d0040001d0040001d0040001d0040001d0040001d0040001d0040001d0040001d9040001d0040001d0040001d0040001d0040001d0040001d0040001d0040001d0040001d0040001f5040001f5040001f5040001d004000107040001d004000150040001d0');
embchunkin('04000150040001d004000150040001d00400015b040001d0040001d0040001db040001d0040001d00400015004000150040001500400015b0400015b040001500400015004000190040001500400015004000150040001500400015b04000150040001f5040001f5040001f5040001d0040001d004000000');
embchunkin('0000000866620000000000020000000382d8000638e30006a6650006e38e0008555600087d260008aaab0008db720008e38e00090c8300090e3a0009c71d000aaaab000b1c7200000000fffcdf48fffeb60affff1c720000e38e0001555300015555000185ad0001c71d000238e300031c7300038e3a0000');
embchunkin('00000001da168060000e8060000f0002aab00008666200000000000000000006e38e0010ccc300086662014900120000007f00340010000b0005004e0008000000076d23bd5200a000000854655820746578740000000000000000000000000000000000000000000000000000000000000004434d535300');
embchunkin('0000000000000000000000000000000000ea17d000002ed000002bd000001dd0000020d0000026d0000027d000002bd0000027d000002bd0000027d000001ad0110a16d0000016d000002dd000002dd00000013000000239000014d0000014d000001490000014d000001480000021d000000e07000012d0');
end;
procedure embpart18;
begin
embchunkin('0000273000002b300000145500002fd0000032d000002be200000130010007d0011714d000002ed8000014f300002ef300002ad0000003d001120cfa00000cfa000014f000002b74000003160000083001150310000014fa000014a0000014a0000014a0000014a0000014a0000014a0000014a0000014a0');
embchunkin('000014a0000014a000000330000003360000074900002b2100001049000010d0011820d0000021d0014221d000001ed0000028d001341bd0000019d0012320d0000026d0000004d0014d10d0000025d0012917d0014830d0000026d0000029d001341ed0011d29d600001fd0000018d0000022d0012d24d0');
embchunkin('000021d0052331d0052321d0012921d0092e1cd0000005fa000014d0000005fa000014d0000003c0000003d001111130013f15d001390e30000015d000000e30000006d011021439054c15d0000001c0000002c9000013d0011901d000002c30000015300000143001391539013915390000093004000b30');
embchunkin('00000a600140153001410f300400233005190f3000000f39051e0d30000014300d1633300c0014d0000014b0000014c00000000000000003d27e00044446000471c8000471ca00049f4b0004e39000051c73000555560005777a0005c71d00062223000638e50006f4a000071c73000760b800078e3b0007');
embchunkin('b05d0007b05e0007d2800008000200084446000893eb0008aaad0008e39000091c750009555800098e3b0009c71e0009c720000a38e6000a5558000aaaad000aaaae000ae390000aeef2000b0005000b1c76000b555a000b8e3b000b8e3d000bc71e000c2225000c71ca000cb60e000d05b3000d5558000d');
embchunkin('c720000e0005000f1c76000f8e3d0010000300000000000155550005eb8500071c72000800000008aaab00092495000955560009be00000a1c72000a7d28000ad34e000adeae000b1c72000be38e000c000000000000fffdeb850000c71d0000e38e0001555600018e3a000200000002b8e300031c700003');
embchunkin('1c720004000000000000000038e300006666000071c800011c72006c8000804c80010069000c0066000b006c000d00278002003f80020021800200298002805d80020069000e006c000f00278002003f80020021800200298002805d80028060005c00270022003f800380218003802d007b802d007c8060');
embchunkin('003c8060003e0065800400618004006f80048063800400418005006f80040065800400618004002e8005802c8005006f80040065800400758004007280040061800400418005004f80040043800400478004805180040079800500658005006f800500728005006180050041800580758005005880040057');
embchunkin('800400418004005680048059800400658006006f8006007880040064800600638006007180060072800400798004807780040074800400438004004f800400478004005580040051800400548005005980050056800780578007806a800680498006fffc2d82fffbdddb00011c720001c71dffff8e38fffe');
embchunkin('aaaa000071c8fffe38e300000000000555560002aaab0001c71d00071c72001000030001c71d013e00120000007f002c000d000b0005004e000800000007f16b414800a000000854655820746578740000000000000000000000000000000000000000000000000000000000000006434d53534258000000');
embchunkin('00000000000000000000000000ea17a0000025a0000022a000001ba000001da0000020a0000020a0000022a0000020a0000022a0000020a000001aa0110a18a0000018a0000024a0000024a00000013000000239000013a0000013a000001380000013a00000139000001da000000d07000016a000002030');
embchunkin('0000223000001354000026a000002aa0000022b200000130010007a0011714a0000025a8000013c3000028c3000021a0000003a001120bca00000bca000013c000002276000003150000073001150310000013ca000013a0000013a0000013a0000013a0000013a0000013a0000013a0000013a0000013a0');
embchunkin('000013a00000033000000335000007490000222100001049000010a001181da000001da001421da000001ca0000020a001341aa0000019a001231da0000020a0000004a0014d10a000001fa0012917a0014827a0000020a0000020a001341ca0011d20a500001ca0000019a000001da0012d1fa000001da0');
embchunkin('052329a005231da001291da0092e1ba0000006ca000014a0000006ca000013a0000003a0000003a001111130013f15a001390d30000015a000000f30000005a011021339054c15a0000001a0000002a9000012a0011901a000002330000015300000133001391539013915390000083004000a3000000960');
embchunkin('0140153001410e3004001e3005190e3000000e39051e0c30000013300d162b300c0013a0000013a0000013a0000000000000000416c3000493eb0004e390000549f6000560b800057d2a0005dde00005f4a20006777a0006bf280006d83000079f4d0007d2800008000300082d8600084fa80008666a0008');
embchunkin('7d2b0008ccd00008eef20008fa5300090b63000949f8000960ba0009c720000a4448000ac170000b3e98000bbbc0000be943000c38e8000cb610000d49fa000db060000ddde3000e444a000eaab0000f27d8000fa5000010774500109f5000111c78001199a000000000000216c200068000000755550008');
embchunkin('00000008e38e00096dba0009dde0000a2aab000a3455000b1c72000be38e000c000000000000fffe80000000c71d0000e38e00018e3a0001b05b0001dde00002b8e300031c7000031c72000400000000000000003e95000070a300007d28000138e5006c8000804c80010069000c0066000b006c000d0027');
embchunkin('8002003f80020021800200298002805d80020069000e006c000f00278002003f80020021800200298002805d80028060005c00270022003f800380218003802d007b802d007c8060003c8060003e0065800400618004006f80048063800400418005006f80040065800400618004002e8005802c8005006f');
embchunkin('80040065800400758004007280040061800400418005004f80040043800400478004805180040079800500658005006f800500728005006180050041800580758005005880040057800400418004005680048059800400658006006f80060078800400648006006380060071800600728004007980048077');
embchunkin('80040074800400438004004f800400478004005580040051800400548005005980050056800780578007806a800680498006fffbe93dfffb4fa3000138e50001f4a0ffff82d8fffe888800007d28fffe0b60000000000005dde00002eef00001f4a000075555001199a00001f4a0017c00120000007f0035');
embchunkin('0010000b0037004e000800000007c5558de900a000000854655820746578740000000000000000000000000000000000000000000000000000000000000005434d5353490000000000000000000000000000000000ea17d0c4002fd000002cd054001dd0000020d0bc0026d0680027d0b8002cd08c0027d0');
embchunkin('34002cd08c0027d06c001ad0d90a16d0a40016d09c002ed0a4002ed09c00013030000239300014d0000014d098001490740014d09c00148084002ad000000e07000012d0980027304c002c304c001455380030d0b80033d0b8002ce254000130010007d0411714d004002fd83c0014f3ac002ff328002bd0');
embchunkin('240003d061120cfac0000cfa1c0014f0b0002c741c0003160000083015150310000014fac00014a0ac0014a0ac0014a0ac0014a0ac0014a0ac0014a0ac0014a0ac0014a0ac0014a0ac0014a0ac00033018000336180007490c002c213c001049000010d0b51820d0540021d0014221d06c001ed0b80028d0');
embchunkin('55341bd0b80019d0c52320d0b80026d0680004d0c54d10d0680025d0b92917d0014831d0680026d0680029d055341ed06d1d29d654001fd06c0018d0980022d0c52d24d0680021d0d12332d0d12321d0c52921d0d52e1cd0b80005facc0014d0c80005fa7c0014d0640003c0580003d061111130093f15d0');
embchunkin('21390e30700015d09c000e304c0006d0d9021439a94c15d0100001c0a00002c9900013d0711901d09c002d301000153010001430493915392d39153930000930a8000b305c000a605140153031410f30a8002330a9190f3094000f39a91e0d308000143079163430780014d0980014b0880014c044000000');
embchunkin('00000003d27e00044446000471c8000471ca00049f4b0004e39000051c73000555560005777a0005c71d00062223000638e50006f4a000071c73000760b800078e3b0007b05d0007b05e0007d2800008000200084446000893eb0008aaad0008e39000091c750009555800098e3b0009c71e0009c720000a');
embchunkin('38e6000a5558000aaaad000aaaae000ae390000aeef2000b0005000b1c76000b555a000b8e3b000b8e3d000bc71e000bcce3000c2225000c71ca000cb60e000d05b3000d5558000dc720000e0005000f1c76000f8e3d0010000300000000000155550005eb8500071c72000800000008aaab000924950009');
embchunkin('55560009be00000a1c72000a7d28000ad34e000adeae000b1c72000be38e000c000000000000fffdeb850000c71d0000e38e0001555600018e3a000200000002b8e300031c7000031c72000400000000000000000cf30000282b00004188000048d200004fb200006680000067e000007d3500007d400000');
embchunkin('800e00009f560000aac30000bc850000c6850000d05a0000ead20001058500010edd0001159e000127ed0001357000013e6800013ead000140280001474000014b86000153ab0001556e00015963000160ed00016525000166800001677200016980000171e60001774b000177900001790b0001846b0001');
embchunkin('8e0d00018fcd0001bbd50001c8f60001e24d0001e3ae0001ead200020cf500021b30000223b6000245d800028cf80002957d0002c3000003790b006c8000804c80010069000c0066000b006c000d00278002003f80020021800200298002805d80020069000e006c000f00278002003f8002002180020029');
embchunkin('8002805d80028060005c00270022003f800380218003802d007b802d007c8060003c8060003e0065800400618004006f80048063800400418005006f80040065800400618004002e8005802c8005006f80040065800400758004007280040061800400418005004f80040043800400478004805180040079');
embchunkin('800500658005006f800500728005006180050041800580758005005880040057800400418004005680048059800400658006006f8006007880040064800600638006007180060072800400798004807780040074800400438004004f80040047800400558004005180040054800500598005005680078057');
embchunkin('8007806a800680498006fffc2d82fffbdddb00011c720001c71dffff8e38fffeaaaa000071c8fffe38e3000366a0000555560002aaab0001c71d00071c72001000030001c71d014600120000007f0035000f00080005004e0008000000074b74456f00800000085465582074657874000000000000000000');
embchunkin('0000000000000000000000000000000000000000000005434d5353510000000000000000000000000000000000ee17a0000030a000002ca0000019a0000024a0000021a0000029a000002ca0000029a000002ca0000029a0000018b0110a15b0000015b000002eb000002eb00000013000000236000013b0');
embchunkin('000013b000001360000013b00000137000001fb000000e04000012b00000293000002c3000001353000031a0000033a000002cd200000130010006b0011713b0000030b5000013e3000030e300002ab0000004b001120ce700000ce7000013e000002cc6000004160000083001150410000013e700001380');
embchunkin('00001380000013800000138000001380000013800000138000001380000013800000138000000430000004360000064600002c2100001146000011b0011824b000001fa0014223a000001ea0000027a001341ca000001aa0012324a0000021a0000003a0014d10a0000026a0012917a001482fa0000021a0');
embchunkin('00002ba001341da0011d2ba6000022a0000016a0000028a0012d20a000001fa0052332a005231fa001291fa0092e1ba0000005e7000013b0000005e7000013b0000004b0000004b001111130013f14b001390e30000014b000000e30000007b011021436014c14b0000001b0000002b6000012b0011901b0');
embchunkin('00002d30000014300000133001391436013914360000093004000b3000000a900140143001410f300400253005190f3000000f36051e0d30000013300d1634300c0013b0000013b0000013b0000000000000000471ca0005000400051c7400058e3a0005a3900005aaac00061c740006aaac0006aaae0007');
embchunkin('38e40007aaac0007c71e00089c740008e3900008e392000938e6000971ca000971cc000a0002000a0004000a8e3c000b1c74000b5558000baaae000bc720000be392000c38e6000c71ca000c8e3c000cc720000ce392000cf1cc000d0004000d0e3c000d1c76000d5558000d555a000d71cc000e38e8000e');
embchunkin('5558000e71ca000f0004000f71ca000f8e3c000f8e3e00101c760010555a0010aaae00110004001271cc001338e8001400040000000000018e380006e000000855560008e38e000971c8000a6aac000a7ffe000a8e38000ab6e0000af1c8000b1c72000b1c74000b8002000c38e400000000fffdfc700000');
end;
procedure embpart19;
begin
embchunkin('8e3a00011c720001f1c8000238e0000238e400035554000000000000471c0000800000008e3a0001638e006c8000804c80010069000c0066000b006c000d00278002003f80020021800200298002805d80020069000e006c000f00278002003f80020021800200298002805d80028060005c00270022003f');
embchunkin('800380218003802d007b802d007c8060003c8060003e0065800400618004006f80048063800400418005006f80040065800400618004002e8005802c8005006f80040065800400758004007280040061800400418005004f80040043800400478004805180040079800500658005006f8005007280050061');
embchunkin('80050041800580758005005880040057800400418004005680048059800400658006006f8006007880040064800600638006007180060072800400798004807780040074800400438004004f800400478004005580040051800400548005005980050056800780578007806a800680498006fffb8e36fffb');
embchunkin('38e00001638e000238e4ffff71c6fffe555400008e3afffdc71c000000000006aaac00035556000238e40008555600140004000238e4017600120000007f0036000f00080034004e0008000000079d0502010080000008546558207465787400000000000000000000000000000000000000000000000000');
embchunkin('00000000000006434d5353514900000000000000000000000000000000ee17a0b40031a000002da04c0019a0000024a0ac0021a050002aa0a4002da078002aa02c002da078002aa05c0018b0cd0a15b08c0015b080002fb08c002fb08000013038000236380013b0000013b074001360700013b064001370');
embchunkin('840027b000000e04000012b074002a3058002d3058001353240032a0a40034a0a4002dd24c000130010006b03d1713b0000031b5400013e3980031e314002bb0340004b045120ce7b0000ce7180013e0a0002dc618000416000008300d150410000013e7b000138098001380980013809800138098001380');
embchunkin('98001380980013809800138098001380980013809800043008000436080006461c002d2140001146000011b0a91824b054001fa0014223a05c001ea0a40028a04d341ca0a4001aa0b52324a0a40021a0500003a0b54d10a0500026a0a52917a0014830a0500021a050002ca04d341da05d1d2ca64c0022a0');
embchunkin('5c0016a0680029a0b52d20a050001fa0c52333a0c5231fa0b5291fa0c92e1ba0a40005e7c00013b0bc0005e7480013b0600004b0440004b045111130053f14b021390e30900014b080000e30580007b0cd021436394c14b0100001b08c0002b6800012b0911901b080002e3010001430100013306d391436');
embchunkin('2939143638000930b8000b3088000a907d40143039410f30b8002530b9190f309c000f36b91e0d309c00133095163530940013b0740013b0740013b0300000000000000471ca0005000400051c7400058e3a0005a3900005aaac00061c740006aaac0006aaae000738e40007aaac0007c71e00089c740008');
embchunkin('e3900008e392000938e6000971ca000971cc000a0002000a0004000a8e3c000b1c74000b5558000baaae000bc720000be392000c38e6000c71ca000c8e3c000cc720000ce392000cf1cc000d0004000d0e3c000d1c76000d5558000d555a000d71cc000dad1a000e38e8000e5558000e71ca000f0004000f');
embchunkin('71ca000f8e3c000f8e3e00101c760010555a0010aaae00110004001271cc001338e8001400040000000000018e380006e000000855560008e38e000971c8000a6aac000a7ffe000a8e38000ab6e0000af1c8000b1c72000b1c74000b8002000c38e400000000fffdfc7000008e3a00011c720001f1c80002');
embchunkin('38e0000238e4000355540000000000003142000053ac00005480000054880000639c0000639e000063ac000069d6000090220000948000009b8a0000a3b60000a9000000be560000dc980000e7de0000ead2000103ba000112a600011386000118fe000129de0001306c00013154000131ee000137160001');
embchunkin('3d6a00013dec0001402800014e34000153ae0001557c000166020001701e0001790a00018c900001a6780001b0240001b73a0001c3ba0001c54e0001e3ae0001effa00020ad600020c6c00020c90000240280002991000029aa40002d3880003c028006c8000804c80010069000c0066000b006c000d0027');
embchunkin('8002003f80020021800200298002805d80020069000e006c000f00278002003f80020021800200298002805d80028060005c00270022003f800380218003802d007b802d007c8060003c8060003e0065800400618004006f80048063800400418005006f80040065800400618004002e8005802c8005006f');
embchunkin('80040065800400758004007280040061800400418005004f80040043800400478004805180040079800500658005006f800500728005006180050041800580758005005880040057800400418004005680048059800400658006006f80060078800400648006006380060071800600728004007980048077');
embchunkin('80040074800400438004004f800400478004005580040051800400548005005980050056800780578007806a800680498006fffb8e36fffb38e00001638e000238e4ffff71c6fffe555400008e3afffdc71c000366a00006aaac00035556000238e40008555600140004000238e4011900120000007f002c');
embchunkin('000f00100012000700070000001621222c9a00a0000010546558206d6174682073796d626f6c73000000000000000000000000000000000000000000000004434d5359000000000000000000000000000000000000ea20a800000342000020a800000864000020a800000842000020a8000020a8000020a8');
embchunkin('000020a8000020a8000020a8000020a800002add00000842000008420000205300002053000020bb000020bb000020bb000020bb000020bb000020bb0000202100002075000020860000208600002a8600002a86000020860000208600002a2100002a21000008dc000008dc00002a2100002adc00002adc');
embchunkin('0000205300002a2100002a21000010dc000010dc00002a2100002adc00002adc000020300000029000002a300000148600001486000028dd000028dd000001dc0000012100000dd000000dd000001430000008e700001bd000001bd0000020d0000020d0000010d0000022c0010613c0110409c015041fc0');
embchunkin('0d020ac02d031ac031030ec9190326c005030bc01d0016c941051ec0090117c001042bc0010424c03d0221c00d0318c0290223c9010327c001020fc021040cc0450012c0310211c0290029c0290219c0390415c929021cc02504149000001490000014900000149000001490000010d0000010d0000006ee');
embchunkin('000006ee000006ee000006ee000008ee000008ee000004ee000004ee000003ee000008ee000008ee000010ee000008ee000003dc0000251f00001dc0000025c0000005dd3400149000001490000020bb000020bb000007dd000006dd000006dd000010dd000020da000020da000020da000020da00000000');
embchunkin('00000000000000046666000471c8000638e50006aaad00071c7300071c750008000200086caa000871cb0008b6560008b6dd0008e390000984920009b05e0009c71e0009cdf5000a0368000a824b000aaaad000ab182000ad830000b091d000b2103000b69aa000b7ffe000b8e3b000b987a000c0002000c');
embchunkin('30f3000c57a0000c71ca000cbce2000cc68a000d1115000d20bb000d5558000d8325000d8f60000e38e6000fcdf600100003001336e3000000000000a3d60005deb80006e38e00071c7300076b83000771c80007bade0008a0250008e39000095556000a2cf0000aeeee000b1c72000c000000000000fffd');
embchunkin('deb8ffff1c73ffff6b83ffff71c8ffffbade0000a0250000e38e0001555600018e3a000212f600022cf000031c7000031c7200040000000f5c2a000000000000278b00003b2b000071c800007c920000eef20000f2e800012e600001332e00014566000150c800016e5a000196c20001c71d000257c50002');
embchunkin('5b960002f49e0004111280308000803080018030800280308003803080048030800580308006000071c80000e390000155580001c720000238e80002aab000031c78000400000000000000000000000000000006e38e0010000300000000000ad2fa00064cba00071986000af9a80005847800069b350005');
embchunkin('ce6800049f4a000266660003f49a00062d800000cccd00263d70001028f600040000011600120000007f002c000f000f00100007000700000016b0dc306e0050000010546558206d6174682073796d626f6c73000000000000000000000000000000000000000000000004434d5359000000000000000000');
embchunkin('000000000000000000f41eaa0000035300001eaa0000074200001eaa0000075300001eaa00001eaa00001eaa00001eaa00001eaa00001eaa00001eaa000029cb000007530000075300001e6400001e6400001edc00001edc00001edc00001edc00001edc00001edc00001e2100001e7500001e9800001e98');
embchunkin('000029980000299800001e9800001e980000292100002921000007cb000007cb00002921000029cb000029cb00001e640000292100002921000010cb000010cb00002921000029cb000029cb00001e3000000280000029300000149800001498000028cb000028cb000001cb0000012100000ac000000ac0');
embchunkin('00001430000007e600001bc000001bc000001ec000001ec0000010c0000022b0010612b0050409b00d041fb0090208b01d0317b029030db7150326b001030bb0110015b739051db0010116b001042bb0010423b0350220b009031ab0250224b7010327b001020eb019040cb03d000fb0290211b025002ab0');
embchunkin('250219b0310413b7250218b02104148000001480000014800000148000001480000010c0000010c0000006ed000006ed000006ed000006ed000007ed000007ed000004ed000004ed000003ed000007ed000007ed000010ed000007ed000003cb0000211e00001cb0000025b0000005cb2c00148000001480');
embchunkin('00001edc00001edc000006cb000006cb000006cb000010cb00001ec900001ec900001ec900001ec90000000000000000000000070e3d0007555a00098e40000a1c7a000aaab3000bc726000c5560000c8373000ce39a000d1cca000d28b0000d9b5d000de39a000dfaea000e000d000e61ea000eb586000e');
embchunkin('df10000f1c80000f5563000f6f90000fcfb0000fdcca000ff23d000ff666001038f3001093fa0010e15d00115566001157b000116d4a00118e4d0011d0d60012045600121c83001271da00131cd00013235d00138e4d0015c7330015e1f3001915f6000000000000e560000657ad0006e38d000771c60007');
embchunkin('e39300083ca600089da60008e39000099d5a000aaab3000aeef0000b1c73000b8256000c000000000000fffe57adffff71c6ffffe39300003ca600009da60000e38d00018e3a00019d5a000212f60002aab300031c730003825600040000000f1aa0000000000000443d00008e3a00009eba0000d5a00000');
embchunkin('d82a0001170600013dfd000150c600015f000001a4fa000238e6000257c60002780a000302da0004666a8030800080308001803080028030800380308004803080058030800600008e3a00011c730001aaad000238e60002c7200003555a0003e393000400000000000000000000000000000006e38d0017');
embchunkin('8e4d00000000000ecdca0006330d000810ed00106763000882b300080e90000674f60004b60d00033333000666660007e9400001999a001fae130016b85300040000011700120000007f002c000f00100010000700070000001671a1250b0060000010546558206d6174682073796d626f6c730000000000');
embchunkin('00000000000000000000000000000000000004434d5359000000000000000000000000000000000000f21faa0000035300001faa0000074200001faa0000075300001faa00001faa00001faa00001faa00001faa00001faa00001faa000029cc000007530000075300001f6400001f6400001fdd00001fdd');
embchunkin('00001fdd00001fdd00001fdd00001fdd00001f2100001f7500001f9700001f97000029970000299700001f9700001f970000292100002921000007cb000007cb00002921000029cb000029cb00001f64000029210000292100000fcb00000fcb00002921000029cb000029cb00001f300000028000002930');
embchunkin('0000149700001497000028cc000028cc000001cb0000012100000ac000000ac000001430000007e600001bc000001bc000001fc000001fc000000fc0000021b0010612b0050409b00d041eb0090208b0210318b029030db8110326b001030bb0150015b839051db0010116b001042bb0010423b0350220b0');
embchunkin('090317b0250224b8010327b001020eb019040cb03d0010b0290211b025002ab0250219b0310413b825021ab01d0414800000148000001480000014800000148000000fc000000fc0000006ee000006ee000006ee000006ee000007ee000007ee000004ee000004ee000003ee000007ee000007ee00000fee');
embchunkin('000007ee000003cb0000221f00001cb0000025b0000005cc2c0014800000148000001fdd00001fdd000006cc000006cc000006cc00000fcc00001fc900001fc900001fc900001fc9000000000000000000000005da13000612f5000825eb0008aaab00092f65000a38e0000abd9d000adaa0000b425b000b');
end;
procedure embpart20;
begin
embchunkin('5963000b6180000bf283000c3148000c4bd5000c6415000c904b000d0335000d2ea5000d5550000d8a68000dac2b000e0e03000e13e0000e2375000e24c5000e5ecb000ec8fb000f054d000f6110000f6845000f913b000fd6cd000ffff8001017350010221b001071c00010f2f80010fb6b00117b3b0013');
embchunkin('8e30001390450016d5f0000000000000d3a000063d280006e38d000771c80007a12d0008108000086df80008e39000096865000a38e0000aeef0000b1c73000b3bbd000c000000000000fffe3d28ffff71c8ffffa12d0000108000006df80000e38d0001686500018e3b000212f8000238e000031c700003');
embchunkin('1c7300033bbd00040000000f2c600000000000005705000084bd0000b97b0000e1180000f42b0001206b00014cfd00014e2000015a430001a03d000212f5000257c800026e8d0002fe1d000449f580308000803080018030800280308003803080048030800580308006000084bd0001097b00018e380002');
embchunkin('12f5000297b300031c700003a12d000400000000000000000000000000000006e38d001471c000000000000d00d0000646fd0007c240000dd1650006dead00080c280006b6d3000497b50002aaab00055555000697b000015555001fbbbb0015999b00040000011800120000007f002d000f000f00110007');
embchunkin('0007000000164f21e2850070000010546558206d6174682073796d626f6c73000000000000000000000000000000000000000000000004434d5359000000000000000000000000000000000000f020a900000353000020a900000842000020a900000853000020a9000020a9000020a9000020a9000020a9');
embchunkin('000020a9000020a900002bdc00000853000008530000206400002064000020cb000020cb000020cb000020cb000020cb000020cb0000202100002075000020970000209700002b9700002b97000020970000209700002b2100002b21000008dc000008dc00002b2100002bdc00002bdc0000206400002b21');
embchunkin('00002b21000010dc000010dc00002b2100002bdc00002bdc000020300000028000002b300000159700001597000029dc000029dc000001dc0000012100000cd000000cd000001530000008e600001cd000001cd0000020d0000020d0000010d0000022b0010613b009040ab011041fb00d0209b0290319b0');
embchunkin('2d030eb8150327b001030bb0190016b83d051eb0050117b001042cb0010423b0390221b00d0318b0250224b8010328b001020fb01d040db0410011b02d0212b025002ab025021ab0350414b825021bb02104158000001580000015800000158000001580000010d0000010d0000006ed000006ed000006ed');
embchunkin('000006ed000008ed000008ed000004ed000004ed000003ed000008ed000008ed000010ed000008ed000003dc0000251e00001db0000026b0000005dc3000158000001580000020cb000020cb000007dc000006dc000006dc000010dc000020da000020da000020da000020da000000000000000000000005');
embchunkin('451500056db9000765990007e59b000861890008618b00095d790009db750009ec47000a5812000a5969000a5d79000b042b000b3c29000b5559000b7c1b000b84d2000c0e15000c3ade000c5149000c83ae000caadb000cf249000d17fb000d1a09000d2b97000d4d39000dbf02000df265000e3b30000e');
embchunkin('4929000e7e50000eae80000ef819000ef987000f0415000f4519000fa887000fb2520010410900122967001238e900157ba7000000000000c6f2000625300006e38e000771c7000771c90007e6e5000840d50008e390000935f70009e7a0000aeef0000af7ae000b1c72000c000000000000fffe2530ffff');
embchunkin('71c7ffff71c9ffffe6e5000040d50000e38e000135f700018e390001e7a0000212f70002f7ae00031c7200040000000f390e00000000000005890000647000007df90000cc920000e772000109f70001272000014a47000156e2000159a000019cd90001f7e0000257c5000267c90002fab7000435a58030');
embchunkin('800080308001803080028030800380308004803080058030800600007df90000fbf2000179eb0001f7e5000275de0002f3d7000371d0000400000000000000000000000000000006e38e0012baf200000000000bb78e0006247700078a0e000c08ce000581e700080a6b0006e5d900049249000249250004');
embchunkin('92490005a69700012492001b3332001283a900040000011800120000007f002b000f001000120007000700000016be4bc80b0080000010546558206d6174682073796d626f6c73000000000000000000000000000000000000000000000004434d5359000000000000000000000000000000000000ee1fa9');
embchunkin('0000034200001fa90000075300001fa90000074200001fa900001fa900001fa900001fa900001fa900001fa900001fa9000029dd000007420000074200001f6400001f6400001fbb00001fbb00001fbb00001fbb00001fbb00001fbb00001f2100001f7500001f9700001f97000029970000299700001f97');
embchunkin('00001f970000292100002921000007dc000007dc00002921000029dc000029dc00001f64000029210000292100000fdc00000fdc00002921000029dc000029dc00001f3000000280000029300000149700001497000027dd000027dd000001dc0000012100000cd000000cd000001430000007e600001bd0');
embchunkin('00001bd000001fd000001fd000000fd0000021c0010612c00d0409c015041ec0110208c02d0319c031030dc8190325c005030ac01d0015c841051dc0090116c001042ac0010423c03d0220c0110317c0290222c8010326c001020ec021040bc0450011c0310210c0290028c0290218c0390413c829021ac0');
embchunkin('250414800000148000001480000014800000148000000fd000000fd0000006ee000006ee000006ee000006ee000007ee000007ee000004ee000004ee000003ee000007ee000007ee00000fee000007ee000003dc0000241f00001cc0000024c0000005dd340014800000148000001fbb00001fbb000006dd');
embchunkin('000006dd000006dd00000fdd00001fda00001fda00001fda00001fda0000000000000000000000049c720004b8e800069c78000718ea00078e40000880080008f8ec0009009a00095e2e00096190000971d0000a1880000a4b6a000a6398000a7fc4000a9ae6000b1d56000b4b22000b5560000b85bc000b');
embchunkin('b0f6000be49a000c1a0c000c2228000c37cc000c4728000cbbc8000ceb4c000d25e2000d38f0000d773a000d975c000de230000de7de000e2ab8000e77ce000e829e000f1c800010dfca0011001000143b7a000000000000b85200060c3c0006e38e00074e3c000771c80007bc4e000812b60008e3900009');
embchunkin('02900009aab0000ab2a2000aeeee000b1c72000c000000000000fffe0c3cffff4e3cffff71c8ffffbc4e000012b60000e38e0001029000018e3a0001aab0000212f60002b2a200031c7000031c7200040000000f47ae00000000000004d800001be000006e7e000078e40000dae40000ec3a000116c40001');
embchunkin('2c260001483e000154560001624400019a500001e390000257c6000262b40002f82e0004266880308000803080018030800280308003803080048030800580308006000078e40000f1c800016aac0001e39000025c740002d55800034e3c000400000000000000000000000000000006e38e001100100000');
embchunkin('0000000b242c00068a94000751b0000bfc5a000646500006a58c0005a58c00048e38000200000004000000065556000100000017cccc0012333400040000011700120000007f002b000f000f00120007000700000016a9b190ca0090000010546558206d6174682073796d626f6c73000000000000000000');
embchunkin('000000000000000000000000000004434d5359000000000000000000000000000000000000ec1fa80000034200001fa80000075300001fa80000074200001fa800001fa800001fa800001fa800001fa800001fa800001fa8000029dc000007420000074200001f6400001f6400001fbb00001fbb00001fbb');
embchunkin('00001fbb00001fbb00001fbb00001f2100001f7500001f8600001f86000029860000298600001f8600001f860000292100002921000007dc000007dc00002921000029dc000029dc00001f64000029210000292100000fdc00000fdc00002921000029dc000029dc00001f30000002900000293000001486');
embchunkin('00001486000027dc000027dc000001dc0000012100000cd000000cd000001430000007e700001bd000001bd000001fd000001fd000000fd0000021c0010612c0110409c015041ec00d0208c02d0319c031030dc9190325c005030ac01d0015c941051dc0090116c001042ac0010423c03d0220c00d0317c0');
embchunkin('290222c9010326c001020ec021040bc0450011c0310210c0290028c0290218c0390413c929021ac0250414900000149000001490000014900000149000000fd000000fd0000006ed000006ed000006ed000006ed000007ed000007ed000004ed000004ed000003ed000007ed000007ed00000fed000007ed');
embchunkin('000003dc0000241e00001cc0000024c0000005dc340014900000149000001fbb00001fbb000006dc000006dc000006dc00000fdc00001fda00001fda00001fda00001fda000000000000000000000004781900049160000665200006da1200074f00000838e00008add00008ae60000900e5000902b00009');
embchunkin('22c00009c6470009f53c000a0ca0000a1cf0000a46b4000ac729000af5c2000af680000b2545000b53ac000b77e4000bb804000bc807000bdf3e000be060000c54ae000c83b9000cb33e000cca40000d0fa7000d234b000d6df5000d792e000db420000defd0000dfb6b000e9e0000104797001071c00013');
embchunkin('aaa4000000000000acf20005f4e90006e38e00073290000771c7000793570007e6390008d0c90008e39000097b40000a6f37000aeeee000b1c72000c000000000000fffdf4e9ffff3290ffff71c7ffff9357ffffe6390000d0c90000e38e00017b4000018e39000212f700026f3700031c7200040000000f');
embchunkin('530e000000000000182200002d47000074f0000076520000e60b0000eff0000123e40001300e000146ab0001525c000168fc000198550001d3c0000257c500025ec00002f63500041a8c80308000803080018030800280308003803080048030800580308006000074f00000e9e000015ed00001d3c00002');
embchunkin('48b00002bda000033290000400000000000000000000000000000006e38e001071c000000000000a590b00068e240007327c000ada0000056deb0007af950006cc07000497b40001c71c0002d09e0005a1340000e38e002a7d2700102d8400040000017200120000007f00290010000a003a004d00090000');
embchunkin('0007fd00273a00a000000854655820746578740000000000000000000000000000000000000000000000000000000000000004434d5449000000000000000000000000000000000000ea12c0a80020c000001cc0540016c0000014c0c4001ac0d00018c094001cc0840018c01c001cc0840018c0680011d8');
embchunkin('e5080fd86c0010d86c0022d86c0024d86c000230380003380c000bd000000bd060000b8040000bd080000b606c0021d00000080600000ed8740018303000183030000b554c0023c0940026c094001ce254000130010f02d0a5170cd02c0020d724001ed0000020f3b0001cd0600002d0a51206f9cc0006f9');
embchunkin('08000bf0c0001c6408000218000004300515021000000bf9cc000b90ac000b90ac000b90ac000b90ac000b98ac000b90ac000b90ac000b98ac000b90ac000b90ac000230180002381800024834001c2124000b4800000bd09d181cd05c001ac0013017c0680018c0bc001bc0552b15c0940013c0a91a1fc0');
embchunkin('44001ac0d00005c0c8000dc0b4001dc0bd2012c0014125c0d0001ac0d0001cc0552b15c0692a1cc8540019c011300fc0900018c0a9241ac0d0001ac0d91a27c0d92a1ac0c9201ac0e12511c0bc0002f9dc000cd0d40002f978000bd0280002b08c0002d0a5110b30380008d02145083015450bd06d190830');
embchunkin('314502d8e500083848000bd0380002a0640002a8b80008d07c0001d06d19203038000f30394c0b3021450b3821450838480007307d4506303c00037058000e30380008307c0014307d19093098000a3848000630a0000b305116283050000bd09c000bb088000bb0700000000000000416c00004e81a0005');
embchunkin('50c60005b97300062b3a00068acd0006bf2300075c2600076c150007c4d300082d8000083b28000866630008962d0008feda000967860009d033000a0916000a71c3000aa18d000ada70000b1353000b431d000b72e6000babca000be4ad000c1476000c4440000c4d5a000c4e35000c60b2000d159a000d');
embchunkin('4cf8000e1b4a000e1fd6000e4fa0000e58ba000fc28a000ffb6d00105b00000000000001b05b0005deb80006e38e00080000000871c80008fc950009d75e000a0e3a000a4fa5000a7c5a000aaf8d000aeeee000b1c72000bb60b000c000000000000fffddeb80000c71d0000e38e0000e81a00018e3a0002');
embchunkin('b8e300031c7000031c720004000000000000000073c5000097530000990800009e700000e78a0000ee5e0000f5320001028e00010f020001103800011d22000133c50001357b00013a3800015036000153c60001654300016a620001789b00017928000181230001848d0001891a00018d160001a15e0001');
end;
procedure embpart21;
begin
embchunkin('a4200001a7420001ad080001aea50001af380001b8e30001ba9a0001c71d0001da8a0001e15e0001ea620001eca80001ed3a0001f5c30001f7780001fc98000220fe00022b3d00022ea600023e95000250950002530e000262fd00027275000287650002975300029f4b0002b22d0002f012000300000003');
embchunkin('19f0000364200069000c0066000b006c000d00278000003f80000021800000298000805d80000069000e006c000f00278000003f80000021800000298000805d8000006c8001804c80028060005c00270022003f800380218003802d007b802d007c8060003c8060003e806c8004006f8005006580050075');
embchunkin('8005007280050061800500418006004f80070043800700478007805180070079800500658005006f8005007280050061800500758005804180050058800700578007004180070056800780598007006e8007006c80070072800700758007006d8007007480070069800700438007004f8007004780070068');
embchunkin('80070062800700558007006b8007007680070077800700518007005480050059800500568006005780060065800800618008006f800800648008006380080067800880718008802780060001ab3dfffbe940fffadf030001a2b30000d15afffec5fafffe5d4dffff9753ffff2ea6000400000005b9730002');
embchunkin('740d0001a2b30006e38e00105b000001a2b3017500120000007f002d00100009003a004d000900000007747d5cca007000000854655820746578740000000000000000000000000000000000000000000000000000000000000004434d5449000000000000000000000000000000000000f015c0a80025c0');
embchunkin('000022c058001ac0000018c0c8001ec0c4001cc0940022c084001cc0200022c084001cc0780016d7e50812d7600013d7600028d7600029d7600002304c0004370c000dd000000dd044000d9038000dd080000d607c0024d000000a06000010d774001c3034001c3034000d54500026c094002ac0940022e2');
embchunkin('58000130010f02d099170dd0180025d730001fd0000025f3b00022d0440002d0991207f8d00007f810000df0c000227510000217000005300515021000000df8d0000da0b4000da0b4000da0b4000da0b4000da7b4000da0b4000da0b4000da7b4000da0b4000da0b400023014000237140002472c002221');
embchunkin('30000d4700000dd09d1822d05c001ec001301bc078001cc0b80020c0592b19c0940017c0a91a23c03c001ec0c40006c0cc000ec0a40021c0b92015c0014127c0c4001ec0c40022c0592b19c0792a22c758001dc0093011c094001cc0a9241ec0c4001ec0d91a2bc0d92a1ec0cd201ec0e12514c0b80002f8');
embchunkin('dc000dd0d40002f86c000dd0240002c08c0002d099110d304c000ad029450a301d450dd061190a30354503d7e5000a3748000dd04c0002b0540002b7bc000ad0880001d0611925304c0011304d4c0d3029450d3729450a3748000930894507304000048064000f304c000a308800183089190b30a0000c37');
embchunkin('48000830ac000d3071162c3070000dd09c000dc090000dc06800000000000004f3d20005e4620005e46500065cab0006d4f2000746bb0007c5820007c585000801a70008b6120008b61500092e5b0009a6a20009df87000a1eeb000a1eee000a9732000ad839000b5080000b87c2000bc0a7000bc8c7000c');
embchunkin('38f0000c7852000cb137000cea1b000d2980000d68e2000da1c7000ddaab000e1560000e1a10000e52f5000e5972000e75e5000f42f7000f4a02001073770010ac5b0010f8be001134e20012549700128d7b00134d45000000000001d75e000625300006e38e00080000000871c700092b100009a3600009');
embchunkin('d75e000a0e39000a4fa5000a8209000ad8fe000b1c72000bb60e000c000000000000fffe25300000c71e0000e38e00018e390001a3600002b8e500031c72000400000000000000006429000067d200006e1e000087b70000c3750000c42e0000c8550000e5950000f05b0000f2cb00010a90000111020001');
embchunkin('2aab000133e9000136700001409b00015e4500015eae00016097000164c700016a0e000171870001797e00017c5700017cc000017f3000018259000188c500018f700001948500019659000197290001b7820001b8e50001bb550001c0350001cb2b0001d1ae0001d68e0001f5090001fcbb000207500002');
embchunkin('0e3b00020f7000021ba0000243720002464b00024b9500025e420002678900027f97000287b70002af100002f7e000030000000327fb00037b890069000c0066000b006c000d00278000003f80000021800000298000805d80000069000e006c000f00278000003f80000021800000298000805d8000006c');
embchunkin('8001804c80028060005c00270022003f800380218003802d007b802d007c8060003c8060003e806c8004006f80050065800500758005007280050061800500418006004f80070043800700478007805180070079800500658005006f80050072800500618005007580058041800500588007005780070041');
embchunkin('80070056800780598007006e8007006c80070072800700758007006d8007007480070069800700438007004f800700478007006880070062800700558007006b8007007680070077800700518007005480050059800500568006005780060065800800618008006f80080064800800638008006780088071');
embchunkin('8008802780060001c2a5fffb0c2efff9e2b90001e1200000f090fffe9727fffe1ee0ffff87b7ffff0f70000400000006d4f20002d1b00001e1200006e38e00134d450001e120017800120000007f002e0010000a003b004d00090000000723d1669000800000085465582074657874000000000000000000');
embchunkin('0000000000000000000000000000000000000000000004434d5449000000000000000000000000000000000000ee17c0ac0025c0000022c054001bc0000019c0c8001fc0cc001dc0940022c088001dc01c0022c088001dc0740016d8e90813d8680014d8680027d8680029d868000230440004380c000dd0');
embchunkin('00000dd050000d803c000dd080000d607c0026d000000a06000011d878001d3034001d3034000d554c0028c094002bc0940022e254000130010f02d0a1170ed0200025d72c0021d0000025f3b40022d0500002d0a11207f9d40007f910000df0c400226410000218000005300515021000000df9d4000d90');
embchunkin('b8000d90b8000d90b8000d90b8000d98b8000d90b8000d90b8000d98b8000d90b8000d90b80002301800023818000248300022212c000d4800000dd09d1822d060001fc001301cc074001dc0bc0020c0552b1ac0940018c0ad1a24c040001fc0cc0006c0d0000fc0b00023c0bd2017c001412ac0cc001fc0');
embchunkin('cc0022c0552b1ac0752a22c854001ec0093012c098001dc0ad241fc0cc001fc0dd1a2cc0dd2a1fc0d1201fc0e52515c0bc0002f9e0000ed0d80002f970000dd0280002b0900002d0a1110d3044000ad025450a3015450dd069190a30354503d8e9000a3848000dd0440002a0640002a8c0000ad0840001d0');
embchunkin('6919253044001230454c0d3025450d3825450a384800093085450730380004705800103044000a308400193085190b30a4000c3848000830a8000d305d162d305c000dd09c000db08c000db06c00000000000004639000054446000544480005b4a2000624fc0006999c000705b2000705b400073de00007');
embchunkin('e6680007eaae000856c40008c71e0008ccce0009016e0009377a0009377c0009a7d40009a7da000a1834000a888a000a888e000ac2da000b3336000b6940000ba390000bdde0000c13ec000c49f6000c8446000cbe96000cf4a2000d0e3a000d2aac000d2ef2000d47d4000e0b62000e26e2000f244c000f');
embchunkin('2668000f5c7a000f60b80010e7d40011222400118e3c000000000001c71c00060c3c0006e38e00080000000871c80009360a0009d75e000a0e3a000a4fa6000a820a000abaec000aeeee000b1c72000bb60a000c000000000000fffe0c3c0000c71c0000e38e0001444400018e3a0002b8e400031c700003');
embchunkin('1c72000400000000000000006c160000838e000085b200008fa40000d82e0000db060000ed820000f4e80000fb06000104fc000112b40001222200013334000148880001488a00014d820001518c00016668000174a00001760a00017974000180b6000180d80001816a000189c2000193ea000198b00001');
embchunkin('9abe00019c7000019f4a0001a16c0001aeee0001b8e40001bf6e0001ce060001d0de0001db040001db060001e6660001e93e0001f1120002071e00021332000216c000021f4a0002238e00024b6000024e060002577800026d16000276c00002838e00028fa40002b0a40002f3ea00030000000320da0003');
embchunkin('6fa40069000c0066000b006c000d00278000003f80000021800000298000805d80000069000e006c000f00278000003f80000021800000298000805d8000006c8001804c80028060005c00270022003f800380218003802d007b802d007c8060003c8060003e806c8004006f800500658005007580050072');
embchunkin('80050061800500418006004f80070043800700478007805180070079800500658005006f8005007280050061800500758005804180050058800700578007004180070056800780598007006e8007006c80070072800700758007006d8007007480070069800700438007004f800700478007006880070062');
embchunkin('800700558007006b8007007680070077800700518007005480050059800500568006005780060065800800618008006f800800648008006380080067800880718008802780060001b6c2fffb9c70fffa816a0001c16c0000e0b6fffeaeeefffe3e94ffff8fa4ffff1f4a00040000000624fc0002a2220001');
embchunkin('c16c0006e38e00118e3c0001c16c017100120000007f002900100009003a004d000900000007bc6a91b9009000000854655820746578740000000000000000000000000000000000000000000000000000000000000004434d5449000000000000000000000000000000000000ec12c0a80020c000001dc0');
embchunkin('540016c0000014c0c4001ac0cc0018c094001dc0880018c01c001dc0880018c0680011d7e5080fd76c0010d76c0022d76c0024d76c0002303800033710000bd000000bd05c000b8040000bd080000b60700021d00000080600000ed77c0018303400183034000b554c0023c0940026c094001de254000130');
embchunkin('010f02d0a1170cd0280020d72c001cd0000020f3b0001dd05c0002d0a11206f8d00006f808000bf0c0001d6408000217000004300515021000000bf8d0000b90ac000b90ac000b90ac000b90ac000b97ac000b90ac000b90ac000b97ac000b90ac000b90ac000230180002371800024730001d212c000b47');
embchunkin('00000bd09d181dd060001ac0013017c0680018c0b8001bc0552b15c0940013c0a91a1fc044001ac0cc0005c0c8000dc0b4001ec0b92012c0014125c0cc001ac0cc001dc0552b15c0692a1dc7540019c00d300fc0940018c0a9241ac0cc001ac0d91a27c0d92a1ac0c9201ac0e12511c0b80002f8dc000cd0');
embchunkin('d40002f878000bd0240002b0900002d0a1110b30380008d02145083015450bd06d190830354502d7e500083748000bd0380002a0640002a7bc0008d0840001d06d19203038000f30394c0b3021450b372145083748000730854506303c00037058000e3038000830840014308519093098000a3748000630');
embchunkin('a4000b305116283050000bd09c000bb08c000bb07400000000000004329500050980000574f50005e06b000654b90006b7550006ed1000078e40000794920007f9b50008652b000871ce00089f520008d0a000093c150009a78b000a1300000a4d27000ab89c000ae9eb000b2412000b5e39000b8f87000b');
embchunkin('c0d5000bfafc000c3524000c6672000c93cb000c97c0000ca099000cb4d4000d6eab000d9d70000e7b50000e7fbc000eb10b000eb9e400102d92001067b90010ca55000000000001ba790005f4e90006e38e00080000000871c7000912f70009d75e000a0e39000a4fa5000a7bb7000ab49b000aeeee000b');
embchunkin('1c72000bb60b000c000000000000fffdf4e90000c71c0000e38e0001098000018e390002b8e400031c720004000000000000000070fc0000948b000094b20000961e0000e1f90000e84b0000f2690001020e00010d6e0001106c000111c500012f6700013569000143f500014d6e000150fc00015c490001');
embchunkin('6d090001781900017bf000017e5b00018329000184bc00018652000195720001a1570001a4570001a5ec0001a6d40001a8a40001a9150001b74e0001b8e40001c4550001d63c0001dc8e0001e4d20001ee9e0001f0320001f6840001fe6c00021a8c000228740002291500022dd400025047000253140002');
embchunkin('5ed0000270840002860200028e390002948b0002b19e0002f1770003000000031c740003684c0069000c0066000b006c000d00278000003f80000021800000298000805d80000069000e006c000f00278000003f80000021800000298000805d8000006c8001804c80028060005c00270022003f80038021');
embchunkin('8003802d007b802d007c8060003c8060003e806c8004006f80050065800500758005007280050061800500418006004f80070043800700478007805180070079800500658005006f8005007280050061800500758005804180050058800700578007004180070056800780598007006e8007006c80070072');
end;
procedure embpart22;
begin
embchunkin('800700758007006d8007007480070069800700438007004f800700478007006880070062800700558007006b8007007680070077800700518007005480050059800500568006005780060065800800618008006f800800648008006380080067800880718008802780060001af69fffbcd6bfffabc590001');
embchunkin('add50000d6ebfffebda0fffe522bffff948bffff2915000400000005e06b000284c00001add50006e38e0010ca550001add500c000120000007f00020010000c00010002000000000007dfea3c7800a000001354655820747970657772697465722074657874000000000000000000000000000000000000');
embchunkin('000004434d5454000000000000000000000000000000000000ea01d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d00000013b0000013b000001500000015b000001d0000001d0000001c0000001d0000001b0000001d0');
embchunkin('0000010a000001d0000001500000015000000188000001d0000001d0000001e400000128000001d0010001d0000001d0000001f6000001f6000001d0000001d0000001f5000001f50000016000000172000001190000017200000110000001f5000001d0000001d0000001d0000001d0000001d0000001d0');
embchunkin('000001d0000001d0000001d0000001d00000015000000159000001a300000141000001a3000001d0010101d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d9000001d0000001d0');
embchunkin('000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001f5000001f5000001f5000001d000000107000001d000000150000001d000000150000001d000000150000001d00000015b000001d0000001d0000001db000001d0000001d00000015000000150000001500000015b0000015b');
embchunkin('000001500000015000000190000001500000015000000150000001500000015b00000150000001f5000001f5000001f5000001d0000001d0000000000000000866620000000000020000000382d8000638e30006a6650006e38e0008555600087d260008aaab0008db720008e38e00090c8300090e3a0009');
embchunkin('c71d000aaaab000b1c7200000000fffcdf48fffeb60affff1c720000e38e0001555300015555000185ad0001c71d000238e300031c7300038e3a000000008060000e8060000f000000000008666200000000000000000006e38e0010ccc30008666200c000120000007f00020010000c0001000200000000');
embchunkin('0007df43ca73008000001354655820747970657772697465722074657874000000000000000000000000000000000000000004434d5454000000000000000000000000000000000000ee01d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0');
embchunkin('000001d0000001d00000013b0000013b000001500000015b000001d0000001d0000001b0000001d0000001c0000001d00000010a000001d0000001500000015000000188000001d0000001d0000001e400000128000001d0010001d0000001d0000001f6000001f6000001d0000001d0000001f5000001f5');
embchunkin('0000016000000172000001190000017200000110000001f5000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d00000015000000159000001a300000141000001a3000001d0010101d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0');
embchunkin('000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d9000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001f5000001f5000001f5000001d000000107000001d000000150000001d000000150000001d000000150');
embchunkin('000001d00000015b000001d0000001d0000001db000001d0000001d00000015000000150000001500000015b0000015b000001500000015000000190000001500000015000000150000001500000015b00000150000001f5000001f5000001f5000001d0000001d000000000000000088008000000000002');
embchunkin('271e00038000000638e40006b49e0006e38e00085556000888240008aaaa0008db700008f1c800090e38000922200009c71c000aaaaa000b1c7200000000fffced82fffec108ffff2aac0000e38e0001555400015556000193e40001c71c000238e400031c7200038e38000000008060000e8060000f0000');
embchunkin('00000008800800000000000000000006e38e001100100008800800bf00120000007f00020010000b00010002000000000007dfa44e00009000001354655820747970657772697465722074657874000000000000000000000000000000000000000004434d54540000000000000000000000000000000000');
embchunkin('00ec01d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d00000013a0000013a000001500000015a000001d0000001d0000001b0000001d0000001c0000001d000000109000001d0000001500000015000000187000001d0');
embchunkin('000001d0000001e400000127000001d0010001d0000001d0000001f5000001f5000001d0000001d0000001f5000001f50000016000000172000001180000017200000110000001f5000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d00000015000000158');
embchunkin('000001a300000141000001a3000001d0010101d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d8000001d0000001d0000001d0000001d0000001d0000001d0000001d0000001d0');
embchunkin('000001d0000001f5000001f5000001f5000001d000000106000001d000000150000001d000000150000001d000000150000001d00000015a000001d0000001d0000001da000001d0000001d00000015000000150000001500000015a0000015a000001500000015000000190000001500000015000000150');
embchunkin('000001500000015a00000150000001f5000001f5000001f5000001d0000001d000000000000000086660000000000002097c00038195000638e40006afe20006e38e0008555500087d250008aaab0008db700008ed0b00090e3900091c700009c71c000aaaab000b1c7200000000fffce8c5fffeb609ffff');
embchunkin('25ee0000e38e0001555500018f2b0001c71c000238e400031c7200038e39000000008060000e8060000f000000000008666000000000000000000006e38e0010ccc000086660013f00120000007f00290010000a0007004d000900000007132050e200a00000085465582074657874000000000000000000');
embchunkin('0000000000000000000000000000000000000000000003434d5500000000000000000000000000000000000000ea14c0000021c000001fc0000019c0000017c000001dc000001bc000001fc000001bc000001fc000001bc0000013d8190811d8140012d8140022d8140024d8140002301400043800000dd0');
embchunkin('00000dd000000d9000000dd000000d6000001dd000000a06000010d800001b3000001b3000000d55000023c0000026c000001fe200000130010f02d001170dd0000021d7000015d0000021f300001fd0000002d0011207f9000007f900000df000001f7400000218000005300115021000000df900000da0');
embchunkin('00000da000000da000000da000000da800000da000000da000000da800000da000000da000000230000002380000024800001f2100000d4800000dd001181fd000001dc001301ac000001bc000001ec0012b18c0000016c0011a20c000001dc0000006c000000ec000001fc0012014c0014125c000001dc0');
embchunkin('00001fc0012b18c0012a1fc800001cc0013011c000001bc001241dc000001dc0091a27c0092a1dc001201dc00d2513c0000002f900000dd0000002f900000dd0000002b0000002d001110d3014000ad001450a3001450dd015190a30014503d819000a3800000dd0140002b0140002b800000ad0000001d0');
embchunkin('1519213014001130154c0d3001450d3801450a3800000930014507300000048014000f3014000a300000173001190b3014000c380000083004000d301116283010000dd000000db000000db0000000000000000471c600055555000555560005c71d000638e30006aaaa00071c7200071c73000755560008');
embchunkin('000000082223000871c80008e38e00091c7200095556000955580009c71d000a38e3000aaaab000ae38e000b1c72000b5556000b8e3a000bc71d000c0000000c38e5000c71c8000caaab000ce38e000d1c73000d5556000d71c8000e38e5000f5555000f5556000f8e38000f8e3a00111c73001155560011');
embchunkin('c71d000000000001b05b0005deb80006e38e00080000000871c80009159d000955560009d75e000a0e3a000a4fa5000aa153000aeeee000b1c72000bb60b000c000000000000fffddeb80000c71d0000e38e0001555600018e3a0002b8e300031c7000031c72000400000000000000003333000038e30000');
embchunkin('6666000071c80000a4fb0000aaab0069000c0066000b006c000d00278000003f80000021800000298000805d80000069000e006c000f00278000003f80000021800000298000805d8000006c8001804c80028060005c00270022003f800380218003802d007b802d007c8060003c8060003e806c8004006f');
embchunkin('80050065800500758005007280050061800500418006004f80070043800700478007805180070079800500658005006f8005007280050061800500758005804180050058800700578007004180070056800780598007006e8007006c80070072800700758007006d8007007480070069800700438007004f');
embchunkin('800700478007006880070062800700558007006b8007007680070077800700518007005480050059800500568006005780060065800800618008006f800800648008006380080067800880718008802780060000aaabfffb8e3afffa71c80001c71d0000e38efffeaaaafffe38e3ffff8e38ffff1c720000');
embchunkin('0000000638e30002aaab0001c71d0006e38e0011c71d0001c71d010300020000007f00350010000500090012000e000000082ae03dbb00a000002ab0000029a0000029a0000029a0000029a0000029a0000013a0000013a0000013a0000013a0000013a0000013a0000013a0000013a0000013a0000013a0');
embchunkin('000013a000000e4000000e4000000e4000000e400000220000002200000002000000000000000fa0000023a0000004a00000249000002490000026a200001f6000000750000007500000075000001c50000026b3000026b3000028d0000028d0000034f0000032f0000030f0190c33f0000032f0010d33f0');
embchunkin('000033f00000257000001a700000177011081e7000001a7001091e7000001e7000001da000001da000002170000015700000117021021970000015700103197000001970000009c00000000000001970000018e000000be0000006e0010e157000001570010110e000000be0010f10e0000010e000003170');
embchunkin('00002e7000002170000019700000197000000110000001100000033000000330000011700d002c7015102f7000002e7001112d00000027000000080000002d2000001b5000000d5000000a501d0a1450000005a10000266400002664000026640000266400000d50010b1450000014500000206000001260');
embchunkin('00000c600904166000001260010516600000166000001b5000000d5000000a500506145000000d50010714500000145000002f7000002f700000078000002bb30000000000000000000000000000000000002ab000002ab00000000000000001997b000333330004cc72000599a0000600000007fff80008');
embchunkin('00000008000200080d6d0008386a000888800008ab260008cdb00008e38d0008e38e0009110800093e92000950d000095555000962f60009f49d0009f67a000a4685000aaaa0000aaaa8000b011d000b22ca000b5050000b60b6000bbbb5000bbbc2000be776000cccca000ccccd000cccd0000d5558000d');
embchunkin('eb7d001000000010e3920011999a001638e3001638e800180000001999920019c722001bbbb3001dddd500224b960024443a0024e25600277916002f3d56000000000001997b000333330004cc720006aaaa0007d70b0008b8500009999b000a0000000aaaa8000b27d2000c0000000ccccd0011999a0028');
embchunkin('0000002c71c600000000000222220003333300040000000733330000000000004aa3000052d500005b0600005d4d0001111200014b6000027c630002c16d80418000804f8001803b8000803d8001806b8002806d800380728004807480058032800680348007805f800480668005802b8008802d80098047');
embchunkin('800a8049800b8056800c8076800dffffa4faffff49f5ffffad2bffff5a56ffffb55dffff6abaffffa2b3ffff4568fffeb4a0fffd6940ffffbbbbffff7778fffeeeeefffdddde00000000000423830001f0fd00014b5300000000000be776000000000001999a                                    ');
end;
procedure embload;
begin embtotal:=0;
embpart0;
embpart1;
embpart2;
embpart3;
embpart4;
embpart5;
embpart6;
embpart7;
embpart8;
embpart9;
embpart10;
embpart11;
embpart12;
embpart13;
embpart14;
embpart15;
embpart16;
embpart17;
embpart18;
embpart19;
embpart20;
embpart21;
embpart22;
embdocs:=52;
embdoc(1,'TEX.POOL        ',1,25793);
embdoc(2,'plain.tex       ',25794,44615);
embdoc(3,'hyphen.tex      ',70409,27860);
embdoc(4,'story.tex       ',98269,412);
embdoc(5,'sample.tex      ',98681,1052);
embdoc(6,'cmbsy10.tfm     ',99733,2232);
embdoc(7,'cmbx10.tfm      ',101965,2656);
embdoc(8,'cmbx5.tfm       ',104621,2664);
embdoc(9,'cmbx6.tfm       ',107285,2688);
embdoc(10,'cmbx7.tfm       ',109973,2672);
embdoc(11,'cmbx8.tfm       ',112645,2664);
embdoc(12,'cmbx9.tfm       ',115309,2656);
embdoc(13,'cmcsc10.tfm     ',117965,2600);
embdoc(14,'cmdunh10.tfm    ',120565,2592);
embdoc(15,'cmex10.tfm      ',123157,1984);
embdoc(16,'cmmi10.tfm      ',125141,3056);
embdoc(17,'cmmi5.tfm       ',128197,3016);
embdoc(18,'cmmi6.tfm       ',131213,3024);
embdoc(19,'cmmi7.tfm       ',134237,3056);
embdoc(20,'cmmi8.tfm       ',137293,3040);
embdoc(21,'cmmi9.tfm       ',140333,3048);
embdoc(22,'cmmib10.tfm     ',143381,3048);
embdoc(23,'cmr10.tfm       ',146429,2592);
embdoc(24,'cmr5.tfm        ',149021,2440);
embdoc(25,'cmr6.tfm        ',151461,2600);
embdoc(26,'cmr7.tfm        ',154061,2600);
embdoc(27,'cmr8.tfm        ',156661,2584);
embdoc(28,'cmr9.tfm        ',159245,2584);
embdoc(29,'cmsl10.tfm      ',161829,3016);
embdoc(30,'cmsl8.tfm       ',164845,3008);
embdoc(31,'cmsl9.tfm       ',167853,3008);
embdoc(32,'cmsltt10.tfm    ',170861,1544);
embdoc(33,'cmss10.tfm      ',172405,2632);
embdoc(34,'cmssbx10.tfm    ',175037,2544);
embdoc(35,'cmssi10.tfm     ',177581,3040);
embdoc(36,'cmssq8.tfm      ',180621,2608);
embdoc(37,'cmssqi8.tfm     ',183229,2992);
embdoc(38,'cmsy10.tfm      ',186221,2248);
embdoc(39,'cmsy5.tfm       ',188469,2224);
embdoc(40,'cmsy6.tfm       ',190693,2232);
embdoc(41,'cmsy7.tfm       ',192925,2240);
embdoc(42,'cmsy8.tfm       ',195165,2240);
embdoc(43,'cmsy9.tfm       ',197405,2232);
embdoc(44,'cmti10.tfm      ',199637,2960);
embdoc(45,'cmti7.tfm       ',202597,2984);
embdoc(46,'cmti8.tfm       ',205581,3008);
embdoc(47,'cmti9.tfm       ',208589,2952);
embdoc(48,'cmtt10.tfm      ',211541,1536);
embdoc(49,'cmtt8.tfm       ',213077,1536);
embdoc(50,'cmtt9.tfm       ',214613,1528);
embdoc(51,'cmu10.tfm       ',216141,2552);
embdoc(52,'manfnt.tfm      ',218693,2072);
end;
procedure dumpdvi;var k,j,v:integer;
begin if dvitotal>0 then begin writeln(output);
writeln(output,'DVI ',dvitotal:1);k:=0;
while k<dvitotal do begin write(output,k:6,' ');
for j:=1 to 32 do if k+j<=dvitotal then begin v:=dvidata[k+j];
write(output,hexchar(v div 16),hexchar(v mod 16));end;writeln(output);
k:=k+32;end;end;end;{:27}{28:}procedure aclose(var f:alphafile);
begin end;procedure bclose(var f:bytefile);begin end;
procedure wclose(var f:wordfile);begin end;
{:28}{31:}function inputln(var f:alphafile;bypasseoln:boolean):boolean;
var lastnonblank:0..bufsize;n,k:integer;begin last:=first;
if f.kind=0 then if eof(Input)then inputln:=false else begin
lastnonblank:=first;
while not eoln(Input)do begin if last>=maxbufstack then begin
maxbufstack:=last+1;
if maxbufstack=bufsize then{35:}if formatident=0 then begin writeln(
output,'Buffer size exceeded!');goto 9999;
end else begin curinput.locfield:=first;curinput.limitfield:=last-1;
overflow(256,bufsize);end{:35};end;buffer[last]:=xord[Input^];
get(Input);last:=last+1;if buffer[last-1]<>32 then lastnonblank:=last;
end;readln(Input);last:=lastnonblank;inputln:=true;
end else if f.pos>f.last then inputln:=false else begin n:=ord(embtext[f
.pos])-32;f.pos:=f.pos+1;lastnonblank:=first;
for k:=1 to n do begin if last>=maxbufstack then begin maxbufstack:=last
+1;if maxbufstack=bufsize then{35:}if formatident=0 then begin writeln(
output,'Buffer size exceeded!');goto 9999;
end else begin curinput.locfield:=first;curinput.limitfield:=last-1;
overflow(256,bufsize);end{:35};end;buffer[last]:=xord[embtext[f.pos]];
f.pos:=f.pos+1;last:=last+1;
if buffer[last-1]<>32 then lastnonblank:=last;end;last:=lastnonblank;
inputln:=true;end;end;{:31}{37:}function initterminal:boolean;label 10;
begin begin termin.kind:=0;termin.doc:=0;termin.pos:=0;termin.last:=0;
end;while true do begin;write(output,'**');;
if not inputln(termin,true)then begin writeln(output);
write(output,'! End of file on the terminal... why?');
initterminal:=false;goto 10;end;curinput.locfield:=first;
while(curinput.locfield<last)and(buffer[curinput.locfield]=32)do
curinput.locfield:=curinput.locfield+1;
if curinput.locfield<last then begin initterminal:=true;goto 10;end;
writeln(output,'Please type the name of your input file.');end;10:end;
{:37}{43:}function makestring:strnumber;
begin if strptr=maxstrings then overflow(258,maxstrings-initstrptr);
strptr:=strptr+1;strstart[strptr]:=poolptr;makestring:=strptr-1;end;
{:43}{45:}function streqbuf(s:strnumber;k:integer):boolean;label 45;
var j:poolpointer;result:boolean;begin j:=strstart[s];
while j<strstart[s+1]do begin if strpool[j]<>buffer[k]then begin result
:=false;goto 45;end;j:=j+1;k:=k+1;end;result:=true;45:streqbuf:=result;
end;{:45}{46:}function streqstr(s,t:strnumber):boolean;label 45;
var j,k:poolpointer;result:boolean;begin result:=false;
if(strstart[s+1]-strstart[s])<>(strstart[t+1]-strstart[t])then goto 45;
j:=strstart[s];k:=strstart[t];
while j<strstart[s+1]do begin if strpool[j]<>strpool[k]then goto 45;
j:=j+1;k:=k+1;end;result:=true;45:streqstr:=result;end;
{:46}{47:}function getstringsstarted:boolean;label 30,10;var k,l:0..255;
m,n:char;g:strnumber;a:integer;c:boolean;begin poolptr:=0;strptr:=0;
strstart[0]:=0;
{48:}for k:=0 to 255 do begin if({49:}(k<32)or(k>126){:49})then begin
begin strpool[poolptr]:=94;poolptr:=poolptr+1;end;
begin strpool[poolptr]:=94;poolptr:=poolptr+1;end;
if k<64 then begin strpool[poolptr]:=k+64;poolptr:=poolptr+1;
end else if k<128 then begin strpool[poolptr]:=k-64;poolptr:=poolptr+1;
end else begin l:=k div 16;if l<10 then begin strpool[poolptr]:=l+48;
poolptr:=poolptr+1;end else begin strpool[poolptr]:=l+87;
poolptr:=poolptr+1;end;l:=k mod 16;
if l<10 then begin strpool[poolptr]:=l+48;poolptr:=poolptr+1;
end else begin strpool[poolptr]:=l+87;poolptr:=poolptr+1;end;end;
end else begin strpool[poolptr]:=k;poolptr:=poolptr+1;end;g:=makestring;
end{:48};{51:}nameoffile:=poolname;first:=0;maxbufstack:=0;
if aopenin(poolfile)then begin c:=false;
repeat{52:}begin if not inputln(poolfile,true)then begin;
writeln(output,'! TEX.POOL has no check sum.');aclose(poolfile);
getstringsstarted:=false;goto 10;end;
if buffer[0]=42 then{53:}begin a:=0;k:=1;
while true do begin if(buffer[k]<48)or(buffer[k]>57)then begin;
writeln(output,'! TEX.POOL check sum doesn''t have nine digits.');
aclose(poolfile);getstringsstarted:=false;goto 10;end;
a:=10*a+buffer[k]-48;if k=9 then goto 30;k:=k+1;end;
30:if a<>172418254 then begin;
writeln(output,'! TEX.POOL doesn''t match; TANGLE me again.');
aclose(poolfile);getstringsstarted:=false;goto 10;end;c:=true;
end{:53}else begin if(buffer[0]<48)or(buffer[0]>57)or(buffer[1]<48)or(
buffer[1]>57)then begin;
writeln(output,'! TEX.POOL line doesn''t begin with two digits.');
aclose(poolfile);getstringsstarted:=false;goto 10;end;
l:=buffer[0]*10+buffer[1]-48*11;
if poolptr+l+stringvacancies>poolsize then begin;
writeln(output,'! You have to increase POOLSIZE.');aclose(poolfile);
getstringsstarted:=false;goto 10;end;
for k:=1 to l do begin if k+1<last then begin strpool[poolptr]:=buffer[k
+1];poolptr:=poolptr+1;end else begin strpool[poolptr]:=32;
poolptr:=poolptr+1;end;end;g:=makestring;end;end{:52};until c;
aclose(poolfile);getstringsstarted:=true;end else begin;
writeln(output,'! I can''t read TEX.POOL.');aclose(poolfile);
getstringsstarted:=false;goto 10;end{:51};10:end;
{:47}{66:}procedure printtwo(n:integer);begin n:=abs(n)mod 100;
printchar(48+(n div 10));printchar(48+(n mod 10));end;
{:66}{67:}procedure printhex(n:integer);var k:0..22;begin k:=0;
printchar(34);repeat dig[k]:=n mod 16;n:=n div 16;k:=k+1;until n=0;
printthedigs(k);end;{:67}{69:}procedure printromanint(n:integer);
label 10;var j,k:poolpointer;u,v:nonnegativeinteger;
begin j:=strstart[260];v:=1000;
while true do begin while n>=v do begin printchar(strpool[j]);n:=n-v;
end;if n<=0 then goto 10;k:=j+2;u:=v div(strpool[k-1]-48);
if strpool[k-1]=50 then begin k:=k+2;u:=u div(strpool[k-1]-48);end;
if n+u>=v then begin printchar(strpool[k]);n:=n+u;end else begin j:=j+2;
v:=v div(strpool[j-1]-48);end;end;10:end;
{:69}{70:}procedure printcurrentstring;var j:poolpointer;
begin j:=strstart[strptr];
while j<poolptr do begin printchar(strpool[j]);j:=j+1;end;end;
{:70}{71:}procedure terminput;var k:0..bufsize;begin;
if not inputln(termin,true)then fatalerror(261);termoffset:=0;
selector:=selector-1;
if last<>first then for k:=first to last-1 do print(buffer[k]);println;
selector:=selector+1;end;{:71}{91:}procedure interror(n:integer);
begin print(286);printint(n);printchar(41);error;end;
{:91}{92:}procedure normalizeselector;
begin if logopened then selector:=19 else selector:=17;
if jobname=0 then openlogfile;
if interaction=0 then selector:=selector-1;end;
{:92}{98:}procedure pauseforinstructions;
begin if OKtointerrupt then begin interaction:=3;
if(selector=18)or(selector=16)then selector:=selector+1;
begin if interaction=3 then;printnl(262);print(296);end;
begin helpptr:=3;helpline[2]:=297;helpline[1]:=298;helpline[0]:=299;end;
deletionsallowed:=false;error;deletionsallowed:=true;interrupt:=0;end;
end;{:98}{100:}function half(x:integer):integer;
begin if odd(x)then half:=(x+1)div 2 else half:=x div 2;end;
{:100}{102:}function rounddecimals(k:smallnumber):scaled;var a:integer;
begin a:=0;while k>0 do begin k:=k-1;a:=(a+dig[k]*131072)div 10;end;
rounddecimals:=(a+1)div 2;end;
{:102}{103:}procedure printscaled(s:scaled);var delta:scaled;
begin if s<0 then begin printchar(45);s:=-s;end;printint(s div 65536);
printchar(46);s:=10*(s mod 65536)+5;delta:=10;
repeat if delta>65536 then s:=s-17232;printchar(48+(s div 65536));
s:=10*(s mod 65536);delta:=delta*10;until s<=delta;end;
{:103}{105:}function multandadd(n:integer;x,y,maxanswer:scaled):scaled;
begin if n<0 then begin x:=-x;n:=-n;end;
if n=0 then multandadd:=y else if((x<=(maxanswer-y)div n)and(-x<=(
maxanswer+y)div n))then multandadd:=n*x+y else begin aritherror:=true;
multandadd:=0;end;end;{:105}{106:}function xovern(x:scaled;
n:integer):scaled;var negative:boolean;begin negative:=false;
if n=0 then begin aritherror:=true;xovern:=0;remainder:=x;
end else begin if n<0 then begin x:=-x;n:=-n;negative:=true;end;
if x>=0 then begin xovern:=x div n;remainder:=x mod n;
end else begin xovern:=-((-x)div n);remainder:=-((-x)mod n);end;end;
if negative then remainder:=-remainder;end;
{:106}{107:}function xnoverd(x:scaled;n,d:integer):scaled;
var positive:boolean;t,u,v:nonnegativeinteger;
begin if x>=0 then positive:=true else begin x:=-x;positive:=false;end;
t:=(x mod 32768)*n;u:=(x div 32768)*n+(t div 32768);
v:=(u mod d)*32768+(t mod 32768);
if u div d>=32768 then aritherror:=true else u:=32768*(u div d)+(v div d
);if positive then begin xnoverd:=u;remainder:=v mod d;
end else begin xnoverd:=-u;remainder:=-(v mod d);end;end;
{:107}{108:}function badness(t,s:scaled):halfword;var r:integer;
begin if t=0 then badness:=0 else if s<=0 then badness:=10000 else begin
if t<=7230584 then r:=(t*297)div s else if s>=1663497 then r:=t div(s
div 297)else r:=t;
if r>1290 then badness:=10000 else badness:=(r*r*r+131072)div 262144;
end;end;{:108}{114:}{procedure printword(w:memoryword);
begin printint(w.int);printchar(32);printscaled(w.int);printchar(32);
printscaled(round(65536*w.gr));println;printint(w.hh.lh);printchar(61);
printint(w.hh.b0);printchar(58);printint(w.hh.b1);printchar(59);
printint(w.hh.rh);printchar(32);printint(w.qqqq.b0);printchar(58);
printint(w.qqqq.b1);printchar(58);printint(w.qqqq.b2);printchar(58);
printint(w.qqqq.b3);end;}
{:114}{119:}{292:}procedure showtokenlist(p,q:integer;l:integer);
label 10;var m,c:integer;matchchr:ASCIIcode;n:ASCIIcode;
begin matchchr:=35;n:=48;tally:=0;
while(p<>0)and(tally<l)do begin if p=q then{320:}begin firstcount:=tally
;trickcount:=tally+1+errorline-halferrorline;
if trickcount<errorline then trickcount:=errorline;end{:320};
{293:}if(p<himemmin)or(p>memend)then begin printesc(309);goto 10;end;
if mem[p].hh.lh>=4095 then printcs(mem[p].hh.lh-4095)else begin m:=mem[p
].hh.lh div 256;c:=mem[p].hh.lh mod 256;
if mem[p].hh.lh<0 then printesc(555)else{294:}begin if ((m>=1)and(m<=8))or((m>=10)and(m<=14)) then case m of 1,2,3,4,7,8,10,
11,12:print(c);6:begin print(c);print(c);end;5:begin print(matchchr);
if c<=9 then printchar(c+48)else begin printchar(33);goto 10;end;end;
13:begin matchchr:=c;print(c);n:=n+1;printchar(n);if n>57 then goto 10;
end;14:print(556) end else printesc(555) end{:294};end{:293};
p:=mem[p].hh.rh;end;if p<>0 then printesc(554);10:end;
{:292}{306:}procedure runaway;var p:halfword;
begin if scannerstatus>1 then begin printnl(569);
case scannerstatus of 2:begin print(570);p:=defref;end;
3:begin print(571);p:=29997;end;4:begin print(572);p:=29996;end;
5:begin print(573);p:=defref;end;end;printchar(63);println;
showtokenlist(mem[p].hh.rh,0,errorline-10);end;end;
{:306}{:119}{120:}function getavail:halfword;var p:halfword;
begin p:=avail;
if p<>0 then avail:=mem[avail].hh.rh else if memend<memmax then begin
memend:=memend+1;p:=memend;end else begin himemmin:=himemmin-1;
p:=himemmin;if himemmin<=lomemmax then begin runaway;
overflow(300,memmax+1-memmin);end;end;mem[p].hh.rh:=0;
{dynused:=dynused+1;}getavail:=p;end;
{:120}{123:}procedure flushlist(p:halfword);var q,r:halfword;
begin if p<>0 then begin r:=p;repeat q:=r;r:=mem[r].hh.rh;
{dynused:=dynused-1;}until r=0;mem[q].hh.rh:=avail;avail:=p;end;end;
{:123}{125:}function getnode(s:integer):halfword;label 40,10,20;
var p:halfword;q:halfword;r:integer;t:integer;begin 20:p:=rover;
repeat{127:}q:=p+mem[p].hh.lh;
while(mem[q].hh.rh=65535)do begin t:=mem[q+1].hh.rh;
if q=rover then rover:=t;mem[t+1].hh.lh:=mem[q+1].hh.lh;
mem[mem[q+1].hh.lh+1].hh.rh:=t;q:=q+mem[q].hh.lh;end;r:=q-s;
if r>p+1 then{128:}begin mem[p].hh.lh:=r-p;rover:=p;goto 40;end{:128};
if r=p then if mem[p+1].hh.rh<>p then{129:}begin rover:=mem[p+1].hh.rh;
t:=mem[p+1].hh.lh;mem[rover+1].hh.lh:=t;mem[t+1].hh.rh:=rover;goto 40;
end{:129};mem[p].hh.lh:=q-p{:127};p:=mem[p+1].hh.rh;until p=rover;
if s=1073741824 then begin getnode:=65535;goto 10;end;
if lomemmax+2<himemmin then if lomemmax+2<=65535 then{126:}begin if
himemmin-lomemmax>=1998 then t:=lomemmax+1000 else t:=lomemmax+1+(
himemmin-lomemmax)div 2;p:=mem[rover+1].hh.lh;q:=lomemmax;
mem[p+1].hh.rh:=q;mem[rover+1].hh.lh:=q;if t>65535 then t:=65535;
mem[q+1].hh.rh:=rover;mem[q+1].hh.lh:=p;mem[q].hh.rh:=65535;
mem[q].hh.lh:=t-lomemmax;lomemmax:=t;mem[lomemmax].hh.rh:=0;
mem[lomemmax].hh.lh:=0;rover:=q;goto 20;end{:126};
overflow(300,memmax+1-memmin);40:mem[r].hh.rh:=0;{varused:=varused+s;}
getnode:=r;10:end;{:125}{130:}procedure freenode(p:halfword;s:halfword);
var q:halfword;begin mem[p].hh.lh:=s;mem[p].hh.rh:=65535;
q:=mem[rover+1].hh.lh;mem[p+1].hh.lh:=q;mem[p+1].hh.rh:=rover;
mem[rover+1].hh.lh:=p;mem[q+1].hh.rh:=p;{varused:=varused-s;}end;
{:130}{131:}procedure sortavail;var p,q,r:halfword;oldrover:halfword;
begin p:=getnode(1073741824);p:=mem[rover+1].hh.rh;
mem[rover+1].hh.rh:=65535;oldrover:=rover;
while p<>oldrover do{132:}if p<rover then begin q:=p;p:=mem[q+1].hh.rh;
mem[q+1].hh.rh:=rover;rover:=q;end else begin q:=rover;
while mem[q+1].hh.rh<p do q:=mem[q+1].hh.rh;r:=mem[p+1].hh.rh;
mem[p+1].hh.rh:=mem[q+1].hh.rh;mem[q+1].hh.rh:=p;p:=r;end{:132};
p:=rover;
while mem[p+1].hh.rh<>65535 do begin mem[mem[p+1].hh.rh+1].hh.lh:=p;
p:=mem[p+1].hh.rh;end;mem[p+1].hh.rh:=rover;mem[rover+1].hh.lh:=p;end;
{:131}{136:}function newnullbox:halfword;var p:halfword;
begin p:=getnode(7);mem[p].hh.b0:=0;mem[p].hh.b1:=0;mem[p+1].int:=0;
mem[p+2].int:=0;mem[p+3].int:=0;mem[p+4].int:=0;mem[p+5].hh.rh:=0;
mem[p+5].hh.b0:=0;mem[p+5].hh.b1:=0;mem[p+6].gr:=0.0;newnullbox:=p;end;
{:136}{139:}function newrule:halfword;var p:halfword;
begin p:=getnode(4);mem[p].hh.b0:=2;mem[p].hh.b1:=0;
mem[p+1].int:=-1073741824;mem[p+2].int:=-1073741824;
mem[p+3].int:=-1073741824;newrule:=p;end;
{:139}{144:}function newligature(f,c:quarterword;q:halfword):halfword;
var p:halfword;begin p:=getnode(2);mem[p].hh.b0:=6;mem[p+1].hh.b0:=f;
mem[p+1].hh.b1:=c;mem[p+1].hh.rh:=q;mem[p].hh.b1:=0;newligature:=p;end;
function newligitem(c:quarterword):halfword;var p:halfword;
begin p:=getnode(2);mem[p].hh.b1:=c;mem[p+1].hh.rh:=0;newligitem:=p;end;
{:144}{145:}function newdisc:halfword;var p:halfword;
begin p:=getnode(2);mem[p].hh.b0:=7;mem[p].hh.b1:=0;mem[p+1].hh.lh:=0;
mem[p+1].hh.rh:=0;newdisc:=p;end;{:145}{147:}function newmath(w:scaled;
s:smallnumber):halfword;var p:halfword;begin p:=getnode(2);
mem[p].hh.b0:=9;mem[p].hh.b1:=s;mem[p+1].int:=w;newmath:=p;end;
{:147}{151:}function newspec(p:halfword):halfword;var q:halfword;
begin q:=getnode(4);mem[q]:=mem[p];mem[q].hh.rh:=0;
mem[q+1].int:=mem[p+1].int;mem[q+2].int:=mem[p+2].int;
mem[q+3].int:=mem[p+3].int;newspec:=q;end;
{:151}{152:}function newparamglue(n:smallnumber):halfword;
var p:halfword;q:halfword;begin p:=getnode(2);mem[p].hh.b0:=10;
mem[p].hh.b1:=n+1;mem[p+1].hh.rh:=0;q:={224:}eqtb[2882+n].hh.rh{:224};
mem[p+1].hh.lh:=q;mem[q].hh.rh:=mem[q].hh.rh+1;newparamglue:=p;end;
{:152}{153:}function newglue(q:halfword):halfword;var p:halfword;
begin p:=getnode(2);mem[p].hh.b0:=10;mem[p].hh.b1:=0;mem[p+1].hh.rh:=0;
mem[p+1].hh.lh:=q;mem[q].hh.rh:=mem[q].hh.rh+1;newglue:=p;end;
{:153}{154:}function newskipparam(n:smallnumber):halfword;
var p:halfword;begin tempptr:=newspec({224:}eqtb[2882+n].hh.rh{:224});
p:=newglue(tempptr);mem[tempptr].hh.rh:=0;mem[p].hh.b1:=n+1;
newskipparam:=p;end;{:154}{156:}function newkern(w:scaled):halfword;
var p:halfword;begin p:=getnode(2);mem[p].hh.b0:=11;mem[p].hh.b1:=0;
mem[p+1].int:=w;newkern:=p;end;
{:156}{158:}function newpenalty(m:integer):halfword;var p:halfword;
begin p:=getnode(2);mem[p].hh.b0:=12;mem[p].hh.b1:=0;mem[p+1].int:=m;
newpenalty:=p;end;{:158}{167:}{procedure checkmem(printlocs:boolean);
label 31,32;var p,q:halfword;clobbered:boolean;
begin for p:=memmin to lomemmax do free[p]:=false;
for p:=himemmin to memend do free[p]:=false;[168:]p:=avail;q:=0;
clobbered:=false;
while p<>0 do begin if(p>memend)or(p<himemmin)then clobbered:=true else
if free[p]then clobbered:=true;if clobbered then begin printnl(301);
printint(q);goto 31;end;free[p]:=true;q:=p;p:=mem[q].hh.rh;end;
31:[:168];[169:]p:=rover;q:=0;clobbered:=false;
repeat if(p>=lomemmax)or(p<memmin)then clobbered:=true else if(mem[p+1].
hh.rh>=lomemmax)or(mem[p+1].hh.rh<memmin)then clobbered:=true else if
not((mem[p].hh.rh=65535))or(mem[p].hh.lh<2)or(p+mem[p].hh.lh>lomemmax)or
(mem[mem[p+1].hh.rh+1].hh.lh<>p)then clobbered:=true;
if clobbered then begin printnl(302);printint(q);goto 32;end;
for q:=p to p+mem[p].hh.lh-1 do begin if free[q]then begin printnl(303);
printint(q);goto 32;end;free[q]:=true;end;q:=p;p:=mem[p+1].hh.rh;
until p=rover;32:[:169];[170:]p:=memmin;
while p<=lomemmax do begin if(mem[p].hh.rh=65535)then begin printnl(304)
;printint(p);end;while(p<=lomemmax)and not free[p]do p:=p+1;
while(p<=lomemmax)and free[p]do p:=p+1;end[:170];
if printlocs then[171:]begin printnl(305);
for p:=memmin to lomemmax do if not free[p]and((p>waslomax)or wasfree[p]
)then begin printchar(32);printint(p);end;
for p:=himemmin to memend do if not free[p]and((p<washimin)or(p>
wasmemend)or wasfree[p])then begin printchar(32);printint(p);end;
end[:171];for p:=memmin to lomemmax do wasfree[p]:=free[p];
for p:=himemmin to memend do wasfree[p]:=free[p];wasmemend:=memend;
waslomax:=lomemmax;washimin:=himemmin;end;}
{:167}{172:}{procedure searchmem(p:halfword);var q:integer;
begin for q:=memmin to lomemmax do begin if mem[q].hh.rh=p then begin
printnl(306);printint(q);printchar(41);end;
if mem[q].hh.lh=p then begin printnl(307);printint(q);printchar(41);end;
end;
for q:=himemmin to memend do begin if mem[q].hh.rh=p then begin printnl(
306);printint(q);printchar(41);end;
if mem[q].hh.lh=p then begin printnl(307);printint(q);printchar(41);end;
end;
[255:]for q:=1 to 3933 do begin if eqtb[q].hh.rh=p then begin printnl(
501);printint(q);printchar(41);end;end[:255];
[285:]if saveptr>0 then for q:=0 to saveptr-1 do begin if savestack[q].
hh.rh=p then begin printnl(546);printint(q);printchar(41);end;end[:285];
[933:]for q:=0 to 307 do begin if hyphlist[q]=p then begin printnl(941);
printint(q);printchar(41);end;end[:933];end;}
{:172}{174:}procedure shortdisplay(p:integer);var n:integer;
begin while p>memmin do begin if(p>=himemmin)then begin if p<=memend
then begin if mem[p].hh.b0<>fontinshortdisplay then begin if(mem[p].hh.
b0<0)or(mem[p].hh.b0>fontmax)then printchar(42)else{267:}printesc(hash[
2624+mem[p].hh.b0].rh){:267};printchar(32);
fontinshortdisplay:=mem[p].hh.b0;end;print(mem[p].hh.b1-0);end;
end else{175:}begin if ((mem[p].hh.b0>=0)and(mem[p].hh.b0<=10))or(mem[p].hh.b0=13) then case mem[p].hh.b0 of 0,1,3,8,4,5,13:print(308);
2:printchar(124);10:if mem[p+1].hh.lh<>0 then printchar(32);
9:printchar(36);6:shortdisplay(mem[p+1].hh.rh);
7:begin shortdisplay(mem[p+1].hh.lh);shortdisplay(mem[p+1].hh.rh);
n:=mem[p].hh.b1;
while n>0 do begin if mem[p].hh.rh<>0 then p:=mem[p].hh.rh;n:=n-1;end;
end end end{:175};p:=mem[p].hh.rh;end;end;
{:174}{176:}procedure printfontandchar(p:integer);
begin if p>memend then printesc(309)else begin if(mem[p].hh.b0<0)or(mem[
p].hh.b0>fontmax)then printchar(42)else{267:}printesc(hash[2624+mem[p].
hh.b0].rh){:267};printchar(32);print(mem[p].hh.b1-0);end;end;
procedure printmark(p:integer);begin printchar(123);
if(p<himemmin)or(p>memend)then printesc(309)else showtokenlist(mem[p].hh
.rh,0,maxprintline-10);printchar(125);end;
procedure printruledimen(d:scaled);
begin if(d=-1073741824)then printchar(42)else printscaled(d);end;
{:176}{177:}procedure printglue(d:scaled;order:integer;s:strnumber);
begin printscaled(d);
if(order<0)or(order>3)then print(310)else if order>0 then begin print(
311);while order>1 do begin printchar(108);order:=order-1;end;
end else if s<>0 then print(s);end;
{:177}{178:}procedure printspec(p:integer;s:strnumber);
begin if(p<memmin)or(p>=lomemmax)then printchar(42)else begin
printscaled(mem[p+1].int);if s<>0 then print(s);
if mem[p+2].int<>0 then begin print(312);
printglue(mem[p+2].int,mem[p].hh.b0,s);end;
if mem[p+3].int<>0 then begin print(313);
printglue(mem[p+3].int,mem[p].hh.b1,s);end;end;end;
{:178}{179:}{691:}procedure printfamandchar(p:halfword);
begin printesc(464);printint(mem[p].hh.b0);printchar(32);
print(mem[p].hh.b1-0);end;procedure printdelimiter(p:halfword);
var a:integer;begin a:=mem[p].qqqq.b0*256+mem[p].qqqq.b1-0;
a:=a*4096+mem[p].qqqq.b2*256+mem[p].qqqq.b3-0;
if a<0 then printint(a)else printhex(a);end;
{:691}{692:}procedure showinfo;forward;
procedure printsubsidiarydata(p:halfword;c:ASCIIcode);
begin if(poolptr-strstart[strptr])>=depththreshold then begin if mem[p].
hh.rh<>0 then print(314);end else begin begin strpool[poolptr]:=c;
poolptr:=poolptr+1;end;tempptr:=p;begin if ((mem[p].hh.rh>=1)and(mem[p].hh.rh<=3)) then case mem[p].hh.rh of 1:begin println;
printcurrentstring;printfamandchar(p);end;2:showinfo;
3:if mem[p].hh.lh=0 then begin println;printcurrentstring;print(861);
end else showinfo end end;poolptr:=poolptr-1;end;end;
{:692}{694:}procedure printstyle(c:integer);
begin begin if ((c div 2>=0)and(c div 2<=3)) then case c div 2 of 0:printesc(862);1:printesc(863);2:printesc(864);
3:printesc(865) end else print(866) end;end;
{:694}{225:}procedure printskipparam(n:integer);
begin begin if ((n>=0)and(n<=17)) then case n of 0:printesc(376);1:printesc(377);2:printesc(378);
3:printesc(379);4:printesc(380);5:printesc(381);6:printesc(382);
7:printesc(383);8:printesc(384);9:printesc(385);10:printesc(386);
11:printesc(387);12:printesc(388);13:printesc(389);14:printesc(390);
15:printesc(391);16:printesc(392);17:printesc(393) end else print(394) end;
end;{:225}{:179}{182:}procedure shownodelist(p:integer);label 10;
var n:integer;g:real;
begin if(poolptr-strstart[strptr])>depththreshold then begin if p>0 then
print(314);goto 10;end;n:=0;while p>memmin do begin println;
printcurrentstring;if p>memend then begin print(315);goto 10;end;n:=n+1;
if n>breadthmax then begin print(316);goto 10;end;
{183:}if(p>=himemmin)then printfontandchar(p)else begin if ((mem[p].hh.b0>=0)and(mem[p].hh.b0<=31)) then case mem[p].hh.b0 of 0
,1,13:{184:}begin if mem[p].hh.b0=0 then printesc(104)else if mem[p].hh.
b0=1 then printesc(118)else printesc(318);print(319);
printscaled(mem[p+3].int);printchar(43);printscaled(mem[p+2].int);
print(320);printscaled(mem[p+1].int);
if mem[p].hh.b0=13 then{185:}begin if mem[p].hh.b1<>0 then begin print(
286);printint(mem[p].hh.b1+1);print(322);end;
if mem[p+6].int<>0 then begin print(323);
printglue(mem[p+6].int,mem[p+5].hh.b1,0);end;
if mem[p+4].int<>0 then begin print(324);
printglue(mem[p+4].int,mem[p+5].hh.b0,0);end;
end{:185}else begin{186:}g:=mem[p+6].gr;
if(g<>0.0)and(mem[p+5].hh.b0<>0)then begin print(325);
if mem[p+5].hh.b0=2 then print(326);
if abs(mem[p+6].int)<1048576 then print(327)else if abs(g)>20000.0 then
begin if g>0.0 then printchar(62)else print(328);
printglue(20000*65536,mem[p+5].hh.b1,0);
end else printglue(round(65536*g),mem[p+5].hh.b1,0);end{:186};
if mem[p+4].int<>0 then begin print(321);printscaled(mem[p+4].int);end;
end;begin begin strpool[poolptr]:=46;poolptr:=poolptr+1;end;
shownodelist(mem[p+5].hh.rh);poolptr:=poolptr-1;end;end{:184};
2:{187:}begin printesc(329);printruledimen(mem[p+3].int);printchar(43);
printruledimen(mem[p+2].int);print(320);printruledimen(mem[p+1].int);
end{:187};3:{188:}begin printesc(330);printint(mem[p].hh.b1-0);
print(331);printscaled(mem[p+3].int);print(332);
printspec(mem[p+4].hh.rh,0);printchar(44);printscaled(mem[p+2].int);
print(333);printint(mem[p+1].int);begin begin strpool[poolptr]:=46;
poolptr:=poolptr+1;end;shownodelist(mem[p+4].hh.lh);poolptr:=poolptr-1;
end;end{:188};
8:{1356:}begin if ((mem[p].hh.b1>=0)and(mem[p].hh.b1<=4)) then case mem[p].hh.b1 of 0:begin printwritewhatsit(1286,p);
printchar(61);
printfilename(mem[p+1].hh.rh,mem[p+2].hh.lh,mem[p+2].hh.rh);end;
1:begin printwritewhatsit(594,p);printmark(mem[p+1].hh.rh);end;
2:printwritewhatsit(1287,p);3:begin printesc(1288);
printmark(mem[p+1].hh.rh);end;4:begin printesc(1290);
printint(mem[p+1].hh.rh);print(1293);printint(mem[p+1].hh.b0);
printchar(44);printint(mem[p+1].hh.b1);printchar(41);end end else print(1294) end{:1356};
10:{189:}if mem[p].hh.b1>=100 then{190:}begin printesc(338);
if mem[p].hh.b1=101 then printchar(99)else if mem[p].hh.b1=102 then
printchar(120);print(339);printspec(mem[p+1].hh.lh,0);
begin begin strpool[poolptr]:=46;poolptr:=poolptr+1;end;
shownodelist(mem[p+1].hh.rh);poolptr:=poolptr-1;end;
end{:190}else begin printesc(334);
if mem[p].hh.b1<>0 then begin printchar(40);
if mem[p].hh.b1<98 then printskipparam(mem[p].hh.b1-1)else if mem[p].hh.
b1=98 then printesc(335)else printesc(336);printchar(41);end;
if mem[p].hh.b1<>98 then begin printchar(32);
if mem[p].hh.b1<98 then printspec(mem[p+1].hh.lh,0)else printspec(mem[p
+1].hh.lh,337);end;end{:189};
11:{191:}if mem[p].hh.b1<>99 then begin printesc(340);
if mem[p].hh.b1<>0 then printchar(32);printscaled(mem[p+1].int);
if mem[p].hh.b1=2 then print(341);end else begin printesc(342);
printscaled(mem[p+1].int);print(337);end{:191};
9:{192:}begin printesc(343);
if mem[p].hh.b1=0 then print(344)else print(345);
if mem[p+1].int<>0 then begin print(346);printscaled(mem[p+1].int);end;
end{:192};6:{193:}begin printfontandchar(p+1);print(347);
if mem[p].hh.b1>1 then printchar(124);
fontinshortdisplay:=mem[p+1].hh.b0;shortdisplay(mem[p+1].hh.rh);
if odd(mem[p].hh.b1)then printchar(124);printchar(41);end{:193};
12:{194:}begin printesc(348);printint(mem[p+1].int);end{:194};
7:{195:}begin printesc(349);if mem[p].hh.b1>0 then begin print(350);
printint(mem[p].hh.b1);end;begin begin strpool[poolptr]:=46;
poolptr:=poolptr+1;end;shownodelist(mem[p+1].hh.lh);poolptr:=poolptr-1;
end;begin strpool[poolptr]:=124;poolptr:=poolptr+1;end;
shownodelist(mem[p+1].hh.rh);poolptr:=poolptr-1;end{:195};
4:{196:}begin printesc(351);printmark(mem[p+1].int);end{:196};
5:{197:}begin printesc(352);begin begin strpool[poolptr]:=46;
poolptr:=poolptr+1;end;shownodelist(mem[p+1].int);poolptr:=poolptr-1;
end;end{:197};{690:}14:printstyle(mem[p].hh.b1);
15:{695:}begin printesc(525);begin strpool[poolptr]:=68;
poolptr:=poolptr+1;end;shownodelist(mem[p+1].hh.lh);poolptr:=poolptr-1;
begin strpool[poolptr]:=84;poolptr:=poolptr+1;end;
shownodelist(mem[p+1].hh.rh);poolptr:=poolptr-1;
begin strpool[poolptr]:=83;poolptr:=poolptr+1;end;
shownodelist(mem[p+2].hh.lh);poolptr:=poolptr-1;
begin strpool[poolptr]:=115;poolptr:=poolptr+1;end;
shownodelist(mem[p+2].hh.rh);poolptr:=poolptr-1;end{:695};
16,17,18,19,20,21,22,23,24,27,26,29,28,30,31:{696:}begin case mem[p].hh.
b0 of 16:printesc(867);17:printesc(868);18:printesc(869);
19:printesc(870);20:printesc(871);21:printesc(872);22:printesc(873);
23:printesc(874);27:printesc(875);26:printesc(876);29:printesc(539);
24:begin printesc(533);printdelimiter(p+4);end;28:begin printesc(508);
printfamandchar(p+4);end;30:begin printesc(877);printdelimiter(p+1);end;
31:begin printesc(878);printdelimiter(p+1);end;end;
if mem[p].hh.b1<>0 then if mem[p].hh.b1=1 then printesc(879)else
printesc(880);if mem[p].hh.b0<30 then printsubsidiarydata(p+1,46);
printsubsidiarydata(p+2,94);printsubsidiarydata(p+3,95);end{:696};
25:{697:}begin printesc(881);
if mem[p+1].int=1073741824 then print(882)else printscaled(mem[p+1].int)
;
if(mem[p+4].qqqq.b0<>0)or(mem[p+4].qqqq.b1<>0)or(mem[p+4].qqqq.b2<>0)or(
mem[p+4].qqqq.b3<>0)then begin print(883);printdelimiter(p+4);end;
if(mem[p+5].qqqq.b0<>0)or(mem[p+5].qqqq.b1<>0)or(mem[p+5].qqqq.b2<>0)or(
mem[p+5].qqqq.b3<>0)then begin print(884);printdelimiter(p+5);end;
printsubsidiarydata(p+2,92);printsubsidiarydata(p+3,47);end{:697};
{:690} end else print(317) end{:183};p:=mem[p].hh.rh;end;10:end;
{:182}{198:}procedure showbox(p:halfword);
begin{236:}depththreshold:=eqtb[5288].int;
breadthmax:=eqtb[5287].int{:236};if breadthmax<=0 then breadthmax:=5;
if poolptr+depththreshold>=poolsize then depththreshold:=poolsize-
poolptr-1;shownodelist(p);println;end;
{:198}{200:}procedure deletetokenref(p:halfword);
begin if mem[p].hh.lh=0 then flushlist(p)else mem[p].hh.lh:=mem[p].hh.lh
-1;end;{:200}{201:}procedure deleteglueref(p:halfword);
begin if mem[p].hh.rh=0 then freenode(p,4)else mem[p].hh.rh:=mem[p].hh.
rh-1;end;{:201}{202:}procedure flushnodelist(p:halfword);label 30;
var q:halfword;begin while p<>0 do begin q:=mem[p].hh.rh;
if(p>=himemmin)then begin mem[p].hh.rh:=avail;avail:=p;
{dynused:=dynused-1;}
end else begin begin if ((mem[p].hh.b0>=0)and(mem[p].hh.b0<=31)) then case mem[p].hh.b0 of 0,1,13:begin flushnodelist(mem[p+5].
hh.rh);freenode(p,7);goto 30;end;2:begin freenode(p,4);goto 30;end;
3:begin flushnodelist(mem[p+4].hh.lh);deleteglueref(mem[p+4].hh.rh);
freenode(p,5);goto 30;end;
8:{1358:}begin begin if ((mem[p].hh.b1>=0)and(mem[p].hh.b1<=4)) then case mem[p].hh.b1 of 0:freenode(p,3);
1,3:begin deletetokenref(mem[p+1].hh.rh);freenode(p,2);goto 30;end;
2,4:freenode(p,2) end else confusion(1296) end;goto 30;end{:1358};
10:begin begin if mem[mem[p+1].hh.lh].hh.rh=0 then freenode(mem[p+1].hh.
lh,4)else mem[mem[p+1].hh.lh].hh.rh:=mem[mem[p+1].hh.lh].hh.rh-1;end;
if mem[p+1].hh.rh<>0 then flushnodelist(mem[p+1].hh.rh);end;11,9,12:;
6:flushnodelist(mem[p+1].hh.rh);4:deletetokenref(mem[p+1].int);
7:begin flushnodelist(mem[p+1].hh.lh);flushnodelist(mem[p+1].hh.rh);end;
5:flushnodelist(mem[p+1].int);{698:}14:begin freenode(p,3);goto 30;end;
15:begin flushnodelist(mem[p+1].hh.lh);flushnodelist(mem[p+1].hh.rh);
flushnodelist(mem[p+2].hh.lh);flushnodelist(mem[p+2].hh.rh);
freenode(p,3);goto 30;end;
16,17,18,19,20,21,22,23,24,27,26,29,28:begin if mem[p+1].hh.rh>=2 then
flushnodelist(mem[p+1].hh.lh);
if mem[p+2].hh.rh>=2 then flushnodelist(mem[p+2].hh.lh);
if mem[p+3].hh.rh>=2 then flushnodelist(mem[p+3].hh.lh);
if mem[p].hh.b0=24 then freenode(p,5)else if mem[p].hh.b0=28 then
freenode(p,5)else freenode(p,4);goto 30;end;30,31:begin freenode(p,4);
goto 30;end;25:begin flushnodelist(mem[p+2].hh.lh);
flushnodelist(mem[p+3].hh.lh);freenode(p,6);goto 30;end;
{:698} end else confusion(353) end;freenode(p,2);30:end;p:=q;end;end;
{:202}{204:}function copynodelist(p:halfword):halfword;var h:halfword;
q:halfword;r:halfword;words:0..5;begin h:=getavail;q:=h;
while p<>0 do begin{205:}words:=1;
if(p>=himemmin)then r:=getavail else{206:}begin if ((mem[p].hh.b0>=0)and(mem[p].hh.b0<=13)) then case mem[p].hh.b0 of 0,1,13:
begin r:=getnode(7);mem[r+6]:=mem[p+6];mem[r+5]:=mem[p+5];
mem[r+5].hh.rh:=copynodelist(mem[p+5].hh.rh);words:=5;end;
2:begin r:=getnode(4);words:=4;end;3:begin r:=getnode(5);
mem[r+4]:=mem[p+4];
mem[mem[p+4].hh.rh].hh.rh:=mem[mem[p+4].hh.rh].hh.rh+1;
mem[r+4].hh.lh:=copynodelist(mem[p+4].hh.lh);words:=4;end;
8:{1357:}begin if ((mem[p].hh.b1>=0)and(mem[p].hh.b1<=4)) then case mem[p].hh.b1 of 0:begin r:=getnode(3);words:=3;end;
1,3:begin r:=getnode(2);
mem[mem[p+1].hh.rh].hh.lh:=mem[mem[p+1].hh.rh].hh.lh+1;words:=2;end;
2,4:begin r:=getnode(2);words:=2;end end else confusion(1295) end{:1357};
10:begin r:=getnode(2);
mem[mem[p+1].hh.lh].hh.rh:=mem[mem[p+1].hh.lh].hh.rh+1;
mem[r+1].hh.lh:=mem[p+1].hh.lh;
mem[r+1].hh.rh:=copynodelist(mem[p+1].hh.rh);end;
11,9,12:begin r:=getnode(2);words:=2;end;6:begin r:=getnode(2);
mem[r+1]:=mem[p+1];mem[r+1].hh.rh:=copynodelist(mem[p+1].hh.rh);end;
7:begin r:=getnode(2);mem[r+1].hh.lh:=copynodelist(mem[p+1].hh.lh);
mem[r+1].hh.rh:=copynodelist(mem[p+1].hh.rh);end;4:begin r:=getnode(2);
mem[mem[p+1].int].hh.lh:=mem[mem[p+1].int].hh.lh+1;words:=2;end;
5:begin r:=getnode(2);mem[r+1].int:=copynodelist(mem[p+1].int);end end else confusion(354) end{:206};while words>0 do begin words:=words-1;
mem[r+words]:=mem[p+words];end{:205};mem[q].hh.rh:=r;q:=r;
p:=mem[p].hh.rh;end;mem[q].hh.rh:=0;q:=mem[h].hh.rh;
begin mem[h].hh.rh:=avail;avail:=h;{dynused:=dynused-1;}end;
copynodelist:=q;end;{:204}{211:}procedure printmode(m:integer);
begin if m>0 then case m div(101)of 0:print(355);1:print(356);
2:print(357);
end else if m=0 then print(358)else case(-m)div(101)of 0:print(359);
1:print(360);2:print(343);end;print(361);end;
{:211}{216:}procedure pushnest;
begin if nestptr>maxneststack then begin maxneststack:=nestptr;
if nestptr=nestsize then overflow(362,nestsize);end;
nest[nestptr]:=curlist;nestptr:=nestptr+1;curlist.headfield:=getavail;
curlist.tailfield:=curlist.headfield;curlist.pgfield:=0;
curlist.mlfield:=line;end;{:216}{217:}procedure popnest;
begin begin mem[curlist.headfield].hh.rh:=avail;
avail:=curlist.headfield;{dynused:=dynused-1;}end;nestptr:=nestptr-1;
curlist:=nest[nestptr];end;{:217}{218:}procedure printtotals;forward;
procedure showactivities;var p:0..nestsize;m:-203..203;a:memoryword;
q,r:halfword;t:integer;begin nest[nestptr]:=curlist;printnl(338);
println;for p:=nestptr downto 0 do begin m:=nest[p].modefield;
a:=nest[p].auxfield;printnl(363);printmode(m);print(364);
printint(abs(nest[p].mlfield));
if m=102 then if nest[p].pgfield<>8585216 then begin print(365);
printint(nest[p].pgfield mod 65536);print(366);
printint(nest[p].pgfield div 4194304);printchar(44);
printint((nest[p].pgfield div 65536)mod 64);printchar(41);end;
if nest[p].mlfield<0 then print(367);
if p=0 then begin{986:}if 29998<>pagetail then begin printnl(981);
if outputactive then print(982);showbox(mem[29998].hh.rh);
if pagecontents>0 then begin printnl(983);printtotals;printnl(984);
printscaled(pagesofar[0]);r:=mem[30000].hh.rh;
while r<>30000 do begin println;printesc(330);t:=mem[r].hh.b1-0;
printint(t);print(985);
if eqtb[5318+t].int=1000 then t:=mem[r+3].int else t:=xovern(mem[r+3].
int,1000)*eqtb[5318+t].int;printscaled(t);
if mem[r].hh.b0=1 then begin q:=29998;t:=0;repeat q:=mem[q].hh.rh;
if(mem[q].hh.b0=3)and(mem[q].hh.b1=mem[r].hh.b1)then t:=t+1;
until q=mem[r+1].hh.lh;print(986);printint(t);print(987);end;
r:=mem[r].hh.rh;end;end;end{:986};
if mem[29999].hh.rh<>0 then printnl(368);end;
showbox(mem[nest[p].headfield].hh.rh);
{219:}case abs(m)div(101)of 0:begin printnl(369);
if a.int<=-65536000 then print(370)else printscaled(a.int);
if nest[p].pgfield<>0 then begin print(371);printint(nest[p].pgfield);
print(372);if nest[p].pgfield<>1 then printchar(115);end;end;
1:begin printnl(373);printint(a.hh.lh);
if m>0 then if a.hh.rh>0 then begin print(374);printint(a.hh.rh);end;
end;2:if a.int<>0 then begin print(375);showbox(a.int);end;end{:219};
end;end;{:218}{237:}procedure printparam(n:integer);
begin begin if ((n>=0)and(n<=54)) then case n of 0:printesc(420);1:printesc(421);2:printesc(422);
3:printesc(423);4:printesc(424);5:printesc(425);6:printesc(426);
7:printesc(427);8:printesc(428);9:printesc(429);10:printesc(430);
11:printesc(431);12:printesc(432);13:printesc(433);14:printesc(434);
15:printesc(435);16:printesc(436);17:printesc(437);18:printesc(438);
19:printesc(439);20:printesc(440);21:printesc(441);22:printesc(442);
23:printesc(443);24:printesc(444);25:printesc(445);26:printesc(446);
27:printesc(447);28:printesc(448);29:printesc(449);30:printesc(450);
31:printesc(451);32:printesc(452);33:printesc(453);34:printesc(454);
35:printesc(455);36:printesc(456);37:printesc(457);38:printesc(458);
39:printesc(459);40:printesc(460);41:printesc(461);42:printesc(462);
43:printesc(463);44:printesc(464);45:printesc(465);46:printesc(466);
47:printesc(467);48:printesc(468);49:printesc(469);50:printesc(470);
51:printesc(471);52:printesc(472);53:printesc(473);54:printesc(474) end else print(475) end;end;{:237}{241:}procedure fixdateandtime;
begin systime:=12*60;sysday:=4;sysmonth:=7;sysyear:=1776;
eqtb[5283].int:=systime;eqtb[5284].int:=sysday;eqtb[5285].int:=sysmonth;
eqtb[5286].int:=sysyear;end;{:241}{245:}procedure begindiagnostic;
begin oldsetting:=selector;
if(eqtb[5292].int<=0)and(selector=19)then begin selector:=selector-1;
if history=0 then history:=1;end;end;
procedure enddiagnostic(blankline:boolean);begin printnl(338);
if blankline then println;selector:=oldsetting;end;
{:245}{247:}procedure printlengthparam(n:integer);
begin begin if ((n>=0)and(n<=20)) then case n of 0:printesc(478);1:printesc(479);2:printesc(480);
3:printesc(481);4:printesc(482);5:printesc(483);6:printesc(484);
7:printesc(485);8:printesc(486);9:printesc(487);10:printesc(488);
11:printesc(489);12:printesc(490);13:printesc(491);14:printesc(492);
15:printesc(493);16:printesc(494);17:printesc(495);18:printesc(496);
19:printesc(497);20:printesc(498) end else print(499) end;end;
{:247}{252:}{298:}procedure printcmdchr(cmd:quarterword;
chrcode:halfword);begin begin if ((cmd>=0)and(cmd<=115)) then case cmd of 1:begin print(557);print(chrcode);
end;2:begin print(558);print(chrcode);end;3:begin print(559);
print(chrcode);end;6:begin print(560);print(chrcode);end;
7:begin print(561);print(chrcode);end;8:begin print(562);print(chrcode);
end;9:print(563);10:begin print(564);print(chrcode);end;
11:begin print(565);print(chrcode);end;12:begin print(566);
print(chrcode);end;
{227:}75,76:if chrcode<2900 then printskipparam(chrcode-2882)else if
chrcode<3156 then begin printesc(395);printint(chrcode-2900);
end else begin printesc(396);printint(chrcode-3156);end;
{:227}{231:}72:if chrcode>=3422 then begin printesc(407);
printint(chrcode-3422);end else begin if ((chrcode>=3413)and(chrcode<=3420)) then case chrcode of 3413:printesc(398);
3414:printesc(399);3415:printesc(400);3416:printesc(401);
3417:printesc(402);3418:printesc(403);3419:printesc(404);
3420:printesc(405) end else printesc(406) end;
{:231}{239:}73:if chrcode<5318 then printparam(chrcode-5263)else begin
printesc(476);printint(chrcode-5318);end;
{:239}{249:}74:if chrcode<5851 then printlengthparam(chrcode-5830)else
begin printesc(500);printint(chrcode-5851);end;
{:249}{266:}45:printesc(508);90:printesc(509);40:printesc(510);
41:printesc(511);77:printesc(519);61:printesc(512);42:printesc(531);
16:printesc(513);107:printesc(504);88:printesc(518);15:printesc(514);
92:printesc(515);67:printesc(505);62:printesc(516);64:printesc(32);
102:printesc(517);32:printesc(520);36:printesc(521);39:printesc(522);
37:printesc(330);44:printesc(47);18:printesc(351);46:printesc(523);
17:printesc(524);54:printesc(525);91:printesc(526);34:printesc(527);
65:printesc(528);103:printesc(529);55:printesc(335);63:printesc(530);
66:printesc(533);96:printesc(534);0:printesc(535);98:printesc(536);
80:printesc(532);84:printesc(408);109:printesc(537);71:printesc(407);
38:printesc(352);33:printesc(538);56:printesc(539);35:printesc(540);
{:266}{335:}13:printesc(597);
{:335}{377:}104:if chrcode=0 then printesc(629)else printesc(630);
{:377}{385:}110:begin if ((chrcode>=1)and(chrcode<=4)) then case chrcode of 1:printesc(632);2:printesc(633);
3:printesc(634);4:printesc(635) end else printesc(631) end;
{:385}{412:}89:if chrcode=0 then printesc(476)else if chrcode=1 then
printesc(500)else if chrcode=2 then printesc(395)else printesc(396);
{:412}{417:}79:if chrcode=1 then printesc(669)else printesc(668);
82:if chrcode=0 then printesc(670)else printesc(671);
83:if chrcode=1 then printesc(672)else if chrcode=3 then printesc(673)
else printesc(674);70:begin if ((chrcode>=0)and(chrcode<=3)) then case chrcode of 0:printesc(675);1:printesc(676);
2:printesc(677);3:printesc(678) end else printesc(679) end;
{:417}{469:}108:begin if ((chrcode>=0)and(chrcode<=4)) then case chrcode of 0:printesc(735);1:printesc(736);
2:printesc(737);3:printesc(738);4:printesc(739) end else printesc(740) end;
{:469}{488:}105:begin if ((chrcode>=1)and(chrcode<=16)) then case chrcode of 1:printesc(758);2:printesc(759);
3:printesc(760);4:printesc(761);5:printesc(762);6:printesc(763);
7:printesc(764);8:printesc(765);9:printesc(766);10:printesc(767);
11:printesc(768);12:printesc(769);13:printesc(770);14:printesc(771);
15:printesc(772);16:printesc(773) end else printesc(757) end;
{:488}{492:}106:if chrcode=2 then printesc(774)else if chrcode=4 then
printesc(775)else printesc(776);
{:492}{781:}4:if chrcode=256 then printesc(899)else begin print(903);
print(chrcode);end;
5:if chrcode=257 then printesc(900)else printesc(901);
{:781}{984:}81:begin if ((chrcode>=0)and(chrcode<=6)) then case chrcode of 0:printesc(971);1:printesc(972);
2:printesc(973);3:printesc(974);4:printesc(975);5:printesc(976);
6:printesc(977) end else printesc(978) end;
{:984}{1053:}14:if chrcode=1 then printesc(1027)else printesc(1026);
{:1053}{1059:}26:begin if ((chrcode>=0)and(chrcode<=2))or(chrcode=4) then case chrcode of 4:printesc(1028);0:printesc(1029);
1:printesc(1030);2:printesc(1031) end else printesc(1032) end;
27:begin if ((chrcode>=0)and(chrcode<=2))or(chrcode=4) then case chrcode of 4:printesc(1033);0:printesc(1034);1:printesc(1035);
2:printesc(1036) end else printesc(1037) end;28:printesc(336);
29:printesc(340);30:printesc(342);
{:1059}{1072:}21:if chrcode=1 then printesc(1055)else printesc(1056);
22:if chrcode=1 then printesc(1057)else printesc(1058);
20:begin if ((chrcode>=0)and(chrcode<=5)) then case chrcode of 0:printesc(409);1:printesc(1059);2:printesc(1060);
3:printesc(966);4:printesc(1061);5:printesc(968) end else printesc(1062) end;
31:if chrcode=100 then printesc(1064)else if chrcode=101 then printesc(
1065)else if chrcode=102 then printesc(1066)else printesc(1063);
{:1072}{1089:}43:if chrcode=0 then printesc(1082)else printesc(1081);
{:1089}{1108:}25:if chrcode=10 then printesc(1093)else if chrcode=11
then printesc(1092)else printesc(1091);
23:if chrcode=1 then printesc(1095)else printesc(1094);
24:if chrcode=1 then printesc(1097)else printesc(1096);
{:1108}{1115:}47:if chrcode=1 then printesc(45)else printesc(349);
{:1115}{1143:}48:if chrcode=1 then printesc(1129)else printesc(1128);
{:1143}{1157:}50:begin if ((chrcode>=16)and(chrcode<=23))or(chrcode=26) then case chrcode of 16:printesc(867);17:printesc(868);
18:printesc(869);19:printesc(870);20:printesc(871);21:printesc(872);
22:printesc(873);23:printesc(874);26:printesc(876) end else printesc(875) end;
51:if chrcode=1 then printesc(879)else if chrcode=2 then printesc(880)
else printesc(1130);{:1157}{1170:}53:printstyle(chrcode);
{:1170}{1179:}52:begin if ((chrcode>=1)and(chrcode<=5)) then case chrcode of 1:printesc(1149);2:printesc(1150);
3:printesc(1151);4:printesc(1152);5:printesc(1153) end else printesc(1148) end;
{:1179}{1189:}49:if chrcode=30 then printesc(877)else printesc(878);
{:1189}{1209:}93:if chrcode=1 then printesc(1172)else if chrcode=2 then
printesc(1173)else printesc(1174);
97:if chrcode=0 then printesc(1175)else if chrcode=1 then printesc(1176)
else if chrcode=2 then printesc(1177)else printesc(1178);
{:1209}{1220:}94:if chrcode<>0 then printesc(1193)else printesc(1192);
{:1220}{1223:}95:begin if ((chrcode>=0)and(chrcode<=5)) then case chrcode of 0:printesc(1194);1:printesc(1195);
2:printesc(1196);3:printesc(1197);4:printesc(1198);5:printesc(1199) end else printesc(1200) end;68:begin printesc(513);printhex(chrcode);end;
69:begin printesc(524);printhex(chrcode);end;
{:1223}{1231:}85:if chrcode=3983 then printesc(415)else if chrcode=5007
then printesc(419)else if chrcode=4239 then printesc(416)else if chrcode
=4495 then printesc(417)else if chrcode=4751 then printesc(418)else
printesc(477);86:printsize(chrcode-3935);
{:1231}{1251:}99:if chrcode=1 then printesc(954)else printesc(942);
{:1251}{1255:}78:if chrcode=0 then printesc(1218)else printesc(1219);
{:1255}{1261:}87:begin print(1227);slowprint(fontname[chrcode]);
if fontsize[chrcode]<>fontdsize[chrcode]then begin print(741);
printscaled(fontsize[chrcode]);print(397);end;end;
{:1261}{1263:}100:begin if ((chrcode>=0)and(chrcode<=2)) then case chrcode of 0:printesc(274);1:printesc(275);
2:printesc(276) end else printesc(1228) end;
{:1263}{1273:}60:if chrcode=0 then printesc(1230)else printesc(1229);
{:1273}{1278:}58:if chrcode=0 then printesc(1231)else printesc(1232);
{:1278}{1287:}57:if chrcode=4239 then printesc(1238)else printesc(1239);
{:1287}{1292:}19:begin if ((chrcode>=1)and(chrcode<=3)) then case chrcode of 1:printesc(1241);2:printesc(1242);
3:printesc(1243) end else printesc(1240) end;{:1292}{1295:}101:print(1250);
111:print(1251);112:printesc(1252);113:printesc(1253);
114:begin printesc(1172);printesc(1253);end;115:printesc(1254);
{:1295}{1346:}59:begin if ((chrcode>=0)and(chrcode<=5)) then case chrcode of 0:printesc(1286);1:printesc(594);
2:printesc(1287);3:printesc(1288);4:printesc(1289);5:printesc(1290) end else print(1291) end;{:1346} end else print(567) end;end;
{:298}{procedure showeqtb(n:halfword);
begin if n<1 then printchar(63)else if n<2882 then[223:]begin sprintcs(n
);printchar(61);printcmdchr(eqtb[n].hh.b0,eqtb[n].hh.rh);
if eqtb[n].hh.b0>=111 then begin printchar(58);
showtokenlist(mem[eqtb[n].hh.rh].hh.rh,0,32);end;
end[:223]else if n<3412 then[229:]if n<2900 then begin printskipparam(n
-2882);printchar(61);
if n<2897 then printspec(eqtb[n].hh.rh,397)else printspec(eqtb[n].hh.rh,
337);end else if n<3156 then begin printesc(395);printint(n-2900);
printchar(61);printspec(eqtb[n].hh.rh,397);end else begin printesc(396);
printint(n-3156);printchar(61);printspec(eqtb[n].hh.rh,337);
end[:229]else if n<5263 then[233:]if n=3412 then begin printesc(408);
printchar(61);
if eqtb[3412].hh.rh=0 then printchar(48)else printint(mem[eqtb[3412].hh.
rh].hh.lh);end else if n<3422 then begin printcmdchr(72,n);
printchar(61);
if eqtb[n].hh.rh<>0 then showtokenlist(mem[eqtb[n].hh.rh].hh.rh,0,32);
end else if n<3678 then begin printesc(407);printint(n-3422);
printchar(61);
if eqtb[n].hh.rh<>0 then showtokenlist(mem[eqtb[n].hh.rh].hh.rh,0,32);
end else if n<3934 then begin printesc(409);printint(n-3678);
printchar(61);
if eqtb[n].hh.rh=0 then print(410)else begin depththreshold:=0;
breadthmax:=1;shownodelist(eqtb[n].hh.rh);end;
end else if n<3983 then[234:]begin if n=3934 then print(411)else if n<
3951 then begin printesc(412);printint(n-3935);
end else if n<3967 then begin printesc(413);printint(n-3951);
end else begin printesc(414);printint(n-3967);end;printchar(61);
printesc(hash[2624+eqtb[n].hh.rh].rh);
end[:234]else[235:]if n<5007 then begin if n<4239 then begin printesc(
415);printint(n-3983);end else if n<4495 then begin printesc(416);
printint(n-4239);end else if n<4751 then begin printesc(417);
printint(n-4495);end else begin printesc(418);printint(n-4751);end;
printchar(61);printint(eqtb[n].hh.rh);end else begin printesc(419);
printint(n-5007);printchar(61);printint(eqtb[n].hh.rh-0);
end[:235][:233]else if n<5830 then[242:]begin if n<5318 then printparam(
n-5263)else if n<5574 then begin printesc(476);printint(n-5318);
end else begin printesc(477);printint(n-5574);end;printchar(61);
printint(eqtb[n].int);
end[:242]else if n<=6106 then[251:]begin if n<5851 then printlengthparam
(n-5830)else begin printesc(500);printint(n-5851);end;printchar(61);
printscaled(eqtb[n].int);print(397);end[:251]else printchar(63);end;}
{:252}{259:}function idlookup(j,l:integer):halfword;label 40;
var h:integer;d:integer;p:halfword;k:halfword;begin{261:}h:=buffer[j];
for k:=j+1 to j+l-1 do begin h:=h+h+buffer[k];
while h>=1777 do h:=h-1777;end{:261};p:=h+514;
while true do begin if hash[p].rh>0 then if(strstart[hash[p].rh+1]-
strstart[hash[p].rh])=l then if streqbuf(hash[p].rh,j)then goto 40;
if hash[p].lh=0 then begin if nonewcontrolsequence then p:=2881 else
{260:}begin if hash[p].rh>0 then begin repeat if(hashused=514)then
overflow(503,2100);hashused:=hashused-1;until hash[hashused].rh=0;
hash[p].lh:=hashused;p:=hashused;end;
begin if poolptr+l>poolsize then overflow(257,poolsize-initpoolptr);end;
d:=(poolptr-strstart[strptr]);
while poolptr>strstart[strptr]do begin poolptr:=poolptr-1;
strpool[poolptr+l]:=strpool[poolptr];end;
for k:=j to j+l-1 do begin strpool[poolptr]:=buffer[k];
poolptr:=poolptr+1;end;hash[p].rh:=makestring;poolptr:=poolptr+d;
{cscount:=cscount+1;}end{:260};goto 40;end;p:=hash[p].lh;end;
40:idlookup:=p;end;{:259}{264:}procedure primitive(s:strnumber;
c:quarterword;o:halfword);var k:poolpointer;j:smallnumber;l:smallnumber;
begin if s<256 then curval:=s+257 else begin k:=strstart[s];
l:=strstart[s+1]-k;for j:=0 to l-1 do buffer[j]:=strpool[k+j];
curval:=idlookup(0,l);begin strptr:=strptr-1;poolptr:=strstart[strptr];
end;hash[curval].rh:=s;end;eqtb[curval].hh.b1:=1;eqtb[curval].hh.b0:=c;
eqtb[curval].hh.rh:=o;end;
{:264}{274:}procedure newsavelevel(c:groupcode);
begin if saveptr>maxsavestack then begin maxsavestack:=saveptr;
if maxsavestack>savesize-6 then overflow(541,savesize);end;
savestack[saveptr].hh.b0:=3;savestack[saveptr].hh.b1:=curgroup;
savestack[saveptr].hh.rh:=curboundary;
if curlevel=255 then overflow(542,255);curboundary:=saveptr;
curlevel:=curlevel+1;saveptr:=saveptr+1;curgroup:=c;end;
{:274}{275:}procedure eqdestroy(w:memoryword);var q:halfword;
begin begin if ((w.hh.b0>=111)and(w.hh.b0<=114))or((w.hh.b0>=117)and(w.hh.b0<=119)) then case w.hh.b0 of 111,112,113,114:deletetokenref(w.hh.rh);
117:deleteglueref(w.hh.rh);118:begin q:=w.hh.rh;
if q<>0 then freenode(q,mem[q].hh.lh+mem[q].hh.lh+1);end;
119:flushnodelist(w.hh.rh) end end;end;
{:275}{276:}procedure eqsave(p:halfword;l:quarterword);
begin if saveptr>maxsavestack then begin maxsavestack:=saveptr;
if maxsavestack>savesize-6 then overflow(541,savesize);end;
if l=0 then savestack[saveptr].hh.b0:=1 else begin savestack[saveptr]:=
eqtb[p];saveptr:=saveptr+1;savestack[saveptr].hh.b0:=0;end;
savestack[saveptr].hh.b1:=l;savestack[saveptr].hh.rh:=p;
saveptr:=saveptr+1;end;{:276}{277:}procedure eqdefine(p:halfword;
t:quarterword;e:halfword);
begin if eqtb[p].hh.b1=curlevel then eqdestroy(eqtb[p])else if curlevel>
1 then eqsave(p,eqtb[p].hh.b1);eqtb[p].hh.b1:=curlevel;eqtb[p].hh.b0:=t;
eqtb[p].hh.rh:=e;end;{:277}{278:}procedure eqworddefine(p:halfword;
w:integer);
begin if xeqlevel[p]<>curlevel then begin eqsave(p,xeqlevel[p]);
xeqlevel[p]:=curlevel;end;eqtb[p].int:=w;end;
{:278}{279:}procedure geqdefine(p:halfword;t:quarterword;e:halfword);
begin eqdestroy(eqtb[p]);eqtb[p].hh.b1:=1;eqtb[p].hh.b0:=t;
eqtb[p].hh.rh:=e;end;procedure geqworddefine(p:halfword;w:integer);
begin eqtb[p].int:=w;xeqlevel[p]:=1;end;
{:279}{280:}procedure saveforafter(t:halfword);
begin if curlevel>1 then begin if saveptr>maxsavestack then begin
maxsavestack:=saveptr;
if maxsavestack>savesize-6 then overflow(541,savesize);end;
savestack[saveptr].hh.b0:=2;savestack[saveptr].hh.b1:=0;
savestack[saveptr].hh.rh:=t;saveptr:=saveptr+1;end;end;
{:280}{281:}{284:}{procedure restoretrace(p:halfword;s:strnumber);
begin begindiagnostic;printchar(123);print(s);printchar(32);showeqtb(p);
printchar(125);enddiagnostic(false);end;}{:284}procedure backinput;
forward;procedure unsave;label 30;var p:halfword;l:quarterword;
t:halfword;begin if curlevel>1 then begin curlevel:=curlevel-1;
{282:}while true do begin saveptr:=saveptr-1;
if savestack[saveptr].hh.b0=3 then goto 30;p:=savestack[saveptr].hh.rh;
if savestack[saveptr].hh.b0=2 then{326:}begin t:=curtok;curtok:=p;
backinput;curtok:=t;
end{:326}else begin if savestack[saveptr].hh.b0=0 then begin l:=
savestack[saveptr].hh.b1;saveptr:=saveptr-1;
end else savestack[saveptr]:=eqtb[2881];
{283:}if p<5263 then if eqtb[p].hh.b1=1 then begin eqdestroy(savestack[
saveptr]);{if eqtb[5300].int>0 then restoretrace(p,544);}
end else begin eqdestroy(eqtb[p]);eqtb[p]:=savestack[saveptr];
{if eqtb[5300].int>0 then restoretrace(p,545);}
end else if xeqlevel[p]<>1 then begin eqtb[p]:=savestack[saveptr];
xeqlevel[p]:=l;{if eqtb[5300].int>0 then restoretrace(p,545);}
end else begin{if eqtb[5300].int>0 then restoretrace(p,544);}end{:283};
end;end;30:curgroup:=savestack[saveptr].hh.b1;
curboundary:=savestack[saveptr].hh.rh{:282};end else confusion(543);end;
{:281}{288:}procedure preparemag;
begin if(magset>0)and(eqtb[5280].int<>magset)then begin begin if
interaction=3 then;printnl(262);print(547);end;printint(eqtb[5280].int);
print(548);printnl(549);begin helpptr:=2;helpline[1]:=550;
helpline[0]:=551;end;interror(magset);geqworddefine(5280,magset);end;
if(eqtb[5280].int<=0)or(eqtb[5280].int>32768)then begin begin if
interaction=3 then;printnl(262);print(552);end;begin helpptr:=1;
helpline[0]:=553;end;interror(eqtb[5280].int);geqworddefine(5280,1000);
end;magset:=eqtb[5280].int;end;
{:288}{295:}procedure tokenshow(p:halfword);
begin if p<>0 then showtokenlist(mem[p].hh.rh,0,10000000);end;
{:295}{296:}procedure printmeaning;begin printcmdchr(curcmd,curchr);
if curcmd>=111 then begin printchar(58);println;tokenshow(curchr);
end else if curcmd=110 then begin printchar(58);println;
tokenshow(curmark[curchr]);end;end;{:296}{299:}procedure showcurcmdchr;
begin begindiagnostic;printnl(123);
if curlist.modefield<>shownmode then begin printmode(curlist.modefield);
print(568);shownmode:=curlist.modefield;end;printcmdchr(curcmd,curchr);
printchar(125);enddiagnostic(false);end;
{:299}{311:}procedure showcontext;label 30;var oldsetting:0..21;
nn:integer;bottomline:boolean;{315:}i:0..bufsize;j:0..bufsize;
l:0..halferrorline;m:integer;n:0..errorline;p:integer;q:integer;
{:315}begin baseptr:=inputptr;inputstack[baseptr]:=curinput;nn:=-1;
bottomline:=false;while true do begin curinput:=inputstack[baseptr];
if(curinput.statefield<>0)then if(curinput.namefield>17)or(baseptr=0)
then bottomline:=true;
if(baseptr=inputptr)or bottomline or(nn<eqtb[5317].int)then{312:}begin
if(baseptr=inputptr)or(curinput.statefield<>0)or(curinput.indexfield<>3)
or(curinput.locfield<>0)then begin tally:=0;oldsetting:=selector;
if curinput.statefield<>0 then begin{313:}if curinput.namefield<=17 then
if(curinput.namefield=0)then if baseptr=0 then printnl(574)else printnl(
575)else begin printnl(576);
if curinput.namefield=17 then printchar(42)else printint(curinput.
namefield-1);printchar(62);end else begin printnl(577);printint(line);
end;printchar(32){:313};{318:}begin l:=tally;tally:=0;selector:=20;
trickcount:=1000000;end;
if buffer[curinput.limitfield]=eqtb[5311].int then j:=curinput.
limitfield else j:=curinput.limitfield+1;
if j>0 then for i:=curinput.startfield to j-1 do begin if i=curinput.
locfield then begin firstcount:=tally;
trickcount:=tally+1+errorline-halferrorline;
if trickcount<errorline then trickcount:=errorline;end;print(buffer[i]);
end{:318};
end else begin{314:}begin if ((curinput.indexfield>=0)and(curinput.indexfield<=15)) then case curinput.indexfield of 0:printnl(578);
1,2:printnl(579);
3:if curinput.locfield=0 then printnl(580)else printnl(581);
4:printnl(582);5:begin println;printcs(curinput.namefield);end;
6:printnl(583);7:printnl(584);8:printnl(585);9:printnl(586);
10:printnl(587);11:printnl(588);12:printnl(589);13:printnl(590);
14:printnl(591);15:printnl(592) end else printnl(63) end{:314};
{319:}begin l:=tally;tally:=0;selector:=20;trickcount:=1000000;end;
if curinput.indexfield<5 then showtokenlist(curinput.startfield,curinput
.locfield,100000)else showtokenlist(mem[curinput.startfield].hh.rh,
curinput.locfield,100000){:319};end;selector:=oldsetting;
{317:}if trickcount=1000000 then begin firstcount:=tally;
trickcount:=tally+1+errorline-halferrorline;
if trickcount<errorline then trickcount:=errorline;end;
if tally<trickcount then m:=tally-firstcount else m:=trickcount-
firstcount;if l+firstcount<=halferrorline then begin p:=0;
n:=l+firstcount;end else begin print(277);
p:=l+firstcount-halferrorline+3;n:=halferrorline;end;
for q:=p to firstcount-1 do printchar(trickbuf[q mod errorline]);
println;for q:=1 to n do printchar(32);
if m+n<=errorline then p:=firstcount+m else p:=firstcount+(errorline-n-3
);for q:=firstcount to p-1 do printchar(trickbuf[q mod errorline]);
if m+n>errorline then print(277){:317};nn:=nn+1;end;
end{:312}else if nn=eqtb[5317].int then begin printnl(277);nn:=nn+1;end;
if bottomline then goto 30;baseptr:=baseptr-1;end;
30:curinput:=inputstack[inputptr];end;
{:311}{323:}procedure begintokenlist(p:halfword;t:quarterword);
begin begin if inputptr>maxinstack then begin maxinstack:=inputptr;
if inputptr=stacksize then overflow(593,stacksize);end;
inputstack[inputptr]:=curinput;inputptr:=inputptr+1;end;
curinput.statefield:=0;curinput.startfield:=p;curinput.indexfield:=t;
if t>=5 then begin mem[p].hh.lh:=mem[p].hh.lh+1;
if t=5 then curinput.limitfield:=paramptr else begin curinput.locfield:=
mem[p].hh.rh;if eqtb[5293].int>1 then begin begindiagnostic;
printnl(338);begin if (t=14)or(t=15) then case t of 14:printesc(351);15:printesc(594) end else printcmdchr(72,t+3407) end;print(556);tokenshow(p);
enddiagnostic(false);end;end;end else curinput.locfield:=p;end;
{:323}{324:}procedure endtokenlist;
begin if curinput.indexfield>=3 then begin if curinput.indexfield<=4
then flushlist(curinput.startfield)else begin deletetokenref(curinput.
startfield);
if curinput.indexfield=5 then while paramptr>curinput.limitfield do
begin paramptr:=paramptr-1;flushlist(paramstack[paramptr]);end;end;
end else if curinput.indexfield=1 then if alignstate>500000 then
alignstate:=0 else fatalerror(595);begin inputptr:=inputptr-1;
curinput:=inputstack[inputptr];end;
begin if interrupt<>0 then pauseforinstructions;end;end;
{:324}{325:}procedure backinput;var p:halfword;
begin while(curinput.statefield=0)and(curinput.locfield=0)and(curinput.
indexfield<>2)do endtokenlist;p:=getavail;mem[p].hh.lh:=curtok;
if curtok<768 then if curtok<512 then alignstate:=alignstate-1 else
alignstate:=alignstate+1;
begin if inputptr>maxinstack then begin maxinstack:=inputptr;
if inputptr=stacksize then overflow(593,stacksize);end;
inputstack[inputptr]:=curinput;inputptr:=inputptr+1;end;
curinput.statefield:=0;curinput.startfield:=p;curinput.indexfield:=3;
curinput.locfield:=p;end;{:325}{327:}procedure backerror;
begin OKtointerrupt:=false;backinput;OKtointerrupt:=true;error;end;
procedure inserror;begin OKtointerrupt:=false;backinput;
curinput.indexfield:=4;OKtointerrupt:=true;error;end;
{:327}{328:}procedure beginfilereading;
begin if inopen=maxinopen then overflow(596,maxinopen);
if first=bufsize then overflow(256,bufsize);inopen:=inopen+1;
begin if inputptr>maxinstack then begin maxinstack:=inputptr;
if inputptr=stacksize then overflow(593,stacksize);end;
inputstack[inputptr]:=curinput;inputptr:=inputptr+1;end;
curinput.indexfield:=inopen;linestack[curinput.indexfield]:=line;
curinput.startfield:=first;curinput.statefield:=1;curinput.namefield:=0;
end;{:328}{329:}procedure endfilereading;
begin first:=curinput.startfield;line:=linestack[curinput.indexfield];
if curinput.namefield>17 then aclose(inputfile[curinput.indexfield]);
begin inputptr:=inputptr-1;curinput:=inputstack[inputptr];end;
inopen:=inopen-1;end;{:329}{330:}procedure clearforerrorprompt;
begin while(curinput.statefield<>0)and(curinput.namefield=0)and(inputptr
>0)and(curinput.locfield>curinput.limitfield)do endfilereading;println;;
end;{:330}{336:}procedure checkoutervalidity;var p:halfword;q:halfword;
begin if scannerstatus<>0 then begin deletionsallowed:=false;
{337:}if curcs<>0 then begin if(curinput.statefield=0)or(curinput.
namefield<1)or(curinput.namefield>17)then begin p:=getavail;
mem[p].hh.lh:=4095+curcs;begintokenlist(p,3);end;curcmd:=10;curchr:=32;
end{:337};if scannerstatus>1 then{338:}begin runaway;
if curcs=0 then begin if interaction=3 then;printnl(262);print(604);
end else begin curcs:=0;begin if interaction=3 then;printnl(262);
print(605);end;end;print(606);{339:}p:=getavail;
case scannerstatus of 2:begin print(570);mem[p].hh.lh:=637;end;
3:begin print(612);mem[p].hh.lh:=partoken;longstate:=113;end;
4:begin print(572);mem[p].hh.lh:=637;q:=p;p:=getavail;mem[p].hh.rh:=q;
mem[p].hh.lh:=6710;alignstate:=-1000000;end;5:begin print(573);
mem[p].hh.lh:=637;end;end;begintokenlist(p,4){:339};print(607);
sprintcs(warningindex);begin helpptr:=4;helpline[3]:=608;
helpline[2]:=609;helpline[1]:=610;helpline[0]:=611;end;error;
end{:338}else begin begin if interaction=3 then;printnl(262);print(598);
end;printcmdchr(105,curif);print(599);printint(skipline);
begin helpptr:=3;helpline[2]:=600;helpline[1]:=601;helpline[0]:=602;end;
if curcs<>0 then curcs:=0 else helpline[2]:=603;curtok:=6713;inserror;
end;deletionsallowed:=true;end;end;{:336}{340:}procedure firmuptheline;
forward;{:340}{341:}procedure getnext;label 20,25,21,26,40,10;
var k:0..bufsize;t:halfword;cat:0..15;c,cc:ASCIIcode;d:2..3;
begin 20:curcs:=0;
if curinput.statefield<>0 then{343:}begin 25:if curinput.locfield<=
curinput.limitfield then begin curchr:=buffer[curinput.locfield];
curinput.locfield:=curinput.locfield+1;
21:curcmd:=eqtb[3983+curchr].hh.rh;
{344:}begin if ((curinput.statefield+curcmd>=1)and(curinput.statefield+curcmd<=3))or(curinput.statefield+curcmd=6)or(curinput.statefield+curcmd=8)or(curinput.statefield+curcmd=10)or(curinput.statefield+curcmd=11)or((curinput.statefield+curcmd>=14)and(curinput.statefield+curcmd<=48)) then case curinput.statefield+curcmd of {345:}10,26,42,27,43{:345}:goto
25;
1,17,33:{354:}begin if curinput.locfield>curinput.limitfield then curcs
:=513 else begin 26:k:=curinput.locfield;curchr:=buffer[k];
cat:=eqtb[3983+curchr].hh.rh;k:=k+1;
if cat=11 then curinput.statefield:=17 else if cat=10 then curinput.
statefield:=17 else curinput.statefield:=1;
if(cat=11)and(k<=curinput.limitfield)then{356:}begin repeat curchr:=
buffer[k];cat:=eqtb[3983+curchr].hh.rh;k:=k+1;
until(cat<>11)or(k>curinput.limitfield);
{355:}begin if buffer[k]=curchr then if cat=7 then if k<curinput.
limitfield then begin c:=buffer[k+1];if c<128 then begin d:=2;
if(((c>=48)and(c<=57))or((c>=97)and(c<=102)))then if k+2<=curinput.
limitfield then begin cc:=buffer[k+2];
if(((cc>=48)and(cc<=57))or((cc>=97)and(cc<=102)))then d:=d+1;end;
if d>2 then begin if c<=57 then curchr:=c-48 else curchr:=c-87;
if cc<=57 then curchr:=16*curchr+cc-48 else curchr:=16*curchr+cc-87;
buffer[k-1]:=curchr;
end else if c<64 then buffer[k-1]:=c+64 else buffer[k-1]:=c-64;
curinput.limitfield:=curinput.limitfield-d;first:=first-d;
while k<=curinput.limitfield do begin buffer[k]:=buffer[k+d];k:=k+1;end;
goto 26;end;end;end{:355};if cat<>11 then k:=k-1;
if k>curinput.locfield+1 then begin curcs:=idlookup(curinput.locfield,k-
curinput.locfield);curinput.locfield:=k;goto 40;end;
end{:356}else{355:}begin if buffer[k]=curchr then if cat=7 then if k<
curinput.limitfield then begin c:=buffer[k+1];if c<128 then begin d:=2;
if(((c>=48)and(c<=57))or((c>=97)and(c<=102)))then if k+2<=curinput.
limitfield then begin cc:=buffer[k+2];
if(((cc>=48)and(cc<=57))or((cc>=97)and(cc<=102)))then d:=d+1;end;
if d>2 then begin if c<=57 then curchr:=c-48 else curchr:=c-87;
if cc<=57 then curchr:=16*curchr+cc-48 else curchr:=16*curchr+cc-87;
buffer[k-1]:=curchr;
end else if c<64 then buffer[k-1]:=c+64 else buffer[k-1]:=c-64;
curinput.limitfield:=curinput.limitfield-d;first:=first-d;
while k<=curinput.limitfield do begin buffer[k]:=buffer[k+d];k:=k+1;end;
goto 26;end;end;end{:355};curcs:=257+buffer[curinput.locfield];
curinput.locfield:=curinput.locfield+1;end;40:curcmd:=eqtb[curcs].hh.b0;
curchr:=eqtb[curcs].hh.rh;if curcmd>=113 then checkoutervalidity;
end{:354};14,30,46:{353:}begin curcs:=curchr+1;
curcmd:=eqtb[curcs].hh.b0;curchr:=eqtb[curcs].hh.rh;
curinput.statefield:=1;if curcmd>=113 then checkoutervalidity;end{:353};
8,24,40:{352:}begin if curchr=buffer[curinput.locfield]then if curinput.
locfield<curinput.limitfield then begin c:=buffer[curinput.locfield+1];
if c<128 then begin curinput.locfield:=curinput.locfield+2;
if(((c>=48)and(c<=57))or((c>=97)and(c<=102)))then if curinput.locfield<=
curinput.limitfield then begin cc:=buffer[curinput.locfield];
if(((cc>=48)and(cc<=57))or((cc>=97)and(cc<=102)))then begin curinput.
locfield:=curinput.locfield+1;
if c<=57 then curchr:=c-48 else curchr:=c-87;
if cc<=57 then curchr:=16*curchr+cc-48 else curchr:=16*curchr+cc-87;
goto 21;end;end;if c<64 then curchr:=c+64 else curchr:=c-64;goto 21;end;
end;curinput.statefield:=1;end{:352};
16,32,48:{346:}begin begin if interaction=3 then;printnl(262);
print(613);end;begin helpptr:=2;helpline[1]:=614;helpline[0]:=615;end;
deletionsallowed:=false;error;deletionsallowed:=true;goto 20;end{:346};
{347:}11:{349:}begin curinput.statefield:=17;curchr:=32;end{:349};
6:{348:}begin curinput.locfield:=curinput.limitfield+1;curcmd:=10;
curchr:=32;end{:348};
22,15,31,47:{350:}begin curinput.locfield:=curinput.limitfield+1;
goto 25;end{:350};
38:{351:}begin curinput.locfield:=curinput.limitfield+1;curcs:=parloc;
curcmd:=eqtb[curcs].hh.b0;curchr:=eqtb[curcs].hh.rh;
if curcmd>=113 then checkoutervalidity;end{:351};
2:alignstate:=alignstate+1;18,34:begin curinput.statefield:=1;
alignstate:=alignstate+1;end;3:alignstate:=alignstate-1;
19,35:begin curinput.statefield:=1;alignstate:=alignstate-1;end;
20,21,23,25,28,29,36,37,39,41,44,45:curinput.statefield:=1;
{:347} end end{:344};end else begin curinput.statefield:=33;
{360:}if curinput.namefield>17 then{362:}begin line:=line+1;
first:=curinput.startfield;
if not forceeof then begin if inputln(inputfile[curinput.indexfield],
true)then firmuptheline else forceeof:=true;end;
if forceeof then begin printchar(41);openparens:=openparens-1;;
forceeof:=false;endfilereading;checkoutervalidity;goto 20;end;
if(eqtb[5311].int<0)or(eqtb[5311].int>255)then curinput.limitfield:=
curinput.limitfield-1 else buffer[curinput.limitfield]:=eqtb[5311].int;
first:=curinput.limitfield+1;curinput.locfield:=curinput.startfield;
end{:362}else begin if not(curinput.namefield=0)then begin curcmd:=0;
curchr:=0;goto 10;end;if inputptr>0 then begin endfilereading;goto 20;
end;if selector<18 then openlogfile;
if interaction>1 then begin if(eqtb[5311].int<0)or(eqtb[5311].int>255)
then curinput.limitfield:=curinput.limitfield+1;
if curinput.limitfield=curinput.startfield then printnl(616);println;
first:=curinput.startfield;begin;print(42);terminput;end;
curinput.limitfield:=last;
if(eqtb[5311].int<0)or(eqtb[5311].int>255)then curinput.limitfield:=
curinput.limitfield-1 else buffer[curinput.limitfield]:=eqtb[5311].int;
first:=curinput.limitfield+1;curinput.locfield:=curinput.startfield;
end else fatalerror(617);end{:360};
begin if interrupt<>0 then pauseforinstructions;end;goto 25;end;
end{:343}else{357:}if curinput.locfield<>0 then begin t:=mem[curinput.
locfield].hh.lh;curinput.locfield:=mem[curinput.locfield].hh.rh;
if t>=4095 then begin curcs:=t-4095;curcmd:=eqtb[curcs].hh.b0;
curchr:=eqtb[curcs].hh.rh;
if curcmd>=113 then if curcmd=116 then{358:}begin curcs:=mem[curinput.
locfield].hh.lh-4095;curinput.locfield:=0;curcmd:=eqtb[curcs].hh.b0;
curchr:=eqtb[curcs].hh.rh;if curcmd>100 then begin curcmd:=0;
curchr:=257;end;end{:358}else checkoutervalidity;
end else begin curcmd:=t div 256;curchr:=t mod 256;
begin if (curcmd=1)or(curcmd=2)or(curcmd=5) then case curcmd of 1:alignstate:=alignstate+1;2:alignstate:=alignstate-1;
5:{359:}begin begintokenlist(paramstack[curinput.limitfield+curchr-1],0)
;goto 20;end{:359} end end;end;end else begin endtokenlist;goto 20;
end{:357};
{342:}if curcmd<=5 then if curcmd>=4 then if alignstate=0 then{789:}
begin if(scannerstatus=4)or(curalign=0)then fatalerror(595);
curcmd:=mem[curalign+5].hh.lh;mem[curalign+5].hh.lh:=curchr;
if curcmd=63 then begintokenlist(29990,2)else begintokenlist(mem[
curalign+2].int,2);alignstate:=1000000;goto 20;end{:789}{:342};10:end;
{:341}{363:}procedure firmuptheline;var k:0..bufsize;
begin curinput.limitfield:=last;
if eqtb[5291].int>0 then if interaction>1 then begin;println;
if curinput.startfield<curinput.limitfield then for k:=curinput.
startfield to curinput.limitfield-1 do print(buffer[k]);
first:=curinput.limitfield;begin;print(618);terminput;end;
if last>first then begin for k:=first to last-1 do buffer[k+curinput.
startfield-first]:=buffer[k];
curinput.limitfield:=curinput.startfield+last-first;end;end;end;
{:363}{365:}procedure gettoken;begin nonewcontrolsequence:=false;
getnext;nonewcontrolsequence:=true;
if curcs=0 then curtok:=(curcmd*256)+curchr else curtok:=4095+curcs;end;
{:365}{366:}{389:}procedure macrocall;label 10,22,30,31,40;
var r:halfword;p:halfword;q:halfword;s:halfword;t:halfword;u,v:halfword;
rbraceptr:halfword;n:smallnumber;unbalance:halfword;m:halfword;
refcount:halfword;savescannerstatus:smallnumber;
savewarningindex:halfword;matchchr:ASCIIcode;
begin savescannerstatus:=scannerstatus;savewarningindex:=warningindex;
warningindex:=curcs;refcount:=curchr;r:=mem[refcount].hh.rh;n:=0;
if eqtb[5293].int>0 then{401:}begin begindiagnostic;println;
printcs(warningindex);tokenshow(refcount);enddiagnostic(false);
end{:401};if mem[r].hh.lh<>3584 then{391:}begin scannerstatus:=3;
unbalance:=0;longstate:=eqtb[curcs].hh.b0;
if longstate>=113 then longstate:=longstate-2;
repeat mem[29997].hh.rh:=0;
if(mem[r].hh.lh>3583)or(mem[r].hh.lh<3328)then s:=0 else begin matchchr
:=mem[r].hh.lh-3328;s:=mem[r].hh.rh;r:=s;p:=29997;m:=0;end;
{392:}22:gettoken;
if curtok=mem[r].hh.lh then{394:}begin r:=mem[r].hh.rh;
if(mem[r].hh.lh>=3328)and(mem[r].hh.lh<=3584)then begin if curtok<512
then alignstate:=alignstate-1;goto 40;end else goto 22;end{:394};
{397:}if s<>r then if s=0 then{398:}begin begin if interaction=3 then;
printnl(262);print(650);end;sprintcs(warningindex);print(651);
begin helpptr:=4;helpline[3]:=652;helpline[2]:=653;helpline[1]:=654;
helpline[0]:=655;end;error;goto 10;end{:398}else begin t:=s;
repeat begin q:=getavail;mem[p].hh.rh:=q;mem[q].hh.lh:=mem[t].hh.lh;
p:=q;end;m:=m+1;u:=mem[t].hh.rh;v:=s;
while true do begin if u=r then if curtok<>mem[v].hh.lh then goto 30
else begin r:=mem[v].hh.rh;goto 22;end;
if mem[u].hh.lh<>mem[v].hh.lh then goto 30;u:=mem[u].hh.rh;
v:=mem[v].hh.rh;end;30:t:=mem[t].hh.rh;until t=r;r:=s;end{:397};
if curtok=partoken then if longstate<>112 then{396:}begin if longstate=
111 then begin runaway;begin if interaction=3 then;printnl(262);
print(645);end;sprintcs(warningindex);print(646);begin helpptr:=3;
helpline[2]:=647;helpline[1]:=648;helpline[0]:=649;end;backerror;end;
pstack[n]:=mem[29997].hh.rh;alignstate:=alignstate-unbalance;
for m:=0 to n do flushlist(pstack[m]);goto 10;end{:396};
if curtok<768 then if curtok<512 then{399:}begin unbalance:=1;
while true do begin begin begin q:=avail;
if q=0 then q:=getavail else begin avail:=mem[q].hh.rh;mem[q].hh.rh:=0;
{dynused:=dynused+1;}end;end;mem[p].hh.rh:=q;mem[q].hh.lh:=curtok;p:=q;
end;gettoken;
if curtok=partoken then if longstate<>112 then{396:}begin if longstate=
111 then begin runaway;begin if interaction=3 then;printnl(262);
print(645);end;sprintcs(warningindex);print(646);begin helpptr:=3;
helpline[2]:=647;helpline[1]:=648;helpline[0]:=649;end;backerror;end;
pstack[n]:=mem[29997].hh.rh;alignstate:=alignstate-unbalance;
for m:=0 to n do flushlist(pstack[m]);goto 10;end{:396};
if curtok<768 then if curtok<512 then unbalance:=unbalance+1 else begin
unbalance:=unbalance-1;if unbalance=0 then goto 31;end;end;
31:rbraceptr:=p;begin q:=getavail;mem[p].hh.rh:=q;mem[q].hh.lh:=curtok;
p:=q;end;end{:399}else{395:}begin backinput;begin if interaction=3 then;
printnl(262);print(637);end;sprintcs(warningindex);print(638);
begin helpptr:=6;helpline[5]:=639;helpline[4]:=640;helpline[3]:=641;
helpline[2]:=642;helpline[1]:=643;helpline[0]:=644;end;
alignstate:=alignstate+1;longstate:=111;curtok:=partoken;inserror;
goto 22;
end{:395}else{393:}begin if curtok=2592 then if mem[r].hh.lh<=3584 then
if mem[r].hh.lh>=3328 then goto 22;begin q:=getavail;mem[p].hh.rh:=q;
mem[q].hh.lh:=curtok;p:=q;end;end{:393};m:=m+1;
if mem[r].hh.lh>3584 then goto 22;if mem[r].hh.lh<3328 then goto 22;
40:if s<>0 then{400:}begin if(m=1)and(mem[p].hh.lh<768)then begin mem[
rbraceptr].hh.rh:=0;begin mem[p].hh.rh:=avail;avail:=p;
{dynused:=dynused-1;}end;p:=mem[29997].hh.rh;pstack[n]:=mem[p].hh.rh;
begin mem[p].hh.rh:=avail;avail:=p;{dynused:=dynused-1;}end;
end else pstack[n]:=mem[29997].hh.rh;n:=n+1;
if eqtb[5293].int>0 then begin begindiagnostic;printnl(matchchr);
printint(n);print(656);showtokenlist(pstack[n-1],0,1000);
enddiagnostic(false);end;end{:400}{:392};until mem[r].hh.lh=3584;
end{:391};
{390:}while(curinput.statefield=0)and(curinput.locfield=0)and(curinput.
indexfield<>2)do endtokenlist;begintokenlist(refcount,5);
curinput.namefield:=warningindex;curinput.locfield:=mem[r].hh.rh;
if n>0 then begin if paramptr+n>maxparamstack then begin maxparamstack:=
paramptr+n;if maxparamstack>paramsize then overflow(636,paramsize);end;
for m:=0 to n-1 do paramstack[paramptr+m]:=pstack[m];
paramptr:=paramptr+n;end{:390};10:scannerstatus:=savescannerstatus;
warningindex:=savewarningindex;end;{:389}{379:}procedure insertrelax;
begin curtok:=4095+curcs;backinput;curtok:=6716;backinput;
curinput.indexfield:=4;end;{:379}procedure passtext;forward;
procedure startinput;forward;procedure conditional;forward;
procedure getxtoken;forward;procedure convtoks;forward;
procedure insthetoks;forward;procedure expand;var t:halfword;
p,q,r:halfword;j:0..bufsize;cvbackup:integer;
cvlbackup,radixbackup,cobackup:smallnumber;backupbackup:halfword;
savescannerstatus:smallnumber;begin cvbackup:=curval;
cvlbackup:=curvallevel;radixbackup:=radix;cobackup:=curorder;
backupbackup:=mem[29987].hh.rh;
if curcmd<111 then{367:}begin if eqtb[5299].int>1 then showcurcmdchr;
begin if ((curcmd>=102)and(curcmd<=110)) then case curcmd of 110:{386:}begin if curmark[curchr]<>0 then begintokenlist
(curmark[curchr],14);end{:386};102:{368:}begin gettoken;t:=curtok;
gettoken;if curcmd>100 then expand else backinput;curtok:=t;backinput;
end{:368};103:{369:}begin savescannerstatus:=scannerstatus;
scannerstatus:=0;gettoken;scannerstatus:=savescannerstatus;t:=curtok;
backinput;if t>=4095 then begin p:=getavail;mem[p].hh.lh:=6718;
mem[p].hh.rh:=curinput.locfield;curinput.startfield:=p;
curinput.locfield:=p;end;end{:369};107:{372:}begin r:=getavail;p:=r;
repeat getxtoken;if curcs=0 then begin q:=getavail;mem[p].hh.rh:=q;
mem[q].hh.lh:=curtok;p:=q;end;until curcs<>0;
if curcmd<>67 then{373:}begin begin if interaction=3 then;printnl(262);
print(625);end;printesc(505);print(626);begin helpptr:=2;
helpline[1]:=627;helpline[0]:=628;end;backerror;end{:373};
{374:}j:=first;p:=mem[r].hh.rh;
while p<>0 do begin if j>=maxbufstack then begin maxbufstack:=j+1;
if maxbufstack=bufsize then overflow(256,bufsize);end;
buffer[j]:=mem[p].hh.lh mod 256;j:=j+1;p:=mem[p].hh.rh;end;
if j>first+1 then begin nonewcontrolsequence:=false;
curcs:=idlookup(first,j-first);nonewcontrolsequence:=true;
end else if j=first then curcs:=513 else curcs:=257+buffer[first]{:374};
flushlist(r);if eqtb[curcs].hh.b0=101 then begin eqdefine(curcs,0,256);
end;curtok:=curcs+4095;backinput;end{:372};108:convtoks;109:insthetoks;
105:conditional;
106:{510:}if curchr>iflimit then if iflimit=1 then insertrelax else
begin begin if interaction=3 then;printnl(262);print(777);end;
printcmdchr(106,curchr);begin helpptr:=1;helpline[0]:=778;end;error;
end else begin while curchr<>2 do passtext;{496:}begin p:=condptr;
ifline:=mem[p+1].int;curif:=mem[p].hh.b1;iflimit:=mem[p].hh.b0;
condptr:=mem[p].hh.rh;freenode(p,2);end{:496};end{:510};
104:{378:}if curchr>0 then forceeof:=true else if nameinprogress then
insertrelax else startinput{:378} end else {370:}begin begin if interaction=3 then;printnl(262);print(619);
end;begin helpptr:=5;helpline[4]:=620;helpline[3]:=621;helpline[2]:=622;
helpline[1]:=623;helpline[0]:=624;end;error;end{:370} end;
end{:367}else if curcmd<115 then macrocall else{375:}begin curtok:=6715;
backinput;end{:375};curval:=cvbackup;curvallevel:=cvlbackup;
radix:=radixbackup;curorder:=cobackup;mem[29987].hh.rh:=backupbackup;
end;{:366}{380:}procedure getxtoken;label 20,30;begin 20:getnext;
if curcmd<=100 then goto 30;
if curcmd>=111 then if curcmd<115 then macrocall else begin curcs:=2620;
curcmd:=9;goto 30;end else expand;goto 20;
30:if curcs=0 then curtok:=(curcmd*256)+curchr else curtok:=4095+curcs;
end;{:380}{381:}procedure xtoken;begin while curcmd>100 do begin expand;
getnext;end;
if curcs=0 then curtok:=(curcmd*256)+curchr else curtok:=4095+curcs;end;
{:381}{403:}procedure scanleftbrace;begin{404:}repeat getxtoken;
until(curcmd<>10)and(curcmd<>0){:404};
if curcmd<>1 then begin begin if interaction=3 then;printnl(262);
print(657);end;begin helpptr:=4;helpline[3]:=658;helpline[2]:=659;
helpline[1]:=660;helpline[0]:=661;end;backerror;curtok:=379;curcmd:=1;
curchr:=123;alignstate:=alignstate+1;end;end;
{:403}{405:}procedure scanoptionalequals;begin{406:}repeat getxtoken;
until curcmd<>10{:406};if curtok<>3133 then backinput;end;
{:405}{407:}function scankeyword(s:strnumber):boolean;label 10;
var p:halfword;q:halfword;k:poolpointer;begin p:=29987;mem[p].hh.rh:=0;
k:=strstart[s];while k<strstart[s+1]do begin getxtoken;
if(curcs=0)and((curchr=strpool[k])or(curchr=strpool[k]-32))then begin
begin q:=getavail;mem[p].hh.rh:=q;mem[q].hh.lh:=curtok;p:=q;end;k:=k+1;
end else if(curcmd<>10)or(p<>29987)then begin backinput;
if p<>29987 then begintokenlist(mem[29987].hh.rh,3);scankeyword:=false;
goto 10;end;end;flushlist(mem[29987].hh.rh);scankeyword:=true;10:end;
{:407}{408:}procedure muerror;begin begin if interaction=3 then;
printnl(262);print(662);end;begin helpptr:=1;helpline[0]:=663;end;error;
end;{:408}{409:}procedure scanint;forward;
{433:}procedure scaneightbitint;begin scanint;
if(curval<0)or(curval>255)then begin begin if interaction=3 then;
printnl(262);print(687);end;begin helpptr:=2;helpline[1]:=688;
helpline[0]:=689;end;interror(curval);curval:=0;end;end;
{:433}{434:}procedure scancharnum;begin scanint;
if(curval<0)or(curval>255)then begin begin if interaction=3 then;
printnl(262);print(690);end;begin helpptr:=2;helpline[1]:=691;
helpline[0]:=689;end;interror(curval);curval:=0;end;end;
{:434}{435:}procedure scanfourbitint;begin scanint;
if(curval<0)or(curval>15)then begin begin if interaction=3 then;
printnl(262);print(692);end;begin helpptr:=2;helpline[1]:=693;
helpline[0]:=689;end;interror(curval);curval:=0;end;end;
{:435}{436:}procedure scanfifteenbitint;begin scanint;
if(curval<0)or(curval>32767)then begin begin if interaction=3 then;
printnl(262);print(694);end;begin helpptr:=2;helpline[1]:=695;
helpline[0]:=689;end;interror(curval);curval:=0;end;end;
{:436}{437:}procedure scantwentysevenbitint;begin scanint;
if(curval<0)or(curval>134217727)then begin begin if interaction=3 then;
printnl(262);print(696);end;begin helpptr:=2;helpline[1]:=697;
helpline[0]:=689;end;interror(curval);curval:=0;end;end;
{:437}{577:}procedure scanfontident;var f:internalfontnumber;m:halfword;
begin{406:}repeat getxtoken;until curcmd<>10{:406};
if curcmd=88 then f:=eqtb[3934].hh.rh else if curcmd=87 then f:=curchr
else if curcmd=86 then begin m:=curchr;scanfourbitint;
f:=eqtb[m+curval].hh.rh;end else begin begin if interaction=3 then;
printnl(262);print(817);end;begin helpptr:=2;helpline[1]:=818;
helpline[0]:=819;end;backerror;f:=0;end;curval:=f;end;
{:577}{578:}procedure findfontdimen(writing:boolean);
var f:internalfontnumber;n:integer;begin scanint;n:=curval;
scanfontident;f:=curval;
if n<=0 then curval:=fmemptr else begin if writing and(n<=4)and(n>=2)and
(fontglue[f]<>0)then begin deleteglueref(fontglue[f]);fontglue[f]:=0;
end;
if n>fontparams[f]then if f<fontptr then curval:=fmemptr else{580:}begin
repeat if fmemptr=fontmemsize then overflow(824,fontmemsize);
fontinfo[fmemptr].int:=0;fmemptr:=fmemptr+1;
fontparams[f]:=fontparams[f]+1;until n=fontparams[f];curval:=fmemptr-1;
end{:580}else curval:=n+parambase[f];end;
{579:}if curval=fmemptr then begin begin if interaction=3 then;
printnl(262);print(802);end;printesc(hash[2624+f].rh);print(820);
printint(fontparams[f]);print(821);begin helpptr:=2;helpline[1]:=822;
helpline[0]:=823;end;error;end{:579};end;
{:578}{:409}{413:}procedure scansomethinginternal(level:smallnumber;
negative:boolean);var m:halfword;p:0..nestsize;begin m:=curchr;
begin if ((curcmd>=68)and(curcmd<=89)) then case curcmd of 85:{414:}begin scancharnum;
if m=5007 then begin curval:=eqtb[5007+curval].hh.rh-0;curvallevel:=0;
end else if m<5007 then begin curval:=eqtb[m+curval].hh.rh;
curvallevel:=0;end else begin curval:=eqtb[m+curval].int;curvallevel:=0;
end;end{:414};
71,72,86,87,88:{415:}if level<>5 then begin begin if interaction=3 then;
printnl(262);print(664);end;begin helpptr:=3;helpline[2]:=665;
helpline[1]:=666;helpline[0]:=667;end;backerror;begin curval:=0;
curvallevel:=1;end;
end else if curcmd<=72 then begin if curcmd<72 then begin
scaneightbitint;m:=3422+curval;end;begin curval:=eqtb[m].hh.rh;
curvallevel:=5;end;end else begin backinput;scanfontident;
begin curval:=2624+curval;curvallevel:=4;end;end{:415};
73:begin curval:=eqtb[m].int;curvallevel:=0;end;
74:begin curval:=eqtb[m].int;curvallevel:=1;end;
75:begin curval:=eqtb[m].hh.rh;curvallevel:=2;end;
76:begin curval:=eqtb[m].hh.rh;curvallevel:=3;end;
79:{418:}if abs(curlist.modefield)<>m then begin begin if interaction=3
then;printnl(262);print(680);end;printcmdchr(79,m);begin helpptr:=4;
helpline[3]:=681;helpline[2]:=682;helpline[1]:=683;helpline[0]:=684;end;
error;if level<>5 then begin curval:=0;curvallevel:=1;
end else begin curval:=0;curvallevel:=0;end;
end else if m=1 then begin curval:=curlist.auxfield.int;curvallevel:=1;
end else begin curval:=curlist.auxfield.hh.lh;curvallevel:=0;end{:418};
80:{422:}if curlist.modefield=0 then begin curval:=0;curvallevel:=0;
end else begin nest[nestptr]:=curlist;p:=nestptr;
while abs(nest[p].modefield)<>1 do p:=p-1;begin curval:=nest[p].pgfield;
curvallevel:=0;end;end{:422};
82:{419:}begin if m=0 then curval:=deadcycles else curval:=
insertpenalties;curvallevel:=0;end{:419};
81:{421:}begin if(pagecontents=0)and(not outputactive)then if m=0 then
curval:=1073741823 else curval:=0 else curval:=pagesofar[m];
curvallevel:=1;end{:421};
84:{423:}begin if eqtb[3412].hh.rh=0 then curval:=0 else curval:=mem[
eqtb[3412].hh.rh].hh.lh;curvallevel:=0;end{:423};
83:{420:}begin scaneightbitint;
if eqtb[3678+curval].hh.rh=0 then curval:=0 else curval:=mem[eqtb[3678+
curval].hh.rh+m].int;curvallevel:=1;end{:420};
68,69:begin curval:=curchr;curvallevel:=0;end;
77:{425:}begin findfontdimen(false);fontinfo[fmemptr].int:=0;
begin curval:=fontinfo[curval].int;curvallevel:=1;end;end{:425};
78:{426:}begin scanfontident;
if m=0 then begin curval:=hyphenchar[curval];curvallevel:=0;
end else begin curval:=skewchar[curval];curvallevel:=0;end;end{:426};
89:{427:}begin scaneightbitint;
case m of 0:curval:=eqtb[5318+curval].int;
1:curval:=eqtb[5851+curval].int;2:curval:=eqtb[2900+curval].hh.rh;
3:curval:=eqtb[3156+curval].hh.rh;end;curvallevel:=m;end{:427};
70:{424:}if curchr>2 then begin if curchr=3 then curval:=line else
curval:=lastbadness;curvallevel:=0;
end else begin if curchr=2 then curval:=0 else curval:=0;
curvallevel:=curchr;
if not(curlist.tailfield>=himemmin)and(curlist.modefield<>0)then case
curchr of 0:if mem[curlist.tailfield].hh.b0=12 then curval:=mem[curlist.
tailfield+1].int;
1:if mem[curlist.tailfield].hh.b0=11 then curval:=mem[curlist.tailfield
+1].int;
2:if mem[curlist.tailfield].hh.b0=10 then begin curval:=mem[curlist.
tailfield+1].hh.lh;
if mem[curlist.tailfield].hh.b1=99 then curvallevel:=3;end;
end else if(curlist.modefield=1)and(curlist.tailfield=curlist.headfield)
then case curchr of 0:curval:=lastpenalty;1:curval:=lastkern;
2:if lastglue<>65535 then curval:=lastglue;end;end{:424} end else {428:}begin begin if interaction=3 then;printnl(262);print(685);
end;printcmdchr(curcmd,curchr);print(686);printesc(537);
begin helpptr:=1;helpline[0]:=684;end;error;
if level<>5 then begin curval:=0;curvallevel:=1;
end else begin curval:=0;curvallevel:=0;end;end{:428} end;
while curvallevel>level do{429:}begin if curvallevel=2 then curval:=mem[
curval+1].int else if curvallevel=3 then muerror;
curvallevel:=curvallevel-1;end{:429};
{430:}if negative then if curvallevel>=2 then begin curval:=newspec(
curval);{431:}begin mem[curval+1].int:=-mem[curval+1].int;
mem[curval+2].int:=-mem[curval+2].int;
mem[curval+3].int:=-mem[curval+3].int;end{:431};
end else curval:=-curval else if(curvallevel>=2)and(curvallevel<=3)then
mem[curval].hh.rh:=mem[curval].hh.rh+1{:430};end;
{:413}{440:}procedure scanint;label 30;var negative:boolean;m:integer;
d:smallnumber;vacuous:boolean;OKsofar:boolean;begin radix:=0;
OKsofar:=true;{441:}negative:=false;repeat{406:}repeat getxtoken;
until curcmd<>10{:406};if curtok=3117 then begin negative:=not negative;
curtok:=3115;end;until curtok<>3115{:441};
if curtok=3168 then{442:}begin gettoken;
if curtok<4095 then begin curval:=curchr;
if curcmd<=2 then if curcmd=2 then alignstate:=alignstate+1 else
alignstate:=alignstate-1;
end else if curtok<4352 then curval:=curtok-4096 else curval:=curtok
-4352;if curval>255 then begin begin if interaction=3 then;printnl(262);
print(698);end;begin helpptr:=2;helpline[1]:=699;helpline[0]:=700;end;
curval:=48;backerror;end else{443:}begin getxtoken;
if curcmd<>10 then backinput;end{:443};
end{:442}else if(curcmd>=68)and(curcmd<=89)then scansomethinginternal(0,
false)else{444:}begin radix:=10;m:=214748364;
if curtok=3111 then begin radix:=8;m:=268435456;getxtoken;
end else if curtok=3106 then begin radix:=16;m:=134217728;getxtoken;end;
vacuous:=true;curval:=0;
{445:}while true do begin if(curtok<3120+radix)and(curtok>=3120)and(
curtok<=3129)then d:=curtok-3120 else if radix=16 then if(curtok<=2886)
and(curtok>=2881)then d:=curtok-2871 else if(curtok<=3142)and(curtok>=
3137)then d:=curtok-3127 else goto 30 else goto 30;vacuous:=false;
if(curval>=m)and((curval>m)or(d>7)or(radix<>10))then begin if OKsofar
then begin begin if interaction=3 then;printnl(262);print(701);end;
begin helpptr:=2;helpline[1]:=702;helpline[0]:=703;end;error;
curval:=2147483647;OKsofar:=false;end;end else curval:=curval*radix+d;
getxtoken;end;30:{:445};
if vacuous then{446:}begin begin if interaction=3 then;printnl(262);
print(664);end;begin helpptr:=3;helpline[2]:=665;helpline[1]:=666;
helpline[0]:=667;end;backerror;
end{:446}else if curcmd<>10 then backinput;end{:444};
if negative then curval:=-curval;end;
{:440}{448:}procedure scandimen(mu,inf,shortcut:boolean);
label 30,31,32,40,45,88,89;var negative:boolean;f:integer;
{450:}num,denom:1..65536;k,kk:smallnumber;p,q:halfword;v:scaled;
savecurval:integer;{:450}begin f:=0;aritherror:=false;curorder:=0;
negative:=false;if not shortcut then begin{441:}negative:=false;
repeat{406:}repeat getxtoken;until curcmd<>10{:406};
if curtok=3117 then begin negative:=not negative;curtok:=3115;end;
until curtok<>3115{:441};
if(curcmd>=68)and(curcmd<=89)then{449:}if mu then begin
scansomethinginternal(3,false);
{451:}if curvallevel>=2 then begin v:=mem[curval+1].int;
deleteglueref(curval);curval:=v;end{:451};if curvallevel=3 then goto 89;
if curvallevel<>0 then muerror;
end else begin scansomethinginternal(1,false);
if curvallevel=1 then goto 89;end{:449}else begin backinput;
if curtok=3116 then curtok:=3118;
if curtok<>3118 then scanint else begin radix:=10;curval:=0;end;
if curtok=3116 then curtok:=3118;
if(radix=10)and(curtok=3118)then{452:}begin k:=0;p:=0;gettoken;
while true do begin getxtoken;
if(curtok>3129)or(curtok<3120)then goto 31;
if k<17 then begin q:=getavail;mem[q].hh.rh:=p;
mem[q].hh.lh:=curtok-3120;p:=q;k:=k+1;end;end;
31:for kk:=k downto 1 do begin dig[kk-1]:=mem[p].hh.lh;q:=p;
p:=mem[p].hh.rh;begin mem[q].hh.rh:=avail;avail:=q;{dynused:=dynused-1;}
end;end;f:=rounddecimals(k);if curcmd<>10 then backinput;end{:452};end;
end;if curval<0 then begin negative:=not negative;curval:=-curval;end;
{453:}if inf then{454:}if scankeyword(311)then begin curorder:=1;
while scankeyword(108)do begin if curorder=3 then begin begin if
interaction=3 then;printnl(262);print(705);end;print(706);
begin helpptr:=1;helpline[0]:=707;end;error;
end else curorder:=curorder+1;end;goto 88;end{:454};
{455:}savecurval:=curval;{406:}repeat getxtoken;until curcmd<>10{:406};
if(curcmd<68)or(curcmd>89)then backinput else begin if mu then begin
scansomethinginternal(3,false);
{451:}if curvallevel>=2 then begin v:=mem[curval+1].int;
deleteglueref(curval);curval:=v;end{:451};
if curvallevel<>3 then muerror;end else scansomethinginternal(1,false);
v:=curval;goto 40;end;if mu then goto 45;
if scankeyword(708)then v:=({558:}fontinfo[6+parambase[eqtb[3934].hh.rh]
].int{:558})else if scankeyword(709)then v:=({559:}fontinfo[5+parambase[
eqtb[3934].hh.rh]].int{:559})else goto 45;{443:}begin getxtoken;
if curcmd<>10 then backinput;end{:443};
40:curval:=multandadd(savecurval,v,xnoverd(v,f,65536),1073741823);
goto 89;45:{:455};
if mu then{456:}if scankeyword(337)then goto 88 else begin begin if
interaction=3 then;printnl(262);print(705);end;print(710);
begin helpptr:=4;helpline[3]:=711;helpline[2]:=712;helpline[1]:=713;
helpline[0]:=714;end;error;goto 88;end{:456};
if scankeyword(704)then{457:}begin preparemag;
if eqtb[5280].int<>1000 then begin curval:=xnoverd(curval,1000,eqtb[5280
].int);f:=(1000*f+65536*remainder)div eqtb[5280].int;
curval:=curval+(f div 65536);f:=f mod 65536;end;end{:457};
if scankeyword(397)then goto 88;
{458:}if scankeyword(715)then begin num:=7227;denom:=100;
end else if scankeyword(716)then begin num:=12;denom:=1;
end else if scankeyword(717)then begin num:=7227;denom:=254;
end else if scankeyword(718)then begin num:=7227;denom:=2540;
end else if scankeyword(719)then begin num:=7227;denom:=7200;
end else if scankeyword(720)then begin num:=1238;denom:=1157;
end else if scankeyword(721)then begin num:=14856;denom:=1157;
end else if scankeyword(722)then goto 30 else{459:}begin begin if
interaction=3 then;printnl(262);print(705);end;print(723);
begin helpptr:=6;helpline[5]:=724;helpline[4]:=725;helpline[3]:=726;
helpline[2]:=712;helpline[1]:=713;helpline[0]:=714;end;error;goto 32;
end{:459};curval:=xnoverd(curval,num,denom);
f:=(num*f+65536*remainder)div denom;curval:=curval+(f div 65536);
f:=f mod 65536;32:{:458};
88:if curval>=16384 then aritherror:=true else curval:=curval*65536+f;
30:{:453};{443:}begin getxtoken;if curcmd<>10 then backinput;end{:443};
89:if aritherror or(abs(curval)>=1073741824)then{460:}begin begin if
interaction=3 then;printnl(262);print(727);end;begin helpptr:=2;
helpline[1]:=728;helpline[0]:=729;end;error;curval:=1073741823;
aritherror:=false;end{:460};if negative then curval:=-curval;end;
{:448}{461:}procedure scanglue(level:smallnumber);label 10;
var negative:boolean;q:halfword;mu:boolean;begin mu:=(level=3);
{441:}negative:=false;repeat{406:}repeat getxtoken;
until curcmd<>10{:406};if curtok=3117 then begin negative:=not negative;
curtok:=3115;end;until curtok<>3115{:441};
if(curcmd>=68)and(curcmd<=89)then begin scansomethinginternal(level,
negative);
if curvallevel>=2 then begin if curvallevel<>level then muerror;goto 10;
end;if curvallevel=0 then scandimen(mu,false,true)else if level=3 then
muerror;end else begin backinput;scandimen(mu,false,false);
if negative then curval:=-curval;end;{462:}q:=newspec(0);
mem[q+1].int:=curval;
if scankeyword(730)then begin scandimen(mu,true,false);
mem[q+2].int:=curval;mem[q].hh.b0:=curorder;end;
if scankeyword(731)then begin scandimen(mu,true,false);
mem[q+3].int:=curval;mem[q].hh.b1:=curorder;end;curval:=q{:462};10:end;
{:461}{463:}function scanrulespec:halfword;label 21;var q:halfword;
begin q:=newrule;
if curcmd=35 then mem[q+1].int:=26214 else begin mem[q+3].int:=26214;
mem[q+2].int:=0;end;
21:if scankeyword(732)then begin scandimen(false,false,false);
mem[q+1].int:=curval;goto 21;end;
if scankeyword(733)then begin scandimen(false,false,false);
mem[q+3].int:=curval;goto 21;end;
if scankeyword(734)then begin scandimen(false,false,false);
mem[q+2].int:=curval;goto 21;end;scanrulespec:=q;end;
{:463}{464:}function strtoks(b:poolpointer):halfword;var p:halfword;
q:halfword;t:halfword;k:poolpointer;
begin begin if poolptr+1>poolsize then overflow(257,poolsize-initpoolptr
);end;p:=29997;mem[p].hh.rh:=0;k:=b;
while k<poolptr do begin t:=strpool[k];
if t=32 then t:=2592 else t:=3072+t;begin begin q:=avail;
if q=0 then q:=getavail else begin avail:=mem[q].hh.rh;mem[q].hh.rh:=0;
{dynused:=dynused+1;}end;end;mem[p].hh.rh:=q;mem[q].hh.lh:=t;p:=q;end;
k:=k+1;end;poolptr:=b;strtoks:=p;end;
{:464}{465:}function thetoks:halfword;var oldsetting:0..21;
p,q,r:halfword;b:poolpointer;begin getxtoken;
scansomethinginternal(5,false);
if curvallevel>=4 then{466:}begin p:=29997;mem[p].hh.rh:=0;
if curvallevel=4 then begin q:=getavail;mem[p].hh.rh:=q;
mem[q].hh.lh:=4095+curval;p:=q;
end else if curval<>0 then begin r:=mem[curval].hh.rh;
while r<>0 do begin begin begin q:=avail;
if q=0 then q:=getavail else begin avail:=mem[q].hh.rh;mem[q].hh.rh:=0;
{dynused:=dynused+1;}end;end;mem[p].hh.rh:=q;mem[q].hh.lh:=mem[r].hh.lh;
p:=q;end;r:=mem[r].hh.rh;end;end;thetoks:=p;
end{:466}else begin oldsetting:=selector;selector:=21;b:=poolptr;
case curvallevel of 0:printint(curval);1:begin printscaled(curval);
print(397);end;2:begin printspec(curval,397);deleteglueref(curval);end;
3:begin printspec(curval,337);deleteglueref(curval);end;end;
selector:=oldsetting;thetoks:=strtoks(b);end;end;
{:465}{467:}procedure insthetoks;begin mem[29988].hh.rh:=thetoks;
begintokenlist(mem[29997].hh.rh,4);end;{:467}{470:}procedure convtoks;
var oldsetting:0..21;c:0..5;savescannerstatus:smallnumber;b:poolpointer;
begin c:=curchr;{471:}case c of 0,1:scanint;
2,3:begin savescannerstatus:=scannerstatus;scannerstatus:=0;gettoken;
scannerstatus:=savescannerstatus;end;4:scanfontident;
5:if jobname=0 then openlogfile;end{:471};oldsetting:=selector;
selector:=21;b:=poolptr;{472:}case c of 0:printint(curval);
1:printromanint(curval);
2:if curcs<>0 then sprintcs(curcs)else printchar(curchr);3:printmeaning;
4:begin print(fontname[curval]);
if fontsize[curval]<>fontdsize[curval]then begin print(741);
printscaled(fontsize[curval]);print(397);end;end;5:print(jobname);
end{:472};selector:=oldsetting;mem[29988].hh.rh:=strtoks(b);
begintokenlist(mem[29997].hh.rh,4);end;
{:470}{473:}function scantoks(macrodef,xpand:boolean):halfword;
label 40,22,30,31,32;var t:halfword;s:halfword;p:halfword;q:halfword;
unbalance:halfword;hashbrace:halfword;
begin if macrodef then scannerstatus:=2 else scannerstatus:=5;
warningindex:=curcs;defref:=getavail;mem[defref].hh.lh:=0;p:=defref;
hashbrace:=0;t:=3120;
if macrodef then{474:}begin while true do begin 22:gettoken;
if curtok<768 then goto 31;if curcmd=6 then{476:}begin s:=3328+curchr;
gettoken;if curtok<512 then begin hashbrace:=curtok;begin q:=getavail;
mem[p].hh.rh:=q;mem[q].hh.lh:=curtok;p:=q;end;begin q:=getavail;
mem[p].hh.rh:=q;mem[q].hh.lh:=3584;p:=q;end;goto 30;end;
if t=3129 then begin begin if interaction=3 then;printnl(262);
print(744);end;begin helpptr:=2;helpline[1]:=745;helpline[0]:=746;end;
error;goto 22;end else begin t:=t+1;
if curtok<>t then begin begin if interaction=3 then;printnl(262);
print(747);end;begin helpptr:=2;helpline[1]:=748;helpline[0]:=749;end;
backerror;end;curtok:=s;end;end{:476};begin q:=getavail;mem[p].hh.rh:=q;
mem[q].hh.lh:=curtok;p:=q;end;end;31:begin q:=getavail;mem[p].hh.rh:=q;
mem[q].hh.lh:=3584;p:=q;end;
if curcmd=2 then{475:}begin begin if interaction=3 then;printnl(262);
print(657);end;alignstate:=alignstate+1;begin helpptr:=2;
helpline[1]:=742;helpline[0]:=743;end;error;goto 40;end{:475};
30:end{:474}else scanleftbrace;{477:}unbalance:=1;
while true do begin if xpand then{478:}begin while true do begin getnext
;if curcmd<=100 then goto 32;
if curcmd<>109 then expand else begin q:=thetoks;
if mem[29997].hh.rh<>0 then begin mem[p].hh.rh:=mem[29997].hh.rh;p:=q;
end;end;end;32:xtoken end{:478}else gettoken;
if curtok<768 then if curcmd<2 then unbalance:=unbalance+1 else begin
unbalance:=unbalance-1;if unbalance=0 then goto 40;
end else if curcmd=6 then if macrodef then{479:}begin s:=curtok;
if xpand then getxtoken else gettoken;
if curcmd<>6 then if(curtok<=3120)or(curtok>t)then begin begin if
interaction=3 then;printnl(262);print(750);end;sprintcs(warningindex);
begin helpptr:=3;helpline[2]:=751;helpline[1]:=752;helpline[0]:=753;end;
backerror;curtok:=s;end else curtok:=1232+curchr;end{:479};
begin q:=getavail;mem[p].hh.rh:=q;mem[q].hh.lh:=curtok;p:=q;end;
end{:477};40:scannerstatus:=0;if hashbrace<>0 then begin q:=getavail;
mem[p].hh.rh:=q;mem[q].hh.lh:=hashbrace;p:=q;end;scantoks:=p;end;
{:473}{482:}procedure readtoks(n:integer;r:halfword);label 30;
var p:halfword;q:halfword;s:integer;m:smallnumber;
begin scannerstatus:=2;warningindex:=r;defref:=getavail;
mem[defref].hh.lh:=0;p:=defref;begin q:=getavail;mem[p].hh.rh:=q;
mem[q].hh.lh:=3584;p:=q;end;if(n<0)or(n>15)then m:=16 else m:=n;
s:=alignstate;alignstate:=1000000;repeat{483:}beginfilereading;
curinput.namefield:=m+1;
if readopen[m]=2 then{484:}if interaction>1 then if n<0 then begin;
print(338);terminput;end else begin;println;sprintcs(r);begin;print(61);
terminput;end;n:=-1;
end else fatalerror(754){:484}else if readopen[m]=1 then{485:}if inputln
(readfile[m],false)then readopen[m]:=0 else begin aclose(readfile[m]);
readopen[m]:=2;
end{:485}else{486:}begin if not inputln(readfile[m],true)then begin
aclose(readfile[m]);readopen[m]:=2;
if alignstate<>1000000 then begin runaway;begin if interaction=3 then;
printnl(262);print(755);end;printesc(534);begin helpptr:=1;
helpline[0]:=756;end;alignstate:=1000000;curinput.limitfield:=0;error;
end;end;end{:486};curinput.limitfield:=last;
if(eqtb[5311].int<0)or(eqtb[5311].int>255)then curinput.limitfield:=
curinput.limitfield-1 else buffer[curinput.limitfield]:=eqtb[5311].int;
first:=curinput.limitfield+1;curinput.locfield:=curinput.startfield;
curinput.statefield:=33;while true do begin gettoken;
if curtok=0 then goto 30;
if alignstate<1000000 then begin repeat gettoken;until curtok=0;
alignstate:=1000000;goto 30;end;begin q:=getavail;mem[p].hh.rh:=q;
mem[q].hh.lh:=curtok;p:=q;end;end;30:endfilereading{:483};
until alignstate=1000000;curval:=defref;scannerstatus:=0;alignstate:=s;
end;{:482}{494:}procedure passtext;label 30;var l:integer;
savescannerstatus:smallnumber;begin savescannerstatus:=scannerstatus;
scannerstatus:=1;l:=0;skipline:=line;while true do begin getnext;
if curcmd=106 then begin if l=0 then goto 30;if curchr=2 then l:=l-1;
end else if curcmd=105 then l:=l+1;end;
30:scannerstatus:=savescannerstatus;end;
{:494}{497:}procedure changeiflimit(l:smallnumber;p:halfword);label 10;
var q:halfword;begin if p=condptr then iflimit:=l else begin q:=condptr;
while true do begin if q=0 then confusion(757);
if mem[q].hh.rh=p then begin mem[q].hh.b0:=l;goto 10;end;
q:=mem[q].hh.rh;end;end;10:end;{:497}{498:}procedure conditional;
label 10,50;var b:boolean;r:60..62;m,n:integer;p,q:halfword;
savescannerstatus:smallnumber;savecondptr:halfword;thisif:smallnumber;
begin{495:}begin p:=getnode(2);mem[p].hh.rh:=condptr;
mem[p].hh.b0:=iflimit;mem[p].hh.b1:=curif;mem[p+1].int:=ifline;
condptr:=p;curif:=curchr;iflimit:=1;ifline:=line;end{:495};
savecondptr:=condptr;thisif:=curchr;
{501:}case thisif of 0,1:{506:}begin begin getxtoken;
if curcmd=0 then if curchr=257 then begin curcmd:=13;
curchr:=curtok-4096;end;end;if(curcmd>13)or(curchr>255)then begin m:=0;
n:=256;end else begin m:=curcmd;n:=curchr;end;begin getxtoken;
if curcmd=0 then if curchr=257 then begin curcmd:=13;
curchr:=curtok-4096;end;end;
if(curcmd>13)or(curchr>255)then begin curcmd:=0;curchr:=256;end;
if thisif=0 then b:=(n=curchr)else b:=(m=curcmd);end{:506};
2,3:{503:}begin if thisif=2 then scanint else scandimen(false,false,
false);n:=curval;{406:}repeat getxtoken;until curcmd<>10{:406};
if(curtok>=3132)and(curtok<=3134)then r:=curtok-3072 else begin begin if
interaction=3 then;printnl(262);print(781);end;printcmdchr(105,thisif);
begin helpptr:=1;helpline[0]:=782;end;backerror;r:=61;end;
if thisif=2 then scanint else scandimen(false,false,false);
case r of 60:b:=(n<curval);61:b:=(n=curval);62:b:=(n>curval);end;
end{:503};4:{504:}begin scanint;b:=odd(curval);end{:504};
5:b:=(abs(curlist.modefield)=1);6:b:=(abs(curlist.modefield)=102);
7:b:=(abs(curlist.modefield)=203);8:b:=(curlist.modefield<0);
9,10,11:{505:}begin scaneightbitint;p:=eqtb[3678+curval].hh.rh;
if thisif=9 then b:=(p=0)else if p=0 then b:=false else if thisif=10
then b:=(mem[p].hh.b0=0)else b:=(mem[p].hh.b0=1);end{:505};
12:{507:}begin savescannerstatus:=scannerstatus;scannerstatus:=0;
getnext;n:=curcs;p:=curcmd;q:=curchr;getnext;
if curcmd<>p then b:=false else if curcmd<111 then b:=(curchr=q)else
{508:}begin p:=mem[curchr].hh.rh;q:=mem[eqtb[n].hh.rh].hh.rh;
if p=q then b:=true else begin while(p<>0)and(q<>0)do if mem[p].hh.lh<>
mem[q].hh.lh then p:=0 else begin p:=mem[p].hh.rh;q:=mem[q].hh.rh;end;
b:=((p=0)and(q=0));end;end{:508};scannerstatus:=savescannerstatus;
end{:507};13:begin scanfourbitint;b:=(readopen[curval]=2);end;
14:b:=true;15:b:=false;16:{509:}begin scanint;n:=curval;
if eqtb[5299].int>1 then begin begindiagnostic;print(783);printint(n);
printchar(125);enddiagnostic(false);end;while n<>0 do begin passtext;
if condptr=savecondptr then if curchr=4 then n:=n-1 else goto 50 else if
curchr=2 then{496:}begin p:=condptr;ifline:=mem[p+1].int;
curif:=mem[p].hh.b1;iflimit:=mem[p].hh.b0;condptr:=mem[p].hh.rh;
freenode(p,2);end{:496};end;changeiflimit(4,savecondptr);goto 10;
end{:509};end{:501};if eqtb[5299].int>1 then{502:}begin begindiagnostic;
if b then print(779)else print(780);enddiagnostic(false);end{:502};
if b then begin changeiflimit(3,savecondptr);goto 10;end;
{500:}while true do begin passtext;
if condptr=savecondptr then begin if curchr<>4 then goto 50;
begin if interaction=3 then;printnl(262);print(777);end;printesc(775);
begin helpptr:=1;helpline[0]:=778;end;error;
end else if curchr=2 then{496:}begin p:=condptr;ifline:=mem[p+1].int;
curif:=mem[p].hh.b1;iflimit:=mem[p].hh.b0;condptr:=mem[p].hh.rh;
freenode(p,2);end{:496};end{:500};
50:if curchr=2 then{496:}begin p:=condptr;ifline:=mem[p+1].int;
curif:=mem[p].hh.b1;iflimit:=mem[p].hh.b0;condptr:=mem[p].hh.rh;
freenode(p,2);end{:496}else iflimit:=2;10:end;
{:498}{515:}procedure beginname;begin areadelimiter:=0;extdelimiter:=0;
end;{:515}{516:}function morename(c:ASCIIcode):boolean;
begin if c=32 then morename:=false else begin begin if poolptr+1>
poolsize then overflow(257,poolsize-initpoolptr);end;
begin strpool[poolptr]:=c;poolptr:=poolptr+1;end;
if(c=62)or(c=58)then begin areadelimiter:=(poolptr-strstart[strptr]);
extdelimiter:=0;
end else if(c=46)and(extdelimiter=0)then extdelimiter:=(poolptr-strstart
[strptr]);morename:=true;end;end;{:516}{517:}procedure endname;
begin if strptr+3>maxstrings then overflow(258,maxstrings-initstrptr);
if areadelimiter=0 then curarea:=338 else begin curarea:=strptr;
strstart[strptr+1]:=strstart[strptr]+areadelimiter;strptr:=strptr+1;end;
if extdelimiter=0 then begin curext:=338;curname:=makestring;
end else begin curname:=strptr;
strstart[strptr+1]:=strstart[strptr]+extdelimiter-areadelimiter-1;
strptr:=strptr+1;curext:=makestring;end;end;
{:517}{519:}procedure packfilename(n,a,e:strnumber);var k:integer;
c:ASCIIcode;j:poolpointer;begin k:=0;
for j:=strstart[a]to strstart[a+1]-1 do begin c:=strpool[j];k:=k+1;
if k<=filenamesize then nameoffile[k]:=xchr[c];end;
for j:=strstart[n]to strstart[n+1]-1 do begin c:=strpool[j];k:=k+1;
if k<=filenamesize then nameoffile[k]:=xchr[c];end;
for j:=strstart[e]to strstart[e+1]-1 do begin c:=strpool[j];k:=k+1;
if k<=filenamesize then nameoffile[k]:=xchr[c];end;
if k<=filenamesize then namelength:=k else namelength:=filenamesize;
for k:=namelength+1 to filenamesize do nameoffile[k]:=' ';end;
{:519}{523:}procedure packbufferedname(n:smallnumber;a,b:integer);
var k:integer;c:ASCIIcode;j:integer;
begin if n+b-a+5>filenamesize then b:=a+filenamesize-n-5;k:=0;
for j:=1 to n do begin c:=xord[TEXformatdefault[j]];k:=k+1;
if k<=filenamesize then nameoffile[k]:=xchr[c];end;
for j:=a to b do begin c:=buffer[j];k:=k+1;
if k<=filenamesize then nameoffile[k]:=xchr[c];end;
for j:=17 to 20 do begin c:=xord[TEXformatdefault[j]];k:=k+1;
if k<=filenamesize then nameoffile[k]:=xchr[c];end;
if k<=filenamesize then namelength:=k else namelength:=filenamesize;
for k:=namelength+1 to filenamesize do nameoffile[k]:=' ';end;
{:523}{525:}function makenamestring:strnumber;var k:1..filenamesize;
begin if(poolptr+namelength>poolsize)or(strptr=maxstrings)or((poolptr-
strstart[strptr])>0)then makenamestring:=63 else begin for k:=1 to
namelength do begin strpool[poolptr]:=xord[nameoffile[k]];
poolptr:=poolptr+1;end;makenamestring:=makestring;end;end;
function amakenamestring(var f:alphafile):strnumber;
begin amakenamestring:=makenamestring;end;
function bmakenamestring(var f:bytefile):strnumber;
begin bmakenamestring:=makenamestring;end;
function wmakenamestring(var f:wordfile):strnumber;
begin wmakenamestring:=makenamestring;end;
{:525}{526:}procedure scanfilename;label 30;begin nameinprogress:=true;
beginname;{406:}repeat getxtoken;until curcmd<>10{:406};
while true do begin if(curcmd>12)or(curchr>255)then begin backinput;
goto 30;end;if not morename(curchr)then goto 30;getxtoken;end;
30:endname;nameinprogress:=false;end;
{:526}{529:}procedure packjobname(s:strnumber);begin curarea:=338;
curext:=s;curname:=jobname;packfilename(curname,curarea,curext);end;
{:529}{530:}procedure promptfilename(s,e:strnumber);label 30;
var k:0..bufsize;begin if interaction=2 then;
if s=787 then begin if interaction=3 then;printnl(262);print(788);
end else begin if interaction=3 then;printnl(262);print(789);end;
printfilename(curname,curarea,curext);print(790);
if e=791 then showcontext;printnl(792);print(s);
if interaction<2 then fatalerror(793);;begin;print(568);terminput;end;
{531:}begin beginname;k:=first;while(buffer[k]=32)and(k<last)do k:=k+1;
while true do begin if k=last then goto 30;
if not morename(buffer[k])then goto 30;k:=k+1;end;30:endname;end{:531};
if curext=338 then curext:=e;packfilename(curname,curarea,curext);end;
{:530}{534:}procedure openlogfile;var oldsetting:0..21;k:0..bufsize;
l:0..bufsize;months:packed array[1..36]of char;
begin oldsetting:=selector;if jobname=0 then jobname:=796;
packjobname(797);while not aopenout(logfile)do{535:}begin selector:=17;
promptfilename(799,797);end{:535};logname:=amakenamestring(logfile);
selector:=18;logopened:=true;{536:}begin;slowprint(formatident);
print(800);printint(sysday);printchar(32);
months:='JANFEBMARAPRMAYJUNJULAUGSEPOCTNOVDEC';
for k:=3*sysmonth-2 to 3*sysmonth do;printchar(32);printint(sysyear);
printchar(32);printtwo(systime div 60);printchar(58);
printtwo(systime mod 60);end{:536};inputstack[inputptr]:=curinput;
printnl(798);l:=inputstack[0].limitfield;
if buffer[l]=eqtb[5311].int then l:=l-1;
for k:=1 to l do print(buffer[k]);println;selector:=oldsetting+2;end;
{:534}{537:}procedure startinput;label 30;begin scanfilename;
if curext=338 then curext:=791;packfilename(curname,curarea,curext);
while true do begin beginfilereading;
if aopenin(inputfile[curinput.indexfield])then goto 30;
if curarea=338 then begin packfilename(curname,784,curext);
if aopenin(inputfile[curinput.indexfield])then goto 30;end;
endfilereading;promptfilename(787,791);end;
30:curinput.namefield:=amakenamestring(inputfile[curinput.indexfield]);
if jobname=0 then begin jobname:=curname;openlogfile;end;
if termoffset+(strstart[curinput.namefield+1]-strstart[curinput.
namefield])>maxprintline-2 then println else if(termoffset>0)or(
fileoffset>0)then printchar(32);printchar(40);openparens:=openparens+1;
slowprint(curinput.namefield);;curinput.statefield:=33;
if curinput.namefield=strptr-1 then begin begin strptr:=strptr-1;
poolptr:=strstart[strptr];end;curinput.namefield:=curname;end;
{538:}begin line:=1;
if inputln(inputfile[curinput.indexfield],false)then;firmuptheline;
if(eqtb[5311].int<0)or(eqtb[5311].int>255)then curinput.limitfield:=
curinput.limitfield-1 else buffer[curinput.limitfield]:=eqtb[5311].int;
first:=curinput.limitfield+1;curinput.locfield:=curinput.startfield;
end{:538};end;{:537}{560:}function readfontinfo(u:halfword;
nom,aire:strnumber;s:scaled):internalfontnumber;label 30,11,45;
var k:fontindex;fileopened:boolean;
lf,lh,bc,ec,nw,nh,nd,ni,nl,nk,ne,np:halfword;f:internalfontnumber;
g:internalfontnumber;a,b,c,d:eightbits;qw:fourquarters;sw:scaled;
bchlabel:integer;bchar:0..256;z:scaled;alpha:integer;beta:1..16;
begin g:=0;{562:}{563:}fileopened:=false;
if aire=338 then packfilename(nom,785,811)else packfilename(nom,aire,811
);if not bopenin(tfmfile)then goto 11;fileopened:=true{:563};
{565:}begin begin lf:=tfmbyte(tfmfile);if lf>127 then goto 11;
tfmfile.pos:=tfmfile.pos+2;lf:=lf*256+tfmbyte(tfmfile);end;
tfmfile.pos:=tfmfile.pos+2;begin lh:=tfmbyte(tfmfile);
if lh>127 then goto 11;tfmfile.pos:=tfmfile.pos+2;
lh:=lh*256+tfmbyte(tfmfile);end;tfmfile.pos:=tfmfile.pos+2;
begin bc:=tfmbyte(tfmfile);if bc>127 then goto 11;
tfmfile.pos:=tfmfile.pos+2;bc:=bc*256+tfmbyte(tfmfile);end;
tfmfile.pos:=tfmfile.pos+2;begin ec:=tfmbyte(tfmfile);
if ec>127 then goto 11;tfmfile.pos:=tfmfile.pos+2;
ec:=ec*256+tfmbyte(tfmfile);end;if(bc>ec+1)or(ec>255)then goto 11;
if bc>255 then begin bc:=1;ec:=0;end;tfmfile.pos:=tfmfile.pos+2;
begin nw:=tfmbyte(tfmfile);if nw>127 then goto 11;
tfmfile.pos:=tfmfile.pos+2;nw:=nw*256+tfmbyte(tfmfile);end;
tfmfile.pos:=tfmfile.pos+2;begin nh:=tfmbyte(tfmfile);
if nh>127 then goto 11;tfmfile.pos:=tfmfile.pos+2;
nh:=nh*256+tfmbyte(tfmfile);end;tfmfile.pos:=tfmfile.pos+2;
begin nd:=tfmbyte(tfmfile);if nd>127 then goto 11;
tfmfile.pos:=tfmfile.pos+2;nd:=nd*256+tfmbyte(tfmfile);end;
tfmfile.pos:=tfmfile.pos+2;begin ni:=tfmbyte(tfmfile);
if ni>127 then goto 11;tfmfile.pos:=tfmfile.pos+2;
ni:=ni*256+tfmbyte(tfmfile);end;tfmfile.pos:=tfmfile.pos+2;
begin nl:=tfmbyte(tfmfile);if nl>127 then goto 11;
tfmfile.pos:=tfmfile.pos+2;nl:=nl*256+tfmbyte(tfmfile);end;
tfmfile.pos:=tfmfile.pos+2;begin nk:=tfmbyte(tfmfile);
if nk>127 then goto 11;tfmfile.pos:=tfmfile.pos+2;
nk:=nk*256+tfmbyte(tfmfile);end;tfmfile.pos:=tfmfile.pos+2;
begin ne:=tfmbyte(tfmfile);if ne>127 then goto 11;
tfmfile.pos:=tfmfile.pos+2;ne:=ne*256+tfmbyte(tfmfile);end;
tfmfile.pos:=tfmfile.pos+2;begin np:=tfmbyte(tfmfile);
if np>127 then goto 11;tfmfile.pos:=tfmfile.pos+2;
np:=np*256+tfmbyte(tfmfile);end;
if lf<>6+lh+(ec-bc+1)+nw+nh+nd+ni+nl+nk+ne+np then goto 11;
if(nw=0)or(nh=0)or(nd=0)or(ni=0)then goto 11;end{:565};
{566:}lf:=lf-6-lh;if np<7 then lf:=lf+7-np;
if(fontptr=fontmax)or(fmemptr+lf>fontmemsize)then{567:}begin begin if
interaction=3 then;printnl(262);print(802);end;sprintcs(u);
printchar(61);printfilename(nom,aire,338);if s>=0 then begin print(741);
printscaled(s);print(397);end else if s<>-1000 then begin print(803);
printint(-s);end;print(812);begin helpptr:=4;helpline[3]:=813;
helpline[2]:=814;helpline[1]:=815;helpline[0]:=816;end;error;goto 30;
end{:567};f:=fontptr+1;charbase[f]:=fmemptr-bc;
widthbase[f]:=charbase[f]+ec+1;heightbase[f]:=widthbase[f]+nw;
depthbase[f]:=heightbase[f]+nh;italicbase[f]:=depthbase[f]+nd;
ligkernbase[f]:=italicbase[f]+ni;
kernbase[f]:=ligkernbase[f]+nl-256*(128);
extenbase[f]:=kernbase[f]+256*(128)+nk;
parambase[f]:=extenbase[f]+ne{:566};{568:}begin if lh<2 then goto 11;
begin tfmfile.pos:=tfmfile.pos+2;a:=tfmbyte(tfmfile);qw.b0:=a+0;
tfmfile.pos:=tfmfile.pos+2;b:=tfmbyte(tfmfile);qw.b1:=b+0;
tfmfile.pos:=tfmfile.pos+2;c:=tfmbyte(tfmfile);qw.b2:=c+0;
tfmfile.pos:=tfmfile.pos+2;d:=tfmbyte(tfmfile);qw.b3:=d+0;
fontcheck[f]:=qw;end;tfmfile.pos:=tfmfile.pos+2;
begin z:=tfmbyte(tfmfile);if z>127 then goto 11;
tfmfile.pos:=tfmfile.pos+2;z:=z*256+tfmbyte(tfmfile);end;
tfmfile.pos:=tfmfile.pos+2;z:=z*256+tfmbyte(tfmfile);
tfmfile.pos:=tfmfile.pos+2;z:=(z*16)+(tfmbyte(tfmfile)div 16);
if z<65536 then goto 11;while lh>2 do begin tfmfile.pos:=tfmfile.pos+2;
tfmfile.pos:=tfmfile.pos+2;tfmfile.pos:=tfmfile.pos+2;
tfmfile.pos:=tfmfile.pos+2;lh:=lh-1;end;fontdsize[f]:=z;
if s<>-1000 then if s>=0 then z:=s else z:=xnoverd(z,-s,1000);
fontsize[f]:=z;end{:568};
{569:}for k:=fmemptr to widthbase[f]-1 do begin begin tfmfile.pos:=
tfmfile.pos+2;a:=tfmbyte(tfmfile);qw.b0:=a+0;tfmfile.pos:=tfmfile.pos+2;
b:=tfmbyte(tfmfile);qw.b1:=b+0;tfmfile.pos:=tfmfile.pos+2;
c:=tfmbyte(tfmfile);qw.b2:=c+0;tfmfile.pos:=tfmfile.pos+2;
d:=tfmbyte(tfmfile);qw.b3:=d+0;fontinfo[k].qqqq:=qw;end;
if(a>=nw)or(b div 16>=nh)or(b mod 16>=nd)or(c div 4>=ni)then goto 11;
begin if ((c mod 4>=1)and(c mod 4<=3)) then case c mod 4 of 1:if d>=nl then goto 11;3:if d>=ne then goto 11;
2:{570:}begin begin if(d<bc)or(d>ec)then goto 11 end;
while d<k+bc-fmemptr do begin qw:=fontinfo[charbase[f]+d].qqqq;
if((qw.b2-0)mod 4)<>2 then goto 45;d:=qw.b3-0;end;
if d=k+bc-fmemptr then goto 11;45:end{:570} end end;end{:569};
{571:}begin{572:}begin alpha:=16;while z>=8388608 do begin z:=z div 2;
alpha:=alpha+alpha;end;beta:=256 div alpha;alpha:=alpha*z;end{:572};
for k:=widthbase[f]to ligkernbase[f]-1 do begin tfmfile.pos:=tfmfile.pos
+2;a:=tfmbyte(tfmfile);tfmfile.pos:=tfmfile.pos+2;b:=tfmbyte(tfmfile);
tfmfile.pos:=tfmfile.pos+2;c:=tfmbyte(tfmfile);
tfmfile.pos:=tfmfile.pos+2;d:=tfmbyte(tfmfile);
sw:=(((((d*z)div 256)+(c*z))div 256)+(b*z))div beta;
if a=0 then fontinfo[k].int:=sw else if a=255 then fontinfo[k].int:=sw-
alpha else goto 11;end;if fontinfo[widthbase[f]].int<>0 then goto 11;
if fontinfo[heightbase[f]].int<>0 then goto 11;
if fontinfo[depthbase[f]].int<>0 then goto 11;
if fontinfo[italicbase[f]].int<>0 then goto 11;end{:571};
{573:}bchlabel:=32767;bchar:=256;
if nl>0 then begin for k:=ligkernbase[f]to kernbase[f]+256*(128)-1 do
begin begin tfmfile.pos:=tfmfile.pos+2;a:=tfmbyte(tfmfile);qw.b0:=a+0;
tfmfile.pos:=tfmfile.pos+2;b:=tfmbyte(tfmfile);qw.b1:=b+0;
tfmfile.pos:=tfmfile.pos+2;c:=tfmbyte(tfmfile);qw.b2:=c+0;
tfmfile.pos:=tfmfile.pos+2;d:=tfmbyte(tfmfile);qw.b3:=d+0;
fontinfo[k].qqqq:=qw;end;
if a>128 then begin if 256*c+d>=nl then goto 11;
if a=255 then if k=ligkernbase[f]then bchar:=b;
end else begin if b<>bchar then begin begin if(b<bc)or(b>ec)then goto 11
end;qw:=fontinfo[charbase[f]+b].qqqq;if not(qw.b0>0)then goto 11;end;
if c<128 then begin begin if(d<bc)or(d>ec)then goto 11 end;
qw:=fontinfo[charbase[f]+d].qqqq;if not(qw.b0>0)then goto 11;
end else if 256*(c-128)+d>=nk then goto 11;
if a<128 then if k-ligkernbase[f]+a+1>=nl then goto 11;end;end;
if a=255 then bchlabel:=256*c+d;end;
for k:=kernbase[f]+256*(128)to extenbase[f]-1 do begin tfmfile.pos:=
tfmfile.pos+2;a:=tfmbyte(tfmfile);tfmfile.pos:=tfmfile.pos+2;
b:=tfmbyte(tfmfile);tfmfile.pos:=tfmfile.pos+2;c:=tfmbyte(tfmfile);
tfmfile.pos:=tfmfile.pos+2;d:=tfmbyte(tfmfile);
sw:=(((((d*z)div 256)+(c*z))div 256)+(b*z))div beta;
if a=0 then fontinfo[k].int:=sw else if a=255 then fontinfo[k].int:=sw-
alpha else goto 11;end;{:573};
{574:}for k:=extenbase[f]to parambase[f]-1 do begin begin tfmfile.pos:=
tfmfile.pos+2;a:=tfmbyte(tfmfile);qw.b0:=a+0;tfmfile.pos:=tfmfile.pos+2;
b:=tfmbyte(tfmfile);qw.b1:=b+0;tfmfile.pos:=tfmfile.pos+2;
c:=tfmbyte(tfmfile);qw.b2:=c+0;tfmfile.pos:=tfmfile.pos+2;
d:=tfmbyte(tfmfile);qw.b3:=d+0;fontinfo[k].qqqq:=qw;end;
if a<>0 then begin begin if(a<bc)or(a>ec)then goto 11 end;
qw:=fontinfo[charbase[f]+a].qqqq;if not(qw.b0>0)then goto 11;end;
if b<>0 then begin begin if(b<bc)or(b>ec)then goto 11 end;
qw:=fontinfo[charbase[f]+b].qqqq;if not(qw.b0>0)then goto 11;end;
if c<>0 then begin begin if(c<bc)or(c>ec)then goto 11 end;
qw:=fontinfo[charbase[f]+c].qqqq;if not(qw.b0>0)then goto 11;end;
begin begin if(d<bc)or(d>ec)then goto 11 end;
qw:=fontinfo[charbase[f]+d].qqqq;if not(qw.b0>0)then goto 11;end;
end{:574};
{575:}begin for k:=1 to np do if k=1 then begin tfmfile.pos:=tfmfile.pos
+2;sw:=tfmbyte(tfmfile);if sw>127 then sw:=sw-256;
tfmfile.pos:=tfmfile.pos+2;sw:=sw*256+tfmbyte(tfmfile);
tfmfile.pos:=tfmfile.pos+2;sw:=sw*256+tfmbyte(tfmfile);
tfmfile.pos:=tfmfile.pos+2;
fontinfo[parambase[f]].int:=(sw*16)+(tfmbyte(tfmfile)div 16);
end else begin tfmfile.pos:=tfmfile.pos+2;a:=tfmbyte(tfmfile);
tfmfile.pos:=tfmfile.pos+2;b:=tfmbyte(tfmfile);
tfmfile.pos:=tfmfile.pos+2;c:=tfmbyte(tfmfile);
tfmfile.pos:=tfmfile.pos+2;d:=tfmbyte(tfmfile);
sw:=(((((d*z)div 256)+(c*z))div 256)+(b*z))div beta;
if a=0 then fontinfo[parambase[f]+k-1].int:=sw else if a=255 then
fontinfo[parambase[f]+k-1].int:=sw-alpha else goto 11;end;
if tfmfile.pos>tfmfile.last then goto 11;
for k:=np+1 to 7 do fontinfo[parambase[f]+k-1].int:=0;end{:575};
{576:}if np>=7 then fontparams[f]:=np else fontparams[f]:=7;
hyphenchar[f]:=eqtb[5309].int;skewchar[f]:=eqtb[5310].int;
if bchlabel<nl then bcharlabel[f]:=bchlabel+ligkernbase[f]else
bcharlabel[f]:=0;fontbchar[f]:=bchar+0;fontfalsebchar[f]:=bchar+0;
if bchar<=ec then if bchar>=bc then begin qw:=fontinfo[charbase[f]+bchar
].qqqq;if(qw.b0>0)then fontfalsebchar[f]:=256;end;fontname[f]:=nom;
fontarea[f]:=aire;fontbc[f]:=bc;fontec[f]:=ec;fontglue[f]:=0;
charbase[f]:=charbase[f]-0;widthbase[f]:=widthbase[f]-0;
ligkernbase[f]:=ligkernbase[f]-0;kernbase[f]:=kernbase[f]-0;
extenbase[f]:=extenbase[f]-0;parambase[f]:=parambase[f]-1;
fmemptr:=fmemptr+lf;fontptr:=f;g:=f;goto 30{:576}{:562};
11:{561:}begin if interaction=3 then;printnl(262);print(802);end;
sprintcs(u);printchar(61);printfilename(nom,aire,338);
if s>=0 then begin print(741);printscaled(s);print(397);
end else if s<>-1000 then begin print(803);printint(-s);end;
if fileopened then print(804)else print(805);begin helpptr:=5;
helpline[4]:=806;helpline[3]:=807;helpline[2]:=808;helpline[1]:=809;
helpline[0]:=810;end;error{:561};30:if fileopened then bclose(tfmfile);
readfontinfo:=g;end;
{:560}{581:}procedure charwarning(f:internalfontnumber;c:eightbits);
begin if eqtb[5298].int>0 then begin begindiagnostic;printnl(825);
print(c);print(826);slowprint(fontname[f]);printchar(33);
enddiagnostic(false);end;end;
{:581}{582:}function newcharacter(f:internalfontnumber;
c:eightbits):halfword;label 10;var p:halfword;
begin if fontbc[f]<=c then if fontec[f]>=c then if(fontinfo[charbase[f]+
c+0].qqqq.b0>0)then begin p:=getavail;mem[p].hh.b0:=f;mem[p].hh.b1:=c+0;
newcharacter:=p;goto 10;end;charwarning(f,c);newcharacter:=0;10:end;
{:582}{597:}procedure writedvi(a,b:dviindex);var k:dviindex;
begin for k:=a to b do begin if dvitotal>=20000 then overflow(827,20000)
;dvitotal:=dvitotal+1;dvidata[dvitotal]:=dvibuf[k];end;end;
{:597}{598:}procedure dviswap;
begin if dvilimit=dvibufsize then begin writedvi(0,halfbuf-1);
dvilimit:=halfbuf;dvioffset:=dvioffset+dvibufsize;dviptr:=0;
end else begin writedvi(halfbuf,dvibufsize-1);dvilimit:=dvibufsize;end;
dvigone:=dvigone+halfbuf;end;{:598}{600:}procedure dvifour(x:integer);
begin if x>=0 then begin dvibuf[dviptr]:=x div 16777216;
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;
end else begin x:=x+1073741824;x:=x+1073741824;
begin dvibuf[dviptr]:=(x div 16777216)+128;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;end;x:=x mod 16777216;
begin dvibuf[dviptr]:=x div 65536;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;x:=x mod 65536;
begin dvibuf[dviptr]:=x div 256;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;begin dvibuf[dviptr]:=x mod 256;
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;end;
{:600}{601:}procedure dvipop(l:integer);
begin if(l=dvioffset+dviptr)and(dviptr>0)then dviptr:=dviptr-1 else
begin dvibuf[dviptr]:=142;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;end;
{:601}{602:}procedure dvifontdef(f:internalfontnumber);
var k:poolpointer;begin begin dvibuf[dviptr]:=243;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;begin dvibuf[dviptr]:=f-1;
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;
begin dvibuf[dviptr]:=fontcheck[f].b0-0;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;
begin dvibuf[dviptr]:=fontcheck[f].b1-0;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;
begin dvibuf[dviptr]:=fontcheck[f].b2-0;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;
begin dvibuf[dviptr]:=fontcheck[f].b3-0;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;dvifour(fontsize[f]);
dvifour(fontdsize[f]);
begin dvibuf[dviptr]:=(strstart[fontarea[f]+1]-strstart[fontarea[f]]);
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;
begin dvibuf[dviptr]:=(strstart[fontname[f]+1]-strstart[fontname[f]]);
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;
{603:}for k:=strstart[fontarea[f]]to strstart[fontarea[f]+1]-1 do begin
dvibuf[dviptr]:=strpool[k];dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;
for k:=strstart[fontname[f]]to strstart[fontname[f]+1]-1 do begin dvibuf
[dviptr]:=strpool[k];dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;
end{:603};end;{:602}{607:}procedure movement(w:scaled;o:eightbits);
label 10,40,45,2,1;var mstate:smallnumber;p,q:halfword;k:integer;
begin q:=getnode(3);mem[q+1].int:=w;mem[q+2].int:=dvioffset+dviptr;
if o=157 then begin mem[q].hh.rh:=downptr;downptr:=q;
end else begin mem[q].hh.rh:=rightptr;rightptr:=q;end;
{611:}p:=mem[q].hh.rh;mstate:=0;
while p<>0 do begin if mem[p+1].int=w then{612:}begin if ((mstate+mem[p].hh.lh>=1)and(mstate+mem[p].hh.lh<=5))or(mstate+mem[p].hh.lh=8)or(mstate+mem[p].hh.lh=9)or(mstate+mem[p].hh.lh=11)or(mstate+mem[p].hh.lh=13)or(mstate+mem[p].hh.lh=15)or(mstate+mem[p].hh.lh=16) then case mstate+mem[p].hh.lh of 3,4,15,16:if mem[p+2].int<dvigone then goto 45 else{613:}begin k:=mem
[p+2].int-dvioffset;if k<0 then k:=k+dvibufsize;dvibuf[k]:=dvibuf[k]+5;
mem[p].hh.lh:=1;goto 40;end{:613};
5,9,11:if mem[p+2].int<dvigone then goto 45 else{614:}begin k:=mem[p+2].
int-dvioffset;if k<0 then k:=k+dvibufsize;dvibuf[k]:=dvibuf[k]+10;
mem[p].hh.lh:=2;goto 40;end{:614};1,2,8,13:goto 40 end end{:612}else begin if (mstate+mem[p].hh.lh=1)or(mstate+mem[p].hh.lh=2)or(mstate+mem[p].hh.lh=8)or(mstate+mem[p].hh.lh=13) then case mstate+mem[p].hh.lh of 1:mstate:=6;
2:mstate:=12;8,13:goto 45 end end;p:=mem[p].hh.rh;end;45:{:611};
{610:}mem[q].hh.lh:=3;
if abs(w)>=8388608 then begin begin dvibuf[dviptr]:=o+3;
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;dvifour(w);goto 10;
end;if abs(w)>=32768 then begin begin dvibuf[dviptr]:=o+2;
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;
if w<0 then w:=w+16777216;begin dvibuf[dviptr]:=w div 65536;
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;w:=w mod 65536;
goto 2;end;if abs(w)>=128 then begin begin dvibuf[dviptr]:=o+1;
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;
if w<0 then w:=w+65536;goto 2;end;begin dvibuf[dviptr]:=o;
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;
if w<0 then w:=w+256;goto 1;2:begin dvibuf[dviptr]:=w div 256;
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;
1:begin dvibuf[dviptr]:=w mod 256;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;goto 10{:610};
40:{609:}mem[q].hh.lh:=mem[p].hh.lh;
if mem[q].hh.lh=1 then begin begin dvibuf[dviptr]:=o+4;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;
while mem[q].hh.rh<>p do begin q:=mem[q].hh.rh;
begin if (mem[q].hh.lh=3)or(mem[q].hh.lh=4) then case mem[q].hh.lh of 3:mem[q].hh.lh:=5;4:mem[q].hh.lh:=6 end end;end;
end else begin begin dvibuf[dviptr]:=o+9;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;
while mem[q].hh.rh<>p do begin q:=mem[q].hh.rh;
begin if (mem[q].hh.lh=3)or(mem[q].hh.lh=5) then case mem[q].hh.lh of 3:mem[q].hh.lh:=4;5:mem[q].hh.lh:=6 end end;end;
end{:609};10:end;{:607}{615:}procedure prunemovements(l:integer);
label 30,10;var p:halfword;
begin while downptr<>0 do begin if mem[downptr+2].int<l then goto 30;
p:=downptr;downptr:=mem[p].hh.rh;freenode(p,3);end;
30:while rightptr<>0 do begin if mem[rightptr+2].int<l then goto 10;
p:=rightptr;rightptr:=mem[p].hh.rh;freenode(p,3);end;10:end;
{:615}{618:}procedure vlistout;forward;
{:618}{619:}{1368:}procedure specialout(p:halfword);
var oldsetting:0..21;k:poolpointer;
begin if curh<>dvih then begin movement(curh-dvih,143);dvih:=curh;end;
if curv<>dviv then begin movement(curv-dviv,157);dviv:=curv;end;
oldsetting:=selector;selector:=21;
showtokenlist(mem[mem[p+1].hh.rh].hh.rh,0,poolsize-poolptr);
selector:=oldsetting;
begin if poolptr+1>poolsize then overflow(257,poolsize-initpoolptr);end;
if(poolptr-strstart[strptr])<256 then begin begin dvibuf[dviptr]:=239;
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;
begin dvibuf[dviptr]:=(poolptr-strstart[strptr]);dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;
end else begin begin dvibuf[dviptr]:=242;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;dvifour((poolptr-strstart[strptr]));
end;
for k:=strstart[strptr]to poolptr-1 do begin dvibuf[dviptr]:=strpool[k];
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;
poolptr:=strstart[strptr];end;
{:1368}{1370:}procedure writeout(p:halfword);var oldsetting:0..21;
oldmode:integer;j:smallnumber;q,r:halfword;begin{1371:}q:=getavail;
mem[q].hh.lh:=637;r:=getavail;mem[q].hh.rh:=r;mem[r].hh.lh:=6717;
begintokenlist(q,4);begintokenlist(mem[p+1].hh.rh,15);q:=getavail;
mem[q].hh.lh:=379;begintokenlist(q,4);oldmode:=curlist.modefield;
curlist.modefield:=0;curcs:=writeloc;q:=scantoks(false,true);gettoken;
if curtok<>6717 then{1372:}begin begin if interaction=3 then;
printnl(262);print(1298);end;begin helpptr:=2;helpline[1]:=1299;
helpline[0]:=1013;end;error;repeat gettoken;until curtok=6717;
end{:1372};curlist.modefield:=oldmode;endtokenlist{:1371};
oldsetting:=selector;j:=mem[p+1].hh.lh;
if writeopen[j]then selector:=j else begin if(j=17)and(selector=19)then
selector:=18;printnl(338);end;tokenshow(defref);println;
flushlist(defref);selector:=oldsetting;end;
{:1370}{1373:}procedure outwhat(p:halfword);var j:smallnumber;
begin begin if ((mem[p].hh.b1>=0)and(mem[p].hh.b1<=4)) then case mem[p].hh.b1 of 0,1,2:{1374:}if not doingleaders then begin j
:=mem[p+1].hh.lh;
if mem[p].hh.b1=1 then writeout(p)else begin if writeopen[j]then aclose(
writefile[j]);
if mem[p].hh.b1=2 then writeopen[j]:=false else if j<16 then begin
curname:=mem[p+1].hh.rh;curarea:=mem[p+2].hh.lh;curext:=mem[p+2].hh.rh;
if curext=338 then curext:=791;packfilename(curname,curarea,curext);
while not aopenout(writefile[j])do promptfilename(1301,791);
writeopen[j]:=true;end;end;end{:1374};3:specialout(p);4: end else confusion(1300) end;end;{:1373}procedure hlistout;
label 21,13,14,15;var baseline:scaled;leftedge:scaled;
saveh,savev:scaled;thisbox:halfword;gorder:glueord;gsign:0..2;
p:halfword;saveloc:integer;leaderbox:halfword;leaderwd:scaled;lx:scaled;
outerdoingleaders:boolean;edge:scaled;gluetemp:real;curglue:real;
curg:scaled;begin curg:=0;curglue:=0.0;thisbox:=tempptr;
gorder:=mem[thisbox+5].hh.b1;gsign:=mem[thisbox+5].hh.b0;
p:=mem[thisbox+5].hh.rh;curs:=curs+1;
if curs>0 then begin dvibuf[dviptr]:=141;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;if curs>maxpush then maxpush:=curs;
saveloc:=dvioffset+dviptr;baseline:=curv;leftedge:=curh;
while p<>0 do{620:}21:if(p>=himemmin)then begin if curh<>dvih then begin
movement(curh-dvih,143);dvih:=curh;end;
if curv<>dviv then begin movement(curv-dviv,157);dviv:=curv;end;
repeat f:=mem[p].hh.b0;c:=mem[p].hh.b1;
if f<>dvif then{621:}begin if not fontused[f]then begin dvifontdef(f);
fontused[f]:=true;end;if f<=64 then begin dvibuf[dviptr]:=f+170;
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;
end else begin begin dvibuf[dviptr]:=235;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;begin dvibuf[dviptr]:=f-1;
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;end;dvif:=f;
end{:621};if c>=128 then begin dvibuf[dviptr]:=128;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;begin dvibuf[dviptr]:=c-0;
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;
curh:=curh+fontinfo[widthbase[f]+fontinfo[charbase[f]+c].qqqq.b0].int;
p:=mem[p].hh.rh;until not(p>=himemmin);dvih:=curh;
end else{622:}begin begin if ((mem[p].hh.b0>=0)and(mem[p].hh.b0<=2))or(mem[p].hh.b0=6)or((mem[p].hh.b0>=8)and(mem[p].hh.b0<=11)) then case mem[p].hh.b0 of 0,1:{623:}if mem[p+5].hh.rh=0
then curh:=curh+mem[p+1].int else begin saveh:=dvih;savev:=dviv;
curv:=baseline+mem[p+4].int;tempptr:=p;edge:=curh;
if mem[p].hh.b0=1 then vlistout else hlistout;dvih:=saveh;dviv:=savev;
curh:=edge+mem[p+1].int;curv:=baseline;end{:623};
2:begin ruleht:=mem[p+3].int;ruledp:=mem[p+2].int;rulewd:=mem[p+1].int;
goto 14;end;8:{1367:}outwhat(p){:1367};10:{625:}begin g:=mem[p+1].hh.lh;
rulewd:=mem[g+1].int-curg;
if gsign<>0 then begin if gsign=1 then begin if mem[g].hh.b0=gorder then
begin curglue:=curglue+mem[g+2].int;gluetemp:=mem[thisbox+6].gr*curglue;
if gluetemp>1000000000.0 then gluetemp:=1000000000.0 else if gluetemp<
-1000000000.0 then gluetemp:=-1000000000.0;curg:=round(gluetemp);end;
end else if mem[g].hh.b1=gorder then begin curglue:=curglue-mem[g+3].int
;gluetemp:=mem[thisbox+6].gr*curglue;
if gluetemp>1000000000.0 then gluetemp:=1000000000.0 else if gluetemp<
-1000000000.0 then gluetemp:=-1000000000.0;curg:=round(gluetemp);end;
end;rulewd:=rulewd+curg;
if mem[p].hh.b1>=100 then{626:}begin leaderbox:=mem[p+1].hh.rh;
if mem[leaderbox].hh.b0=2 then begin ruleht:=mem[leaderbox+3].int;
ruledp:=mem[leaderbox+2].int;goto 14;end;leaderwd:=mem[leaderbox+1].int;
if(leaderwd>0)and(rulewd>0)then begin rulewd:=rulewd+10;
edge:=curh+rulewd;lx:=0;
{627:}if mem[p].hh.b1=100 then begin saveh:=curh;
curh:=leftedge+leaderwd*((curh-leftedge)div leaderwd);
if curh<saveh then curh:=curh+leaderwd;
end else begin lq:=rulewd div leaderwd;lr:=rulewd mod leaderwd;
if mem[p].hh.b1=101 then curh:=curh+(lr div 2)else begin lx:=lr div(lq+1
);curh:=curh+((lr-(lq-1)*lx)div 2);end;end{:627};
while curh+leaderwd<=edge do{628:}begin curv:=baseline+mem[leaderbox+4].
int;if curv<>dviv then begin movement(curv-dviv,157);dviv:=curv;end;
savev:=dviv;if curh<>dvih then begin movement(curh-dvih,143);dvih:=curh;
end;saveh:=dvih;tempptr:=leaderbox;outerdoingleaders:=doingleaders;
doingleaders:=true;
if mem[leaderbox].hh.b0=1 then vlistout else hlistout;
doingleaders:=outerdoingleaders;dviv:=savev;dvih:=saveh;curv:=baseline;
curh:=saveh+leaderwd+lx;end{:628};curh:=edge-10;goto 15;end;end{:626};
goto 13;end{:625};11,9:curh:=curh+mem[p+1].int;
6:{652:}begin mem[29988]:=mem[p+1];mem[29988].hh.rh:=mem[p].hh.rh;
p:=29988;goto 21;end{:652} end end;goto 15;
14:{624:}if(ruleht=-1073741824)then ruleht:=mem[thisbox+3].int;
if(ruledp=-1073741824)then ruledp:=mem[thisbox+2].int;
ruleht:=ruleht+ruledp;
if(ruleht>0)and(rulewd>0)then begin if curh<>dvih then begin movement(
curh-dvih,143);dvih:=curh;end;curv:=baseline+ruledp;
if curv<>dviv then begin movement(curv-dviv,157);dviv:=curv;end;
begin dvibuf[dviptr]:=132;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;dvifour(ruleht);dvifour(rulewd);
curv:=baseline;dvih:=dvih+rulewd;end{:624};13:curh:=curh+rulewd;
15:p:=mem[p].hh.rh;end{:622}{:620};prunemovements(saveloc);
if curs>0 then dvipop(saveloc);curs:=curs-1;end;
{:619}{629:}procedure vlistout;label 13,14,15;var leftedge:scaled;
topedge:scaled;saveh,savev:scaled;thisbox:halfword;gorder:glueord;
gsign:0..2;p:halfword;saveloc:integer;leaderbox:halfword;
leaderht:scaled;lx:scaled;outerdoingleaders:boolean;edge:scaled;
gluetemp:real;curglue:real;curg:scaled;begin curg:=0;curglue:=0.0;
thisbox:=tempptr;gorder:=mem[thisbox+5].hh.b1;
gsign:=mem[thisbox+5].hh.b0;p:=mem[thisbox+5].hh.rh;curs:=curs+1;
if curs>0 then begin dvibuf[dviptr]:=141;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;if curs>maxpush then maxpush:=curs;
saveloc:=dvioffset+dviptr;leftedge:=curh;curv:=curv-mem[thisbox+3].int;
topedge:=curv;
while p<>0 do{630:}begin if(p>=himemmin)then confusion(829)else{631:}
begin begin if ((mem[p].hh.b0>=0)and(mem[p].hh.b0<=2))or(mem[p].hh.b0=8)or(mem[p].hh.b0=10)or(mem[p].hh.b0=11) then case mem[p].hh.b0 of 0,1:{632:}if mem[p+5].hh.rh=0 then curv:=curv
+mem[p+3].int+mem[p+2].int else begin curv:=curv+mem[p+3].int;
if curv<>dviv then begin movement(curv-dviv,157);dviv:=curv;end;
saveh:=dvih;savev:=dviv;curh:=leftedge+mem[p+4].int;tempptr:=p;
if mem[p].hh.b0=1 then vlistout else hlistout;dvih:=saveh;dviv:=savev;
curv:=savev+mem[p+2].int;curh:=leftedge;end{:632};
2:begin ruleht:=mem[p+3].int;ruledp:=mem[p+2].int;rulewd:=mem[p+1].int;
goto 14;end;8:{1366:}outwhat(p){:1366};10:{634:}begin g:=mem[p+1].hh.lh;
ruleht:=mem[g+1].int-curg;
if gsign<>0 then begin if gsign=1 then begin if mem[g].hh.b0=gorder then
begin curglue:=curglue+mem[g+2].int;gluetemp:=mem[thisbox+6].gr*curglue;
if gluetemp>1000000000.0 then gluetemp:=1000000000.0 else if gluetemp<
-1000000000.0 then gluetemp:=-1000000000.0;curg:=round(gluetemp);end;
end else if mem[g].hh.b1=gorder then begin curglue:=curglue-mem[g+3].int
;gluetemp:=mem[thisbox+6].gr*curglue;
if gluetemp>1000000000.0 then gluetemp:=1000000000.0 else if gluetemp<
-1000000000.0 then gluetemp:=-1000000000.0;curg:=round(gluetemp);end;
end;ruleht:=ruleht+curg;
if mem[p].hh.b1>=100 then{635:}begin leaderbox:=mem[p+1].hh.rh;
if mem[leaderbox].hh.b0=2 then begin rulewd:=mem[leaderbox+1].int;
ruledp:=0;goto 14;end;
leaderht:=mem[leaderbox+3].int+mem[leaderbox+2].int;
if(leaderht>0)and(ruleht>0)then begin ruleht:=ruleht+10;
edge:=curv+ruleht;lx:=0;
{636:}if mem[p].hh.b1=100 then begin savev:=curv;
curv:=topedge+leaderht*((curv-topedge)div leaderht);
if curv<savev then curv:=curv+leaderht;
end else begin lq:=ruleht div leaderht;lr:=ruleht mod leaderht;
if mem[p].hh.b1=101 then curv:=curv+(lr div 2)else begin lx:=lr div(lq+1
);curv:=curv+((lr-(lq-1)*lx)div 2);end;end{:636};
while curv+leaderht<=edge do{637:}begin curh:=leftedge+mem[leaderbox+4].
int;if curh<>dvih then begin movement(curh-dvih,143);dvih:=curh;end;
saveh:=dvih;curv:=curv+mem[leaderbox+3].int;
if curv<>dviv then begin movement(curv-dviv,157);dviv:=curv;end;
savev:=dviv;tempptr:=leaderbox;outerdoingleaders:=doingleaders;
doingleaders:=true;
if mem[leaderbox].hh.b0=1 then vlistout else hlistout;
doingleaders:=outerdoingleaders;dviv:=savev;dvih:=saveh;curh:=leftedge;
curv:=savev-mem[leaderbox+3].int+leaderht+lx;end{:637};curv:=edge-10;
goto 15;end;end{:635};goto 13;end{:634};11:curv:=curv+mem[p+1].int end end;goto 15;
14:{633:}if(rulewd=-1073741824)then rulewd:=mem[thisbox+1].int;
ruleht:=ruleht+ruledp;curv:=curv+ruleht;
if(ruleht>0)and(rulewd>0)then begin if curh<>dvih then begin movement(
curh-dvih,143);dvih:=curh;end;
if curv<>dviv then begin movement(curv-dviv,157);dviv:=curv;end;
begin dvibuf[dviptr]:=137;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;dvifour(ruleht);dvifour(rulewd);end;
goto 15{:633};13:curv:=curv+ruleht;end{:631};15:p:=mem[p].hh.rh;
end{:630};prunemovements(saveloc);if curs>0 then dvipop(saveloc);
curs:=curs-1;end;{:629}{638:}procedure shipout(p:halfword);label 30;
var pageloc:integer;j,k:0..9;s:poolpointer;oldsetting:0..21;
begin if eqtb[5297].int>0 then begin printnl(338);println;print(830);
end;if termoffset>maxprintline-9 then println else if(termoffset>0)or(
fileoffset>0)then printchar(32);printchar(91);j:=9;
while(eqtb[5318+j].int=0)and(j>0)do j:=j-1;
for k:=0 to j do begin printint(eqtb[5318+k].int);
if k<j then printchar(46);end;;
if eqtb[5297].int>0 then begin printchar(93);begindiagnostic;showbox(p);
enddiagnostic(true);end;
{640:}{641:}if(mem[p+3].int>1073741823)or(mem[p+2].int>1073741823)or(mem
[p+3].int+mem[p+2].int+eqtb[5849].int>1073741823)or(mem[p+1].int+eqtb[
5848].int>1073741823)then begin begin if interaction=3 then;
printnl(262);print(834);end;begin helpptr:=2;helpline[1]:=835;
helpline[0]:=836;end;error;
if eqtb[5297].int<=0 then begin begindiagnostic;printnl(837);showbox(p);
enddiagnostic(true);end;goto 30;end;
if mem[p+3].int+mem[p+2].int+eqtb[5849].int>maxv then maxv:=mem[p+3].int
+mem[p+2].int+eqtb[5849].int;
if mem[p+1].int+eqtb[5848].int>maxh then maxh:=mem[p+1].int+eqtb[5848].
int{:641};{617:}dvih:=0;dviv:=0;curh:=eqtb[5848].int;dvif:=0;
if outputfilename=0 then begin if jobname=0 then openlogfile;
packjobname(794);while not bopenout(dvifile)do promptfilename(795,794);
outputfilename:=bmakenamestring(dvifile);end;
if totalpages=0 then begin begin dvibuf[dviptr]:=247;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;begin dvibuf[dviptr]:=2;
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;dvifour(25400000);
dvifour(473628672);preparemag;dvifour(eqtb[5280].int);
oldsetting:=selector;selector:=21;print(828);printint(eqtb[5286].int);
printchar(46);printtwo(eqtb[5285].int);printchar(46);
printtwo(eqtb[5284].int);printchar(58);printtwo(eqtb[5283].int div 60);
printtwo(eqtb[5283].int mod 60);selector:=oldsetting;
begin dvibuf[dviptr]:=(poolptr-strstart[strptr]);dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;
for s:=strstart[strptr]to poolptr-1 do begin dvibuf[dviptr]:=strpool[s];
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;
poolptr:=strstart[strptr];end{:617};pageloc:=dvioffset+dviptr;
begin dvibuf[dviptr]:=139;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;
for k:=0 to 9 do dvifour(eqtb[5318+k].int);dvifour(lastbop);
lastbop:=pageloc;curv:=mem[p+3].int+eqtb[5849].int;tempptr:=p;
if mem[p].hh.b0=1 then vlistout else hlistout;begin dvibuf[dviptr]:=140;
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;
totalpages:=totalpages+1;curs:=-1;30:{:640};
if eqtb[5297].int<=0 then printchar(93);deadcycles:=0;;
{639:}{if eqtb[5294].int>1 then begin printnl(831);printint(varused);
printchar(38);printint(dynused);printchar(59);end;}flushnodelist(p);
{if eqtb[5294].int>1 then begin print(832);printint(varused);
printchar(38);printint(dynused);print(833);
printint(himemmin-lomemmax-1);println;end;}{:639};end;
{:638}{645:}procedure scanspec(c:groupcode;threecodes:boolean);label 40;
var s:integer;speccode:0..1;
begin if threecodes then s:=savestack[saveptr+0].int;
if scankeyword(843)then speccode:=0 else if scankeyword(844)then
speccode:=1 else begin speccode:=1;curval:=0;goto 40;end;
scandimen(false,false,false);
40:if threecodes then begin savestack[saveptr+0].int:=s;
saveptr:=saveptr+1;end;savestack[saveptr+0].int:=speccode;
savestack[saveptr+1].int:=curval;saveptr:=saveptr+2;newsavelevel(c);
scanleftbrace;end;{:645}{649:}function hpack(p:halfword;w:scaled;
m:smallnumber):halfword;label 21,50,10;var r:halfword;q:halfword;
h,d,x:scaled;s:scaled;g:halfword;o:glueord;f:internalfontnumber;
i:fourquarters;hd:eightbits;begin lastbadness:=0;r:=getnode(7);
mem[r].hh.b0:=0;mem[r].hh.b1:=0;mem[r+4].int:=0;q:=r+5;mem[q].hh.rh:=p;
h:=0;{650:}d:=0;x:=0;totalstretch[0]:=0;totalshrink[0]:=0;
totalstretch[1]:=0;totalshrink[1]:=0;totalstretch[2]:=0;
totalshrink[2]:=0;totalstretch[3]:=0;totalshrink[3]:=0{:650};
while p<>0 do{651:}begin 21:while(p>=himemmin)do{654:}begin f:=mem[p].hh
.b0;i:=fontinfo[charbase[f]+mem[p].hh.b1].qqqq;hd:=i.b1-0;
x:=x+fontinfo[widthbase[f]+i.b0].int;
s:=fontinfo[heightbase[f]+(hd)div 16].int;if s>h then h:=s;
s:=fontinfo[depthbase[f]+(hd)mod 16].int;if s>d then d:=s;
p:=mem[p].hh.rh;end{:654};
if p<>0 then begin begin if ((mem[p].hh.b0>=0)and(mem[p].hh.b0<=6))or((mem[p].hh.b0>=8)and(mem[p].hh.b0<=11))or(mem[p].hh.b0=13) then case mem[p].hh.b0 of 0,1,2,13:{653:}begin x:=x+mem[p
+1].int;if mem[p].hh.b0>=2 then s:=0 else s:=mem[p+4].int;
if mem[p+3].int-s>h then h:=mem[p+3].int-s;
if mem[p+2].int+s>d then d:=mem[p+2].int+s;end{:653};
3,4,5:if adjusttail<>0 then{655:}begin while mem[q].hh.rh<>p do q:=mem[q
].hh.rh;
if mem[p].hh.b0=5 then begin mem[adjusttail].hh.rh:=mem[p+1].int;
while mem[adjusttail].hh.rh<>0 do adjusttail:=mem[adjusttail].hh.rh;
p:=mem[p].hh.rh;freenode(mem[q].hh.rh,2);
end else begin mem[adjusttail].hh.rh:=p;adjusttail:=p;p:=mem[p].hh.rh;
end;mem[q].hh.rh:=p;p:=q;end{:655};8:{1360:}{:1360};
10:{656:}begin g:=mem[p+1].hh.lh;x:=x+mem[g+1].int;o:=mem[g].hh.b0;
totalstretch[o]:=totalstretch[o]+mem[g+2].int;o:=mem[g].hh.b1;
totalshrink[o]:=totalshrink[o]+mem[g+3].int;
if mem[p].hh.b1>=100 then begin g:=mem[p+1].hh.rh;
if mem[g+3].int>h then h:=mem[g+3].int;
if mem[g+2].int>d then d:=mem[g+2].int;end;end{:656};
11,9:x:=x+mem[p+1].int;6:{652:}begin mem[29988]:=mem[p+1];
mem[29988].hh.rh:=mem[p].hh.rh;p:=29988;goto 21;end{:652} end end;
p:=mem[p].hh.rh;end;end{:651};
if adjusttail<>0 then mem[adjusttail].hh.rh:=0;mem[r+3].int:=h;
mem[r+2].int:=d;{657:}if m=1 then w:=x+w;mem[r+1].int:=w;x:=w-x;
if x=0 then begin mem[r+5].hh.b0:=0;mem[r+5].hh.b1:=0;mem[r+6].gr:=0.0;
goto 10;
end else if x>0 then{658:}begin{659:}if totalstretch[3]<>0 then o:=3
else if totalstretch[2]<>0 then o:=2 else if totalstretch[1]<>0 then o:=
1 else o:=0{:659};mem[r+5].hh.b1:=o;mem[r+5].hh.b0:=1;
if totalstretch[o]<>0 then mem[r+6].gr:=x/totalstretch[o]else begin mem[
r+5].hh.b0:=0;mem[r+6].gr:=0.0;end;
if o=0 then if mem[r+5].hh.rh<>0 then{660:}begin lastbadness:=badness(x,
totalstretch[0]);if lastbadness>eqtb[5289].int then begin println;
if lastbadness>100 then printnl(845)else printnl(846);print(847);
printint(lastbadness);goto 50;end;end{:660};goto 10;
end{:658}else{664:}begin{665:}if totalshrink[3]<>0 then o:=3 else if
totalshrink[2]<>0 then o:=2 else if totalshrink[1]<>0 then o:=1 else o:=
0{:665};mem[r+5].hh.b1:=o;mem[r+5].hh.b0:=2;
if totalshrink[o]<>0 then mem[r+6].gr:=(-x)/totalshrink[o]else begin mem
[r+5].hh.b0:=0;mem[r+6].gr:=0.0;end;
if(totalshrink[o]<-x)and(o=0)and(mem[r+5].hh.rh<>0)then begin
lastbadness:=1000000;mem[r+6].gr:=1.0;
{666:}if(-x-totalshrink[0]>eqtb[5838].int)or(eqtb[5289].int<100)then
begin if(eqtb[5846].int>0)and(-x-totalshrink[0]>eqtb[5838].int)then
begin while mem[q].hh.rh<>0 do q:=mem[q].hh.rh;mem[q].hh.rh:=newrule;
mem[mem[q].hh.rh+1].int:=eqtb[5846].int;end;println;printnl(853);
printscaled(-x-totalshrink[0]);print(854);goto 50;end{:666};
end else if o=0 then if mem[r+5].hh.rh<>0 then{667:}begin lastbadness:=
badness(-x,totalshrink[0]);
if lastbadness>eqtb[5289].int then begin println;printnl(855);
printint(lastbadness);goto 50;end;end{:667};goto 10;end{:664}{:657};
50:{663:}if outputactive then print(848)else begin if packbeginline<>0
then begin if packbeginline>0 then print(849)else print(850);
printint(abs(packbeginline));print(851);end else print(852);
printint(line);end;println;fontinshortdisplay:=0;
shortdisplay(mem[r+5].hh.rh);println;begindiagnostic;showbox(r);
enddiagnostic(true){:663};10:hpack:=r;end;
{:649}{668:}function vpackage(p:halfword;h:scaled;m:smallnumber;
l:scaled):halfword;label 50,10;var r:halfword;w,d,x:scaled;s:scaled;
g:halfword;o:glueord;begin lastbadness:=0;r:=getnode(7);mem[r].hh.b0:=1;
mem[r].hh.b1:=0;mem[r+4].int:=0;mem[r+5].hh.rh:=p;w:=0;{650:}d:=0;x:=0;
totalstretch[0]:=0;totalshrink[0]:=0;totalstretch[1]:=0;
totalshrink[1]:=0;totalstretch[2]:=0;totalshrink[2]:=0;
totalstretch[3]:=0;totalshrink[3]:=0{:650};
while p<>0 do{669:}begin if(p>=himemmin)then confusion(856)else begin if ((mem [p].hh.b0>=0)and(mem [p].hh.b0<=2))or(mem [p].hh.b0=8)or(mem [p].hh.b0=10)or(mem [p].hh.b0=11)or(mem [p].hh.b0=13) then case mem [p].hh.b0 of 0,1,2,13:{670:}begin x:=x+d+mem[p+3].int;d:=mem[p+2].int;
if mem[p].hh.b0>=2 then s:=0 else s:=mem[p+4].int;
if mem[p+1].int+s>w then w:=mem[p+1].int+s;end{:670};8:{1359:}{:1359};
10:{671:}begin x:=x+d;d:=0;g:=mem[p+1].hh.lh;x:=x+mem[g+1].int;
o:=mem[g].hh.b0;totalstretch[o]:=totalstretch[o]+mem[g+2].int;
o:=mem[g].hh.b1;totalshrink[o]:=totalshrink[o]+mem[g+3].int;
if mem[p].hh.b1>=100 then begin g:=mem[p+1].hh.rh;
if mem[g+1].int>w then w:=mem[g+1].int;end;end{:671};
11:begin x:=x+d+mem[p+1].int;d:=0;end end end;p:=mem[p].hh.rh;
end{:669};mem[r+1].int:=w;if d>l then begin x:=x+d-l;mem[r+2].int:=l;
end else mem[r+2].int:=d;{672:}if m=1 then h:=x+h;mem[r+3].int:=h;
x:=h-x;if x=0 then begin mem[r+5].hh.b0:=0;mem[r+5].hh.b1:=0;
mem[r+6].gr:=0.0;goto 10;
end else if x>0 then{673:}begin{659:}if totalstretch[3]<>0 then o:=3
else if totalstretch[2]<>0 then o:=2 else if totalstretch[1]<>0 then o:=
1 else o:=0{:659};mem[r+5].hh.b1:=o;mem[r+5].hh.b0:=1;
if totalstretch[o]<>0 then mem[r+6].gr:=x/totalstretch[o]else begin mem[
r+5].hh.b0:=0;mem[r+6].gr:=0.0;end;
if o=0 then if mem[r+5].hh.rh<>0 then{674:}begin lastbadness:=badness(x,
totalstretch[0]);if lastbadness>eqtb[5290].int then begin println;
if lastbadness>100 then printnl(845)else printnl(846);print(857);
printint(lastbadness);goto 50;end;end{:674};goto 10;
end{:673}else{676:}begin{665:}if totalshrink[3]<>0 then o:=3 else if
totalshrink[2]<>0 then o:=2 else if totalshrink[1]<>0 then o:=1 else o:=
0{:665};mem[r+5].hh.b1:=o;mem[r+5].hh.b0:=2;
if totalshrink[o]<>0 then mem[r+6].gr:=(-x)/totalshrink[o]else begin mem
[r+5].hh.b0:=0;mem[r+6].gr:=0.0;end;
if(totalshrink[o]<-x)and(o=0)and(mem[r+5].hh.rh<>0)then begin
lastbadness:=1000000;mem[r+6].gr:=1.0;
{677:}if(-x-totalshrink[0]>eqtb[5839].int)or(eqtb[5290].int<100)then
begin println;printnl(858);printscaled(-x-totalshrink[0]);print(859);
goto 50;end{:677};
end else if o=0 then if mem[r+5].hh.rh<>0 then{678:}begin lastbadness:=
badness(-x,totalshrink[0]);
if lastbadness>eqtb[5290].int then begin println;printnl(860);
printint(lastbadness);goto 50;end;end{:678};goto 10;end{:676}{:672};
50:{675:}if outputactive then print(848)else begin if packbeginline<>0
then begin print(850);printint(abs(packbeginline));print(851);
end else print(852);printint(line);println;end;begindiagnostic;
showbox(r);enddiagnostic(true){:675};10:vpackage:=r;end;
{:668}{679:}procedure appendtovlist(b:halfword);var d:scaled;p:halfword;
begin if curlist.auxfield.int>-65536000 then begin d:=mem[eqtb[2883].hh.
rh+1].int-curlist.auxfield.int-mem[b+3].int;
if d<eqtb[5832].int then p:=newparamglue(0)else begin p:=newskipparam(1)
;mem[tempptr+1].int:=d;end;mem[curlist.tailfield].hh.rh:=p;
curlist.tailfield:=p;end;mem[curlist.tailfield].hh.rh:=b;
curlist.tailfield:=b;curlist.auxfield.int:=mem[b+2].int;end;
{:679}{686:}function newnoad:halfword;var p:halfword;
begin p:=getnode(4);mem[p].hh.b0:=16;mem[p].hh.b1:=0;
mem[p+1].hh:=emptyfield;mem[p+3].hh:=emptyfield;mem[p+2].hh:=emptyfield;
newnoad:=p;end;{:686}{688:}function newstyle(s:smallnumber):halfword;
var p:halfword;begin p:=getnode(3);mem[p].hh.b0:=14;mem[p].hh.b1:=s;
mem[p+1].int:=0;mem[p+2].int:=0;newstyle:=p;end;
{:688}{689:}function newchoice:halfword;var p:halfword;
begin p:=getnode(3);mem[p].hh.b0:=15;mem[p].hh.b1:=0;mem[p+1].hh.lh:=0;
mem[p+1].hh.rh:=0;mem[p+2].hh.lh:=0;mem[p+2].hh.rh:=0;newchoice:=p;end;
{:689}{693:}procedure showinfo;begin shownodelist(mem[tempptr].hh.lh);
end;{:693}{704:}function fractionrule(t:scaled):halfword;var p:halfword;
begin p:=newrule;mem[p+3].int:=t;mem[p+2].int:=0;fractionrule:=p;end;
{:704}{705:}function overbar(b:halfword;k,t:scaled):halfword;
var p,q:halfword;begin p:=newkern(k);mem[p].hh.rh:=b;q:=fractionrule(t);
mem[q].hh.rh:=p;p:=newkern(t);mem[p].hh.rh:=q;
overbar:=vpackage(p,0,1,1073741823);end;
{:705}{706:}{709:}function charbox(f:internalfontnumber;
c:quarterword):halfword;var q:fourquarters;hd:eightbits;b,p:halfword;
begin q:=fontinfo[charbase[f]+c].qqqq;hd:=q.b1-0;b:=newnullbox;
mem[b+1].int:=fontinfo[widthbase[f]+q.b0].int+fontinfo[italicbase[f]+(q.
b2-0)div 4].int;mem[b+3].int:=fontinfo[heightbase[f]+(hd)div 16].int;
mem[b+2].int:=fontinfo[depthbase[f]+(hd)mod 16].int;p:=getavail;
mem[p].hh.b1:=c;mem[p].hh.b0:=f;mem[b+5].hh.rh:=p;charbox:=b;end;
{:709}{711:}procedure stackintobox(b:halfword;f:internalfontnumber;
c:quarterword);var p:halfword;begin p:=charbox(f,c);
mem[p].hh.rh:=mem[b+5].hh.rh;mem[b+5].hh.rh:=p;
mem[b+3].int:=mem[p+3].int;end;
{:711}{712:}function heightplusdepth(f:internalfontnumber;
c:quarterword):scaled;var q:fourquarters;hd:eightbits;
begin q:=fontinfo[charbase[f]+c].qqqq;hd:=q.b1-0;
heightplusdepth:=fontinfo[heightbase[f]+(hd)div 16].int+fontinfo[
depthbase[f]+(hd)mod 16].int;end;{:712}function vardelimiter(d:halfword;
s:smallnumber;v:scaled):halfword;label 40,22;var b:halfword;
f,g:internalfontnumber;c,x,y:quarterword;m,n:integer;u:scaled;w:scaled;
q:fourquarters;hd:eightbits;r:fourquarters;z:smallnumber;
largeattempt:boolean;begin f:=0;w:=0;largeattempt:=false;
z:=mem[d].qqqq.b0;x:=mem[d].qqqq.b1;
while true do begin{707:}if(z<>0)or(x<>0)then begin z:=z+s+16;
repeat z:=z-16;g:=eqtb[3935+z].hh.rh;if g<>0 then{708:}begin y:=x;
if(y-0>=fontbc[g])and(y-0<=fontec[g])then begin 22:q:=fontinfo[charbase[
g]+y].qqqq;if(q.b0>0)then begin if((q.b2-0)mod 4)=3 then begin f:=g;
c:=y;goto 40;end;hd:=q.b1-0;
u:=fontinfo[heightbase[g]+(hd)div 16].int+fontinfo[depthbase[g]+(hd)mod
16].int;if u>w then begin f:=g;c:=y;w:=u;if u>=v then goto 40;end;
if((q.b2-0)mod 4)=2 then begin y:=q.b3;goto 22;end;end;end;end{:708};
until z<16;end{:707};if largeattempt then goto 40;largeattempt:=true;
z:=mem[d].qqqq.b2;x:=mem[d].qqqq.b3;end;
40:if f<>0 then{710:}if((q.b2-0)mod 4)=3 then{713:}begin b:=newnullbox;
mem[b].hh.b0:=1;r:=fontinfo[extenbase[f]+q.b3].qqqq;{714:}c:=r.b3;
u:=heightplusdepth(f,c);w:=0;q:=fontinfo[charbase[f]+c].qqqq;
mem[b+1].int:=fontinfo[widthbase[f]+q.b0].int+fontinfo[italicbase[f]+(q.
b2-0)div 4].int;c:=r.b2;if c<>0 then w:=w+heightplusdepth(f,c);c:=r.b1;
if c<>0 then w:=w+heightplusdepth(f,c);c:=r.b0;
if c<>0 then w:=w+heightplusdepth(f,c);n:=0;
if u>0 then while w<v do begin w:=w+u;n:=n+1;if r.b1<>0 then w:=w+u;
end{:714};c:=r.b2;if c<>0 then stackintobox(b,f,c);c:=r.b3;
for m:=1 to n do stackintobox(b,f,c);c:=r.b1;
if c<>0 then begin stackintobox(b,f,c);c:=r.b3;
for m:=1 to n do stackintobox(b,f,c);end;c:=r.b0;
if c<>0 then stackintobox(b,f,c);mem[b+2].int:=w-mem[b+3].int;
end{:713}else b:=charbox(f,c){:710}else begin b:=newnullbox;
mem[b+1].int:=eqtb[5841].int;end;
mem[b+4].int:=half(mem[b+3].int-mem[b+2].int)-fontinfo[22+parambase[eqtb
[3937+s].hh.rh]].int;vardelimiter:=b;end;
{:706}{715:}function rebox(b:halfword;w:scaled):halfword;var p:halfword;
f:internalfontnumber;v:scaled;
begin if(mem[b+1].int<>w)and(mem[b+5].hh.rh<>0)then begin if mem[b].hh.
b0=1 then b:=hpack(b,0,1);p:=mem[b+5].hh.rh;
if((p>=himemmin))and(mem[p].hh.rh=0)then begin f:=mem[p].hh.b0;
v:=fontinfo[widthbase[f]+fontinfo[charbase[f]+mem[p].hh.b1].qqqq.b0].int
;if v<>mem[b+1].int then mem[p].hh.rh:=newkern(mem[b+1].int-v);end;
freenode(b,7);b:=newglue(12);mem[b].hh.rh:=p;
while mem[p].hh.rh<>0 do p:=mem[p].hh.rh;mem[p].hh.rh:=newglue(12);
rebox:=hpack(b,w,0);end else begin mem[b+1].int:=w;rebox:=b;end;end;
{:715}{716:}function mathglue(g:halfword;m:scaled):halfword;
var p:halfword;n:integer;f:scaled;begin n:=xovern(m,65536);f:=remainder;
if f<0 then begin n:=n-1;f:=f+65536;end;p:=getnode(4);
mem[p+1].int:=multandadd(n,mem[g+1].int,xnoverd(mem[g+1].int,f,65536),
1073741823);mem[p].hh.b0:=mem[g].hh.b0;
if mem[p].hh.b0=0 then mem[p+2].int:=multandadd(n,mem[g+2].int,xnoverd(
mem[g+2].int,f,65536),1073741823)else mem[p+2].int:=mem[g+2].int;
mem[p].hh.b1:=mem[g].hh.b1;
if mem[p].hh.b1=0 then mem[p+3].int:=multandadd(n,mem[g+3].int,xnoverd(
mem[g+3].int,f,65536),1073741823)else mem[p+3].int:=mem[g+3].int;
mathglue:=p;end;{:716}{717:}procedure mathkern(p:halfword;m:scaled);
var n:integer;f:scaled;
begin if mem[p].hh.b1=99 then begin n:=xovern(m,65536);f:=remainder;
if f<0 then begin n:=n-1;f:=f+65536;end;
mem[p+1].int:=multandadd(n,mem[p+1].int,xnoverd(mem[p+1].int,f,65536),
1073741823);mem[p].hh.b1:=1;end;end;{:717}{718:}procedure flushmath;
begin flushnodelist(mem[curlist.headfield].hh.rh);
flushnodelist(curlist.auxfield.int);mem[curlist.headfield].hh.rh:=0;
curlist.tailfield:=curlist.headfield;curlist.auxfield.int:=0;end;
{:718}{720:}procedure mlisttohlist;forward;function cleanbox(p:halfword;
s:smallnumber):halfword;label 40;var q:halfword;savestyle:smallnumber;
x:halfword;r:halfword;
begin begin if ((mem[p].hh.rh>=1)and(mem[p].hh.rh<=3)) then case mem[p].hh.rh of 1:begin curmlist:=newnoad;
mem[curmlist+1]:=mem[p];end;2:begin q:=mem[p].hh.lh;goto 40;end;
3:curmlist:=mem[p].hh.lh end else begin q:=newnullbox;goto 40;end end;
savestyle:=curstyle;curstyle:=s;mlistpenalties:=false;mlisttohlist;
q:=mem[29997].hh.rh;curstyle:=savestyle;
{703:}begin if curstyle<4 then cursize:=0 else cursize:=16*((curstyle-2)
div 2);
curmu:=xovern(fontinfo[6+parambase[eqtb[3937+cursize].hh.rh]].int,18);
end{:703};
40:if(q>=himemmin)or(q=0)then x:=hpack(q,0,1)else if(mem[q].hh.rh=0)and(
mem[q].hh.b0<=1)and(mem[q+4].int=0)then x:=q else x:=hpack(q,0,1);
{721:}q:=mem[x+5].hh.rh;if(q>=himemmin)then begin r:=mem[q].hh.rh;
if r<>0 then if mem[r].hh.rh=0 then if not(r>=himemmin)then if mem[r].hh
.b0=11 then begin freenode(r,2);mem[q].hh.rh:=0;end;end{:721};
cleanbox:=x;end;{:720}{722:}procedure fetch(a:halfword);
begin curc:=mem[a].hh.b1;curf:=eqtb[3935+mem[a].hh.b0+cursize].hh.rh;
if curf=0 then{723:}begin begin if interaction=3 then;printnl(262);
print(338);end;printsize(cursize);printchar(32);printint(mem[a].hh.b0);
print(885);print(curc-0);printchar(41);begin helpptr:=4;
helpline[3]:=886;helpline[2]:=887;helpline[1]:=888;helpline[0]:=889;end;
error;curi:=nullcharacter;mem[a].hh.rh:=0;
end{:723}else begin if(curc-0>=fontbc[curf])and(curc-0<=fontec[curf])
then curi:=fontinfo[charbase[curf]+curc].qqqq else curi:=nullcharacter;
if not((curi.b0>0))then begin charwarning(curf,curc-0);mem[a].hh.rh:=0;
curi:=nullcharacter;end;end;end;
{:722}{726:}{734:}procedure makeover(q:halfword);
begin mem[q+1].hh.lh:=overbar(cleanbox(q+1,2*(curstyle div 2)+1),3*
fontinfo[8+parambase[eqtb[3938+cursize].hh.rh]].int,fontinfo[8+parambase
[eqtb[3938+cursize].hh.rh]].int);mem[q+1].hh.rh:=2;end;
{:734}{735:}procedure makeunder(q:halfword);var p,x,y:halfword;
delta:scaled;begin x:=cleanbox(q+1,curstyle);
p:=newkern(3*fontinfo[8+parambase[eqtb[3938+cursize].hh.rh]].int);
mem[x].hh.rh:=p;
mem[p].hh.rh:=fractionrule(fontinfo[8+parambase[eqtb[3938+cursize].hh.rh
]].int);y:=vpackage(x,0,1,1073741823);
delta:=mem[y+3].int+mem[y+2].int+fontinfo[8+parambase[eqtb[3938+cursize]
.hh.rh]].int;mem[y+3].int:=mem[x+3].int;
mem[y+2].int:=delta-mem[y+3].int;mem[q+1].hh.lh:=y;mem[q+1].hh.rh:=2;
end;{:735}{736:}procedure makevcenter(q:halfword);var v:halfword;
delta:scaled;begin v:=mem[q+1].hh.lh;
if mem[v].hh.b0<>1 then confusion(539);delta:=mem[v+3].int+mem[v+2].int;
mem[v+3].int:=fontinfo[22+parambase[eqtb[3937+cursize].hh.rh]].int+half(
delta);mem[v+2].int:=delta-mem[v+3].int;end;
{:736}{737:}procedure makeradical(q:halfword);var x,y:halfword;
delta,clr:scaled;begin x:=cleanbox(q+1,2*(curstyle div 2)+1);
if curstyle<2 then clr:=fontinfo[8+parambase[eqtb[3938+cursize].hh.rh]].
int+(abs(fontinfo[5+parambase[eqtb[3937+cursize].hh.rh]].int)div 4)else
begin clr:=fontinfo[8+parambase[eqtb[3938+cursize].hh.rh]].int;
clr:=clr+(abs(clr)div 4);end;
y:=vardelimiter(q+4,cursize,mem[x+3].int+mem[x+2].int+clr+fontinfo[8+
parambase[eqtb[3938+cursize].hh.rh]].int);
delta:=mem[y+2].int-(mem[x+3].int+mem[x+2].int+clr);
if delta>0 then clr:=clr+half(delta);mem[y+4].int:=-(mem[x+3].int+clr);
mem[y].hh.rh:=overbar(x,clr,mem[y+3].int);mem[q+1].hh.lh:=hpack(y,0,1);
mem[q+1].hh.rh:=2;end;{:737}{738:}procedure makemathaccent(q:halfword);
label 30,31;var p,x,y:halfword;a:integer;c:quarterword;
f:internalfontnumber;i:fourquarters;s:scaled;h:scaled;delta:scaled;
w:scaled;begin fetch(q+4);if(curi.b0>0)then begin i:=curi;c:=curc;
f:=curf;{741:}s:=0;if mem[q+1].hh.rh=1 then begin fetch(q+1);
if((curi.b2-0)mod 4)=1 then begin a:=ligkernbase[curf]+curi.b3;
curi:=fontinfo[a].qqqq;
if curi.b0>128 then begin a:=ligkernbase[curf]+256*curi.b2+curi.b3
+32768-256*(128);curi:=fontinfo[a].qqqq;end;
while true do begin if curi.b1-0=skewchar[curf]then begin if curi.b2>=
128 then if curi.b0<=128 then s:=fontinfo[kernbase[curf]+256*curi.b2+
curi.b3].int;goto 31;end;if curi.b0>=128 then goto 31;a:=a+curi.b0+1;
curi:=fontinfo[a].qqqq;end;end;end;31:{:741};
x:=cleanbox(q+1,2*(curstyle div 2)+1);w:=mem[x+1].int;h:=mem[x+3].int;
{740:}while true do begin if((i.b2-0)mod 4)<>2 then goto 30;y:=i.b3;
i:=fontinfo[charbase[f]+y].qqqq;if not(i.b0>0)then goto 30;
if fontinfo[widthbase[f]+i.b0].int>w then goto 30;c:=y;end;30:{:740};
if h<fontinfo[5+parambase[f]].int then delta:=h else delta:=fontinfo[5+
parambase[f]].int;
if(mem[q+2].hh.rh<>0)or(mem[q+3].hh.rh<>0)then if mem[q+1].hh.rh=1 then
{742:}begin flushnodelist(x);x:=newnoad;mem[x+1]:=mem[q+1];
mem[x+2]:=mem[q+2];mem[x+3]:=mem[q+3];mem[q+2].hh:=emptyfield;
mem[q+3].hh:=emptyfield;mem[q+1].hh.rh:=3;mem[q+1].hh.lh:=x;
x:=cleanbox(q+1,curstyle);delta:=delta+mem[x+3].int-h;h:=mem[x+3].int;
end{:742};y:=charbox(f,c);mem[y+4].int:=s+half(w-mem[y+1].int);
mem[y+1].int:=0;p:=newkern(-delta);mem[p].hh.rh:=x;mem[y].hh.rh:=p;
y:=vpackage(y,0,1,1073741823);mem[y+1].int:=mem[x+1].int;
if mem[y+3].int<h then{739:}begin p:=newkern(h-mem[y+3].int);
mem[p].hh.rh:=mem[y+5].hh.rh;mem[y+5].hh.rh:=p;mem[y+3].int:=h;
end{:739};mem[q+1].hh.lh:=y;mem[q+1].hh.rh:=2;end;end;
{:738}{743:}procedure makefraction(q:halfword);var p,v,x,y,z:halfword;
delta,delta1,delta2,shiftup,shiftdown,clr:scaled;
begin if mem[q+1].int=1073741824 then mem[q+1].int:=fontinfo[8+parambase
[eqtb[3938+cursize].hh.rh]].int;
{744:}x:=cleanbox(q+2,curstyle+2-2*(curstyle div 6));
z:=cleanbox(q+3,2*(curstyle div 2)+3-2*(curstyle div 6));
if mem[x+1].int<mem[z+1].int then x:=rebox(x,mem[z+1].int)else z:=rebox(
z,mem[x+1].int);
if curstyle<2 then begin shiftup:=fontinfo[8+parambase[eqtb[3937+cursize
].hh.rh]].int;
shiftdown:=fontinfo[11+parambase[eqtb[3937+cursize].hh.rh]].int;
end else begin shiftdown:=fontinfo[12+parambase[eqtb[3937+cursize].hh.rh
]].int;
if mem[q+1].int<>0 then shiftup:=fontinfo[9+parambase[eqtb[3937+cursize]
.hh.rh]].int else shiftup:=fontinfo[10+parambase[eqtb[3937+cursize].hh.
rh]].int;end{:744};
if mem[q+1].int=0 then{745:}begin if curstyle<2 then clr:=7*fontinfo[8+
parambase[eqtb[3938+cursize].hh.rh]].int else clr:=3*fontinfo[8+
parambase[eqtb[3938+cursize].hh.rh]].int;
delta:=half(clr-((shiftup-mem[x+2].int)-(mem[z+3].int-shiftdown)));
if delta>0 then begin shiftup:=shiftup+delta;shiftdown:=shiftdown+delta;
end;
end{:745}else{746:}begin if curstyle<2 then clr:=3*mem[q+1].int else clr
:=mem[q+1].int;delta:=half(mem[q+1].int);
delta1:=clr-((shiftup-mem[x+2].int)-(fontinfo[22+parambase[eqtb[3937+
cursize].hh.rh]].int+delta));
delta2:=clr-((fontinfo[22+parambase[eqtb[3937+cursize].hh.rh]].int-delta
)-(mem[z+3].int-shiftdown));if delta1>0 then shiftup:=shiftup+delta1;
if delta2>0 then shiftdown:=shiftdown+delta2;end{:746};
{747:}v:=newnullbox;mem[v].hh.b0:=1;mem[v+3].int:=shiftup+mem[x+3].int;
mem[v+2].int:=mem[z+2].int+shiftdown;mem[v+1].int:=mem[x+1].int;
if mem[q+1].int=0 then begin p:=newkern((shiftup-mem[x+2].int)-(mem[z+3]
.int-shiftdown));mem[p].hh.rh:=z;
end else begin y:=fractionrule(mem[q+1].int);
p:=newkern((fontinfo[22+parambase[eqtb[3937+cursize].hh.rh]].int-delta)-
(mem[z+3].int-shiftdown));mem[y].hh.rh:=p;mem[p].hh.rh:=z;
p:=newkern((shiftup-mem[x+2].int)-(fontinfo[22+parambase[eqtb[3937+
cursize].hh.rh]].int+delta));mem[p].hh.rh:=y;end;mem[x].hh.rh:=p;
mem[v+5].hh.rh:=x{:747};
{748:}if curstyle<2 then delta:=fontinfo[20+parambase[eqtb[3937+cursize]
.hh.rh]].int else delta:=fontinfo[21+parambase[eqtb[3937+cursize].hh.rh]
].int;x:=vardelimiter(q+4,cursize,delta);mem[x].hh.rh:=v;
z:=vardelimiter(q+5,cursize,delta);mem[v].hh.rh:=z;
mem[q+1].int:=hpack(x,0,1){:748};end;
{:743}{749:}function makeop(q:halfword):scaled;var delta:scaled;
p,v,x,y,z:halfword;c:quarterword;i:fourquarters;
shiftup,shiftdown:scaled;
begin if(mem[q].hh.b1=0)and(curstyle<2)then mem[q].hh.b1:=1;
if mem[q+1].hh.rh=1 then begin fetch(q+1);
if(curstyle<2)and(((curi.b2-0)mod 4)=2)then begin c:=curi.b3;
i:=fontinfo[charbase[curf]+c].qqqq;if(i.b0>0)then begin curc:=c;curi:=i;
mem[q+1].hh.b1:=c;end;end;
delta:=fontinfo[italicbase[curf]+(curi.b2-0)div 4].int;
x:=cleanbox(q+1,curstyle);
if(mem[q+3].hh.rh<>0)and(mem[q].hh.b1<>1)then mem[x+1].int:=mem[x+1].int
-delta;
mem[x+4].int:=half(mem[x+3].int-mem[x+2].int)-fontinfo[22+parambase[eqtb
[3937+cursize].hh.rh]].int;mem[q+1].hh.rh:=2;mem[q+1].hh.lh:=x;
end else delta:=0;
if mem[q].hh.b1=1 then{750:}begin x:=cleanbox(q+2,2*(curstyle div 4)+4+(
curstyle mod 2));y:=cleanbox(q+1,curstyle);
z:=cleanbox(q+3,2*(curstyle div 4)+5);v:=newnullbox;mem[v].hh.b0:=1;
mem[v+1].int:=mem[y+1].int;
if mem[x+1].int>mem[v+1].int then mem[v+1].int:=mem[x+1].int;
if mem[z+1].int>mem[v+1].int then mem[v+1].int:=mem[z+1].int;
x:=rebox(x,mem[v+1].int);y:=rebox(y,mem[v+1].int);
z:=rebox(z,mem[v+1].int);mem[x+4].int:=half(delta);
mem[z+4].int:=-mem[x+4].int;mem[v+3].int:=mem[y+3].int;
mem[v+2].int:=mem[y+2].int;
{751:}if mem[q+2].hh.rh=0 then begin freenode(x,7);mem[v+5].hh.rh:=y;
end else begin shiftup:=fontinfo[11+parambase[eqtb[3938+cursize].hh.rh]]
.int-mem[x+2].int;
if shiftup<fontinfo[9+parambase[eqtb[3938+cursize].hh.rh]].int then
shiftup:=fontinfo[9+parambase[eqtb[3938+cursize].hh.rh]].int;
p:=newkern(shiftup);mem[p].hh.rh:=y;mem[x].hh.rh:=p;
p:=newkern(fontinfo[13+parambase[eqtb[3938+cursize].hh.rh]].int);
mem[p].hh.rh:=x;mem[v+5].hh.rh:=p;
mem[v+3].int:=mem[v+3].int+fontinfo[13+parambase[eqtb[3938+cursize].hh.
rh]].int+mem[x+3].int+mem[x+2].int+shiftup;end;
if mem[q+3].hh.rh=0 then freenode(z,7)else begin shiftdown:=fontinfo[12+
parambase[eqtb[3938+cursize].hh.rh]].int-mem[z+3].int;
if shiftdown<fontinfo[10+parambase[eqtb[3938+cursize].hh.rh]].int then
shiftdown:=fontinfo[10+parambase[eqtb[3938+cursize].hh.rh]].int;
p:=newkern(shiftdown);mem[y].hh.rh:=p;mem[p].hh.rh:=z;
p:=newkern(fontinfo[13+parambase[eqtb[3938+cursize].hh.rh]].int);
mem[z].hh.rh:=p;
mem[v+2].int:=mem[v+2].int+fontinfo[13+parambase[eqtb[3938+cursize].hh.
rh]].int+mem[z+3].int+mem[z+2].int+shiftdown;end{:751};mem[q+1].int:=v;
end{:750};makeop:=delta;end;{:749}{752:}procedure makeord(q:halfword);
label 20,10;var a:integer;p,r:halfword;
begin 20:if mem[q+3].hh.rh=0 then if mem[q+2].hh.rh=0 then if mem[q+1].
hh.rh=1 then begin p:=mem[q].hh.rh;
if p<>0 then if(mem[p].hh.b0>=16)and(mem[p].hh.b0<=22)then if mem[p+1].
hh.rh=1 then if mem[p+1].hh.b0=mem[q+1].hh.b0 then begin mem[q+1].hh.rh
:=4;fetch(q+1);
if((curi.b2-0)mod 4)=1 then begin a:=ligkernbase[curf]+curi.b3;
curc:=mem[p+1].hh.b1;curi:=fontinfo[a].qqqq;
if curi.b0>128 then begin a:=ligkernbase[curf]+256*curi.b2+curi.b3
+32768-256*(128);curi:=fontinfo[a].qqqq;end;
while true do begin{753:}if curi.b1=curc then if curi.b0<=128 then if
curi.b2>=128 then begin p:=newkern(fontinfo[kernbase[curf]+256*curi.b2+
curi.b3].int);mem[p].hh.rh:=mem[q].hh.rh;mem[q].hh.rh:=p;goto 10;
end else begin begin if interrupt<>0 then pauseforinstructions;end;
begin if ((curi.b2>=1)and(curi.b2<=3))or((curi.b2>=5)and(curi.b2<=7))or(curi.b2=11) then case curi.b2 of 1,5:mem[q+1].hh.b1:=curi.b3;2,6:mem[p+1].hh.b1:=curi.b3;
3,7,11:begin r:=newnoad;mem[r+1].hh.b1:=curi.b3;
mem[r+1].hh.b0:=mem[q+1].hh.b0;mem[q].hh.rh:=r;mem[r].hh.rh:=p;
if curi.b2<11 then mem[r+1].hh.rh:=1 else mem[r+1].hh.rh:=4;end end else begin mem[q].hh.rh:=mem[p].hh.rh;mem[q+1].hh.b1:=curi.b3;
mem[q+3]:=mem[p+3];mem[q+2]:=mem[p+2];freenode(p,4);end end;
if curi.b2>3 then goto 10;mem[q+1].hh.rh:=1;goto 20;end{:753};
if curi.b0>=128 then goto 10;a:=a+curi.b0+1;curi:=fontinfo[a].qqqq;end;
end;end;end;10:end;{:752}{756:}procedure makescripts(q:halfword;
delta:scaled);var p,x,y,z:halfword;shiftup,shiftdown,clr:scaled;
t:smallnumber;begin p:=mem[q+1].int;
if(p>=himemmin)then begin shiftup:=0;shiftdown:=0;
end else begin z:=hpack(p,0,1);if curstyle<4 then t:=16 else t:=32;
shiftup:=mem[z+3].int-fontinfo[18+parambase[eqtb[3937+t].hh.rh]].int;
shiftdown:=mem[z+2].int+fontinfo[19+parambase[eqtb[3937+t].hh.rh]].int;
freenode(z,7);end;
if mem[q+2].hh.rh=0 then{757:}begin x:=cleanbox(q+3,2*(curstyle div 4)+5
);mem[x+1].int:=mem[x+1].int+eqtb[5842].int;
if shiftdown<fontinfo[16+parambase[eqtb[3937+cursize].hh.rh]].int then
shiftdown:=fontinfo[16+parambase[eqtb[3937+cursize].hh.rh]].int;
clr:=mem[x+3].int-(abs(fontinfo[5+parambase[eqtb[3937+cursize].hh.rh]].
int*4)div 5);if shiftdown<clr then shiftdown:=clr;
mem[x+4].int:=shiftdown;
end{:757}else begin{758:}begin x:=cleanbox(q+2,2*(curstyle div 4)+4+(
curstyle mod 2));mem[x+1].int:=mem[x+1].int+eqtb[5842].int;
if odd(curstyle)then clr:=fontinfo[15+parambase[eqtb[3937+cursize].hh.rh
]].int else if curstyle<2 then clr:=fontinfo[13+parambase[eqtb[3937+
cursize].hh.rh]].int else clr:=fontinfo[14+parambase[eqtb[3937+cursize].
hh.rh]].int;if shiftup<clr then shiftup:=clr;
clr:=mem[x+2].int+(abs(fontinfo[5+parambase[eqtb[3937+cursize].hh.rh]].
int)div 4);if shiftup<clr then shiftup:=clr;end{:758};
if mem[q+3].hh.rh=0 then mem[x+4].int:=-shiftup else{759:}begin y:=
cleanbox(q+3,2*(curstyle div 4)+5);
mem[y+1].int:=mem[y+1].int+eqtb[5842].int;
if shiftdown<fontinfo[17+parambase[eqtb[3937+cursize].hh.rh]].int then
shiftdown:=fontinfo[17+parambase[eqtb[3937+cursize].hh.rh]].int;
clr:=4*fontinfo[8+parambase[eqtb[3938+cursize].hh.rh]].int-((shiftup-mem
[x+2].int)-(mem[y+3].int-shiftdown));
if clr>0 then begin shiftdown:=shiftdown+clr;
clr:=(abs(fontinfo[5+parambase[eqtb[3937+cursize].hh.rh]].int*4)div 5)-(
shiftup-mem[x+2].int);if clr>0 then begin shiftup:=shiftup+clr;
shiftdown:=shiftdown-clr;end;end;mem[x+4].int:=delta;
p:=newkern((shiftup-mem[x+2].int)-(mem[y+3].int-shiftdown));
mem[x].hh.rh:=p;mem[p].hh.rh:=y;x:=vpackage(x,0,1,1073741823);
mem[x+4].int:=shiftdown;end{:759};end;
if mem[q+1].int=0 then mem[q+1].int:=x else begin p:=mem[q+1].int;
while mem[p].hh.rh<>0 do p:=mem[p].hh.rh;mem[p].hh.rh:=x;end;end;
{:756}{762:}function makeleftright(q:halfword;style:smallnumber;
maxd,maxh:scaled):smallnumber;var delta,delta1,delta2:scaled;
begin if style<4 then cursize:=0 else cursize:=16*((style-2)div 2);
delta2:=maxd+fontinfo[22+parambase[eqtb[3937+cursize].hh.rh]].int;
delta1:=maxh+maxd-delta2;if delta2>delta1 then delta1:=delta2;
delta:=(delta1 div 500)*eqtb[5281].int;
delta2:=delta1+delta1-eqtb[5840].int;if delta<delta2 then delta:=delta2;
mem[q+1].int:=vardelimiter(q+1,cursize,delta);
makeleftright:=mem[q].hh.b0-(10);end;{:762}procedure mlisttohlist;
label 21,82,80,81,83,30;var mlist:halfword;penalties:boolean;
style:smallnumber;savestyle:smallnumber;q:halfword;r:halfword;
rtype:smallnumber;t:smallnumber;p,x,y,z:halfword;pen:integer;
s:smallnumber;maxh,maxd:scaled;delta:scaled;begin mlist:=curmlist;
penalties:=mlistpenalties;style:=curstyle;q:=mlist;r:=0;rtype:=17;
maxh:=0;maxd:=0;
{703:}begin if curstyle<4 then cursize:=0 else cursize:=16*((curstyle-2)
div 2);
curmu:=xovern(fontinfo[6+parambase[eqtb[3937+cursize].hh.rh]].int,18);
end{:703};while q<>0 do{727:}begin{728:}21:delta:=0;
begin if ((mem[q].hh.b0>=2)and(mem[q].hh.b0<=5))or(mem[q].hh.b0=7)or(mem[q].hh.b0=8)or((mem[q].hh.b0>=10)and(mem[q].hh.b0<=12))or((mem[q].hh.b0>=14)and(mem[q].hh.b0<=31)) then case mem[q].hh.b0 of 18:begin if ((rtype>=17)and(rtype<=20))or(rtype=22)or(rtype=30) then case rtype of 18,17,19,20,22,30:begin mem[q].hh.
b0:=16;goto 21;end end end;
19,21,22,31:begin{729:}if rtype=18 then mem[r].hh.b0:=16{:729};
if mem[q].hh.b0=31 then goto 80;end;{733:}30:goto 80;
25:begin makefraction(q);goto 82;end;17:begin delta:=makeop(q);
if mem[q].hh.b1=1 then goto 82;end;16:makeord(q);20,23:;
24:makeradical(q);27:makeover(q);26:makeunder(q);28:makemathaccent(q);
29:makevcenter(q);{:733}{730:}14:begin curstyle:=mem[q].hh.b1;
{703:}begin if curstyle<4 then cursize:=0 else cursize:=16*((curstyle-2)
div 2);
curmu:=xovern(fontinfo[6+parambase[eqtb[3937+cursize].hh.rh]].int,18);
end{:703};goto 81;end;
15:{731:}begin case curstyle div 2 of 0:begin p:=mem[q+1].hh.lh;
mem[q+1].hh.lh:=0;end;1:begin p:=mem[q+1].hh.rh;mem[q+1].hh.rh:=0;end;
2:begin p:=mem[q+2].hh.lh;mem[q+2].hh.lh:=0;end;
3:begin p:=mem[q+2].hh.rh;mem[q+2].hh.rh:=0;end;end;
flushnodelist(mem[q+1].hh.lh);flushnodelist(mem[q+1].hh.rh);
flushnodelist(mem[q+2].hh.lh);flushnodelist(mem[q+2].hh.rh);
mem[q].hh.b0:=14;mem[q].hh.b1:=curstyle;mem[q+1].int:=0;mem[q+2].int:=0;
if p<>0 then begin z:=mem[q].hh.rh;mem[q].hh.rh:=p;
while mem[p].hh.rh<>0 do p:=mem[p].hh.rh;mem[p].hh.rh:=z;end;goto 81;
end{:731};3,4,5,8,12,7:goto 81;
2:begin if mem[q+3].int>maxh then maxh:=mem[q+3].int;
if mem[q+2].int>maxd then maxd:=mem[q+2].int;goto 81;end;
10:begin{732:}if mem[q].hh.b1=99 then begin x:=mem[q+1].hh.lh;
y:=mathglue(x,curmu);deleteglueref(x);mem[q+1].hh.lh:=y;mem[q].hh.b1:=0;
end else if(cursize<>0)and(mem[q].hh.b1=98)then begin p:=mem[q].hh.rh;
if p<>0 then if(mem[p].hh.b0=10)or(mem[p].hh.b0=11)then begin mem[q].hh.
rh:=mem[p].hh.rh;mem[p].hh.rh:=0;flushnodelist(p);end;end{:732};goto 81;
end;11:begin mathkern(q,curmu);goto 81;end;
{:730} end else confusion(890) end;
{754:}begin if ((mem[q+1].hh.rh>=0)and(mem[q+1].hh.rh<=4)) then case mem[q+1].hh.rh of 1,4:{755:}begin fetch(q+1);
if(curi.b0>0)then begin delta:=fontinfo[italicbase[curf]+(curi.b2-0)div
4].int;p:=newcharacter(curf,curc-0);
if(mem[q+1].hh.rh=4)and(fontinfo[2+parambase[curf]].int<>0)then delta:=0
;
if(mem[q+3].hh.rh=0)and(delta<>0)then begin mem[p].hh.rh:=newkern(delta)
;delta:=0;end;end else p:=0;end{:755};0:p:=0;2:p:=mem[q+1].hh.lh;
3:begin curmlist:=mem[q+1].hh.lh;savestyle:=curstyle;
mlistpenalties:=false;mlisttohlist;curstyle:=savestyle;
{703:}begin if curstyle<4 then cursize:=0 else cursize:=16*((curstyle-2)
div 2);
curmu:=xovern(fontinfo[6+parambase[eqtb[3937+cursize].hh.rh]].int,18);
end{:703};p:=hpack(mem[29997].hh.rh,0,1);end end else confusion(891) end;
mem[q+1].int:=p;if(mem[q+3].hh.rh=0)and(mem[q+2].hh.rh=0)then goto 82;
makescripts(q,delta){:754}{:728};82:z:=hpack(mem[q+1].int,0,1);
if mem[z+3].int>maxh then maxh:=mem[z+3].int;
if mem[z+2].int>maxd then maxd:=mem[z+2].int;freenode(z,7);80:r:=q;
rtype:=mem[r].hh.b0;81:q:=mem[q].hh.rh;end{:727};
{729:}if rtype=18 then mem[r].hh.b0:=16{:729};{760:}p:=29997;
mem[p].hh.rh:=0;q:=mlist;rtype:=0;curstyle:=style;
{703:}begin if curstyle<4 then cursize:=0 else cursize:=16*((curstyle-2)
div 2);
curmu:=xovern(fontinfo[6+parambase[eqtb[3937+cursize].hh.rh]].int,18);
end{:703};while q<>0 do begin{761:}t:=16;s:=4;pen:=10000;
begin if ((mem[q].hh.b0>=2)and(mem[q].hh.b0<=5))or(mem[q].hh.b0=7)or(mem[q].hh.b0=8)or((mem[q].hh.b0>=10)and(mem[q].hh.b0<=12))or(mem[q].hh.b0=14)or((mem[q].hh.b0>=16)and(mem[q].hh.b0<=31)) then case mem[q].hh.b0 of 17,20,21,22,23:t:=mem[q].hh.b0;18:begin t:=18;
pen:=eqtb[5272].int;end;19:begin t:=19;pen:=eqtb[5273].int;end;
16,29,27,26:;24:s:=5;28:s:=5;25:s:=6;
30,31:t:=makeleftright(q,style,maxd,maxh);
14:{763:}begin curstyle:=mem[q].hh.b1;s:=3;
{703:}begin if curstyle<4 then cursize:=0 else cursize:=16*((curstyle-2)
div 2);
curmu:=xovern(fontinfo[6+parambase[eqtb[3937+cursize].hh.rh]].int,18);
end{:703};goto 83;end{:763};8,12,2,7,5,3,4,10,11:begin mem[p].hh.rh:=q;
p:=q;q:=mem[q].hh.rh;mem[p].hh.rh:=0;goto 30;end end else confusion(892) end{:761};
{766:}if rtype>0 then begin begin if ((strpool[rtype*8+t+magicoffset]>=48)and(strpool[rtype*8+t+magicoffset]<=52)) then case strpool[rtype*8+t+magicoffset] of 48:x:=
0;49:if curstyle<4 then x:=15 else x:=0;50:x:=15;
51:if curstyle<4 then x:=16 else x:=0;
52:if curstyle<4 then x:=17 else x:=0 end else confusion(894) end;
if x<>0 then begin y:=mathglue(eqtb[2882+x].hh.rh,curmu);z:=newglue(y);
mem[y].hh.rh:=0;mem[p].hh.rh:=z;p:=z;mem[z].hh.b1:=x+1;end;end{:766};
{767:}if mem[q+1].int<>0 then begin mem[p].hh.rh:=mem[q+1].int;
repeat p:=mem[p].hh.rh;until mem[p].hh.rh=0;end;
if penalties then if mem[q].hh.rh<>0 then if pen<10000 then begin rtype
:=mem[mem[q].hh.rh].hh.b0;
if rtype<>12 then if rtype<>19 then begin z:=newpenalty(pen);
mem[p].hh.rh:=z;p:=z;end;end{:767};rtype:=t;83:r:=q;q:=mem[q].hh.rh;
freenode(r,s);30:end{:760};end;{:726}{772:}procedure pushalignment;
var p:halfword;begin p:=getnode(5);mem[p].hh.rh:=alignptr;
mem[p].hh.lh:=curalign;mem[p+1].hh.lh:=mem[29992].hh.rh;
mem[p+1].hh.rh:=curspan;mem[p+2].int:=curloop;mem[p+3].int:=alignstate;
mem[p+4].hh.lh:=curhead;mem[p+4].hh.rh:=curtail;alignptr:=p;
curhead:=getavail;end;procedure popalignment;var p:halfword;
begin begin mem[curhead].hh.rh:=avail;avail:=curhead;
{dynused:=dynused-1;}end;p:=alignptr;curtail:=mem[p+4].hh.rh;
curhead:=mem[p+4].hh.lh;alignstate:=mem[p+3].int;curloop:=mem[p+2].int;
curspan:=mem[p+1].hh.rh;mem[29992].hh.rh:=mem[p+1].hh.lh;
curalign:=mem[p].hh.lh;alignptr:=mem[p].hh.rh;freenode(p,5);end;
{:772}{774:}{782:}procedure getpreambletoken;label 20;begin 20:gettoken;
while(curchr=256)and(curcmd=4)do begin gettoken;
if curcmd>100 then begin expand;gettoken;end;end;
if curcmd=9 then fatalerror(595);
if(curcmd=75)and(curchr=2893)then begin scanoptionalequals;scanglue(2);
if eqtb[5306].int>0 then geqdefine(2893,117,curval)else eqdefine(2893,
117,curval);goto 20;end;end;{:782}procedure alignpeek;forward;
procedure normalparagraph;forward;procedure initalign;label 30,31,32,22;
var savecsptr:halfword;p:halfword;begin savecsptr:=curcs;pushalignment;
alignstate:=-1000000;
{776:}if(curlist.modefield=203)and((curlist.tailfield<>curlist.headfield
)or(curlist.auxfield.int<>0))then begin begin if interaction=3 then;
printnl(262);print(680);end;printesc(520);print(895);begin helpptr:=3;
helpline[2]:=896;helpline[1]:=897;helpline[0]:=898;end;error;flushmath;
end{:776};pushnest;
{775:}if curlist.modefield=203 then begin curlist.modefield:=-1;
curlist.auxfield.int:=nest[nestptr-2].auxfield.int;
end else if curlist.modefield>0 then curlist.modefield:=-curlist.
modefield{:775};scanspec(6,false);{777:}mem[29992].hh.rh:=0;
curalign:=29992;curloop:=0;scannerstatus:=4;warningindex:=savecsptr;
alignstate:=-1000000;
while true do begin{778:}mem[curalign].hh.rh:=newparamglue(11);
curalign:=mem[curalign].hh.rh{:778};if curcmd=5 then goto 30;
{779:}{783:}p:=29996;mem[p].hh.rh:=0;
while true do begin getpreambletoken;if curcmd=6 then goto 31;
if(curcmd<=5)and(curcmd>=4)and(alignstate=-1000000)then if(p=29996)and(
curloop=0)and(curcmd=4)then curloop:=curalign else begin begin if
interaction=3 then;printnl(262);print(904);end;begin helpptr:=3;
helpline[2]:=905;helpline[1]:=906;helpline[0]:=907;end;backerror;
goto 31;
end else if(curcmd<>10)or(p<>29996)then begin mem[p].hh.rh:=getavail;
p:=mem[p].hh.rh;mem[p].hh.lh:=curtok;end;end;31:{:783};
mem[curalign].hh.rh:=newnullbox;curalign:=mem[curalign].hh.rh;
mem[curalign].hh.lh:=29991;mem[curalign+1].int:=-1073741824;
mem[curalign+3].int:=mem[29996].hh.rh;{784:}p:=29996;mem[p].hh.rh:=0;
while true do begin 22:getpreambletoken;
if(curcmd<=5)and(curcmd>=4)and(alignstate=-1000000)then goto 32;
if curcmd=6 then begin begin if interaction=3 then;printnl(262);
print(908);end;begin helpptr:=3;helpline[2]:=905;helpline[1]:=906;
helpline[0]:=909;end;error;goto 22;end;mem[p].hh.rh:=getavail;
p:=mem[p].hh.rh;mem[p].hh.lh:=curtok;end;32:mem[p].hh.rh:=getavail;
p:=mem[p].hh.rh;mem[p].hh.lh:=6714{:784};
mem[curalign+2].int:=mem[29996].hh.rh{:779};end;
30:scannerstatus:=0{:777};newsavelevel(6);
if eqtb[3420].hh.rh<>0 then begintokenlist(eqtb[3420].hh.rh,13);
alignpeek;end;{:774}{786:}{787:}procedure initspan(p:halfword);
begin pushnest;
if curlist.modefield=-102 then curlist.auxfield.hh.lh:=1000 else begin
curlist.auxfield.int:=-65536000;normalparagraph;end;curspan:=p;end;
{:787}procedure initrow;begin pushnest;
curlist.modefield:=(-103)-curlist.modefield;
if curlist.modefield=-102 then curlist.auxfield.hh.lh:=0 else curlist.
auxfield.int:=0;
begin mem[curlist.tailfield].hh.rh:=newglue(mem[mem[29992].hh.rh+1].hh.
lh);curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
mem[curlist.tailfield].hh.b1:=12;curalign:=mem[mem[29992].hh.rh].hh.rh;
curtail:=curhead;initspan(curalign);end;{:786}{788:}procedure initcol;
begin mem[curalign+5].hh.lh:=curcmd;
if curcmd=63 then alignstate:=0 else begin backinput;
begintokenlist(mem[curalign+3].int,1);end;end;
{:788}{791:}function fincol:boolean;label 10;var p:halfword;
q,r:halfword;s:halfword;u:halfword;w:scaled;o:glueord;n:halfword;
begin if curalign=0 then confusion(910);q:=mem[curalign].hh.rh;
if q=0 then confusion(910);if alignstate<500000 then fatalerror(595);
p:=mem[q].hh.rh;
{792:}if(p=0)and(mem[curalign+5].hh.lh<257)then if curloop<>0 then{793:}
begin mem[q].hh.rh:=newnullbox;p:=mem[q].hh.rh;mem[p].hh.lh:=29991;
mem[p+1].int:=-1073741824;curloop:=mem[curloop].hh.rh;{794:}q:=29996;
r:=mem[curloop+3].int;while r<>0 do begin mem[q].hh.rh:=getavail;
q:=mem[q].hh.rh;mem[q].hh.lh:=mem[r].hh.lh;r:=mem[r].hh.rh;end;
mem[q].hh.rh:=0;mem[p+3].int:=mem[29996].hh.rh;q:=29996;
r:=mem[curloop+2].int;while r<>0 do begin mem[q].hh.rh:=getavail;
q:=mem[q].hh.rh;mem[q].hh.lh:=mem[r].hh.lh;r:=mem[r].hh.rh;end;
mem[q].hh.rh:=0;mem[p+2].int:=mem[29996].hh.rh{:794};
curloop:=mem[curloop].hh.rh;mem[p].hh.rh:=newglue(mem[curloop+1].hh.lh);
mem[mem[p].hh.rh].hh.b1:=12;
end{:793}else begin begin if interaction=3 then;printnl(262);print(911);
end;printesc(900);begin helpptr:=3;helpline[2]:=912;helpline[1]:=913;
helpline[0]:=914;end;mem[curalign+5].hh.lh:=257;error;end{:792};
if mem[curalign+5].hh.lh<>256 then begin unsave;newsavelevel(6);
{796:}begin if curlist.modefield=-102 then begin adjusttail:=curtail;
u:=hpack(mem[curlist.headfield].hh.rh,0,1);w:=mem[u+1].int;
curtail:=adjusttail;adjusttail:=0;
end else begin u:=vpackage(mem[curlist.headfield].hh.rh,0,1,0);
w:=mem[u+3].int;end;n:=0;
if curspan<>curalign then{798:}begin q:=curspan;repeat n:=n+1;
q:=mem[mem[q].hh.rh].hh.rh;until q=curalign;
if n>255 then confusion(915);q:=curspan;
while mem[mem[q].hh.lh].hh.rh<n do q:=mem[q].hh.lh;
if mem[mem[q].hh.lh].hh.rh>n then begin s:=getnode(2);
mem[s].hh.lh:=mem[q].hh.lh;mem[s].hh.rh:=n;mem[q].hh.lh:=s;
mem[s+1].int:=w;
end else if mem[mem[q].hh.lh+1].int<w then mem[mem[q].hh.lh+1].int:=w;
end{:798}else if w>mem[curalign+1].int then mem[curalign+1].int:=w;
mem[u].hh.b0:=13;mem[u].hh.b1:=n;
{659:}if totalstretch[3]<>0 then o:=3 else if totalstretch[2]<>0 then o
:=2 else if totalstretch[1]<>0 then o:=1 else o:=0{:659};
mem[u+5].hh.b1:=o;mem[u+6].int:=totalstretch[o];
{665:}if totalshrink[3]<>0 then o:=3 else if totalshrink[2]<>0 then o:=2
else if totalshrink[1]<>0 then o:=1 else o:=0{:665};mem[u+5].hh.b0:=o;
mem[u+4].int:=totalshrink[o];popnest;mem[curlist.tailfield].hh.rh:=u;
curlist.tailfield:=u;end{:796};
{795:}begin mem[curlist.tailfield].hh.rh:=newglue(mem[mem[curalign].hh.
rh+1].hh.lh);curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
mem[curlist.tailfield].hh.b1:=12{:795};
if mem[curalign+5].hh.lh>=257 then begin fincol:=true;goto 10;end;
initspan(p);end;alignstate:=1000000;{406:}repeat getxtoken;
until curcmd<>10{:406};curalign:=p;initcol;fincol:=false;10:end;
{:791}{799:}procedure finrow;var p:halfword;
begin if curlist.modefield=-102 then begin p:=hpack(mem[curlist.
headfield].hh.rh,0,1);popnest;appendtovlist(p);
if curhead<>curtail then begin mem[curlist.tailfield].hh.rh:=mem[curhead
].hh.rh;curlist.tailfield:=curtail;end;
end else begin p:=vpackage(mem[curlist.headfield].hh.rh,0,1,1073741823);
popnest;mem[curlist.tailfield].hh.rh:=p;curlist.tailfield:=p;
curlist.auxfield.hh.lh:=1000;end;mem[p].hh.b0:=13;mem[p+6].int:=0;
if eqtb[3420].hh.rh<>0 then begintokenlist(eqtb[3420].hh.rh,13);
alignpeek;end;{:799}{800:}procedure doassignments;forward;
procedure resumeafterdisplay;forward;procedure buildpage;forward;
procedure finalign;var p,q,r,s,u,v:halfword;t,w:scaled;o:scaled;
n:halfword;rulesave:scaled;auxsave:memoryword;
begin if curgroup<>6 then confusion(916);unsave;
if curgroup<>6 then confusion(917);unsave;
if nest[nestptr-1].modefield=203 then o:=eqtb[5845].int else o:=0;
{801:}q:=mem[mem[29992].hh.rh].hh.rh;repeat flushlist(mem[q+3].int);
flushlist(mem[q+2].int);p:=mem[mem[q].hh.rh].hh.rh;
if mem[q+1].int=-1073741824 then{802:}begin mem[q+1].int:=0;
r:=mem[q].hh.rh;s:=mem[r+1].hh.lh;
if s<>0 then begin mem[0].hh.rh:=mem[0].hh.rh+1;deleteglueref(s);
mem[r+1].hh.lh:=0;end;end{:802};
if mem[q].hh.lh<>29991 then{803:}begin t:=mem[q+1].int+mem[mem[mem[q].hh
.rh+1].hh.lh+1].int;r:=mem[q].hh.lh;s:=29991;mem[s].hh.lh:=p;n:=1;
repeat mem[r+1].int:=mem[r+1].int-t;u:=mem[r].hh.lh;
while mem[r].hh.rh>n do begin s:=mem[s].hh.lh;
n:=mem[mem[s].hh.lh].hh.rh+1;end;
if mem[r].hh.rh<n then begin mem[r].hh.lh:=mem[s].hh.lh;mem[s].hh.lh:=r;
mem[r].hh.rh:=mem[r].hh.rh-1;s:=r;
end else begin if mem[r+1].int>mem[mem[s].hh.lh+1].int then mem[mem[s].
hh.lh+1].int:=mem[r+1].int;freenode(r,2);end;r:=u;until r=29991;
end{:803};mem[q].hh.b0:=13;mem[q].hh.b1:=0;mem[q+3].int:=0;
mem[q+2].int:=0;mem[q+5].hh.b1:=0;mem[q+5].hh.b0:=0;mem[q+6].int:=0;
mem[q+4].int:=0;q:=p;until q=0{:801};{804:}saveptr:=saveptr-2;
packbeginline:=-curlist.mlfield;
if curlist.modefield=-1 then begin rulesave:=eqtb[5846].int;
eqtb[5846].int:=0;
p:=hpack(mem[29992].hh.rh,savestack[saveptr+1].int,savestack[saveptr+0].
int);eqtb[5846].int:=rulesave;
end else begin q:=mem[mem[29992].hh.rh].hh.rh;
repeat mem[q+3].int:=mem[q+1].int;mem[q+1].int:=0;
q:=mem[mem[q].hh.rh].hh.rh;until q=0;
p:=vpackage(mem[29992].hh.rh,savestack[saveptr+1].int,savestack[saveptr
+0].int,1073741823);q:=mem[mem[29992].hh.rh].hh.rh;
repeat mem[q+1].int:=mem[q+3].int;mem[q+3].int:=0;
q:=mem[mem[q].hh.rh].hh.rh;until q=0;end;packbeginline:=0{:804};
{805:}q:=mem[curlist.headfield].hh.rh;s:=curlist.headfield;
while q<>0 do begin if not(q>=himemmin)then if mem[q].hh.b0=13 then
{807:}begin if curlist.modefield=-1 then begin mem[q].hh.b0:=0;
mem[q+1].int:=mem[p+1].int;end else begin mem[q].hh.b0:=1;
mem[q+3].int:=mem[p+3].int;end;mem[q+5].hh.b1:=mem[p+5].hh.b1;
mem[q+5].hh.b0:=mem[p+5].hh.b0;mem[q+6].gr:=mem[p+6].gr;mem[q+4].int:=o;
r:=mem[mem[q+5].hh.rh].hh.rh;s:=mem[mem[p+5].hh.rh].hh.rh;
repeat{808:}n:=mem[r].hh.b1;t:=mem[s+1].int;w:=t;u:=29996;
while n>0 do begin n:=n-1;{809:}s:=mem[s].hh.rh;v:=mem[s+1].hh.lh;
mem[u].hh.rh:=newglue(v);u:=mem[u].hh.rh;mem[u].hh.b1:=12;
t:=t+mem[v+1].int;
if mem[p+5].hh.b0=1 then begin if mem[v].hh.b0=mem[p+5].hh.b1 then t:=t+
round(mem[p+6].gr*mem[v+2].int);
end else if mem[p+5].hh.b0=2 then begin if mem[v].hh.b1=mem[p+5].hh.b1
then t:=t-round(mem[p+6].gr*mem[v+3].int);end;s:=mem[s].hh.rh;
mem[u].hh.rh:=newnullbox;u:=mem[u].hh.rh;t:=t+mem[s+1].int;
if curlist.modefield=-1 then mem[u+1].int:=mem[s+1].int else begin mem[u
].hh.b0:=1;mem[u+3].int:=mem[s+1].int;end{:809};end;
if curlist.modefield=-1 then{810:}begin mem[r+3].int:=mem[q+3].int;
mem[r+2].int:=mem[q+2].int;
if t=mem[r+1].int then begin mem[r+5].hh.b0:=0;mem[r+5].hh.b1:=0;
mem[r+6].gr:=0.0;
end else if t>mem[r+1].int then begin mem[r+5].hh.b0:=1;
if mem[r+6].int=0 then mem[r+6].gr:=0.0 else mem[r+6].gr:=(t-mem[r+1].
int)/mem[r+6].int;end else begin mem[r+5].hh.b1:=mem[r+5].hh.b0;
mem[r+5].hh.b0:=2;
if mem[r+4].int=0 then mem[r+6].gr:=0.0 else if(mem[r+5].hh.b1=0)and(mem
[r+1].int-t>mem[r+4].int)then mem[r+6].gr:=1.0 else mem[r+6].gr:=(mem[r
+1].int-t)/mem[r+4].int;end;mem[r+1].int:=w;mem[r].hh.b0:=0;
end{:810}else{811:}begin mem[r+1].int:=mem[q+1].int;
if t=mem[r+3].int then begin mem[r+5].hh.b0:=0;mem[r+5].hh.b1:=0;
mem[r+6].gr:=0.0;
end else if t>mem[r+3].int then begin mem[r+5].hh.b0:=1;
if mem[r+6].int=0 then mem[r+6].gr:=0.0 else mem[r+6].gr:=(t-mem[r+3].
int)/mem[r+6].int;end else begin mem[r+5].hh.b1:=mem[r+5].hh.b0;
mem[r+5].hh.b0:=2;
if mem[r+4].int=0 then mem[r+6].gr:=0.0 else if(mem[r+5].hh.b1=0)and(mem
[r+3].int-t>mem[r+4].int)then mem[r+6].gr:=1.0 else mem[r+6].gr:=(mem[r
+3].int-t)/mem[r+4].int;end;mem[r+3].int:=w;mem[r].hh.b0:=1;end{:811};
mem[r+4].int:=0;if u<>29996 then begin mem[u].hh.rh:=mem[r].hh.rh;
mem[r].hh.rh:=mem[29996].hh.rh;r:=u;end{:808};
r:=mem[mem[r].hh.rh].hh.rh;s:=mem[mem[s].hh.rh].hh.rh;until r=0;
end{:807}else if mem[q].hh.b0=2 then{806:}begin if(mem[q+1].int=
-1073741824)then mem[q+1].int:=mem[p+1].int;
if(mem[q+3].int=-1073741824)then mem[q+3].int:=mem[p+3].int;
if(mem[q+2].int=-1073741824)then mem[q+2].int:=mem[p+2].int;
if o<>0 then begin r:=mem[q].hh.rh;mem[q].hh.rh:=0;q:=hpack(q,0,1);
mem[q+4].int:=o;mem[q].hh.rh:=r;mem[s].hh.rh:=q;end;end{:806};s:=q;
q:=mem[q].hh.rh;end{:805};flushnodelist(p);popalignment;
{812:}auxsave:=curlist.auxfield;p:=mem[curlist.headfield].hh.rh;
q:=curlist.tailfield;popnest;
if curlist.modefield=203 then{1206:}begin doassignments;
if curcmd<>3 then{1207:}begin begin if interaction=3 then;printnl(262);
print(1171);end;begin helpptr:=2;helpline[1]:=896;helpline[0]:=897;end;
backerror;end{:1207}else{1197:}begin getxtoken;
if curcmd<>3 then begin begin if interaction=3 then;printnl(262);
print(1167);end;begin helpptr:=2;helpline[1]:=1168;helpline[0]:=1169;
end;backerror;end;end{:1197};popnest;
begin mem[curlist.tailfield].hh.rh:=newpenalty(eqtb[5274].int);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
begin mem[curlist.tailfield].hh.rh:=newparamglue(3);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
mem[curlist.tailfield].hh.rh:=p;if p<>0 then curlist.tailfield:=q;
begin mem[curlist.tailfield].hh.rh:=newpenalty(eqtb[5275].int);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
begin mem[curlist.tailfield].hh.rh:=newparamglue(4);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
curlist.auxfield.int:=auxsave.int;resumeafterdisplay;
end{:1206}else begin curlist.auxfield:=auxsave;
mem[curlist.tailfield].hh.rh:=p;if p<>0 then curlist.tailfield:=q;
if curlist.modefield=1 then buildpage;end{:812};end;
{785:}procedure alignpeek;label 20;begin 20:alignstate:=1000000;
{406:}repeat getxtoken;until curcmd<>10{:406};
if curcmd=34 then begin scanleftbrace;newsavelevel(7);
if curlist.modefield=-1 then normalparagraph;
end else if curcmd=2 then finalign else if(curcmd=5)and(curchr=258)then
goto 20 else begin initrow;initcol;end;end;
{:785}{:800}{815:}{826:}function finiteshrink(p:halfword):halfword;
var q:halfword;
begin if noshrinkerroryet then begin noshrinkerroryet:=false;
{if eqtb[5295].int>0 then enddiagnostic(true);}
begin if interaction=3 then;printnl(262);print(918);end;
begin helpptr:=5;helpline[4]:=919;helpline[3]:=920;helpline[2]:=921;
helpline[1]:=922;helpline[0]:=923;end;error;
{if eqtb[5295].int>0 then begindiagnostic;}end;q:=newspec(p);
mem[q].hh.b1:=0;deleteglueref(p);finiteshrink:=q;end;
{:826}{829:}procedure trybreak(pi:integer;breaktype:smallnumber);
label 10,30,31,22,60;var r:halfword;prevr:halfword;oldl:halfword;
nobreakyet:boolean;{830:}prevprevr:halfword;s:halfword;q:halfword;
v:halfword;t:integer;f:internalfontnumber;l:halfword;
noderstaysactive:boolean;linewidth:scaled;fitclass:0..3;b:halfword;
d:integer;artificialdemerits:boolean;savelink:halfword;shortfall:scaled;
{:830}begin{831:}if abs(pi)>=10000 then if pi>0 then goto 10 else pi:=
-10000{:831};nobreakyet:=true;prevr:=29993;oldl:=0;
curactivewidth[1]:=activewidth[1];curactivewidth[2]:=activewidth[2];
curactivewidth[3]:=activewidth[3];curactivewidth[4]:=activewidth[4];
curactivewidth[5]:=activewidth[5];curactivewidth[6]:=activewidth[6];
while true do begin 22:r:=mem[prevr].hh.rh;
{832:}if mem[r].hh.b0=2 then begin curactivewidth[1]:=curactivewidth[1]+
mem[r+1].int;curactivewidth[2]:=curactivewidth[2]+mem[r+2].int;
curactivewidth[3]:=curactivewidth[3]+mem[r+3].int;
curactivewidth[4]:=curactivewidth[4]+mem[r+4].int;
curactivewidth[5]:=curactivewidth[5]+mem[r+5].int;
curactivewidth[6]:=curactivewidth[6]+mem[r+6].int;prevprevr:=prevr;
prevr:=r;goto 22;end{:832};{835:}begin l:=mem[r+1].hh.lh;
if l>oldl then begin if(minimumdemerits<1073741823)and((oldl<>easyline)
or(r=29993))then{836:}begin if nobreakyet then{837:}begin nobreakyet:=
false;breakwidth[1]:=background[1];breakwidth[2]:=background[2];
breakwidth[3]:=background[3];breakwidth[4]:=background[4];
breakwidth[5]:=background[5];breakwidth[6]:=background[6];s:=curp;
if breaktype>0 then if curp<>0 then{840:}begin t:=mem[curp].hh.b1;
v:=curp;s:=mem[curp+1].hh.rh;while t>0 do begin t:=t-1;v:=mem[v].hh.rh;
{841:}if(v>=himemmin)then begin f:=mem[v].hh.b0;
breakwidth[1]:=breakwidth[1]-fontinfo[widthbase[f]+fontinfo[charbase[f]+
mem[v].hh.b1].qqqq.b0].int;
end else begin if ((mem[v].hh.b0>=0)and(mem[v].hh.b0<=2))or(mem[v].hh.b0=6)or(mem[v].hh.b0=11) then case mem[v].hh.b0 of 6:begin f:=mem[v+1].hh.b0;
breakwidth[1]:=breakwidth[1]-fontinfo[widthbase[f]+fontinfo[charbase[f]+
mem[v+1].hh.b1].qqqq.b0].int;end;
0,1,2,11:breakwidth[1]:=breakwidth[1]-mem[v+1].int end else confusion(924) end{:841};end;
while s<>0 do begin{842:}if(s>=himemmin)then begin f:=mem[s].hh.b0;
breakwidth[1]:=breakwidth[1]+fontinfo[widthbase[f]+fontinfo[charbase[f]+
mem[s].hh.b1].qqqq.b0].int;
end else begin if ((mem[s].hh.b0>=0)and(mem[s].hh.b0<=2))or(mem[s].hh.b0=6)or(mem[s].hh.b0=11) then case mem[s].hh.b0 of 6:begin f:=mem[s+1].hh.b0;
breakwidth[1]:=breakwidth[1]+fontinfo[widthbase[f]+fontinfo[charbase[f]+
mem[s+1].hh.b1].qqqq.b0].int;end;
0,1,2,11:breakwidth[1]:=breakwidth[1]+mem[s+1].int end else confusion(925) end{:842};s:=mem[s].hh.rh;end;
breakwidth[1]:=breakwidth[1]+discwidth;
if mem[curp+1].hh.rh=0 then s:=mem[v].hh.rh;end{:840};
while s<>0 do begin if(s>=himemmin)then goto 30;
begin if ((mem[s].hh.b0>=9)and(mem[s].hh.b0<=12)) then case mem[s].hh.b0 of 10:{838:}begin v:=mem[s+1].hh.lh;
breakwidth[1]:=breakwidth[1]-mem[v+1].int;
breakwidth[2+mem[v].hh.b0]:=breakwidth[2+mem[v].hh.b0]-mem[v+2].int;
breakwidth[6]:=breakwidth[6]-mem[v+3].int;end{:838};12:;
9:breakwidth[1]:=breakwidth[1]-mem[s+1].int;
11:if mem[s].hh.b1<>1 then goto 30 else breakwidth[1]:=breakwidth[1]-mem
[s+1].int end else goto 30 end;s:=mem[s].hh.rh;end;30:end{:837};
{843:}if mem[prevr].hh.b0=2 then begin mem[prevr+1].int:=mem[prevr+1].
int-curactivewidth[1]+breakwidth[1];
mem[prevr+2].int:=mem[prevr+2].int-curactivewidth[2]+breakwidth[2];
mem[prevr+3].int:=mem[prevr+3].int-curactivewidth[3]+breakwidth[3];
mem[prevr+4].int:=mem[prevr+4].int-curactivewidth[4]+breakwidth[4];
mem[prevr+5].int:=mem[prevr+5].int-curactivewidth[5]+breakwidth[5];
mem[prevr+6].int:=mem[prevr+6].int-curactivewidth[6]+breakwidth[6];
end else if prevr=29993 then begin activewidth[1]:=breakwidth[1];
activewidth[2]:=breakwidth[2];activewidth[3]:=breakwidth[3];
activewidth[4]:=breakwidth[4];activewidth[5]:=breakwidth[5];
activewidth[6]:=breakwidth[6];end else begin q:=getnode(7);
mem[q].hh.rh:=r;mem[q].hh.b0:=2;mem[q].hh.b1:=0;
mem[q+1].int:=breakwidth[1]-curactivewidth[1];
mem[q+2].int:=breakwidth[2]-curactivewidth[2];
mem[q+3].int:=breakwidth[3]-curactivewidth[3];
mem[q+4].int:=breakwidth[4]-curactivewidth[4];
mem[q+5].int:=breakwidth[5]-curactivewidth[5];
mem[q+6].int:=breakwidth[6]-curactivewidth[6];mem[prevr].hh.rh:=q;
prevprevr:=prevr;prevr:=q;end{:843};
if abs(eqtb[5279].int)>=1073741823-minimumdemerits then minimumdemerits
:=1073741822 else minimumdemerits:=minimumdemerits+abs(eqtb[5279].int);
for fitclass:=0 to 3 do begin if minimaldemerits[fitclass]<=
minimumdemerits then{845:}begin q:=getnode(2);mem[q].hh.rh:=passive;
passive:=q;mem[q+1].hh.rh:=curp;{passnumber:=passnumber+1;
mem[q].hh.lh:=passnumber;}mem[q+1].hh.lh:=bestplace[fitclass];
q:=getnode(3);mem[q+1].hh.rh:=passive;
mem[q+1].hh.lh:=bestplline[fitclass]+1;mem[q].hh.b1:=fitclass;
mem[q].hh.b0:=breaktype;mem[q+2].int:=minimaldemerits[fitclass];
mem[q].hh.rh:=r;mem[prevr].hh.rh:=q;prevr:=q;
{if eqtb[5295].int>0 then[846:]begin printnl(926);
printint(mem[passive].hh.lh);print(927);printint(mem[q+1].hh.lh-1);
printchar(46);printint(fitclass);if breaktype=1 then printchar(45);
print(928);printint(mem[q+2].int);print(929);
if mem[passive+1].hh.lh=0 then printchar(48)else printint(mem[mem[
passive+1].hh.lh].hh.lh);end[:846];}end{:845};
minimaldemerits[fitclass]:=1073741823;end;minimumdemerits:=1073741823;
{844:}if r<>29993 then begin q:=getnode(7);mem[q].hh.rh:=r;
mem[q].hh.b0:=2;mem[q].hh.b1:=0;
mem[q+1].int:=curactivewidth[1]-breakwidth[1];
mem[q+2].int:=curactivewidth[2]-breakwidth[2];
mem[q+3].int:=curactivewidth[3]-breakwidth[3];
mem[q+4].int:=curactivewidth[4]-breakwidth[4];
mem[q+5].int:=curactivewidth[5]-breakwidth[5];
mem[q+6].int:=curactivewidth[6]-breakwidth[6];mem[prevr].hh.rh:=q;
prevprevr:=prevr;prevr:=q;end{:844};end{:836};if r=29993 then goto 10;
{850:}if l>easyline then begin linewidth:=secondwidth;oldl:=65534;
end else begin oldl:=l;
if l>lastspecialline then linewidth:=secondwidth else if eqtb[3412].hh.
rh=0 then linewidth:=firstwidth else linewidth:=mem[eqtb[3412].hh.rh+2*l
].int;end{:850};end;end{:835};{851:}begin artificialdemerits:=false;
shortfall:=linewidth-curactivewidth[1];
if shortfall>0 then{852:}if(curactivewidth[3]<>0)or(curactivewidth[4]<>0
)or(curactivewidth[5]<>0)then begin b:=0;fitclass:=2;
end else begin if shortfall>7230584 then if curactivewidth[2]<1663497
then begin b:=10000;fitclass:=0;goto 31;end;
b:=badness(shortfall,curactivewidth[2]);
if b>12 then if b>99 then fitclass:=0 else fitclass:=1 else fitclass:=2;
31:end{:852}else{853:}begin if-shortfall>curactivewidth[6]then b:=10001
else b:=badness(-shortfall,curactivewidth[6]);
if b>12 then fitclass:=3 else fitclass:=2;end{:853};
if(b>10000)or(pi=-10000)then{854:}begin if finalpass and(minimumdemerits
=1073741823)and(mem[r].hh.rh=29993)and(prevr=29993)then
artificialdemerits:=true else if b>threshold then goto 60;
noderstaysactive:=false;end{:854}else begin prevr:=r;
if b>threshold then goto 22;noderstaysactive:=true;end;
{855:}if artificialdemerits then d:=0 else{859:}begin d:=eqtb[5265].int+
b;if abs(d)>=10000 then d:=100000000 else d:=d*d;
if pi<>0 then if pi>0 then d:=d+pi*pi else if pi>-10000 then d:=d-pi*pi;
if(breaktype=1)and(mem[r].hh.b0=1)then if curp<>0 then d:=d+eqtb[5277].
int else d:=d+eqtb[5278].int;
if abs(fitclass-mem[r].hh.b1)>1 then d:=d+eqtb[5279].int;end{:859};
{if eqtb[5295].int>0 then[856:]begin if printednode<>curp then[857:]
begin printnl(338);
if curp=0 then shortdisplay(mem[printednode].hh.rh)else begin savelink:=
mem[curp].hh.rh;mem[curp].hh.rh:=0;printnl(338);
shortdisplay(mem[printednode].hh.rh);mem[curp].hh.rh:=savelink;end;
printednode:=curp;end[:857];printnl(64);
if curp=0 then printesc(597)else if mem[curp].hh.b0<>10 then begin if
mem[curp].hh.b0=12 then printesc(531)else if mem[curp].hh.b0=7 then
printesc(349)else if mem[curp].hh.b0=11 then printesc(340)else printesc(
343);end;print(930);
if mem[r+1].hh.rh=0 then printchar(48)else printint(mem[mem[r+1].hh.rh].
hh.lh);print(931);if b>10000 then printchar(42)else printint(b);
print(932);printint(pi);print(933);
if artificialdemerits then printchar(42)else printint(d);end[:856];}
d:=d+mem[r+2].int;
if d<=minimaldemerits[fitclass]then begin minimaldemerits[fitclass]:=d;
bestplace[fitclass]:=mem[r+1].hh.rh;bestplline[fitclass]:=l;
if d<minimumdemerits then minimumdemerits:=d;end{:855};
if noderstaysactive then goto 22;
60:{860:}mem[prevr].hh.rh:=mem[r].hh.rh;freenode(r,3);
if prevr=29993 then{861:}begin r:=mem[29993].hh.rh;
if mem[r].hh.b0=2 then begin activewidth[1]:=activewidth[1]+mem[r+1].int
;activewidth[2]:=activewidth[2]+mem[r+2].int;
activewidth[3]:=activewidth[3]+mem[r+3].int;
activewidth[4]:=activewidth[4]+mem[r+4].int;
activewidth[5]:=activewidth[5]+mem[r+5].int;
activewidth[6]:=activewidth[6]+mem[r+6].int;
curactivewidth[1]:=activewidth[1];curactivewidth[2]:=activewidth[2];
curactivewidth[3]:=activewidth[3];curactivewidth[4]:=activewidth[4];
curactivewidth[5]:=activewidth[5];curactivewidth[6]:=activewidth[6];
mem[29993].hh.rh:=mem[r].hh.rh;freenode(r,7);end;
end{:861}else if mem[prevr].hh.b0=2 then begin r:=mem[prevr].hh.rh;
if r=29993 then begin curactivewidth[1]:=curactivewidth[1]-mem[prevr+1].
int;curactivewidth[2]:=curactivewidth[2]-mem[prevr+2].int;
curactivewidth[3]:=curactivewidth[3]-mem[prevr+3].int;
curactivewidth[4]:=curactivewidth[4]-mem[prevr+4].int;
curactivewidth[5]:=curactivewidth[5]-mem[prevr+5].int;
curactivewidth[6]:=curactivewidth[6]-mem[prevr+6].int;
mem[prevprevr].hh.rh:=29993;freenode(prevr,7);prevr:=prevprevr;
end else if mem[r].hh.b0=2 then begin curactivewidth[1]:=curactivewidth[
1]+mem[r+1].int;curactivewidth[2]:=curactivewidth[2]+mem[r+2].int;
curactivewidth[3]:=curactivewidth[3]+mem[r+3].int;
curactivewidth[4]:=curactivewidth[4]+mem[r+4].int;
curactivewidth[5]:=curactivewidth[5]+mem[r+5].int;
curactivewidth[6]:=curactivewidth[6]+mem[r+6].int;
mem[prevr+1].int:=mem[prevr+1].int+mem[r+1].int;
mem[prevr+2].int:=mem[prevr+2].int+mem[r+2].int;
mem[prevr+3].int:=mem[prevr+3].int+mem[r+3].int;
mem[prevr+4].int:=mem[prevr+4].int+mem[r+4].int;
mem[prevr+5].int:=mem[prevr+5].int+mem[r+5].int;
mem[prevr+6].int:=mem[prevr+6].int+mem[r+6].int;
mem[prevr].hh.rh:=mem[r].hh.rh;freenode(r,7);end;end{:860};end{:851};
end;
10:{[858:]if curp=printednode then if curp<>0 then if mem[curp].hh.b0=7
then begin t:=mem[curp].hh.b1;while t>0 do begin t:=t-1;
printednode:=mem[printednode].hh.rh;end;end[:858]}end;
{:829}{877:}procedure postlinebreak(finalwidowpenalty:integer);
label 30,31;var q,r,s:halfword;discbreak:boolean;postdiscbreak:boolean;
curwidth:scaled;curindent:scaled;t:quarterword;pen:integer;
curline:halfword;begin{878:}q:=mem[bestbet+1].hh.rh;curp:=0;repeat r:=q;
q:=mem[q+1].hh.lh;mem[r+1].hh.lh:=curp;curp:=r;until q=0{:878};
curline:=curlist.pgfield+1;repeat{880:}{881:}q:=mem[curp+1].hh.rh;
discbreak:=false;postdiscbreak:=false;
if q<>0 then if mem[q].hh.b0=10 then begin deleteglueref(mem[q+1].hh.lh)
;mem[q+1].hh.lh:=eqtb[2890].hh.rh;mem[q].hh.b1:=9;
mem[eqtb[2890].hh.rh].hh.rh:=mem[eqtb[2890].hh.rh].hh.rh+1;goto 30;
end else begin if mem[q].hh.b0=7 then{882:}begin t:=mem[q].hh.b1;
{883:}if t=0 then r:=mem[q].hh.rh else begin r:=q;
while t>1 do begin r:=mem[r].hh.rh;t:=t-1;end;s:=mem[r].hh.rh;
r:=mem[s].hh.rh;mem[s].hh.rh:=0;flushnodelist(mem[q].hh.rh);
mem[q].hh.b1:=0;end{:883};
if mem[q+1].hh.rh<>0 then{884:}begin s:=mem[q+1].hh.rh;
while mem[s].hh.rh<>0 do s:=mem[s].hh.rh;mem[s].hh.rh:=r;
r:=mem[q+1].hh.rh;mem[q+1].hh.rh:=0;postdiscbreak:=true;end{:884};
if mem[q+1].hh.lh<>0 then{885:}begin s:=mem[q+1].hh.lh;mem[q].hh.rh:=s;
while mem[s].hh.rh<>0 do s:=mem[s].hh.rh;mem[q+1].hh.lh:=0;q:=s;
end{:885};mem[q].hh.rh:=r;discbreak:=true;
end{:882}else if(mem[q].hh.b0=9)or(mem[q].hh.b0=11)then mem[q+1].int:=0;
end else begin q:=29997;while mem[q].hh.rh<>0 do q:=mem[q].hh.rh;end;
{886:}r:=newparamglue(8);mem[r].hh.rh:=mem[q].hh.rh;mem[q].hh.rh:=r;
q:=r{:886};30:{:881};{887:}r:=mem[q].hh.rh;mem[q].hh.rh:=0;
q:=mem[29997].hh.rh;mem[29997].hh.rh:=r;
if eqtb[2889].hh.rh<>0 then begin r:=newparamglue(7);mem[r].hh.rh:=q;
q:=r;end{:887};
{889:}if curline>lastspecialline then begin curwidth:=secondwidth;
curindent:=secondindent;
end else if eqtb[3412].hh.rh=0 then begin curwidth:=firstwidth;
curindent:=firstindent;
end else begin curwidth:=mem[eqtb[3412].hh.rh+2*curline].int;
curindent:=mem[eqtb[3412].hh.rh+2*curline-1].int;end;adjusttail:=29995;
justbox:=hpack(q,curwidth,0);mem[justbox+4].int:=curindent{:889};
{888:}appendtovlist(justbox);
if 29995<>adjusttail then begin mem[curlist.tailfield].hh.rh:=mem[29995]
.hh.rh;curlist.tailfield:=adjusttail;end;adjusttail:=0{:888};
{890:}if curline+1<>bestline then begin pen:=eqtb[5276].int;
if curline=curlist.pgfield+1 then pen:=pen+eqtb[5268].int;
if curline+2=bestline then pen:=pen+finalwidowpenalty;
if discbreak then pen:=pen+eqtb[5271].int;
if pen<>0 then begin r:=newpenalty(pen);mem[curlist.tailfield].hh.rh:=r;
curlist.tailfield:=r;end;end{:890}{:880};curline:=curline+1;
curp:=mem[curp+1].hh.lh;
if curp<>0 then if not postdiscbreak then{879:}begin r:=29997;
while true do begin q:=mem[r].hh.rh;if q=mem[curp+1].hh.rh then goto 31;
if(q>=himemmin)then goto 31;if(mem[q].hh.b0<9)then goto 31;
if mem[q].hh.b0=11 then if mem[q].hh.b1<>1 then goto 31;r:=q;end;
31:if r<>29997 then begin mem[r].hh.rh:=0;
flushnodelist(mem[29997].hh.rh);mem[29997].hh.rh:=q;end;end{:879};
until curp=0;
if(curline<>bestline)or(mem[29997].hh.rh<>0)then confusion(940);
curlist.pgfield:=bestline-1;end;
{:877}{895:}{906:}function reconstitute(j,n:smallnumber;
bchar,hchar:halfword):smallnumber;label 22,30;var p:halfword;t:halfword;
q:fourquarters;currh:halfword;testchar:halfword;w:scaled;k:fontindex;
begin hyphenpassed:=0;t:=29996;w:=0;mem[29996].hh.rh:=0;
{908:}curl:=hu[j]+0;curq:=t;if j=0 then begin ligaturepresent:=initlig;
p:=initlist;if ligaturepresent then lfthit:=initlft;
while p>0 do begin begin mem[t].hh.rh:=getavail;t:=mem[t].hh.rh;
mem[t].hh.b0:=hf;mem[t].hh.b1:=mem[p].hh.b1;end;p:=mem[p].hh.rh;end;
end else if curl<256 then begin mem[t].hh.rh:=getavail;t:=mem[t].hh.rh;
mem[t].hh.b0:=hf;mem[t].hh.b1:=curl;end;ligstack:=0;
begin if j<n then curr:=hu[j+1]+0 else curr:=bchar;
if odd(hyf[j])then currh:=hchar else currh:=256;end{:908};
22:{909:}if curl=256 then begin k:=bcharlabel[hf];
if k=0 then goto 30 else q:=fontinfo[k].qqqq;
end else begin q:=fontinfo[charbase[hf]+curl].qqqq;
if((q.b2-0)mod 4)<>1 then goto 30;k:=ligkernbase[hf]+q.b3;
q:=fontinfo[k].qqqq;
if q.b0>128 then begin k:=ligkernbase[hf]+256*q.b2+q.b3+32768-256*(128);
q:=fontinfo[k].qqqq;end;end;
if currh<256 then testchar:=currh else testchar:=curr;
while true do begin if q.b1=testchar then if q.b0<=128 then if currh<256
then begin hyphenpassed:=j;hchar:=256;currh:=256;goto 22;
end else begin if hchar<256 then if odd(hyf[j])then begin hyphenpassed:=
j;hchar:=256;end;
if q.b2<128 then{911:}begin if curl=256 then lfthit:=true;
if j=n then if ligstack=0 then rthit:=true;
begin if interrupt<>0 then pauseforinstructions;end;
begin if ((q.b2>=1)and(q.b2<=3))or((q.b2>=5)and(q.b2<=7))or(q.b2=11) then case q.b2 of 1,5:begin curl:=q.b3;ligaturepresent:=true;end;
2,6:begin curr:=q.b3;
if ligstack>0 then mem[ligstack].hh.b1:=curr else begin ligstack:=
newligitem(curr);if j=n then bchar:=256 else begin p:=getavail;
mem[ligstack+1].hh.rh:=p;mem[p].hh.b1:=hu[j+1]+0;mem[p].hh.b0:=hf;end;
end;end;3:begin curr:=q.b3;p:=ligstack;ligstack:=newligitem(curr);
mem[ligstack].hh.rh:=p;end;
7,11:begin if ligaturepresent then begin p:=newligature(hf,curl,mem[curq
].hh.rh);if lfthit then begin mem[p].hh.b1:=2;lfthit:=false;end;
if false then if ligstack=0 then begin mem[p].hh.b1:=mem[p].hh.b1+1;
rthit:=false;end;mem[curq].hh.rh:=p;t:=p;ligaturepresent:=false;end;
curq:=t;curl:=q.b3;ligaturepresent:=true;end end else begin curl:=q.b3;
ligaturepresent:=true;
if ligstack>0 then begin if mem[ligstack+1].hh.rh>0 then begin mem[t].hh
.rh:=mem[ligstack+1].hh.rh;t:=mem[t].hh.rh;j:=j+1;end;p:=ligstack;
ligstack:=mem[p].hh.rh;freenode(p,2);
if ligstack=0 then begin if j<n then curr:=hu[j+1]+0 else curr:=bchar;
if odd(hyf[j])then currh:=hchar else currh:=256;
end else curr:=mem[ligstack].hh.b1;
end else if j=n then goto 30 else begin begin mem[t].hh.rh:=getavail;
t:=mem[t].hh.rh;mem[t].hh.b0:=hf;mem[t].hh.b1:=curr;end;j:=j+1;
begin if j<n then curr:=hu[j+1]+0 else curr:=bchar;
if odd(hyf[j])then currh:=hchar else currh:=256;end;end;end end;
if q.b2>4 then if q.b2<>7 then goto 30;goto 22;end{:911};
w:=fontinfo[kernbase[hf]+256*q.b2+q.b3].int;goto 30;end;
if q.b0>=128 then if currh=256 then goto 30 else begin currh:=256;
goto 22;end;k:=k+q.b0+1;q:=fontinfo[k].qqqq;end;30:{:909};
{910:}if ligaturepresent then begin p:=newligature(hf,curl,mem[curq].hh.
rh);if lfthit then begin mem[p].hh.b1:=2;lfthit:=false;end;
if rthit then if ligstack=0 then begin mem[p].hh.b1:=mem[p].hh.b1+1;
rthit:=false;end;mem[curq].hh.rh:=p;t:=p;ligaturepresent:=false;end;
if w<>0 then begin mem[t].hh.rh:=newkern(w);t:=mem[t].hh.rh;w:=0;end;
if ligstack>0 then begin curq:=t;curl:=mem[ligstack].hh.b1;
ligaturepresent:=true;
begin if mem[ligstack+1].hh.rh>0 then begin mem[t].hh.rh:=mem[ligstack+1
].hh.rh;t:=mem[t].hh.rh;j:=j+1;end;p:=ligstack;ligstack:=mem[p].hh.rh;
freenode(p,2);
if ligstack=0 then begin if j<n then curr:=hu[j+1]+0 else curr:=bchar;
if odd(hyf[j])then currh:=hchar else currh:=256;
end else curr:=mem[ligstack].hh.b1;end;goto 22;end{:910};
reconstitute:=j;end;{:906}procedure hyphenate;
label 50,30,40,41,42,45,10;var{901:}i,j,l:0..65;q,r,s:halfword;
bchar:halfword;{:901}{912:}majortail,minortail:halfword;c:ASCIIcode;
cloc:0..63;rcount:integer;hyfnode:halfword;{:912}{922:}z:triepointer;
v:integer;{:922}{929:}h:hyphpointer;k:strnumber;u:poolpointer;
{:929}begin{923:}for j:=0 to hn do hyf[j]:=0;{930:}h:=hc[1];hn:=hn+1;
hc[hn]:=curlang;for j:=2 to hn do h:=(h+h+hc[j])mod 307;
while true do begin{931:}k:=hyphword[h];if k=0 then goto 45;
if(strstart[k+1]-strstart[k])<hn then goto 45;
if(strstart[k+1]-strstart[k])=hn then begin j:=1;u:=strstart[k];
repeat if strpool[u]<hc[j]then goto 45;if strpool[u]>hc[j]then goto 30;
j:=j+1;u:=u+1;until j>hn;{932:}s:=hyphlist[h];
while s<>0 do begin hyf[mem[s].hh.lh]:=1;s:=mem[s].hh.rh;end{:932};
hn:=hn-1;goto 40;end;30:{:931};if h>0 then h:=h-1 else h:=307;end;
45:hn:=hn-1{:930};if trie[curlang+1].b1<>curlang+0 then goto 10;
hc[0]:=0;hc[hn+1]:=0;hc[hn+2]:=256;
for j:=0 to hn-rhyf+1 do begin z:=trie[curlang+1].rh+hc[j];l:=j;
while hc[l]=trie[z].b1-0 do begin if trie[z].b0<>0 then{924:}begin v:=
trie[z].b0;repeat v:=v+opstart[curlang];i:=l-hyfdistance[v];
if hyfnum[v]>hyf[i]then hyf[i]:=hyfnum[v];v:=hyfnext[v];until v=0;
end{:924};l:=l+1;z:=trie[z].rh+hc[l];end;end;
40:for j:=0 to lhyf-1 do hyf[j]:=0;
for j:=0 to rhyf-1 do hyf[hn-j]:=0{:923};
{902:}for j:=lhyf to hn-rhyf do if odd(hyf[j])then goto 41;goto 10;
41:{:902};{903:}q:=mem[hb].hh.rh;mem[hb].hh.rh:=0;r:=mem[ha].hh.rh;
mem[ha].hh.rh:=0;bchar:=hyfbchar;
if(ha>=himemmin)then if mem[ha].hh.b0<>hf then goto 42 else begin
initlist:=ha;initlig:=false;hu[0]:=mem[ha].hh.b1-0;
end else if mem[ha].hh.b0=6 then if mem[ha+1].hh.b0<>hf then goto 42
else begin initlist:=mem[ha+1].hh.rh;initlig:=true;
initlft:=(mem[ha].hh.b1>1);hu[0]:=mem[ha+1].hh.b1-0;
if initlist=0 then if initlft then begin hu[0]:=256;initlig:=false;end;
freenode(ha,2);
end else begin if not(r>=himemmin)then if mem[r].hh.b0=6 then if mem[r].
hh.b1>1 then goto 42;j:=1;s:=ha;initlist:=0;goto 50;end;s:=curp;
while mem[s].hh.rh<>ha do s:=mem[s].hh.rh;j:=0;goto 50;42:s:=ha;j:=0;
hu[0]:=256;initlig:=false;initlist:=0;50:flushnodelist(r);
{913:}repeat l:=j;j:=reconstitute(j,hn,bchar,hyfchar+0)+1;
if hyphenpassed=0 then begin mem[s].hh.rh:=mem[29996].hh.rh;
while mem[s].hh.rh>0 do s:=mem[s].hh.rh;if odd(hyf[j-1])then begin l:=j;
hyphenpassed:=j-1;mem[29996].hh.rh:=0;end;end;
if hyphenpassed>0 then{914:}repeat r:=getnode(2);
mem[r].hh.rh:=mem[29996].hh.rh;mem[r].hh.b0:=7;majortail:=r;rcount:=0;
while mem[majortail].hh.rh>0 do begin majortail:=mem[majortail].hh.rh;
rcount:=rcount+1;end;i:=hyphenpassed;hyf[i]:=0;{915:}minortail:=0;
mem[r+1].hh.lh:=0;hyfnode:=newcharacter(hf,hyfchar);
if hyfnode<>0 then begin i:=i+1;c:=hu[i];hu[i]:=hyfchar;
begin mem[hyfnode].hh.rh:=avail;avail:=hyfnode;{dynused:=dynused-1;}end;
end;while l<=i do begin l:=reconstitute(l,i,fontbchar[hf],256)+1;
if mem[29996].hh.rh>0 then begin if minortail=0 then mem[r+1].hh.lh:=mem
[29996].hh.rh else mem[minortail].hh.rh:=mem[29996].hh.rh;
minortail:=mem[29996].hh.rh;
while mem[minortail].hh.rh>0 do minortail:=mem[minortail].hh.rh;end;end;
if hyfnode<>0 then begin hu[i]:=c;l:=i;i:=i-1;end{:915};
{916:}minortail:=0;mem[r+1].hh.rh:=0;cloc:=0;
if bcharlabel[hf]<>0 then begin l:=l-1;c:=hu[l];cloc:=l;hu[l]:=256;end;
while l<j do begin repeat l:=reconstitute(l,hn,bchar,256)+1;
if cloc>0 then begin hu[cloc]:=c;cloc:=0;end;
if mem[29996].hh.rh>0 then begin if minortail=0 then mem[r+1].hh.rh:=mem
[29996].hh.rh else mem[minortail].hh.rh:=mem[29996].hh.rh;
minortail:=mem[29996].hh.rh;
while mem[minortail].hh.rh>0 do minortail:=mem[minortail].hh.rh;end;
until l>=j;while l>j do{917:}begin j:=reconstitute(j,hn,bchar,256)+1;
mem[majortail].hh.rh:=mem[29996].hh.rh;
while mem[majortail].hh.rh>0 do begin majortail:=mem[majortail].hh.rh;
rcount:=rcount+1;end;end{:917};end{:916};
{918:}if rcount>127 then begin mem[s].hh.rh:=mem[r].hh.rh;
mem[r].hh.rh:=0;flushnodelist(r);end else begin mem[s].hh.rh:=r;
mem[r].hh.b1:=rcount;end;s:=majortail{:918};hyphenpassed:=j-1;
mem[29996].hh.rh:=0;until not odd(hyf[j-1]){:914};until j>hn;
mem[s].hh.rh:=q{:913};flushlist(initlist){:903};10:end;
{:895}{942:}{944:}function newtrieop(d,n:smallnumber;
v:quarterword):quarterword;label 10;var h:-trieopsize..trieopsize;
u:quarterword;l:0..trieopsize;
begin h:=abs(n+313*d+361*v+1009*curlang)mod(trieopsize+trieopsize)-
trieopsize;while true do begin l:=trieophash[h];
if l=0 then begin if trieopptr=trieopsize then overflow(950,trieopsize);
u:=trieused[curlang];if u=255 then overflow(951,255);
trieopptr:=trieopptr+1;u:=u+1;trieused[curlang]:=u;
hyfdistance[trieopptr]:=d;hyfnum[trieopptr]:=n;hyfnext[trieopptr]:=v;
trieoplang[trieopptr]:=curlang;trieophash[h]:=trieopptr;
trieopval[trieopptr]:=u;newtrieop:=u;goto 10;end;
if(hyfdistance[l]=d)and(hyfnum[l]=n)and(hyfnext[l]=v)and(trieoplang[l]=
curlang)then begin newtrieop:=trieopval[l];goto 10;end;
if h>-trieopsize then h:=h-1 else h:=trieopsize;end;10:end;
{:944}{948:}function trienode(p:triepointer):triepointer;label 10;
var h:triepointer;q:triepointer;
begin h:=abs(triec[p]+1009*trieo[p]+2718*triel[p]+3142*trier[p])mod
triesize;while true do begin q:=triehash[h];
if q=0 then begin triehash[h]:=p;trienode:=p;goto 10;end;
if(triec[q]=triec[p])and(trieo[q]=trieo[p])and(triel[q]=triel[p])and(
trier[q]=trier[p])then begin trienode:=q;goto 10;end;
if h>0 then h:=h-1 else h:=triesize;end;10:end;
{:948}{949:}function compresstrie(p:triepointer):triepointer;
begin if p=0 then compresstrie:=0 else begin triel[p]:=compresstrie(
triel[p]);trier[p]:=compresstrie(trier[p]);compresstrie:=trienode(p);
end;end;{:949}{953:}procedure firstfit(p:triepointer);label 45,40;
var h:triepointer;z:triepointer;q:triepointer;c:ASCIIcode;
l,r:triepointer;ll:1..256;begin c:=triec[p];z:=triemin[c];
while true do begin h:=z-c;
{954:}if triemax<h+256 then begin if triesize<=h+256 then overflow(952,
triesize);repeat triemax:=triemax+1;trietaken[triemax]:=false;
trie[triemax].rh:=triemax+1;trie[triemax].lh:=triemax-1;
until triemax=h+256;end{:954};if trietaken[h]then goto 45;
{955:}q:=trier[p];
while q>0 do begin if trie[h+triec[q]].rh=0 then goto 45;q:=trier[q];
end;goto 40{:955};45:z:=trie[z].rh;end;40:{956:}trietaken[h]:=true;
triehash[p]:=h;q:=p;repeat z:=h+triec[q];l:=trie[z].lh;r:=trie[z].rh;
trie[r].lh:=l;trie[l].rh:=r;trie[z].rh:=0;
if l<256 then begin if z<256 then ll:=z else ll:=256;
repeat triemin[l]:=r;l:=l+1;until l=ll;end;q:=trier[q];until q=0{:956};
end;{:953}{957:}procedure triepack(p:triepointer);var q:triepointer;
begin repeat q:=triel[p];
if(q>0)and(triehash[q]=0)then begin firstfit(q);triepack(q);end;
p:=trier[p];until p=0;end;{:957}{959:}procedure triefix(p:triepointer);
var q:triepointer;c:ASCIIcode;z:triepointer;begin z:=triehash[p];
repeat q:=triel[p];c:=triec[p];trie[z+c].rh:=triehash[q];
trie[z+c].b1:=c+0;trie[z+c].b0:=trieo[p];if q>0 then triefix(q);
p:=trier[p];until p=0;end;{:959}{960:}procedure newpatterns;label 30,31;
var k,l:0..64;digitsensed:boolean;v:quarterword;p,q:triepointer;
firstchild:boolean;c:ASCIIcode;
begin if trienotready then begin if eqtb[5313].int<=0 then curlang:=0
else if eqtb[5313].int>255 then curlang:=0 else curlang:=eqtb[5313].int;
scanleftbrace;{961:}k:=0;hyf[0]:=0;digitsensed:=false;
while true do begin getxtoken;
begin if (curcmd=2)or((curcmd>=10)and(curcmd<=12)) then case curcmd of 11,12:{962:}if digitsensed or(curchr<48)or(curchr>57)then
begin if curchr=46 then curchr:=0 else begin curchr:=eqtb[4239+curchr].
hh.rh;if curchr=0 then begin begin if interaction=3 then;printnl(262);
print(958);end;begin helpptr:=1;helpline[0]:=957;end;error;end;end;
if k<63 then begin k:=k+1;hc[k]:=curchr;hyf[k]:=0;digitsensed:=false;
end;end else if k<63 then begin hyf[k]:=curchr-48;digitsensed:=true;
end{:962};
10,2:begin if k>0 then{963:}begin{965:}if hc[1]=0 then hyf[0]:=0;
if hc[k]=0 then hyf[k]:=0;l:=k;v:=0;
while true do begin if hyf[l]<>0 then v:=newtrieop(k-l,hyf[l],v);
if l>0 then l:=l-1 else goto 31;end;31:{:965};q:=0;hc[0]:=curlang;
while l<=k do begin c:=hc[l];l:=l+1;p:=triel[q];firstchild:=true;
while(p>0)and(c>triec[p])do begin q:=p;p:=trier[q];firstchild:=false;
end;
if(p=0)or(c<triec[p])then{964:}begin if trieptr=triesize then overflow(
952,triesize);trieptr:=trieptr+1;trier[trieptr]:=p;p:=trieptr;
triel[p]:=0;if firstchild then triel[q]:=p else trier[q]:=p;triec[p]:=c;
trieo[p]:=0;end{:964};q:=p;end;
if trieo[q]<>0 then begin begin if interaction=3 then;printnl(262);
print(959);end;begin helpptr:=1;helpline[0]:=957;end;error;end;
trieo[q]:=v;end{:963};if curcmd=2 then goto 30;k:=0;hyf[0]:=0;
digitsensed:=false;end end else begin begin if interaction=3 then;
printnl(262);print(956);end;printesc(954);begin helpptr:=1;
helpline[0]:=957;end;error;end end;end;30:{:961};
end else begin begin if interaction=3 then;printnl(262);print(953);end;
printesc(954);begin helpptr:=1;helpline[0]:=955;end;error;
mem[29988].hh.rh:=scantoks(false,false);flushlist(defref);end;end;
{:960}{966:}procedure inittrie;var p:triepointer;j,k,t:integer;
r,s:triepointer;h:twohalves;begin{952:}{945:}opstart[0]:=-0;
for j:=1 to 255 do opstart[j]:=opstart[j-1]+trieused[j-1]-0;
for j:=1 to trieopptr do trieophash[j]:=opstart[trieoplang[j]]+trieopval
[j];
for j:=1 to trieopptr do while trieophash[j]>j do begin k:=trieophash[j]
;t:=hyfdistance[k];hyfdistance[k]:=hyfdistance[j];hyfdistance[j]:=t;
t:=hyfnum[k];hyfnum[k]:=hyfnum[j];hyfnum[j]:=t;t:=hyfnext[k];
hyfnext[k]:=hyfnext[j];hyfnext[j]:=t;trieophash[j]:=trieophash[k];
trieophash[k]:=k;end{:945};for p:=0 to triesize do triehash[p]:=0;
triel[0]:=compresstrie(triel[0]);for p:=0 to trieptr do triehash[p]:=0;
for p:=0 to 255 do triemin[p]:=p+1;trie[0].rh:=1;triemax:=0{:952};
if triel[0]<>0 then begin firstfit(triel[0]);triepack(triel[0]);end;
{958:}h.rh:=0;h.b0:=0;h.b1:=0;
if triel[0]=0 then begin for r:=0 to 256 do trie[r]:=h;triemax:=256;
end else begin triefix(triel[0]);r:=0;repeat s:=trie[r].rh;trie[r]:=h;
r:=s;until r>triemax;end;trie[0].b1:=63;{:958};trienotready:=false;end;
{:966}{:942}procedure linebreak(finalwidowpenalty:integer);
label 30,31,32,33,34,35,22;var{862:}autobreaking:boolean;prevp:halfword;
q,r,s,prevs:halfword;f:internalfontnumber;{:862}{893:}j:smallnumber;
c:0..255;{:893}begin packbeginline:=curlist.mlfield;
{816:}mem[29997].hh.rh:=mem[curlist.headfield].hh.rh;
if(curlist.tailfield>=himemmin)then begin mem[curlist.tailfield].hh.rh:=
newpenalty(10000);curlist.tailfield:=mem[curlist.tailfield].hh.rh;
end else if mem[curlist.tailfield].hh.b0<>10 then begin mem[curlist.
tailfield].hh.rh:=newpenalty(10000);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;
end else begin mem[curlist.tailfield].hh.b0:=12;
deleteglueref(mem[curlist.tailfield+1].hh.lh);
flushnodelist(mem[curlist.tailfield+1].hh.rh);
mem[curlist.tailfield+1].int:=10000;end;
mem[curlist.tailfield].hh.rh:=newparamglue(14);
initcurlang:=curlist.pgfield mod 65536;
initlhyf:=curlist.pgfield div 4194304;
initrhyf:=(curlist.pgfield div 65536)mod 64;popnest;
{:816}{827:}noshrinkerroryet:=true;
if(mem[eqtb[2889].hh.rh].hh.b1<>0)and(mem[eqtb[2889].hh.rh+3].int<>0)
then begin eqtb[2889].hh.rh:=finiteshrink(eqtb[2889].hh.rh);end;
if(mem[eqtb[2890].hh.rh].hh.b1<>0)and(mem[eqtb[2890].hh.rh+3].int<>0)
then begin eqtb[2890].hh.rh:=finiteshrink(eqtb[2890].hh.rh);end;
q:=eqtb[2889].hh.rh;r:=eqtb[2890].hh.rh;
background[1]:=mem[q+1].int+mem[r+1].int;background[2]:=0;
background[3]:=0;background[4]:=0;background[5]:=0;
background[2+mem[q].hh.b0]:=mem[q+2].int;
background[2+mem[r].hh.b0]:=background[2+mem[r].hh.b0]+mem[r+2].int;
background[6]:=mem[q+3].int+mem[r+3].int;
{:827}{834:}minimumdemerits:=1073741823;minimaldemerits[3]:=1073741823;
minimaldemerits[2]:=1073741823;minimaldemerits[1]:=1073741823;
minimaldemerits[0]:=1073741823;
{:834}{848:}if eqtb[3412].hh.rh=0 then if eqtb[5847].int=0 then begin
lastspecialline:=0;secondwidth:=eqtb[5833].int;secondindent:=0;
end else{849:}begin lastspecialline:=abs(eqtb[5304].int);
if eqtb[5304].int<0 then begin firstwidth:=eqtb[5833].int-abs(eqtb[5847]
.int);
if eqtb[5847].int>=0 then firstindent:=eqtb[5847].int else firstindent:=
0;secondwidth:=eqtb[5833].int;secondindent:=0;
end else begin firstwidth:=eqtb[5833].int;firstindent:=0;
secondwidth:=eqtb[5833].int-abs(eqtb[5847].int);
if eqtb[5847].int>=0 then secondindent:=eqtb[5847].int else secondindent
:=0;end;
end{:849}else begin lastspecialline:=mem[eqtb[3412].hh.rh].hh.lh-1;
secondwidth:=mem[eqtb[3412].hh.rh+2*(lastspecialline+1)].int;
secondindent:=mem[eqtb[3412].hh.rh+2*lastspecialline+1].int;end;
if eqtb[5282].int=0 then easyline:=lastspecialline else easyline:=65535
{:848};{863:}threshold:=eqtb[5263].int;
if threshold>=0 then begin{if eqtb[5295].int>0 then begin
begindiagnostic;printnl(934);end;}secondpass:=false;finalpass:=false;
end else begin threshold:=eqtb[5264].int;secondpass:=true;
finalpass:=(eqtb[5850].int<=0);
{if eqtb[5295].int>0 then begindiagnostic;}end;
while true do begin if threshold>10000 then threshold:=10000;
if secondpass then{891:}begin if trienotready then inittrie;
curlang:=initcurlang;lhyf:=initlhyf;rhyf:=initrhyf;end{:891};
{864:}q:=getnode(3);mem[q].hh.b0:=0;mem[q].hh.b1:=2;mem[q].hh.rh:=29993;
mem[q+1].hh.rh:=0;mem[q+1].hh.lh:=curlist.pgfield+1;mem[q+2].int:=0;
mem[29993].hh.rh:=q;activewidth[1]:=background[1];
activewidth[2]:=background[2];activewidth[3]:=background[3];
activewidth[4]:=background[4];activewidth[5]:=background[5];
activewidth[6]:=background[6];passive:=0;printednode:=29997;
passnumber:=0;fontinshortdisplay:=0{:864};curp:=mem[29997].hh.rh;
autobreaking:=true;prevp:=curp;
while(curp<>0)and(mem[29993].hh.rh<>29993)do{866:}begin if(curp>=
himemmin)then{867:}begin prevp:=curp;repeat f:=mem[curp].hh.b0;
activewidth[1]:=activewidth[1]+fontinfo[widthbase[f]+fontinfo[charbase[f
]+mem[curp].hh.b1].qqqq.b0].int;curp:=mem[curp].hh.rh;
until not(curp>=himemmin);end{:867};
begin if ((mem[curp].hh.b0>=0)and(mem[curp].hh.b0<=12)) then case mem[curp].hh.b0 of 0,1,2:activewidth[1]:=activewidth[1]+mem[curp+1]
.int;
8:{1362:}if mem[curp].hh.b1=4 then begin curlang:=mem[curp+1].hh.rh;
lhyf:=mem[curp+1].hh.b0;rhyf:=mem[curp+1].hh.b1;end{:1362};
10:begin{868:}if autobreaking then begin if(prevp>=himemmin)then
trybreak(0,0)else if(mem[prevp].hh.b0<9)then trybreak(0,0)else if(mem[
prevp].hh.b0=11)and(mem[prevp].hh.b1<>1)then trybreak(0,0);end;
if(mem[mem[curp+1].hh.lh].hh.b1<>0)and(mem[mem[curp+1].hh.lh+3].int<>0)
then begin mem[curp+1].hh.lh:=finiteshrink(mem[curp+1].hh.lh);end;
q:=mem[curp+1].hh.lh;activewidth[1]:=activewidth[1]+mem[q+1].int;
activewidth[2+mem[q].hh.b0]:=activewidth[2+mem[q].hh.b0]+mem[q+2].int;
activewidth[6]:=activewidth[6]+mem[q+3].int{:868};
if secondpass and autobreaking then{894:}begin prevs:=curp;
s:=mem[prevs].hh.rh;
if s<>0 then begin{896:}while true do begin if(s>=himemmin)then begin c
:=mem[s].hh.b1-0;hf:=mem[s].hh.b0;
end else if mem[s].hh.b0=6 then if mem[s+1].hh.rh=0 then goto 22 else
begin q:=mem[s+1].hh.rh;c:=mem[q].hh.b1-0;hf:=mem[q].hh.b0;
end else if(mem[s].hh.b0=11)and(mem[s].hh.b1=0)then goto 22 else if mem[
s].hh.b0=8 then begin{1363:}if mem[s].hh.b1=4 then begin curlang:=mem[s
+1].hh.rh;lhyf:=mem[s+1].hh.b0;rhyf:=mem[s+1].hh.b1;end{:1363};goto 22;
end else goto 31;
if eqtb[4239+c].hh.rh<>0 then if(eqtb[4239+c].hh.rh=c)or(eqtb[5301].int>
0)then goto 32 else goto 31;22:prevs:=s;s:=mem[prevs].hh.rh;end;
32:hyfchar:=hyphenchar[hf];if hyfchar<0 then goto 31;
if hyfchar>255 then goto 31;ha:=prevs{:896};
if lhyf+rhyf>63 then goto 31;{897:}hn:=0;
while true do begin if(s>=himemmin)then begin if mem[s].hh.b0<>hf then
goto 33;hyfbchar:=mem[s].hh.b1;c:=hyfbchar-0;
if eqtb[4239+c].hh.rh=0 then goto 33;if hn=63 then goto 33;hb:=s;
hn:=hn+1;hu[hn]:=c;hc[hn]:=eqtb[4239+c].hh.rh;hyfbchar:=256;
end else if mem[s].hh.b0=6 then{898:}begin if mem[s+1].hh.b0<>hf then
goto 33;j:=hn;q:=mem[s+1].hh.rh;if q>0 then hyfbchar:=mem[q].hh.b1;
while q>0 do begin c:=mem[q].hh.b1-0;
if eqtb[4239+c].hh.rh=0 then goto 33;if j=63 then goto 33;j:=j+1;
hu[j]:=c;hc[j]:=eqtb[4239+c].hh.rh;q:=mem[q].hh.rh;end;hb:=s;hn:=j;
if odd(mem[s].hh.b1)then hyfbchar:=fontbchar[hf]else hyfbchar:=256;
end{:898}else if(mem[s].hh.b0=11)and(mem[s].hh.b1=0)then begin hb:=s;
hyfbchar:=fontbchar[hf];end else goto 33;s:=mem[s].hh.rh;end;33:{:897};
{899:}if hn<lhyf+rhyf then goto 31;
while true do begin if not((s>=himemmin))then begin if ((mem[s].hh.b0>=3)and(mem[s].hh.b0<=6))or(mem[s].hh.b0=8)or((mem[s].hh.b0>=10)and(mem[s].hh.b0<=12)) then case mem[s].hh.b0 of 6:;
11:if mem[s].hh.b1<>0 then goto 34;8,10,12,3,5,4:goto 34 end else goto 31 end;s:=mem[s].hh.rh;end;34:{:899};hyphenate;end;
31:end{:894};end;
11:if mem[curp].hh.b1=1 then begin if not(mem[curp].hh.rh>=himemmin)and
autobreaking then if mem[mem[curp].hh.rh].hh.b0=10 then trybreak(0,0);
activewidth[1]:=activewidth[1]+mem[curp+1].int;
end else activewidth[1]:=activewidth[1]+mem[curp+1].int;
6:begin f:=mem[curp+1].hh.b0;
activewidth[1]:=activewidth[1]+fontinfo[widthbase[f]+fontinfo[charbase[f
]+mem[curp+1].hh.b1].qqqq.b0].int;end;
7:{869:}begin s:=mem[curp+1].hh.lh;discwidth:=0;
if s=0 then trybreak(eqtb[5267].int,1)else begin repeat{870:}if(s>=
himemmin)then begin f:=mem[s].hh.b0;
discwidth:=discwidth+fontinfo[widthbase[f]+fontinfo[charbase[f]+mem[s].
hh.b1].qqqq.b0].int;
end else begin if ((mem[s].hh.b0>=0)and(mem[s].hh.b0<=2))or(mem[s].hh.b0=6)or(mem[s].hh.b0=11) then case mem[s].hh.b0 of 6:begin f:=mem[s+1].hh.b0;
discwidth:=discwidth+fontinfo[widthbase[f]+fontinfo[charbase[f]+mem[s+1]
.hh.b1].qqqq.b0].int;end;0,1,2,11:discwidth:=discwidth+mem[s+1].int end else confusion(938) end{:870};s:=mem[s].hh.rh;until s=0;
activewidth[1]:=activewidth[1]+discwidth;trybreak(eqtb[5266].int,1);
activewidth[1]:=activewidth[1]-discwidth;end;r:=mem[curp].hh.b1;
s:=mem[curp].hh.rh;
while r>0 do begin{871:}if(s>=himemmin)then begin f:=mem[s].hh.b0;
activewidth[1]:=activewidth[1]+fontinfo[widthbase[f]+fontinfo[charbase[f
]+mem[s].hh.b1].qqqq.b0].int;
end else begin if ((mem[s].hh.b0>=0)and(mem[s].hh.b0<=2))or(mem[s].hh.b0=6)or(mem[s].hh.b0=11) then case mem[s].hh.b0 of 6:begin f:=mem[s+1].hh.b0;
activewidth[1]:=activewidth[1]+fontinfo[widthbase[f]+fontinfo[charbase[f
]+mem[s+1].hh.b1].qqqq.b0].int;end;
0,1,2,11:activewidth[1]:=activewidth[1]+mem[s+1].int end else confusion(939) end{:871};r:=r-1;s:=mem[s].hh.rh;end;prevp:=curp;
curp:=s;goto 35;end{:869};9:begin autobreaking:=(mem[curp].hh.b1=1);
begin if not(mem[curp].hh.rh>=himemmin)and autobreaking then if mem[mem[
curp].hh.rh].hh.b0=10 then trybreak(0,0);
activewidth[1]:=activewidth[1]+mem[curp+1].int;end;end;
12:trybreak(mem[curp+1].int,0);4,3,5: end else confusion(937) end;
prevp:=curp;curp:=mem[curp].hh.rh;35:end{:866};
if curp=0 then{873:}begin trybreak(-10000,1);
if mem[29993].hh.rh<>29993 then begin{874:}r:=mem[29993].hh.rh;
fewestdemerits:=1073741823;
repeat if mem[r].hh.b0<>2 then if mem[r+2].int<fewestdemerits then begin
fewestdemerits:=mem[r+2].int;bestbet:=r;end;r:=mem[r].hh.rh;
until r=29993;bestline:=mem[bestbet+1].hh.lh{:874};
if eqtb[5282].int=0 then goto 30;{875:}begin r:=mem[29993].hh.rh;
actuallooseness:=0;
repeat if mem[r].hh.b0<>2 then begin linediff:=mem[r+1].hh.lh-bestline;
if((linediff<actuallooseness)and(eqtb[5282].int<=linediff))or((linediff>
actuallooseness)and(eqtb[5282].int>=linediff))then begin bestbet:=r;
actuallooseness:=linediff;fewestdemerits:=mem[r+2].int;
end else if(linediff=actuallooseness)and(mem[r+2].int<fewestdemerits)
then begin bestbet:=r;fewestdemerits:=mem[r+2].int;end;end;
r:=mem[r].hh.rh;until r=29993;bestline:=mem[bestbet+1].hh.lh;end{:875};
if(actuallooseness=eqtb[5282].int)or finalpass then goto 30;end;
end{:873};{865:}q:=mem[29993].hh.rh;
while q<>29993 do begin curp:=mem[q].hh.rh;
if mem[q].hh.b0=2 then freenode(q,7)else freenode(q,3);q:=curp;end;
q:=passive;while q<>0 do begin curp:=mem[q].hh.rh;freenode(q,2);q:=curp;
end{:865};
if not secondpass then begin{if eqtb[5295].int>0 then printnl(935);}
threshold:=eqtb[5264].int;secondpass:=true;
finalpass:=(eqtb[5850].int<=0);
end else begin{if eqtb[5295].int>0 then printnl(936);}
background[2]:=background[2]+eqtb[5850].int;finalpass:=true;end;end;
30:{if eqtb[5295].int>0 then begin enddiagnostic(true);
normalizeselector;end;}{:863};
{876:}postlinebreak(finalwidowpenalty){:876};{865:}q:=mem[29993].hh.rh;
while q<>29993 do begin curp:=mem[q].hh.rh;
if mem[q].hh.b0=2 then freenode(q,7)else freenode(q,3);q:=curp;end;
q:=passive;while q<>0 do begin curp:=mem[q].hh.rh;freenode(q,2);q:=curp;
end{:865};packbeginline:=0;end;{:815}{934:}procedure newhyphexceptions;
label 21,10,40,45;var n:0..64;j:0..64;h:hyphpointer;k:strnumber;
p:halfword;q:halfword;s,t:strnumber;u,v:poolpointer;begin scanleftbrace;
if eqtb[5313].int<=0 then curlang:=0 else if eqtb[5313].int>255 then
curlang:=0 else curlang:=eqtb[5313].int;{935:}n:=0;p:=0;
while true do begin getxtoken;
21:begin if (curcmd=2)or((curcmd>=10)and(curcmd<=12))or(curcmd=16)or(curcmd=68) then case curcmd of 11,12,68:{937:}if curchr=45 then{938:}begin if n<63
then begin q:=getavail;mem[q].hh.rh:=p;mem[q].hh.lh:=n;p:=q;end;
end{:938}else begin if eqtb[4239+curchr].hh.rh=0 then begin begin if
interaction=3 then;printnl(262);print(946);end;begin helpptr:=2;
helpline[1]:=947;helpline[0]:=948;end;error;
end else if n<63 then begin n:=n+1;hc[n]:=eqtb[4239+curchr].hh.rh;end;
end{:937};16:begin scancharnum;curchr:=curval;curcmd:=68;goto 21;end;
10,2:begin if n>1 then{939:}begin n:=n+1;hc[n]:=curlang;
begin if poolptr+n>poolsize then overflow(257,poolsize-initpoolptr);end;
h:=0;for j:=1 to n do begin h:=(h+h+hc[j])mod 307;
begin strpool[poolptr]:=hc[j];poolptr:=poolptr+1;end;end;s:=makestring;
{940:}if hyphcount=307 then overflow(949,307);hyphcount:=hyphcount+1;
while hyphword[h]<>0 do begin{941:}k:=hyphword[h];
if(strstart[k+1]-strstart[k])<(strstart[s+1]-strstart[s])then goto 40;
if(strstart[k+1]-strstart[k])>(strstart[s+1]-strstart[s])then goto 45;
u:=strstart[k];v:=strstart[s];
repeat if strpool[u]<strpool[v]then goto 40;
if strpool[u]>strpool[v]then goto 45;u:=u+1;v:=v+1;
until u=strstart[k+1];40:q:=hyphlist[h];hyphlist[h]:=p;p:=q;
t:=hyphword[h];hyphword[h]:=s;s:=t;45:{:941};
if h>0 then h:=h-1 else h:=307;end;hyphword[h]:=s;hyphlist[h]:=p{:940};
end{:939};if curcmd=2 then goto 10;n:=0;p:=0;end end else {936:}begin begin if interaction=3 then;printnl(262);print(680);
end;printesc(942);print(943);begin helpptr:=2;helpline[1]:=944;
helpline[0]:=945;end;error;end{:936} end;end{:935};10:end;
{:934}{968:}function prunepagetop(p:halfword):halfword;
var prevp:halfword;q:halfword;begin prevp:=29997;mem[29997].hh.rh:=p;
while p<>0 do begin if ((mem[p].hh.b0>=0)and(mem[p].hh.b0<=4))or(mem[p].hh.b0=8)or((mem[p].hh.b0>=10)and(mem[p].hh.b0<=12)) then case mem[p].hh.b0 of 0,1,2:{969:}begin q:=newskipparam(10)
;mem[prevp].hh.rh:=q;mem[q].hh.rh:=p;
if mem[tempptr+1].int>mem[p+3].int then mem[tempptr+1].int:=mem[tempptr
+1].int-mem[p+3].int else mem[tempptr+1].int:=0;p:=0;end{:969};
8,4,3:begin prevp:=p;p:=mem[prevp].hh.rh;end;10,11,12:begin q:=p;
p:=mem[q].hh.rh;mem[q].hh.rh:=0;mem[prevp].hh.rh:=p;flushnodelist(q);
end end else confusion(960) end;prunepagetop:=mem[29997].hh.rh;end;
{:968}{970:}function vertbreak(p:halfword;h,d:scaled):halfword;
label 30,45,90;var prevp:halfword;q,r:halfword;pi:integer;b:integer;
leastcost:integer;bestplace:halfword;prevdp:scaled;t:smallnumber;
begin prevp:=p;leastcost:=1073741823;activewidth[1]:=0;
activewidth[2]:=0;activewidth[3]:=0;activewidth[4]:=0;activewidth[5]:=0;
activewidth[6]:=0;prevdp:=0;
while true do begin{972:}if p=0 then pi:=-10000 else{973:}begin if ((mem[p].hh .b0>=0)and(mem[p].hh .b0<=4))or(mem[p].hh .b0=8)or((mem[p].hh .b0>=10)and(mem[p].hh .b0<=12)) then case mem[p].hh .b0 of 0,1,2:begin activewidth[1]:=activewidth[1]+prevdp+mem[p+3].int;
prevdp:=mem[p+2].int;goto 45;end;8:{1365:}goto 45{:1365};
10:if(mem[prevp].hh.b0<9)then pi:=0 else goto 90;
11:begin if mem[p].hh.rh=0 then t:=12 else t:=mem[mem[p].hh.rh].hh.b0;
if t=10 then pi:=0 else goto 90;end;12:pi:=mem[p+1].int;4,3:goto 45 end else confusion(961) end{:973};
{974:}if pi<10000 then begin{975:}if activewidth[1]<h then if(
activewidth[3]<>0)or(activewidth[4]<>0)or(activewidth[5]<>0)then b:=0
else b:=badness(h-activewidth[1],activewidth[2])else if activewidth[1]-h
>activewidth[6]then b:=1073741823 else b:=badness(activewidth[1]-h,
activewidth[6]){:975};
if b<1073741823 then if pi<=-10000 then b:=pi else if b<10000 then b:=b+
pi else b:=100000;if b<=leastcost then begin bestplace:=p;leastcost:=b;
bestheightplusdepth:=activewidth[1]+prevdp;end;
if(b=1073741823)or(pi<=-10000)then goto 30;end{:974};
if(mem[p].hh.b0<10)or(mem[p].hh.b0>11)then goto 45;
90:{976:}if mem[p].hh.b0=11 then q:=p else begin q:=mem[p+1].hh.lh;
activewidth[2+mem[q].hh.b0]:=activewidth[2+mem[q].hh.b0]+mem[q+2].int;
activewidth[6]:=activewidth[6]+mem[q+3].int;
if(mem[q].hh.b1<>0)and(mem[q+3].int<>0)then begin begin if interaction=3
then;printnl(262);print(962);end;begin helpptr:=4;helpline[3]:=963;
helpline[2]:=964;helpline[1]:=965;helpline[0]:=923;end;error;
r:=newspec(q);mem[r].hh.b1:=0;deleteglueref(q);mem[p+1].hh.lh:=r;q:=r;
end;end;activewidth[1]:=activewidth[1]+prevdp+mem[q+1].int;
prevdp:=0{:976};
45:if prevdp>d then begin activewidth[1]:=activewidth[1]+prevdp-d;
prevdp:=d;end;{:972};prevp:=p;p:=mem[prevp].hh.rh;end;
30:vertbreak:=bestplace;end;{:970}{977:}function vsplit(n:eightbits;
h:scaled):halfword;label 10,30;var v:halfword;p:halfword;q:halfword;
begin v:=eqtb[3678+n].hh.rh;
if curmark[3]<>0 then begin deletetokenref(curmark[3]);curmark[3]:=0;
deletetokenref(curmark[4]);curmark[4]:=0;end;
{978:}if v=0 then begin vsplit:=0;goto 10;end;
if mem[v].hh.b0<>1 then begin begin if interaction=3 then;printnl(262);
print(338);end;printesc(966);print(967);printesc(968);begin helpptr:=2;
helpline[1]:=969;helpline[0]:=970;end;error;vsplit:=0;goto 10;end{:978};
q:=vertbreak(mem[v+5].hh.rh,h,eqtb[5836].int);{979:}p:=mem[v+5].hh.rh;
if p=q then mem[v+5].hh.rh:=0 else while true do begin if mem[p].hh.b0=4
then if curmark[3]=0 then begin curmark[3]:=mem[p+1].int;
curmark[4]:=curmark[3];mem[curmark[3]].hh.lh:=mem[curmark[3]].hh.lh+2;
end else begin deletetokenref(curmark[4]);curmark[4]:=mem[p+1].int;
mem[curmark[4]].hh.lh:=mem[curmark[4]].hh.lh+1;end;
if mem[p].hh.rh=q then begin mem[p].hh.rh:=0;goto 30;end;
p:=mem[p].hh.rh;end;30:{:979};q:=prunepagetop(q);p:=mem[v+5].hh.rh;
freenode(v,7);
if q=0 then eqtb[3678+n].hh.rh:=0 else eqtb[3678+n].hh.rh:=vpackage(q,0,
1,1073741823);vsplit:=vpackage(p,h,0,eqtb[5836].int);10:end;
{:977}{985:}procedure printtotals;begin printscaled(pagesofar[1]);
if pagesofar[2]<>0 then begin print(312);printscaled(pagesofar[2]);
print(338);end;if pagesofar[3]<>0 then begin print(312);
printscaled(pagesofar[3]);print(311);end;
if pagesofar[4]<>0 then begin print(312);printscaled(pagesofar[4]);
print(979);end;if pagesofar[5]<>0 then begin print(312);
printscaled(pagesofar[5]);print(980);end;
if pagesofar[6]<>0 then begin print(313);printscaled(pagesofar[6]);end;
end;{:985}{987:}procedure freezepagespecs(s:smallnumber);
begin pagecontents:=s;pagesofar[0]:=eqtb[5834].int;
pagemaxdepth:=eqtb[5835].int;pagesofar[7]:=0;pagesofar[1]:=0;
pagesofar[2]:=0;pagesofar[3]:=0;pagesofar[4]:=0;pagesofar[5]:=0;
pagesofar[6]:=0;leastpagecost:=1073741823;
{if eqtb[5296].int>0 then begin begindiagnostic;printnl(988);
printscaled(pagesofar[0]);print(989);printscaled(pagemaxdepth);
enddiagnostic(false);end;}end;
{:987}{992:}procedure boxerror(n:eightbits);begin error;begindiagnostic;
printnl(837);showbox(eqtb[3678+n].hh.rh);enddiagnostic(true);
flushnodelist(eqtb[3678+n].hh.rh);eqtb[3678+n].hh.rh:=0;end;
{:992}{993:}procedure ensurevbox(n:eightbits);var p:halfword;
begin p:=eqtb[3678+n].hh.rh;
if p<>0 then if mem[p].hh.b0=0 then begin begin if interaction=3 then;
printnl(262);print(990);end;begin helpptr:=3;helpline[2]:=991;
helpline[1]:=992;helpline[0]:=993;end;boxerror(n);end;end;
{:993}{994:}{1012:}procedure fireup(c:halfword);label 10;
var p,q,r,s:halfword;prevp:halfword;n:0..255;wait:boolean;
savevbadness:integer;savevfuzz:scaled;savesplittopskip:halfword;
begin{1013:}if mem[bestpagebreak].hh.b0=12 then begin geqworddefine(5302
,mem[bestpagebreak+1].int);mem[bestpagebreak+1].int:=10000;
end else geqworddefine(5302,10000){:1013};
if curmark[2]<>0 then begin if curmark[0]<>0 then deletetokenref(curmark
[0]);curmark[0]:=curmark[2];
mem[curmark[0]].hh.lh:=mem[curmark[0]].hh.lh+1;
deletetokenref(curmark[1]);curmark[1]:=0;end;
{1014:}if c=bestpagebreak then bestpagebreak:=0;
{1015:}if eqtb[3933].hh.rh<>0 then begin begin if interaction=3 then;
printnl(262);print(338);end;printesc(409);print(1004);begin helpptr:=2;
helpline[1]:=1005;helpline[0]:=993;end;boxerror(255);end{:1015};
insertpenalties:=0;savesplittopskip:=eqtb[2892].hh.rh;
if eqtb[5316].int<=0 then{1018:}begin r:=mem[30000].hh.rh;
while r<>30000 do begin if mem[r+2].hh.lh<>0 then begin n:=mem[r].hh.b1
-0;ensurevbox(n);
if eqtb[3678+n].hh.rh=0 then eqtb[3678+n].hh.rh:=newnullbox;
p:=eqtb[3678+n].hh.rh+5;while mem[p].hh.rh<>0 do p:=mem[p].hh.rh;
mem[r+2].hh.rh:=p;end;r:=mem[r].hh.rh;end;end{:1018};q:=29996;
mem[q].hh.rh:=0;prevp:=29998;p:=mem[prevp].hh.rh;
while p<>bestpagebreak do begin if mem[p].hh.b0=3 then begin if eqtb[
5316].int<=0 then{1020:}begin r:=mem[30000].hh.rh;
while mem[r].hh.b1<>mem[p].hh.b1 do r:=mem[r].hh.rh;
if mem[r+2].hh.lh=0 then wait:=true else begin wait:=false;
s:=mem[r+2].hh.rh;mem[s].hh.rh:=mem[p+4].hh.lh;
if mem[r+2].hh.lh=p then{1021:}begin if mem[r].hh.b0=1 then if(mem[r+1].
hh.lh=p)and(mem[r+1].hh.rh<>0)then begin while mem[s].hh.rh<>mem[r+1].hh
.rh do s:=mem[s].hh.rh;mem[s].hh.rh:=0;eqtb[2892].hh.rh:=mem[p+4].hh.rh;
mem[p+4].hh.lh:=prunepagetop(mem[r+1].hh.rh);
if mem[p+4].hh.lh<>0 then begin tempptr:=vpackage(mem[p+4].hh.lh,0,1,
1073741823);mem[p+3].int:=mem[tempptr+3].int+mem[tempptr+2].int;
freenode(tempptr,7);wait:=true;end;end;mem[r+2].hh.lh:=0;
n:=mem[r].hh.b1-0;tempptr:=mem[eqtb[3678+n].hh.rh+5].hh.rh;
freenode(eqtb[3678+n].hh.rh,7);
eqtb[3678+n].hh.rh:=vpackage(tempptr,0,1,1073741823);
end{:1021}else begin while mem[s].hh.rh<>0 do s:=mem[s].hh.rh;
mem[r+2].hh.rh:=s;end;end;{1022:}mem[prevp].hh.rh:=mem[p].hh.rh;
mem[p].hh.rh:=0;if wait then begin mem[q].hh.rh:=p;q:=p;
insertpenalties:=insertpenalties+1;
end else begin deleteglueref(mem[p+4].hh.rh);freenode(p,5);end;
p:=prevp{:1022};end{:1020};
end else if mem[p].hh.b0=4 then{1016:}begin if curmark[1]=0 then begin
curmark[1]:=mem[p+1].int;mem[curmark[1]].hh.lh:=mem[curmark[1]].hh.lh+1;
end;if curmark[2]<>0 then deletetokenref(curmark[2]);
curmark[2]:=mem[p+1].int;mem[curmark[2]].hh.lh:=mem[curmark[2]].hh.lh+1;
end{:1016};prevp:=p;p:=mem[prevp].hh.rh;end;
eqtb[2892].hh.rh:=savesplittopskip;
{1017:}if p<>0 then begin if mem[29999].hh.rh=0 then if nestptr=0 then
curlist.tailfield:=pagetail else nest[0].tailfield:=pagetail;
mem[pagetail].hh.rh:=mem[29999].hh.rh;mem[29999].hh.rh:=p;
mem[prevp].hh.rh:=0;end;savevbadness:=eqtb[5290].int;
eqtb[5290].int:=10000;savevfuzz:=eqtb[5839].int;
eqtb[5839].int:=1073741823;
eqtb[3933].hh.rh:=vpackage(mem[29998].hh.rh,bestsize,0,pagemaxdepth);
eqtb[5290].int:=savevbadness;eqtb[5839].int:=savevfuzz;
if lastglue<>65535 then deleteglueref(lastglue);{991:}pagecontents:=0;
pagetail:=29998;mem[29998].hh.rh:=0;lastglue:=65535;lastpenalty:=0;
lastkern:=0;pagesofar[7]:=0;pagemaxdepth:=0{:991};
if q<>29996 then begin mem[29998].hh.rh:=mem[29996].hh.rh;pagetail:=q;
end{:1017};{1019:}r:=mem[30000].hh.rh;
while r<>30000 do begin q:=mem[r].hh.rh;freenode(r,4);r:=q;end;
mem[30000].hh.rh:=30000{:1019}{:1014};
if(curmark[0]<>0)and(curmark[1]=0)then begin curmark[1]:=curmark[0];
mem[curmark[0]].hh.lh:=mem[curmark[0]].hh.lh+1;end;
if eqtb[3413].hh.rh<>0 then if deadcycles>=eqtb[5303].int then{1024:}
begin begin if interaction=3 then;printnl(262);print(1006);end;
printint(deadcycles);print(1007);begin helpptr:=3;helpline[2]:=1008;
helpline[1]:=1009;helpline[0]:=1010;end;error;
end{:1024}else{1025:}begin outputactive:=true;deadcycles:=deadcycles+1;
pushnest;curlist.modefield:=-1;curlist.auxfield.int:=-65536000;
curlist.mlfield:=-line;begintokenlist(eqtb[3413].hh.rh,6);
newsavelevel(8);normalparagraph;scanleftbrace;goto 10;end{:1025};
{1023:}begin if mem[29998].hh.rh<>0 then begin if mem[29999].hh.rh=0
then if nestptr=0 then curlist.tailfield:=pagetail else nest[0].
tailfield:=pagetail else mem[pagetail].hh.rh:=mem[29999].hh.rh;
mem[29999].hh.rh:=mem[29998].hh.rh;mem[29998].hh.rh:=0;pagetail:=29998;
end;shipout(eqtb[3933].hh.rh);eqtb[3933].hh.rh:=0;end{:1023};10:end;
{:1012}procedure buildpage;label 10,30,31,22,80,90;var p:halfword;
q,r:halfword;b,c:integer;pi:integer;n:0..255;delta,h,w:scaled;
begin if(mem[29999].hh.rh=0)or outputactive then goto 10;
repeat 22:p:=mem[29999].hh.rh;
{996:}if lastglue<>65535 then deleteglueref(lastglue);lastpenalty:=0;
lastkern:=0;if mem[p].hh.b0=10 then begin lastglue:=mem[p+1].hh.lh;
mem[lastglue].hh.rh:=mem[lastglue].hh.rh+1;
end else begin lastglue:=65535;
if mem[p].hh.b0=12 then lastpenalty:=mem[p+1].int else if mem[p].hh.b0=
11 then lastkern:=mem[p+1].int;end{:996};
{997:}{1000:}begin if ((mem[p].hh.b0>=0)and(mem[p].hh.b0<=4))or(mem[p].hh.b0=8)or((mem[p].hh.b0>=10)and(mem[p].hh.b0<=12)) then case mem[p].hh.b0 of 0,1,2:if pagecontents<2 then{1001:}
begin if pagecontents=0 then freezepagespecs(2)else pagecontents:=2;
q:=newskipparam(9);
if mem[tempptr+1].int>mem[p+3].int then mem[tempptr+1].int:=mem[tempptr
+1].int-mem[p+3].int else mem[tempptr+1].int:=0;mem[q].hh.rh:=p;
mem[29999].hh.rh:=q;goto 22;
end{:1001}else{1002:}begin pagesofar[1]:=pagesofar[1]+pagesofar[7]+mem[p
+3].int;pagesofar[7]:=mem[p+2].int;goto 80;end{:1002};
8:{1364:}goto 80{:1364};
10:if pagecontents<2 then goto 31 else if(mem[pagetail].hh.b0<9)then pi
:=0 else goto 90;
11:if pagecontents<2 then goto 31 else if mem[p].hh.rh=0 then goto 10
else if mem[mem[p].hh.rh].hh.b0=10 then pi:=0 else goto 90;
12:if pagecontents<2 then goto 31 else pi:=mem[p+1].int;4:goto 80;
3:{1008:}begin if pagecontents=0 then freezepagespecs(1);
n:=mem[p].hh.b1;r:=30000;
while n>=mem[mem[r].hh.rh].hh.b1 do r:=mem[r].hh.rh;n:=n-0;
if mem[r].hh.b1<>n+0 then{1009:}begin q:=getnode(4);
mem[q].hh.rh:=mem[r].hh.rh;mem[r].hh.rh:=q;r:=q;mem[r].hh.b1:=n+0;
mem[r].hh.b0:=0;ensurevbox(n);
if eqtb[3678+n].hh.rh=0 then mem[r+3].int:=0 else mem[r+3].int:=mem[eqtb
[3678+n].hh.rh+3].int+mem[eqtb[3678+n].hh.rh+2].int;mem[r+2].hh.lh:=0;
q:=eqtb[2900+n].hh.rh;
if eqtb[5318+n].int=1000 then h:=mem[r+3].int else h:=xovern(mem[r+3].
int,1000)*eqtb[5318+n].int;pagesofar[0]:=pagesofar[0]-h-mem[q+1].int;
pagesofar[2+mem[q].hh.b0]:=pagesofar[2+mem[q].hh.b0]+mem[q+2].int;
pagesofar[6]:=pagesofar[6]+mem[q+3].int;
if(mem[q].hh.b1<>0)and(mem[q+3].int<>0)then begin begin if interaction=3
then;printnl(262);print(999);end;printesc(395);printint(n);
begin helpptr:=3;helpline[2]:=1000;helpline[1]:=1001;helpline[0]:=923;
end;error;end;end{:1009};
if mem[r].hh.b0=1 then insertpenalties:=insertpenalties+mem[p+1].int
else begin mem[r+2].hh.rh:=p;
delta:=pagesofar[0]-pagesofar[1]-pagesofar[7]+pagesofar[6];
if eqtb[5318+n].int=1000 then h:=mem[p+3].int else h:=xovern(mem[p+3].
int,1000)*eqtb[5318+n].int;
if((h<=0)or(h<=delta))and(mem[p+3].int+mem[r+3].int<=eqtb[5851+n].int)
then begin pagesofar[0]:=pagesofar[0]-h;
mem[r+3].int:=mem[r+3].int+mem[p+3].int;
end else{1010:}begin if eqtb[5318+n].int<=0 then w:=1073741823 else
begin w:=pagesofar[0]-pagesofar[1]-pagesofar[7];
if eqtb[5318+n].int<>1000 then w:=xovern(w,eqtb[5318+n].int)*1000;end;
if w>eqtb[5851+n].int-mem[r+3].int then w:=eqtb[5851+n].int-mem[r+3].int
;q:=vertbreak(mem[p+4].hh.lh,w,mem[p+2].int);
mem[r+3].int:=mem[r+3].int+bestheightplusdepth;
{if eqtb[5296].int>0 then[1011:]begin begindiagnostic;printnl(1002);
printint(n);print(1003);printscaled(w);printchar(44);
printscaled(bestheightplusdepth);print(932);
if q=0 then printint(-10000)else if mem[q].hh.b0=12 then printint(mem[q
+1].int)else printchar(48);enddiagnostic(false);end[:1011];}
if eqtb[5318+n].int<>1000 then bestheightplusdepth:=xovern(
bestheightplusdepth,1000)*eqtb[5318+n].int;
pagesofar[0]:=pagesofar[0]-bestheightplusdepth;mem[r].hh.b0:=1;
mem[r+1].hh.rh:=q;mem[r+1].hh.lh:=p;
if q=0 then insertpenalties:=insertpenalties-10000 else if mem[q].hh.b0=
12 then insertpenalties:=insertpenalties+mem[q+1].int;end{:1010};end;
goto 80;end{:1008} end else confusion(994) end{:1000};
{1005:}if pi<10000 then begin{1007:}if pagesofar[1]<pagesofar[0]then if(
pagesofar[3]<>0)or(pagesofar[4]<>0)or(pagesofar[5]<>0)then b:=0 else b:=
badness(pagesofar[0]-pagesofar[1],pagesofar[2])else if pagesofar[1]-
pagesofar[0]>pagesofar[6]then b:=1073741823 else b:=badness(pagesofar[1]
-pagesofar[0],pagesofar[6]){:1007};
if b<1073741823 then if pi<=-10000 then c:=pi else if b<10000 then c:=b+
pi+insertpenalties else c:=100000 else c:=b;
if insertpenalties>=10000 then c:=1073741823;
{if eqtb[5296].int>0 then[1006:]begin begindiagnostic;printnl(37);
print(928);printtotals;print(997);printscaled(pagesofar[0]);print(931);
if b=1073741823 then printchar(42)else printint(b);print(932);
printint(pi);print(998);
if c=1073741823 then printchar(42)else printint(c);
if c<=leastpagecost then printchar(35);enddiagnostic(false);end[:1006];}
if c<=leastpagecost then begin bestpagebreak:=p;bestsize:=pagesofar[0];
leastpagecost:=c;r:=mem[30000].hh.rh;
while r<>30000 do begin mem[r+2].hh.lh:=mem[r+2].hh.rh;r:=mem[r].hh.rh;
end;end;if(c=1073741823)or(pi<=-10000)then begin fireup(p);
if outputactive then goto 10;goto 30;end;end{:1005};
if(mem[p].hh.b0<10)or(mem[p].hh.b0>11)then goto 80;
90:{1004:}if mem[p].hh.b0=11 then q:=p else begin q:=mem[p+1].hh.lh;
pagesofar[2+mem[q].hh.b0]:=pagesofar[2+mem[q].hh.b0]+mem[q+2].int;
pagesofar[6]:=pagesofar[6]+mem[q+3].int;
if(mem[q].hh.b1<>0)and(mem[q+3].int<>0)then begin begin if interaction=3
then;printnl(262);print(995);end;begin helpptr:=4;helpline[3]:=996;
helpline[2]:=964;helpline[1]:=965;helpline[0]:=923;end;error;
r:=newspec(q);mem[r].hh.b1:=0;deleteglueref(q);mem[p+1].hh.lh:=r;q:=r;
end;end;pagesofar[1]:=pagesofar[1]+pagesofar[7]+mem[q+1].int;
pagesofar[7]:=0{:1004};
80:{1003:}if pagesofar[7]>pagemaxdepth then begin pagesofar[1]:=
pagesofar[1]+pagesofar[7]-pagemaxdepth;pagesofar[7]:=pagemaxdepth;end;
{:1003};{998:}mem[pagetail].hh.rh:=p;pagetail:=p;
mem[29999].hh.rh:=mem[p].hh.rh;mem[p].hh.rh:=0;goto 30{:998};
31:{999:}mem[29999].hh.rh:=mem[p].hh.rh;mem[p].hh.rh:=0;
flushnodelist(p){:999};30:{:997};until mem[29999].hh.rh=0;
{995:}if nestptr=0 then curlist.tailfield:=29999 else nest[0].tailfield
:=29999{:995};10:end;{:994}{1030:}{1043:}procedure appspace;
var q:halfword;
begin if(curlist.auxfield.hh.lh>=2000)and(eqtb[2895].hh.rh<>0)then q:=
newparamglue(13)else begin if eqtb[2894].hh.rh<>0 then mainp:=eqtb[2894]
.hh.rh else{1042:}begin mainp:=fontglue[eqtb[3934].hh.rh];
if mainp=0 then begin mainp:=newspec(0);
maink:=parambase[eqtb[3934].hh.rh]+2;
mem[mainp+1].int:=fontinfo[maink].int;
mem[mainp+2].int:=fontinfo[maink+1].int;
mem[mainp+3].int:=fontinfo[maink+2].int;
fontglue[eqtb[3934].hh.rh]:=mainp;end;end{:1042};mainp:=newspec(mainp);
{1044:}if curlist.auxfield.hh.lh>=2000 then mem[mainp+1].int:=mem[mainp
+1].int+fontinfo[7+parambase[eqtb[3934].hh.rh]].int;
mem[mainp+2].int:=xnoverd(mem[mainp+2].int,curlist.auxfield.hh.lh,1000);
mem[mainp+3].int:=xnoverd(mem[mainp+3].int,1000,curlist.auxfield.hh.lh)
{:1044};q:=newglue(mainp);mem[mainp].hh.rh:=0;end;
mem[curlist.tailfield].hh.rh:=q;curlist.tailfield:=q;end;
{:1043}{1047:}procedure insertdollarsign;begin backinput;curtok:=804;
begin if interaction=3 then;printnl(262);print(1018);end;
begin helpptr:=2;helpline[1]:=1019;helpline[0]:=1020;end;inserror;end;
{:1047}{1049:}procedure youcant;begin begin if interaction=3 then;
printnl(262);print(685);end;printcmdchr(curcmd,curchr);print(1021);
printmode(curlist.modefield);end;
{:1049}{1050:}procedure reportillegalcase;begin youcant;
begin helpptr:=4;helpline[3]:=1022;helpline[2]:=1023;helpline[1]:=1024;
helpline[0]:=1025;end;error;end;
{:1050}{1051:}function privileged:boolean;
begin if curlist.modefield>0 then privileged:=true else begin
reportillegalcase;privileged:=false;end;end;
{:1051}{1054:}function itsallover:boolean;label 10;
begin if privileged then begin if(29998=pagetail)and(curlist.headfield=
curlist.tailfield)and(deadcycles=0)then begin itsallover:=true;goto 10;
end;backinput;begin mem[curlist.tailfield].hh.rh:=newnullbox;
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
mem[curlist.tailfield+1].int:=eqtb[5833].int;
begin mem[curlist.tailfield].hh.rh:=newglue(8);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
begin mem[curlist.tailfield].hh.rh:=newpenalty(-1073741824);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;buildpage;end;
itsallover:=false;10:end;{:1054}{1060:}procedure appendglue;
var s:smallnumber;begin s:=curchr;case s of 0:curval:=4;1:curval:=8;
2:curval:=12;3:curval:=16;4:scanglue(2);5:scanglue(3);end;
begin mem[curlist.tailfield].hh.rh:=newglue(curval);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
if s>=4 then begin mem[curval].hh.rh:=mem[curval].hh.rh-1;
if s>4 then mem[curlist.tailfield].hh.b1:=99;end;end;
{:1060}{1061:}procedure appendkern;var s:quarterword;begin s:=curchr;
scandimen(s=99,false,false);
begin mem[curlist.tailfield].hh.rh:=newkern(curval);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
mem[curlist.tailfield].hh.b1:=s;end;{:1061}{1064:}procedure offsave;
var p:halfword;
begin if curgroup=0 then{1066:}begin begin if interaction=3 then;
printnl(262);print(777);end;printcmdchr(curcmd,curchr);begin helpptr:=1;
helpline[0]:=1044;end;error;end{:1066}else begin backinput;p:=getavail;
mem[29997].hh.rh:=p;begin if interaction=3 then;printnl(262);print(625);
end;{1065:}begin if ((curgroup>=14)and(curgroup<=16)) then case curgroup of 14:begin mem[p].hh.lh:=6711;printesc(516);
end;15:begin mem[p].hh.lh:=804;printchar(36);end;
16:begin mem[p].hh.lh:=6712;mem[p].hh.rh:=getavail;p:=mem[p].hh.rh;
mem[p].hh.lh:=3118;printesc(1043);end end else begin mem[p].hh.lh:=637;
printchar(125);end end{:1065};print(626);
begintokenlist(mem[29997].hh.rh,4);begin helpptr:=5;helpline[4]:=1038;
helpline[3]:=1039;helpline[2]:=1040;helpline[1]:=1041;helpline[0]:=1042;
end;error;end;end;{:1064}{1069:}procedure extrarightbrace;
begin begin if interaction=3 then;printnl(262);print(1049);end;
case curgroup of 14:printesc(516);15:printchar(36);16:printesc(878);end;
begin helpptr:=5;helpline[4]:=1050;helpline[3]:=1051;helpline[2]:=1052;
helpline[1]:=1053;helpline[0]:=1054;end;error;alignstate:=alignstate+1;
end;{:1069}{1070:}procedure normalparagraph;
begin if eqtb[5282].int<>0 then eqworddefine(5282,0);
if eqtb[5847].int<>0 then eqworddefine(5847,0);
if eqtb[5304].int<>1 then eqworddefine(5304,1);
if eqtb[3412].hh.rh<>0 then eqdefine(3412,118,0);end;
{:1070}{1075:}procedure boxend(boxcontext:integer);var p:halfword;
begin if boxcontext<1073741824 then{1076:}begin if curbox<>0 then begin
mem[curbox+4].int:=boxcontext;
if abs(curlist.modefield)=1 then begin appendtovlist(curbox);
if adjusttail<>0 then begin if 29995<>adjusttail then begin mem[curlist.
tailfield].hh.rh:=mem[29995].hh.rh;curlist.tailfield:=adjusttail;end;
adjusttail:=0;end;if curlist.modefield>0 then buildpage;
end else begin if abs(curlist.modefield)=102 then curlist.auxfield.hh.lh
:=1000 else begin p:=newnoad;mem[p+1].hh.rh:=2;mem[p+1].hh.lh:=curbox;
curbox:=p;end;mem[curlist.tailfield].hh.rh:=curbox;
curlist.tailfield:=curbox;end;end;
end{:1076}else if boxcontext<1073742336 then{1077:}if boxcontext<
1073742080 then eqdefine(-1073738146+boxcontext,119,curbox)else
geqdefine(-1073738402+boxcontext,119,curbox){:1077}else if curbox<>0
then if boxcontext>1073742336 then{1078:}begin{404:}repeat getxtoken;
until(curcmd<>10)and(curcmd<>0){:404};
if((curcmd=26)and(abs(curlist.modefield)<>1))or((curcmd=27)and(abs(
curlist.modefield)=1))then begin appendglue;
mem[curlist.tailfield].hh.b1:=boxcontext-(1073742237);
mem[curlist.tailfield+1].hh.rh:=curbox;
end else begin begin if interaction=3 then;printnl(262);print(1067);end;
begin helpptr:=3;helpline[2]:=1068;helpline[1]:=1069;helpline[0]:=1070;
end;backerror;flushnodelist(curbox);end;end{:1078}else shipout(curbox);
end;{:1075}{1079:}procedure beginbox(boxcontext:integer);label 10,30;
var p,q:halfword;m:quarterword;k:halfword;n:eightbits;
begin begin if ((curchr>=0)and(curchr<=3)) then case curchr of 0:begin scaneightbitint;
curbox:=eqtb[3678+curval].hh.rh;eqtb[3678+curval].hh.rh:=0;end;
1:begin scaneightbitint;curbox:=copynodelist(eqtb[3678+curval].hh.rh);
end;2:{1080:}begin curbox:=0;
if abs(curlist.modefield)=203 then begin youcant;begin helpptr:=1;
helpline[0]:=1071;end;error;
end else if(curlist.modefield=1)and(curlist.headfield=curlist.tailfield)
then begin youcant;begin helpptr:=2;helpline[1]:=1072;helpline[0]:=1073;
end;error;
end else begin if not(curlist.tailfield>=himemmin)then if(mem[curlist.
tailfield].hh.b0=0)or(mem[curlist.tailfield].hh.b0=1)then{1081:}begin q
:=curlist.headfield;repeat p:=q;
if not(q>=himemmin)then if mem[q].hh.b0=7 then begin for m:=1 to mem[q].
hh.b1 do p:=mem[p].hh.rh;if p=curlist.tailfield then goto 30;end;
q:=mem[p].hh.rh;until q=curlist.tailfield;curbox:=curlist.tailfield;
mem[curbox+4].int:=0;curlist.tailfield:=p;mem[p].hh.rh:=0;30:end{:1081};
end;end{:1080};3:{1082:}begin scaneightbitint;n:=curval;
if not scankeyword(843)then begin begin if interaction=3 then;
printnl(262);print(1074);end;begin helpptr:=2;helpline[1]:=1075;
helpline[0]:=1076;end;error;end;scandimen(false,false,false);
curbox:=vsplit(n,curval);end{:1082} end else {1083:}begin k:=curchr-4;
savestack[saveptr+0].int:=boxcontext;
if k=102 then if(boxcontext<1073741824)and(abs(curlist.modefield)=1)then
scanspec(3,true)else scanspec(2,true)else begin if k=1 then scanspec(4,
true)else begin scanspec(5,true);k:=1;end;normalparagraph;end;pushnest;
curlist.modefield:=-k;if k=1 then begin curlist.auxfield.int:=-65536000;
if eqtb[3418].hh.rh<>0 then begintokenlist(eqtb[3418].hh.rh,11);
end else begin curlist.auxfield.hh.lh:=1000;
if eqtb[3417].hh.rh<>0 then begintokenlist(eqtb[3417].hh.rh,10);end;
goto 10;end{:1083} end;boxend(boxcontext);10:end;
{:1079}{1084:}procedure scanbox(boxcontext:integer);
begin{404:}repeat getxtoken;until(curcmd<>10)and(curcmd<>0){:404};
if curcmd=20 then beginbox(boxcontext)else if(boxcontext>=1073742337)and
((curcmd=36)or(curcmd=35))then begin curbox:=scanrulespec;
boxend(boxcontext);end else begin begin if interaction=3 then;
printnl(262);print(1077);end;begin helpptr:=3;helpline[2]:=1078;
helpline[1]:=1079;helpline[0]:=1080;end;backerror;end;end;
{:1084}{1086:}procedure package(c:smallnumber);var h:scaled;p:halfword;
d:scaled;begin d:=eqtb[5837].int;unsave;saveptr:=saveptr-3;
if curlist.modefield=-102 then curbox:=hpack(mem[curlist.headfield].hh.
rh,savestack[saveptr+2].int,savestack[saveptr+1].int)else begin curbox:=
vpackage(mem[curlist.headfield].hh.rh,savestack[saveptr+2].int,savestack
[saveptr+1].int,d);if c=4 then{1087:}begin h:=0;p:=mem[curbox+5].hh.rh;
if p<>0 then if mem[p].hh.b0<=2 then h:=mem[p+3].int;
mem[curbox+2].int:=mem[curbox+2].int-h+mem[curbox+3].int;
mem[curbox+3].int:=h;end{:1087};end;popnest;
boxend(savestack[saveptr+0].int);end;
{:1086}{1091:}function normmin(h:integer):smallnumber;
begin if h<=0 then normmin:=1 else if h>=63 then normmin:=63 else
normmin:=h;end;procedure newgraf(indented:boolean);
begin curlist.pgfield:=0;
if(curlist.modefield=1)or(curlist.headfield<>curlist.tailfield)then
begin mem[curlist.tailfield].hh.rh:=newparamglue(2);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;pushnest;
curlist.modefield:=102;curlist.auxfield.hh.lh:=1000;
if eqtb[5313].int<=0 then curlang:=0 else if eqtb[5313].int>255 then
curlang:=0 else curlang:=eqtb[5313].int;curlist.auxfield.hh.rh:=curlang;
curlist.pgfield:=(normmin(eqtb[5314].int)*64+normmin(eqtb[5315].int))
*65536+curlang;if indented then begin curlist.tailfield:=newnullbox;
mem[curlist.headfield].hh.rh:=curlist.tailfield;
mem[curlist.tailfield+1].int:=eqtb[5830].int;end;
if eqtb[3414].hh.rh<>0 then begintokenlist(eqtb[3414].hh.rh,7);
if nestptr=1 then buildpage;end;{:1091}{1093:}procedure indentinhmode;
var p,q:halfword;begin if curchr>0 then begin p:=newnullbox;
mem[p+1].int:=eqtb[5830].int;
if abs(curlist.modefield)=102 then curlist.auxfield.hh.lh:=1000 else
begin q:=newnoad;mem[q+1].hh.rh:=2;mem[q+1].hh.lh:=p;p:=q;end;
begin mem[curlist.tailfield].hh.rh:=p;
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;end;end;
{:1093}{1095:}procedure headforvmode;
begin if curlist.modefield<0 then if curcmd<>36 then offsave else begin
begin if interaction=3 then;printnl(262);print(685);end;printesc(521);
print(1083);begin helpptr:=2;helpline[1]:=1084;helpline[0]:=1085;end;
error;end else begin backinput;curtok:=partoken;backinput;
curinput.indexfield:=4;end;end;{:1095}{1096:}procedure endgraf;
begin if curlist.modefield=102 then begin if curlist.headfield=curlist.
tailfield then popnest else linebreak(eqtb[5269].int);normalparagraph;
errorcount:=0;end;end;{:1096}{1099:}procedure begininsertoradjust;
begin if curcmd=38 then curval:=255 else begin scaneightbitint;
if curval=255 then begin begin if interaction=3 then;printnl(262);
print(1086);end;printesc(330);printint(255);begin helpptr:=1;
helpline[0]:=1087;end;error;curval:=0;end;end;
savestack[saveptr+0].int:=curval;saveptr:=saveptr+1;newsavelevel(11);
scanleftbrace;normalparagraph;pushnest;curlist.modefield:=-1;
curlist.auxfield.int:=-65536000;end;{:1099}{1101:}procedure makemark;
var p:halfword;begin p:=scantoks(false,true);p:=getnode(2);
mem[p].hh.b0:=4;mem[p].hh.b1:=0;mem[p+1].int:=defref;
mem[curlist.tailfield].hh.rh:=p;curlist.tailfield:=p;end;
{:1101}{1103:}procedure appendpenalty;begin scanint;
begin mem[curlist.tailfield].hh.rh:=newpenalty(curval);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
if curlist.modefield=1 then buildpage;end;
{:1103}{1105:}procedure deletelast;label 10;var p,q:halfword;
m:quarterword;
begin if(curlist.modefield=1)and(curlist.tailfield=curlist.headfield)
then{1106:}begin if(curchr<>10)or(lastglue<>65535)then begin youcant;
begin helpptr:=2;helpline[1]:=1072;helpline[0]:=1088;end;
if curchr=11 then helpline[0]:=(1089)else if curchr<>10 then helpline[0]
:=(1090);error;end;
end{:1106}else begin if not(curlist.tailfield>=himemmin)then if mem[
curlist.tailfield].hh.b0=curchr then begin q:=curlist.headfield;
repeat p:=q;
if not(q>=himemmin)then if mem[q].hh.b0=7 then begin for m:=1 to mem[q].
hh.b1 do p:=mem[p].hh.rh;if p=curlist.tailfield then goto 10;end;
q:=mem[p].hh.rh;until q=curlist.tailfield;mem[p].hh.rh:=0;
flushnodelist(curlist.tailfield);curlist.tailfield:=p;end;end;10:end;
{:1105}{1110:}procedure unpackage;label 10;var p:halfword;c:0..1;
begin c:=curchr;scaneightbitint;p:=eqtb[3678+curval].hh.rh;
if p=0 then goto 10;
if(abs(curlist.modefield)=203)or((abs(curlist.modefield)=1)and(mem[p].hh
.b0<>1))or((abs(curlist.modefield)=102)and(mem[p].hh.b0<>0))then begin
begin if interaction=3 then;printnl(262);print(1098);end;
begin helpptr:=3;helpline[2]:=1099;helpline[1]:=1100;helpline[0]:=1101;
end;error;goto 10;end;
if c=1 then mem[curlist.tailfield].hh.rh:=copynodelist(mem[p+5].hh.rh)
else begin mem[curlist.tailfield].hh.rh:=mem[p+5].hh.rh;
eqtb[3678+curval].hh.rh:=0;freenode(p,7);end;
while mem[curlist.tailfield].hh.rh<>0 do curlist.tailfield:=mem[curlist.
tailfield].hh.rh;10:end;{:1110}{1113:}procedure appenditaliccorrection;
label 10;var p:halfword;f:internalfontnumber;
begin if curlist.tailfield<>curlist.headfield then begin if(curlist.
tailfield>=himemmin)then p:=curlist.tailfield else if mem[curlist.
tailfield].hh.b0=6 then p:=curlist.tailfield+1 else goto 10;
f:=mem[p].hh.b0;
begin mem[curlist.tailfield].hh.rh:=newkern(fontinfo[italicbase[f]+(
fontinfo[charbase[f]+mem[p].hh.b1].qqqq.b2-0)div 4].int);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
mem[curlist.tailfield].hh.b1:=1;end;10:end;
{:1113}{1117:}procedure appenddiscretionary;var c:integer;
begin begin mem[curlist.tailfield].hh.rh:=newdisc;
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
if curchr=1 then begin c:=hyphenchar[eqtb[3934].hh.rh];
if c>=0 then if c<256 then mem[curlist.tailfield+1].hh.lh:=newcharacter(
eqtb[3934].hh.rh,c);end else begin saveptr:=saveptr+1;
savestack[saveptr-1].int:=0;newsavelevel(10);scanleftbrace;pushnest;
curlist.modefield:=-102;curlist.auxfield.hh.lh:=1000;end;end;
{:1117}{1119:}procedure builddiscretionary;label 30,10;var p,q:halfword;
n:integer;begin unsave;{1121:}q:=curlist.headfield;p:=mem[q].hh.rh;n:=0;
while p<>0 do begin if not(p>=himemmin)then if mem[p].hh.b0>2 then if
mem[p].hh.b0<>11 then if mem[p].hh.b0<>6 then begin begin if interaction
=3 then;printnl(262);print(1108);end;begin helpptr:=1;helpline[0]:=1109;
end;error;begindiagnostic;printnl(1110);showbox(p);enddiagnostic(true);
flushnodelist(p);mem[q].hh.rh:=0;goto 30;end;q:=p;p:=mem[q].hh.rh;
n:=n+1;end;30:{:1121};p:=mem[curlist.headfield].hh.rh;popnest;
case savestack[saveptr-1].int of 0:mem[curlist.tailfield+1].hh.lh:=p;
1:mem[curlist.tailfield+1].hh.rh:=p;
2:{1120:}begin if(n>0)and(abs(curlist.modefield)=203)then begin begin if
interaction=3 then;printnl(262);print(1102);end;printesc(349);
begin helpptr:=2;helpline[1]:=1103;helpline[0]:=1104;end;
flushnodelist(p);n:=0;error;end else mem[curlist.tailfield].hh.rh:=p;
if n<=255 then mem[curlist.tailfield].hh.b1:=n else begin begin if
interaction=3 then;printnl(262);print(1105);end;begin helpptr:=2;
helpline[1]:=1106;helpline[0]:=1107;end;error;end;
if n>0 then curlist.tailfield:=q;saveptr:=saveptr-1;goto 10;end{:1120};
end;savestack[saveptr-1].int:=savestack[saveptr-1].int+1;
newsavelevel(10);scanleftbrace;pushnest;curlist.modefield:=-102;
curlist.auxfield.hh.lh:=1000;10:end;{:1119}{1123:}procedure makeaccent;
var s,t:real;p,q,r:halfword;f:internalfontnumber;a,h,x,w,delta:scaled;
i:fourquarters;begin scancharnum;f:=eqtb[3934].hh.rh;
p:=newcharacter(f,curval);
if p<>0 then begin x:=fontinfo[5+parambase[f]].int;
s:=fontinfo[1+parambase[f]].int/65536.0;
a:=fontinfo[widthbase[f]+fontinfo[charbase[f]+mem[p].hh.b1].qqqq.b0].int
;doassignments;{1124:}q:=0;f:=eqtb[3934].hh.rh;
if(curcmd=11)or(curcmd=12)or(curcmd=68)then q:=newcharacter(f,curchr)
else if curcmd=16 then begin scancharnum;q:=newcharacter(f,curval);
end else backinput{:1124};
if q<>0 then{1125:}begin t:=fontinfo[1+parambase[f]].int/65536.0;
i:=fontinfo[charbase[f]+mem[q].hh.b1].qqqq;
w:=fontinfo[widthbase[f]+i.b0].int;
h:=fontinfo[heightbase[f]+(i.b1-0)div 16].int;
if h<>x then begin p:=hpack(p,0,1);mem[p+4].int:=x-h;end;
delta:=round((w-a)/2.0+h*t-x*s);r:=newkern(delta);mem[r].hh.b1:=2;
mem[curlist.tailfield].hh.rh:=r;mem[r].hh.rh:=p;
curlist.tailfield:=newkern(-a-delta);mem[curlist.tailfield].hh.b1:=2;
mem[p].hh.rh:=curlist.tailfield;p:=q;end{:1125};
mem[curlist.tailfield].hh.rh:=p;curlist.tailfield:=p;
curlist.auxfield.hh.lh:=1000;end;end;{:1123}{1127:}procedure alignerror;
begin if abs(alignstate)>2 then{1128:}begin begin if interaction=3 then;
printnl(262);print(1115);end;printcmdchr(curcmd,curchr);
if curtok=1062 then begin begin helpptr:=6;helpline[5]:=1116;
helpline[4]:=1117;helpline[3]:=1118;helpline[2]:=1119;helpline[1]:=1120;
helpline[0]:=1121;end;end else begin begin helpptr:=5;helpline[4]:=1116;
helpline[3]:=1122;helpline[2]:=1119;helpline[1]:=1120;helpline[0]:=1121;
end;end;error;end{:1128}else begin backinput;
if alignstate<0 then begin begin if interaction=3 then;printnl(262);
print(657);end;alignstate:=alignstate+1;curtok:=379;
end else begin begin if interaction=3 then;printnl(262);print(1111);end;
alignstate:=alignstate-1;curtok:=637;end;begin helpptr:=3;
helpline[2]:=1112;helpline[1]:=1113;helpline[0]:=1114;end;inserror;end;
end;{:1127}{1129:}procedure noalignerror;
begin begin if interaction=3 then;printnl(262);print(1115);end;
printesc(527);begin helpptr:=2;helpline[1]:=1123;helpline[0]:=1124;end;
error;end;procedure omiterror;begin begin if interaction=3 then;
printnl(262);print(1115);end;printesc(530);begin helpptr:=2;
helpline[1]:=1125;helpline[0]:=1124;end;error;end;
{:1129}{1131:}procedure doendv;begin baseptr:=inputptr;
inputstack[baseptr]:=curinput;
while(inputstack[baseptr].indexfield<>2)and(inputstack[baseptr].locfield
=0)and(inputstack[baseptr].statefield=0)do baseptr:=baseptr-1;
if(inputstack[baseptr].indexfield<>2)or(inputstack[baseptr].locfield<>0)
or(inputstack[baseptr].statefield<>0)then fatalerror(595);
if curgroup=6 then begin endgraf;if fincol then finrow;end else offsave;
end;{:1131}{1135:}procedure cserror;begin begin if interaction=3 then;
printnl(262);print(777);end;printesc(505);begin helpptr:=1;
helpline[0]:=1127;end;error;end;
{:1135}{1136:}procedure pushmath(c:groupcode);begin pushnest;
curlist.modefield:=-203;curlist.auxfield.int:=0;newsavelevel(c);end;
{:1136}{1138:}procedure initmath;label 21,40,45,30;var w:scaled;
l:scaled;s:scaled;p:halfword;q:halfword;f:internalfontnumber;n:integer;
v:scaled;d:scaled;begin gettoken;
if(curcmd=3)and(curlist.modefield>0)then{1145:}begin if curlist.
headfield=curlist.tailfield then begin popnest;w:=-1073741823;
end else begin linebreak(eqtb[5270].int);
{1146:}v:=mem[justbox+4].int+2*fontinfo[6+parambase[eqtb[3934].hh.rh]].
int;w:=-1073741823;p:=mem[justbox+5].hh.rh;
while p<>0 do begin{1147:}21:if(p>=himemmin)then begin f:=mem[p].hh.b0;
d:=fontinfo[widthbase[f]+fontinfo[charbase[f]+mem[p].hh.b1].qqqq.b0].int
;goto 40;end;begin if ((mem[p].hh.b0>=0)and(mem[p].hh.b0<=2))or(mem[p].hh.b0=6)or((mem[p].hh.b0>=8)and(mem[p].hh.b0<=11)) then case mem[p].hh.b0 of 0,1,2:begin d:=mem[p+1].int;goto 40;
end;6:{652:}begin mem[29988]:=mem[p+1];mem[29988].hh.rh:=mem[p].hh.rh;
p:=29988;goto 21;end{:652};11,9:d:=mem[p+1].int;
10:{1148:}begin q:=mem[p+1].hh.lh;d:=mem[q+1].int;
if mem[justbox+5].hh.b0=1 then begin if(mem[justbox+5].hh.b1=mem[q].hh.
b0)and(mem[q+2].int<>0)then v:=1073741823;
end else if mem[justbox+5].hh.b0=2 then begin if(mem[justbox+5].hh.b1=
mem[q].hh.b1)and(mem[q+3].int<>0)then v:=1073741823;end;
if mem[p].hh.b1>=100 then goto 40;end{:1148};8:{1361:}d:=0{:1361} end else d:=0 end{:1147};if v<1073741823 then v:=v+d;goto 45;
40:if v<1073741823 then begin v:=v+d;w:=v;end else begin w:=1073741823;
goto 30;end;45:p:=mem[p].hh.rh;end;30:{:1146};end;
{1149:}if eqtb[3412].hh.rh=0 then if(eqtb[5847].int<>0)and(((eqtb[5304].
int>=0)and(curlist.pgfield+2>eqtb[5304].int))or(curlist.pgfield+1<-eqtb[
5304].int))then begin l:=eqtb[5833].int-abs(eqtb[5847].int);
if eqtb[5847].int>0 then s:=eqtb[5847].int else s:=0;
end else begin l:=eqtb[5833].int;s:=0;
end else begin n:=mem[eqtb[3412].hh.rh].hh.lh;
if curlist.pgfield+2>=n then p:=eqtb[3412].hh.rh+2*n else p:=eqtb[3412].
hh.rh+2*(curlist.pgfield+2);s:=mem[p-1].int;l:=mem[p].int;end{:1149};
pushmath(15);curlist.modefield:=203;eqworddefine(5307,-1);
eqworddefine(5843,w);eqworddefine(5844,l);eqworddefine(5845,s);
if eqtb[3416].hh.rh<>0 then begintokenlist(eqtb[3416].hh.rh,9);
if nestptr=1 then buildpage;end{:1145}else begin backinput;
{1139:}begin pushmath(15);eqworddefine(5307,-1);
if eqtb[3415].hh.rh<>0 then begintokenlist(eqtb[3415].hh.rh,8);
end{:1139};end;end;{:1138}{1142:}procedure starteqno;
begin savestack[saveptr+0].int:=curchr;saveptr:=saveptr+1;
{1139:}begin pushmath(15);eqworddefine(5307,-1);
if eqtb[3415].hh.rh<>0 then begintokenlist(eqtb[3415].hh.rh,8);
end{:1139};end;{:1142}{1151:}procedure scanmath(p:halfword);
label 20,21,10;var c:integer;begin 20:{404:}repeat getxtoken;
until(curcmd<>10)and(curcmd<>0){:404};
21:begin if (curcmd=11)or(curcmd=12)or((curcmd>=15)and(curcmd<=17))or(curcmd=68)or(curcmd=69) then case curcmd of 11,12,68:begin c:=eqtb[5007+curchr].hh.rh-0;
if c=32768 then begin{1152:}begin curcs:=curchr+1;
curcmd:=eqtb[curcs].hh.b0;curchr:=eqtb[curcs].hh.rh;xtoken;backinput;
end{:1152};goto 20;end;end;16:begin scancharnum;curchr:=curval;
curcmd:=68;goto 21;end;17:begin scanfifteenbitint;c:=curval;end;
69:c:=curchr;15:begin scantwentysevenbitint;c:=curval div 4096;end end else {1153:}begin backinput;scanleftbrace;savestack[saveptr+0].int:=p;
saveptr:=saveptr+1;pushmath(9);goto 10;end{:1153} end;mem[p].hh.rh:=1;
mem[p].hh.b1:=c mod 256+0;
if(c>=28672)and((eqtb[5307].int>=0)and(eqtb[5307].int<16))then mem[p].hh
.b0:=eqtb[5307].int else mem[p].hh.b0:=(c div 256)mod 16;10:end;
{:1151}{1155:}procedure setmathchar(c:integer);var p:halfword;
begin if c>=32768 then{1152:}begin curcs:=curchr+1;
curcmd:=eqtb[curcs].hh.b0;curchr:=eqtb[curcs].hh.rh;xtoken;backinput;
end{:1152}else begin p:=newnoad;mem[p+1].hh.rh:=1;
mem[p+1].hh.b1:=c mod 256+0;mem[p+1].hh.b0:=(c div 256)mod 16;
if c>=28672 then begin if((eqtb[5307].int>=0)and(eqtb[5307].int<16))then
mem[p+1].hh.b0:=eqtb[5307].int;mem[p].hh.b0:=16;
end else mem[p].hh.b0:=16+(c div 4096);mem[curlist.tailfield].hh.rh:=p;
curlist.tailfield:=p;end;end;{:1155}{1159:}procedure mathlimitswitch;
label 10;
begin if curlist.headfield<>curlist.tailfield then if mem[curlist.
tailfield].hh.b0=17 then begin mem[curlist.tailfield].hh.b1:=curchr;
goto 10;end;begin if interaction=3 then;printnl(262);print(1131);end;
begin helpptr:=1;helpline[0]:=1132;end;error;10:end;
{:1159}{1160:}procedure scandelimiter(p:halfword;r:boolean);
begin if r then scantwentysevenbitint else begin{404:}repeat getxtoken;
until(curcmd<>10)and(curcmd<>0){:404};
begin if (curcmd=11)or(curcmd=12)or(curcmd=15) then case curcmd of 11,12:curval:=eqtb[5574+curchr].int;
15:scantwentysevenbitint end else curval:=-1 end;end;
if curval<0 then{1161:}begin begin if interaction=3 then;printnl(262);
print(1133);end;begin helpptr:=6;helpline[5]:=1134;helpline[4]:=1135;
helpline[3]:=1136;helpline[2]:=1137;helpline[1]:=1138;helpline[0]:=1139;
end;backerror;curval:=0;end{:1161};
mem[p].qqqq.b0:=(curval div 1048576)mod 16;
mem[p].qqqq.b1:=(curval div 4096)mod 256+0;
mem[p].qqqq.b2:=(curval div 256)mod 16;mem[p].qqqq.b3:=curval mod 256+0;
end;{:1160}{1163:}procedure mathradical;
begin begin mem[curlist.tailfield].hh.rh:=getnode(5);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
mem[curlist.tailfield].hh.b0:=24;mem[curlist.tailfield].hh.b1:=0;
mem[curlist.tailfield+1].hh:=emptyfield;
mem[curlist.tailfield+3].hh:=emptyfield;
mem[curlist.tailfield+2].hh:=emptyfield;
scandelimiter(curlist.tailfield+4,true);scanmath(curlist.tailfield+1);
end;{:1163}{1165:}procedure mathac;
begin if curcmd=45 then{1166:}begin begin if interaction=3 then;
printnl(262);print(1140);end;printesc(523);print(1141);begin helpptr:=2;
helpline[1]:=1142;helpline[0]:=1143;end;error;end{:1166};
begin mem[curlist.tailfield].hh.rh:=getnode(5);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
mem[curlist.tailfield].hh.b0:=28;mem[curlist.tailfield].hh.b1:=0;
mem[curlist.tailfield+1].hh:=emptyfield;
mem[curlist.tailfield+3].hh:=emptyfield;
mem[curlist.tailfield+2].hh:=emptyfield;
mem[curlist.tailfield+4].hh.rh:=1;scanfifteenbitint;
mem[curlist.tailfield+4].hh.b1:=curval mod 256+0;
if(curval>=28672)and((eqtb[5307].int>=0)and(eqtb[5307].int<16))then mem[
curlist.tailfield+4].hh.b0:=eqtb[5307].int else mem[curlist.tailfield+4]
.hh.b0:=(curval div 256)mod 16;scanmath(curlist.tailfield+1);end;
{:1165}{1172:}procedure appendchoices;
begin begin mem[curlist.tailfield].hh.rh:=newchoice;
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;saveptr:=saveptr+1;
savestack[saveptr-1].int:=0;pushmath(13);scanleftbrace;end;
{:1172}{1174:}{1184:}function finmlist(p:halfword):halfword;
var q:halfword;
begin if curlist.auxfield.int<>0 then{1185:}begin mem[curlist.auxfield.
int+3].hh.rh:=3;
mem[curlist.auxfield.int+3].hh.lh:=mem[curlist.headfield].hh.rh;
if p=0 then q:=curlist.auxfield.int else begin q:=mem[curlist.auxfield.
int+2].hh.lh;if mem[q].hh.b0<>30 then confusion(878);
mem[curlist.auxfield.int+2].hh.lh:=mem[q].hh.rh;
mem[q].hh.rh:=curlist.auxfield.int;mem[curlist.auxfield.int].hh.rh:=p;
end;end{:1185}else begin mem[curlist.tailfield].hh.rh:=p;
q:=mem[curlist.headfield].hh.rh;end;popnest;finmlist:=q;end;
{:1184}procedure buildchoices;label 10;var p:halfword;begin unsave;
p:=finmlist(0);
case savestack[saveptr-1].int of 0:mem[curlist.tailfield+1].hh.lh:=p;
1:mem[curlist.tailfield+1].hh.rh:=p;2:mem[curlist.tailfield+2].hh.lh:=p;
3:begin mem[curlist.tailfield+2].hh.rh:=p;saveptr:=saveptr-1;goto 10;
end;end;savestack[saveptr-1].int:=savestack[saveptr-1].int+1;
pushmath(13);scanleftbrace;10:end;{:1174}{1176:}procedure subsup;
var t:smallnumber;p:halfword;begin t:=0;p:=0;
if curlist.tailfield<>curlist.headfield then if(mem[curlist.tailfield].
hh.b0>=16)and(mem[curlist.tailfield].hh.b0<30)then begin p:=curlist.
tailfield+2+curcmd-7;t:=mem[p].hh.rh;end;
if(p=0)or(t<>0)then{1177:}begin begin mem[curlist.tailfield].hh.rh:=
newnoad;curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
p:=curlist.tailfield+2+curcmd-7;
if t<>0 then begin if curcmd=7 then begin begin if interaction=3 then;
printnl(262);print(1144);end;begin helpptr:=1;helpline[0]:=1145;end;
end else begin begin if interaction=3 then;printnl(262);print(1146);end;
begin helpptr:=1;helpline[0]:=1147;end;end;error;end;end{:1177};
scanmath(p);end;{:1176}{1181:}procedure mathfraction;var c:smallnumber;
begin c:=curchr;
if curlist.auxfield.int<>0 then{1183:}begin if c>=3 then begin
scandelimiter(29988,false);scandelimiter(29988,false);end;
if c mod 3=0 then scandimen(false,false,false);
begin if interaction=3 then;printnl(262);print(1154);end;
begin helpptr:=3;helpline[2]:=1155;helpline[1]:=1156;helpline[0]:=1157;
end;error;end{:1183}else begin curlist.auxfield.int:=getnode(6);
mem[curlist.auxfield.int].hh.b0:=25;mem[curlist.auxfield.int].hh.b1:=0;
mem[curlist.auxfield.int+2].hh.rh:=3;
mem[curlist.auxfield.int+2].hh.lh:=mem[curlist.headfield].hh.rh;
mem[curlist.auxfield.int+3].hh:=emptyfield;
mem[curlist.auxfield.int+4].qqqq:=nulldelimiter;
mem[curlist.auxfield.int+5].qqqq:=nulldelimiter;
mem[curlist.headfield].hh.rh:=0;curlist.tailfield:=curlist.headfield;
{1182:}if c>=3 then begin scandelimiter(curlist.auxfield.int+4,false);
scandelimiter(curlist.auxfield.int+5,false);end;
case c mod 3 of 0:begin scandimen(false,false,false);
mem[curlist.auxfield.int+1].int:=curval;end;
1:mem[curlist.auxfield.int+1].int:=1073741824;
2:mem[curlist.auxfield.int+1].int:=0;end{:1182};end;end;
{:1181}{1191:}procedure mathleftright;var t:smallnumber;p:halfword;
begin t:=curchr;
if(t=31)and(curgroup<>16)then{1192:}begin if curgroup=15 then begin
scandelimiter(29988,false);begin if interaction=3 then;printnl(262);
print(777);end;printesc(878);begin helpptr:=1;helpline[0]:=1158;end;
error;end else offsave;end{:1192}else begin p:=newnoad;mem[p].hh.b0:=t;
scandelimiter(p+1,false);if t=30 then begin pushmath(16);
mem[curlist.headfield].hh.rh:=p;curlist.tailfield:=p;
end else begin p:=finmlist(p);unsave;
begin mem[curlist.tailfield].hh.rh:=newnoad;
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
mem[curlist.tailfield].hh.b0:=23;mem[curlist.tailfield+1].hh.rh:=3;
mem[curlist.tailfield+1].hh.lh:=p;end;end;end;
{:1191}{1194:}procedure aftermath;var l:boolean;danger:boolean;
m:integer;p:halfword;a:halfword;{1198:}b:halfword;w:scaled;z:scaled;
e:scaled;q:scaled;d:scaled;s:scaled;g1,g2:smallnumber;r:halfword;
t:halfword;{:1198}begin danger:=false;
{1195:}if(fontparams[eqtb[3937].hh.rh]<22)or(fontparams[eqtb[3953].hh.rh
]<22)or(fontparams[eqtb[3969].hh.rh]<22)then begin begin if interaction=
3 then;printnl(262);print(1159);end;begin helpptr:=3;helpline[2]:=1160;
helpline[1]:=1161;helpline[0]:=1162;end;error;flushmath;danger:=true;
end else if(fontparams[eqtb[3938].hh.rh]<13)or(fontparams[eqtb[3954].hh.
rh]<13)or(fontparams[eqtb[3970].hh.rh]<13)then begin begin if
interaction=3 then;printnl(262);print(1163);end;begin helpptr:=3;
helpline[2]:=1164;helpline[1]:=1165;helpline[0]:=1166;end;error;
flushmath;danger:=true;end{:1195};m:=curlist.modefield;l:=false;
p:=finmlist(0);if curlist.modefield=-m then begin{1197:}begin getxtoken;
if curcmd<>3 then begin begin if interaction=3 then;printnl(262);
print(1167);end;begin helpptr:=2;helpline[1]:=1168;helpline[0]:=1169;
end;backerror;end;end{:1197};curmlist:=p;curstyle:=2;
mlistpenalties:=false;mlisttohlist;a:=hpack(mem[29997].hh.rh,0,1);
unsave;saveptr:=saveptr-1;if savestack[saveptr+0].int=1 then l:=true;
danger:=false;
{1195:}if(fontparams[eqtb[3937].hh.rh]<22)or(fontparams[eqtb[3953].hh.rh
]<22)or(fontparams[eqtb[3969].hh.rh]<22)then begin begin if interaction=
3 then;printnl(262);print(1159);end;begin helpptr:=3;helpline[2]:=1160;
helpline[1]:=1161;helpline[0]:=1162;end;error;flushmath;danger:=true;
end else if(fontparams[eqtb[3938].hh.rh]<13)or(fontparams[eqtb[3954].hh.
rh]<13)or(fontparams[eqtb[3970].hh.rh]<13)then begin begin if
interaction=3 then;printnl(262);print(1163);end;begin helpptr:=3;
helpline[2]:=1164;helpline[1]:=1165;helpline[0]:=1166;end;error;
flushmath;danger:=true;end{:1195};m:=curlist.modefield;p:=finmlist(0);
end else a:=0;
if m<0 then{1196:}begin begin mem[curlist.tailfield].hh.rh:=newmath(eqtb
[5831].int,0);curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
curmlist:=p;curstyle:=2;mlistpenalties:=(curlist.modefield>0);
mlisttohlist;mem[curlist.tailfield].hh.rh:=mem[29997].hh.rh;
while mem[curlist.tailfield].hh.rh<>0 do curlist.tailfield:=mem[curlist.
tailfield].hh.rh;
begin mem[curlist.tailfield].hh.rh:=newmath(eqtb[5831].int,1);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
curlist.auxfield.hh.lh:=1000;unsave;
end{:1196}else begin if a=0 then{1197:}begin getxtoken;
if curcmd<>3 then begin begin if interaction=3 then;printnl(262);
print(1167);end;begin helpptr:=2;helpline[1]:=1168;helpline[0]:=1169;
end;backerror;end;end{:1197};{1199:}curmlist:=p;curstyle:=0;
mlistpenalties:=false;mlisttohlist;p:=mem[29997].hh.rh;
adjusttail:=29995;b:=hpack(p,0,1);p:=mem[b+5].hh.rh;t:=adjusttail;
adjusttail:=0;w:=mem[b+1].int;z:=eqtb[5844].int;s:=eqtb[5845].int;
if(a=0)or danger then begin e:=0;q:=0;end else begin e:=mem[a+1].int;
q:=e+fontinfo[6+parambase[eqtb[3937].hh.rh]].int;end;
if w+q>z then{1201:}begin if(e<>0)and((w-totalshrink[0]+q<=z)or(
totalshrink[1]<>0)or(totalshrink[2]<>0)or(totalshrink[3]<>0))then begin
freenode(b,7);b:=hpack(p,z-q,0);end else begin e:=0;
if w>z then begin freenode(b,7);b:=hpack(p,z,0);end;end;w:=mem[b+1].int;
end{:1201};{1202:}d:=half(z-w);
if(e>0)and(d<2*e)then begin d:=half(z-w-e);
if p<>0 then if not(p>=himemmin)then if mem[p].hh.b0=10 then d:=0;
end{:1202};
{1203:}begin mem[curlist.tailfield].hh.rh:=newpenalty(eqtb[5274].int);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
if(d+s<=eqtb[5843].int)or l then begin g1:=3;g2:=4;end else begin g1:=5;
g2:=6;end;if l and(e=0)then begin mem[a+4].int:=s;appendtovlist(a);
begin mem[curlist.tailfield].hh.rh:=newpenalty(10000);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
end else begin mem[curlist.tailfield].hh.rh:=newparamglue(g1);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end{:1203};
{1204:}if e<>0 then begin r:=newkern(z-w-e-d);
if l then begin mem[a].hh.rh:=r;mem[r].hh.rh:=b;b:=a;d:=0;
end else begin mem[b].hh.rh:=r;mem[r].hh.rh:=a;end;b:=hpack(b,0,1);end;
mem[b+4].int:=s+d;appendtovlist(b){:1204};
{1205:}if(a<>0)and(e=0)and not l then begin begin mem[curlist.tailfield]
.hh.rh:=newpenalty(10000);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
mem[a+4].int:=s+z-mem[a+1].int;appendtovlist(a);g2:=0;end;
if t<>29995 then begin mem[curlist.tailfield].hh.rh:=mem[29995].hh.rh;
curlist.tailfield:=t;end;
begin mem[curlist.tailfield].hh.rh:=newpenalty(eqtb[5275].int);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
if g2>0 then begin mem[curlist.tailfield].hh.rh:=newparamglue(g2);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end{:1205};
resumeafterdisplay{:1199};end;end;
{:1194}{1200:}procedure resumeafterdisplay;
begin if curgroup<>15 then confusion(1170);unsave;
curlist.pgfield:=curlist.pgfield+3;pushnest;curlist.modefield:=102;
curlist.auxfield.hh.lh:=1000;
if eqtb[5313].int<=0 then curlang:=0 else if eqtb[5313].int>255 then
curlang:=0 else curlang:=eqtb[5313].int;curlist.auxfield.hh.rh:=curlang;
curlist.pgfield:=(normmin(eqtb[5314].int)*64+normmin(eqtb[5315].int))
*65536+curlang;{443:}begin getxtoken;if curcmd<>10 then backinput;
end{:443};if nestptr=1 then buildpage;end;
{:1200}{1211:}{1215:}procedure getrtoken;label 20;
begin 20:repeat gettoken;until curtok<>2592;
if(curcs=0)or(curcs>2614)then begin begin if interaction=3 then;
printnl(262);print(1185);end;begin helpptr:=5;helpline[4]:=1186;
helpline[3]:=1187;helpline[2]:=1188;helpline[1]:=1189;helpline[0]:=1190;
end;if curcs=0 then backinput;curtok:=6709;inserror;goto 20;end;end;
{:1215}{1229:}procedure trapzeroglue;
begin if(mem[curval+1].int=0)and(mem[curval+2].int=0)and(mem[curval+3].
int=0)then begin mem[0].hh.rh:=mem[0].hh.rh+1;deleteglueref(curval);
curval:=0;end;end;
{:1229}{1236:}procedure doregistercommand(a:smallnumber);label 40,10;
var l,q,r,s:halfword;p:0..3;begin q:=curcmd;
{1237:}begin if q<>89 then begin getxtoken;
if(curcmd>=73)and(curcmd<=76)then begin l:=curchr;p:=curcmd-73;goto 40;
end;if curcmd<>89 then begin begin if interaction=3 then;printnl(262);
print(685);end;printcmdchr(curcmd,curchr);print(686);printcmdchr(q,0);
begin helpptr:=1;helpline[0]:=1211;end;error;goto 10;end;end;p:=curchr;
scaneightbitint;case p of 0:l:=curval+5318;1:l:=curval+5851;
2:l:=curval+2900;3:l:=curval+3156;end;end;40:{:1237};
if q=89 then scanoptionalequals else if scankeyword(1207)then;
aritherror:=false;
if q<91 then{1238:}if p<2 then begin if p=0 then scanint else scandimen(
false,false,false);if q=90 then curval:=curval+eqtb[l].int;
end else begin scanglue(p);if q=90 then{1239:}begin q:=newspec(curval);
r:=eqtb[l].hh.rh;deleteglueref(curval);
mem[q+1].int:=mem[q+1].int+mem[r+1].int;
if mem[q+2].int=0 then mem[q].hh.b0:=0;
if mem[q].hh.b0=mem[r].hh.b0 then mem[q+2].int:=mem[q+2].int+mem[r+2].
int else if(mem[q].hh.b0<mem[r].hh.b0)and(mem[r+2].int<>0)then begin mem
[q+2].int:=mem[r+2].int;mem[q].hh.b0:=mem[r].hh.b0;end;
if mem[q+3].int=0 then mem[q].hh.b1:=0;
if mem[q].hh.b1=mem[r].hh.b1 then mem[q+3].int:=mem[q+3].int+mem[r+3].
int else if(mem[q].hh.b1<mem[r].hh.b1)and(mem[r+3].int<>0)then begin mem
[q+3].int:=mem[r+3].int;mem[q].hh.b1:=mem[r].hh.b1;end;curval:=q;
end{:1239};end{:1238}else{1240:}begin scanint;
if p<2 then if q=91 then if p=0 then curval:=multandadd(eqtb[l].int,
curval,0,2147483647)else curval:=multandadd(eqtb[l].int,curval,0,
1073741823)else curval:=xovern(eqtb[l].int,curval)else begin s:=eqtb[l].
hh.rh;r:=newspec(s);
if q=91 then begin mem[r+1].int:=multandadd(mem[s+1].int,curval,0,
1073741823);mem[r+2].int:=multandadd(mem[s+2].int,curval,0,1073741823);
mem[r+3].int:=multandadd(mem[s+3].int,curval,0,1073741823);
end else begin mem[r+1].int:=xovern(mem[s+1].int,curval);
mem[r+2].int:=xovern(mem[s+2].int,curval);
mem[r+3].int:=xovern(mem[s+3].int,curval);end;curval:=r;end;end{:1240};
if aritherror then begin begin if interaction=3 then;printnl(262);
print(1208);end;begin helpptr:=2;helpline[1]:=1209;helpline[0]:=1210;
end;if p>=2 then deleteglueref(curval);error;goto 10;end;
if p<2 then if(a>=4)then geqworddefine(l,curval)else eqworddefine(l,
curval)else begin trapzeroglue;
if(a>=4)then geqdefine(l,117,curval)else eqdefine(l,117,curval);end;
10:end;{:1236}{1243:}procedure alteraux;var c:halfword;
begin if curchr<>abs(curlist.modefield)then reportillegalcase else begin
c:=curchr;scanoptionalequals;
if c=1 then begin scandimen(false,false,false);
curlist.auxfield.int:=curval;end else begin scanint;
if(curval<=0)or(curval>32767)then begin begin if interaction=3 then;
printnl(262);print(1214);end;begin helpptr:=1;helpline[0]:=1215;end;
interror(curval);end else curlist.auxfield.hh.lh:=curval;end;end;end;
{:1243}{1244:}procedure alterprevgraf;var p:0..nestsize;
begin nest[nestptr]:=curlist;p:=nestptr;
while abs(nest[p].modefield)<>1 do p:=p-1;scanoptionalequals;scanint;
if curval<0 then begin begin if interaction=3 then;printnl(262);
print(956);end;printesc(532);begin helpptr:=1;helpline[0]:=1216;end;
interror(curval);end else begin nest[p].pgfield:=curval;
curlist:=nest[nestptr];end;end;{:1244}{1245:}procedure alterpagesofar;
var c:0..7;begin c:=curchr;scanoptionalequals;
scandimen(false,false,false);pagesofar[c]:=curval;end;
{:1245}{1246:}procedure alterinteger;var c:0..1;begin c:=curchr;
scanoptionalequals;scanint;
if c=0 then deadcycles:=curval else insertpenalties:=curval;end;
{:1246}{1247:}procedure alterboxdimen;var c:smallnumber;b:eightbits;
begin c:=curchr;scaneightbitint;b:=curval;scanoptionalequals;
scandimen(false,false,false);
if eqtb[3678+b].hh.rh<>0 then mem[eqtb[3678+b].hh.rh+c].int:=curval;end;
{:1247}{1257:}procedure newfont(a:smallnumber);label 50;var u:halfword;
s:scaled;f:internalfontnumber;t:strnumber;oldsetting:0..21;
flushablestring:strnumber;begin if jobname=0 then openlogfile;getrtoken;
u:=curcs;
if u>=514 then t:=hash[u].rh else if u>=257 then if u=513 then t:=1220
else t:=u-257 else begin oldsetting:=selector;selector:=21;print(1220);
print(u-1);selector:=oldsetting;
begin if poolptr+1>poolsize then overflow(257,poolsize-initpoolptr);end;
t:=makestring;end;if(a>=4)then geqdefine(u,87,0)else eqdefine(u,87,0);
scanoptionalequals;scanfilename;{1258:}nameinprogress:=true;
if scankeyword(1221)then{1259:}begin scandimen(false,false,false);
s:=curval;
if(s<=0)or(s>=134217728)then begin begin if interaction=3 then;
printnl(262);print(1223);end;printscaled(s);print(1224);
begin helpptr:=2;helpline[1]:=1225;helpline[0]:=1226;end;error;
s:=10*65536;end;end{:1259}else if scankeyword(1222)then begin scanint;
s:=-curval;
if(curval<=0)or(curval>32768)then begin begin if interaction=3 then;
printnl(262);print(552);end;begin helpptr:=1;helpline[0]:=553;end;
interror(curval);s:=-1000;end;end else s:=-1000;
nameinprogress:=false{:1258};{1260:}flushablestring:=strptr-1;
for f:=1 to fontptr do if streqstr(fontname[f],curname)and streqstr(
fontarea[f],curarea)then begin if curname=flushablestring then begin
begin strptr:=strptr-1;poolptr:=strstart[strptr];end;
curname:=fontname[f];end;if s>0 then begin if s=fontsize[f]then goto 50;
end else if fontsize[f]=xnoverd(fontdsize[f],-s,1000)then goto 50;
end{:1260};f:=readfontinfo(u,curname,curarea,s);50:eqtb[u].hh.rh:=f;
eqtb[2624+f]:=eqtb[u];hash[2624+f].rh:=t;end;
{:1257}{1265:}procedure newinteraction;begin println;
interaction:=curchr;
{75:}if interaction=0 then selector:=16 else selector:=17{:75};
if logopened then selector:=selector+2;end;
{:1265}procedure prefixedcommand;label 30,10;var a:smallnumber;
f:internalfontnumber;j:halfword;k:fontindex;p,q:halfword;n:integer;
e:boolean;begin a:=0;
while curcmd=93 do begin if not odd(a div curchr)then a:=a+curchr;
{404:}repeat getxtoken;until(curcmd<>10)and(curcmd<>0){:404};
if curcmd<=70 then{1212:}begin begin if interaction=3 then;printnl(262);
print(1180);end;printcmdchr(curcmd,curchr);printchar(39);
begin helpptr:=1;helpline[0]:=1181;end;backerror;goto 10;end{:1212};end;
{1213:}if(curcmd<>97)and(a mod 4<>0)then begin begin if interaction=3
then;printnl(262);print(685);end;printesc(1172);print(1182);
printesc(1173);print(1183);printcmdchr(curcmd,curchr);printchar(39);
begin helpptr:=1;helpline[0]:=1184;end;error;end{:1213};
{1214:}if eqtb[5306].int<>0 then if eqtb[5306].int<0 then begin if(a>=4)
then a:=a-4;end else begin if not(a>=4)then a:=a+4;end{:1214};
begin if ((curcmd>=71)and(curcmd<=92))or((curcmd>=94)and(curcmd<=100)) then case curcmd of {1217:}87:if(a>=4)then geqdefine(3934,120,curchr)else
eqdefine(3934,120,curchr);
{:1217}{1218:}97:begin if odd(curchr)and not(a>=4)and(eqtb[5306].int>=0)
then a:=a+4;e:=(curchr>=2);getrtoken;p:=curcs;q:=scantoks(true,e);
if(a>=4)then geqdefine(p,111+(a mod 4),defref)else eqdefine(p,111+(a mod
4),defref);end;{:1218}{1221:}94:begin n:=curchr;getrtoken;p:=curcs;
if n=0 then begin repeat gettoken;until curcmd<>10;
if curtok=3133 then begin gettoken;if curcmd=10 then gettoken;end;
end else begin gettoken;q:=curtok;gettoken;backinput;curtok:=q;
backinput;end;
if curcmd>=111 then mem[curchr].hh.lh:=mem[curchr].hh.lh+1;
if(a>=4)then geqdefine(p,curcmd,curchr)else eqdefine(p,curcmd,curchr);
end;{:1221}{1224:}95:begin n:=curchr;getrtoken;p:=curcs;
if(a>=4)then geqdefine(p,0,256)else eqdefine(p,0,256);
scanoptionalequals;begin if (n=0)or(n=1) then case n of 0:begin scancharnum;
if(a>=4)then geqdefine(p,68,curval)else eqdefine(p,68,curval);end;
1:begin scanfifteenbitint;
if(a>=4)then geqdefine(p,69,curval)else eqdefine(p,69,curval);end end else begin scaneightbitint;
case n of 2:if(a>=4)then geqdefine(p,73,5318+curval)else eqdefine(p,73,
5318+curval);
3:if(a>=4)then geqdefine(p,74,5851+curval)else eqdefine(p,74,5851+curval
);
4:if(a>=4)then geqdefine(p,75,2900+curval)else eqdefine(p,75,2900+curval
);
5:if(a>=4)then geqdefine(p,76,3156+curval)else eqdefine(p,76,3156+curval
);
6:if(a>=4)then geqdefine(p,72,3422+curval)else eqdefine(p,72,3422+curval
);end;end end;end;{:1224}{1225:}96:begin scanint;n:=curval;
if not scankeyword(843)then begin begin if interaction=3 then;
printnl(262);print(1074);end;begin helpptr:=2;helpline[1]:=1201;
helpline[0]:=1202;end;error;end;getrtoken;p:=curcs;readtoks(n,p);
if(a>=4)then geqdefine(p,111,curval)else eqdefine(p,111,curval);end;
{:1225}{1226:}71,72:begin q:=curcs;
if curcmd=71 then begin scaneightbitint;p:=3422+curval;
end else p:=curchr;scanoptionalequals;{404:}repeat getxtoken;
until(curcmd<>10)and(curcmd<>0){:404};
if curcmd<>1 then{1227:}begin if curcmd=71 then begin scaneightbitint;
curcmd:=72;curchr:=3422+curval;end;
if curcmd=72 then begin q:=eqtb[curchr].hh.rh;
if q=0 then if(a>=4)then geqdefine(p,101,0)else eqdefine(p,101,0)else
begin mem[q].hh.lh:=mem[q].hh.lh+1;
if(a>=4)then geqdefine(p,111,q)else eqdefine(p,111,q);end;goto 30;end;
end{:1227};backinput;curcs:=q;q:=scantoks(false,false);
if mem[defref].hh.rh=0 then begin if(a>=4)then geqdefine(p,101,0)else
eqdefine(p,101,0);begin mem[defref].hh.rh:=avail;avail:=defref;
{dynused:=dynused-1;}end;
end else begin if p=3413 then begin mem[q].hh.rh:=getavail;
q:=mem[q].hh.rh;mem[q].hh.lh:=637;q:=getavail;mem[q].hh.lh:=379;
mem[q].hh.rh:=mem[defref].hh.rh;mem[defref].hh.rh:=q;end;
if(a>=4)then geqdefine(p,111,defref)else eqdefine(p,111,defref);end;end;
{:1226}{1228:}73:begin p:=curchr;scanoptionalequals;scanint;
if(a>=4)then geqworddefine(p,curval)else eqworddefine(p,curval);end;
74:begin p:=curchr;scanoptionalequals;scandimen(false,false,false);
if(a>=4)then geqworddefine(p,curval)else eqworddefine(p,curval);end;
75,76:begin p:=curchr;n:=curcmd;scanoptionalequals;
if n=76 then scanglue(3)else scanglue(2);trapzeroglue;
if(a>=4)then geqdefine(p,117,curval)else eqdefine(p,117,curval);end;
{:1228}{1232:}85:begin{1233:}if curchr=3983 then n:=15 else if curchr=
5007 then n:=32768 else if curchr=4751 then n:=32767 else if curchr=5574
then n:=16777215 else n:=255{:1233};p:=curchr;scancharnum;p:=p+curval;
scanoptionalequals;scanint;
if((curval<0)and(p<5574))or(curval>n)then begin begin if interaction=3
then;printnl(262);print(1203);end;printint(curval);
if p<5574 then print(1204)else print(1205);printint(n);begin helpptr:=1;
helpline[0]:=1206;end;error;curval:=0;end;
if p<5007 then if(a>=4)then geqdefine(p,120,curval)else eqdefine(p,120,
curval)else if p<5574 then if(a>=4)then geqdefine(p,120,curval+0)else
eqdefine(p,120,curval+0)else if(a>=4)then geqworddefine(p,curval)else
eqworddefine(p,curval);end;{:1232}{1234:}86:begin p:=curchr;
scanfourbitint;p:=p+curval;scanoptionalequals;scanfontident;
if(a>=4)then geqdefine(p,120,curval)else eqdefine(p,120,curval);end;
{:1234}{1235:}89,90,91,92:doregistercommand(a);
{:1235}{1241:}98:begin scaneightbitint;
if(a>=4)then n:=256+curval else n:=curval;scanoptionalequals;
if setboxallowed then scanbox(1073741824+n)else begin begin if
interaction=3 then;printnl(262);print(680);end;printesc(536);
begin helpptr:=2;helpline[1]:=1212;helpline[0]:=1213;end;error;end;end;
{:1241}{1242:}79:alteraux;80:alterprevgraf;81:alterpagesofar;
82:alterinteger;83:alterboxdimen;
{:1242}{1248:}84:begin scanoptionalequals;scanint;n:=curval;
if n<=0 then p:=0 else begin p:=getnode(2*n+1);mem[p].hh.lh:=n;
for j:=1 to n do begin scandimen(false,false,false);
mem[p+2*j-1].int:=curval;scandimen(false,false,false);
mem[p+2*j].int:=curval;end;end;
if(a>=4)then geqdefine(3412,118,p)else eqdefine(3412,118,p);end;
{:1248}{1252:}99:if curchr=1 then begin newpatterns;goto 30;
begin if interaction=3 then;printnl(262);print(1217);end;helpptr:=0;
error;repeat gettoken;until curcmd=2;goto 10;
end else begin newhyphexceptions;goto 30;end;
{:1252}{1253:}77:begin findfontdimen(true);k:=curval;scanoptionalequals;
scandimen(false,false,false);fontinfo[k].int:=curval;end;
78:begin n:=curchr;scanfontident;f:=curval;scanoptionalequals;scanint;
if n=0 then hyphenchar[f]:=curval else skewchar[f]:=curval;end;
{:1253}{1256:}88:newfont(a);{:1256}{1264:}100:newinteraction;
{:1264} end else confusion(1179) end;
30:{1269:}if aftertoken<>0 then begin curtok:=aftertoken;backinput;
aftertoken:=0;end{:1269};10:end;{:1211}{1270:}procedure doassignments;
label 10;begin while true do begin{404:}repeat getxtoken;
until(curcmd<>10)and(curcmd<>0){:404};if curcmd<=70 then goto 10;
setboxallowed:=false;prefixedcommand;setboxallowed:=true;end;10:end;
{:1270}{1275:}procedure openorclosein;var c:0..1;n:0..15;
begin c:=curchr;scanfourbitint;n:=curval;
if readopen[n]<>2 then begin aclose(readfile[n]);readopen[n]:=2;end;
if c<>0 then begin scanoptionalequals;scanfilename;
if curext=338 then curext:=791;packfilename(curname,curarea,curext);
if aopenin(readfile[n])then readopen[n]:=1;end;end;
{:1275}{1279:}procedure issuemessage;var oldsetting:0..21;c:0..1;
s:strnumber;begin c:=curchr;mem[29988].hh.rh:=scantoks(false,true);
oldsetting:=selector;selector:=21;tokenshow(defref);
selector:=oldsetting;flushlist(defref);
begin if poolptr+1>poolsize then overflow(257,poolsize-initpoolptr);end;
s:=makestring;
if c=0 then{1280:}begin if termoffset+(strstart[s+1]-strstart[s])>
maxprintline-2 then println else if(termoffset>0)or(fileoffset>0)then
printchar(32);slowprint(s);;
end{:1280}else{1283:}begin begin if interaction=3 then;printnl(262);
print(338);end;slowprint(s);
if eqtb[3421].hh.rh<>0 then useerrhelp:=true else if longhelpseen then
begin helpptr:=1;helpline[0]:=1233;
end else begin if interaction<3 then longhelpseen:=true;
begin helpptr:=4;helpline[3]:=1234;helpline[2]:=1235;helpline[1]:=1236;
helpline[0]:=1237;end;end;error;useerrhelp:=false;end{:1283};
begin strptr:=strptr-1;poolptr:=strstart[strptr];end;end;
{:1279}{1288:}procedure shiftcase;var b:halfword;p:halfword;t:halfword;
c:eightbits;begin b:=curchr;p:=scantoks(false,false);
p:=mem[defref].hh.rh;while p<>0 do begin{1289:}t:=mem[p].hh.lh;
if t<4352 then begin c:=t mod 256;
if eqtb[b+c].hh.rh<>0 then mem[p].hh.lh:=t-c+eqtb[b+c].hh.rh;end{:1289};
p:=mem[p].hh.rh;end;begintokenlist(mem[defref].hh.rh,3);
begin mem[defref].hh.rh:=avail;avail:=defref;{dynused:=dynused-1;}end;
end;{:1288}{1293:}procedure showwhatever;label 50;var p:halfword;
begin begin if (curchr=0)or(curchr=1)or(curchr=3) then case curchr of 3:begin begindiagnostic;showactivities;end;
1:{1296:}begin scaneightbitint;begindiagnostic;printnl(1255);
printint(curval);printchar(61);
if eqtb[3678+curval].hh.rh=0 then print(410)else showbox(eqtb[3678+
curval].hh.rh);end{:1296};0:{1294:}begin gettoken;if interaction=3 then;
printnl(1249);if curcs<>0 then begin sprintcs(curcs);printchar(61);end;
printmeaning;goto 50;end{:1294} end else {1297:}begin p:=thetoks;
if interaction=3 then;printnl(1249);tokenshow(29997);
flushlist(mem[29997].hh.rh);goto 50;end{:1297} end;
{1298:}enddiagnostic(true);begin if interaction=3 then;printnl(262);
print(1256);end;
if selector=19 then if eqtb[5292].int<=0 then begin selector:=17;
print(1257);selector:=19;end{:1298};
50:if interaction<3 then begin helpptr:=0;errorcount:=errorcount-1;
end else if eqtb[5292].int>0 then begin begin helpptr:=3;
helpline[2]:=1244;helpline[1]:=1245;helpline[0]:=1246;end;
end else begin begin helpptr:=5;helpline[4]:=1244;helpline[3]:=1245;
helpline[2]:=1246;helpline[1]:=1247;helpline[0]:=1248;end;end;error;end;
{:1293}{1302:}procedure storefmtfile;label 41,42,31,32;
var j,k,l:integer;p,q:halfword;x:integer;w:fourquarters;
begin{1304:}if saveptr<>0 then begin begin if interaction=3 then;
printnl(262);print(1259);end;begin helpptr:=1;helpline[0]:=1260;end;
begin if interaction=3 then interaction:=2;if logopened then error;
{if interaction>0 then debughelp;}history:=3;jumpout;end;end{:1304};
{1328:}selector:=21;print(1273);print(jobname);printchar(32);
printint(eqtb[5286].int);printchar(46);printint(eqtb[5285].int);
printchar(46);printint(eqtb[5284].int);printchar(41);
if interaction=0 then selector:=18 else selector:=19;
begin if poolptr+1>poolsize then overflow(257,poolsize-initpoolptr);end;
formatident:=makestring;packjobname(786);
while not wopenout(fmtfile)do promptfilename(1274,786);printnl(1275);
slowprint(wmakenamestring(fmtfile));begin strptr:=strptr-1;
poolptr:=strstart[strptr];end;printnl(338);
slowprint(formatident){:1328};{1307:}begin fmtfile^.int:=172418254;
put(fmtfile);end;begin fmtfile^.int:=0;put(fmtfile);end;
begin fmtfile^.int:=30000;put(fmtfile);end;begin fmtfile^.int:=6106;
put(fmtfile);end;begin fmtfile^.int:=1777;put(fmtfile);end;
begin fmtfile^.int:=307;put(fmtfile);end{:1307};
{1309:}begin fmtfile^.int:=poolptr;put(fmtfile);end;
begin fmtfile^.int:=strptr;put(fmtfile);end;
for k:=0 to strptr do begin fmtfile^.int:=strstart[k];put(fmtfile);end;
k:=0;while k+4<poolptr do begin w.b0:=strpool[k]+0;w.b1:=strpool[k+1]+0;
w.b2:=strpool[k+2]+0;w.b3:=strpool[k+3]+0;begin fmtfile^.qqqq:=w;
put(fmtfile);end;k:=k+4;end;k:=poolptr-4;w.b0:=strpool[k]+0;
w.b1:=strpool[k+1]+0;w.b2:=strpool[k+2]+0;w.b3:=strpool[k+3]+0;
begin fmtfile^.qqqq:=w;put(fmtfile);end;println;printint(strptr);
print(1261);printint(poolptr){:1309};{1311:}sortavail;varused:=0;
begin fmtfile^.int:=lomemmax;put(fmtfile);end;begin fmtfile^.int:=rover;
put(fmtfile);end;p:=0;q:=rover;x:=0;
repeat for k:=p to q+1 do begin fmtfile^:=mem[k];put(fmtfile);end;
x:=x+q+2-p;varused:=varused+q-p;p:=q+mem[q].hh.lh;q:=mem[q+1].hh.rh;
until q=rover;varused:=varused+lomemmax-p;dynused:=memend+1-himemmin;
for k:=p to lomemmax do begin fmtfile^:=mem[k];put(fmtfile);end;
x:=x+lomemmax+1-p;begin fmtfile^.int:=himemmin;put(fmtfile);end;
begin fmtfile^.int:=avail;put(fmtfile);end;
for k:=himemmin to memend do begin fmtfile^:=mem[k];put(fmtfile);end;
x:=x+memend+1-himemmin;p:=avail;while p<>0 do begin dynused:=dynused-1;
p:=mem[p].hh.rh;end;begin fmtfile^.int:=varused;put(fmtfile);end;
begin fmtfile^.int:=dynused;put(fmtfile);end;println;printint(x);
print(1262);printint(varused);printchar(38);printint(dynused){:1311};
{1313:}{1315:}k:=1;repeat j:=k;
while j<5262 do begin if(eqtb[j].hh.rh=eqtb[j+1].hh.rh)and(eqtb[j].hh.b0
=eqtb[j+1].hh.b0)and(eqtb[j].hh.b1=eqtb[j+1].hh.b1)then goto 41;j:=j+1;
end;l:=5263;goto 31;41:j:=j+1;l:=j;
while j<5262 do begin if(eqtb[j].hh.rh<>eqtb[j+1].hh.rh)or(eqtb[j].hh.b0
<>eqtb[j+1].hh.b0)or(eqtb[j].hh.b1<>eqtb[j+1].hh.b1)then goto 31;j:=j+1;
end;31:begin fmtfile^.int:=l-k;put(fmtfile);end;
while k<l do begin begin fmtfile^:=eqtb[k];put(fmtfile);end;k:=k+1;end;
k:=j+1;begin fmtfile^.int:=k-l;put(fmtfile);end;until k=5263{:1315};
{1316:}repeat j:=k;
while j<6106 do begin if eqtb[j].int=eqtb[j+1].int then goto 42;j:=j+1;
end;l:=6107;goto 32;42:j:=j+1;l:=j;
while j<6106 do begin if eqtb[j].int<>eqtb[j+1].int then goto 32;j:=j+1;
end;32:begin fmtfile^.int:=l-k;put(fmtfile);end;
while k<l do begin begin fmtfile^:=eqtb[k];put(fmtfile);end;k:=k+1;end;
k:=j+1;begin fmtfile^.int:=k-l;put(fmtfile);end;until k>6106{:1316};
begin fmtfile^.int:=parloc;put(fmtfile);end;
begin fmtfile^.int:=writeloc;put(fmtfile);end;
{1318:}begin fmtfile^.int:=hashused;put(fmtfile);end;
cscount:=2613-hashused;
for p:=514 to hashused do if hash[p].rh<>0 then begin begin fmtfile^.int
:=p;put(fmtfile);end;begin fmtfile^.hh:=hash[p];put(fmtfile);end;
cscount:=cscount+1;end;
for p:=hashused+1 to 2880 do begin fmtfile^.hh:=hash[p];put(fmtfile);
end;begin fmtfile^.int:=cscount;put(fmtfile);end;println;
printint(cscount);print(1263){:1318}{:1313};
{1320:}begin fmtfile^.int:=fmemptr;put(fmtfile);end;
for k:=0 to fmemptr-1 do begin fmtfile^:=fontinfo[k];put(fmtfile);end;
begin fmtfile^.int:=fontptr;put(fmtfile);end;
for k:=0 to fontptr do{1322:}begin begin fmtfile^.qqqq:=fontcheck[k];
put(fmtfile);end;begin fmtfile^.int:=fontsize[k];put(fmtfile);end;
begin fmtfile^.int:=fontdsize[k];put(fmtfile);end;
begin fmtfile^.int:=fontparams[k];put(fmtfile);end;
begin fmtfile^.int:=hyphenchar[k];put(fmtfile);end;
begin fmtfile^.int:=skewchar[k];put(fmtfile);end;
begin fmtfile^.int:=fontname[k];put(fmtfile);end;
begin fmtfile^.int:=fontarea[k];put(fmtfile);end;
begin fmtfile^.int:=fontbc[k];put(fmtfile);end;
begin fmtfile^.int:=fontec[k];put(fmtfile);end;
begin fmtfile^.int:=charbase[k];put(fmtfile);end;
begin fmtfile^.int:=widthbase[k];put(fmtfile);end;
begin fmtfile^.int:=heightbase[k];put(fmtfile);end;
begin fmtfile^.int:=depthbase[k];put(fmtfile);end;
begin fmtfile^.int:=italicbase[k];put(fmtfile);end;
begin fmtfile^.int:=ligkernbase[k];put(fmtfile);end;
begin fmtfile^.int:=kernbase[k];put(fmtfile);end;
begin fmtfile^.int:=extenbase[k];put(fmtfile);end;
begin fmtfile^.int:=parambase[k];put(fmtfile);end;
begin fmtfile^.int:=fontglue[k];put(fmtfile);end;
begin fmtfile^.int:=bcharlabel[k];put(fmtfile);end;
begin fmtfile^.int:=fontbchar[k];put(fmtfile);end;
begin fmtfile^.int:=fontfalsebchar[k];put(fmtfile);end;printnl(1266);
printesc(hash[2624+k].rh);printchar(61);
printfilename(fontname[k],fontarea[k],338);
if fontsize[k]<>fontdsize[k]then begin print(741);
printscaled(fontsize[k]);print(397);end;end{:1322};println;
printint(fmemptr-7);print(1264);printint(fontptr-0);print(1265);
if fontptr<>1 then printchar(115){:1320};
{1324:}begin fmtfile^.int:=hyphcount;put(fmtfile);end;
for k:=0 to 307 do if hyphword[k]<>0 then begin begin fmtfile^.int:=k;
put(fmtfile);end;begin fmtfile^.int:=hyphword[k];put(fmtfile);end;
begin fmtfile^.int:=hyphlist[k];put(fmtfile);end;end;println;
printint(hyphcount);print(1267);if hyphcount<>1 then printchar(115);
if trienotready then inittrie;begin fmtfile^.int:=triemax;put(fmtfile);
end;for k:=0 to triemax do begin fmtfile^.hh:=trie[k];put(fmtfile);end;
begin fmtfile^.int:=trieopptr;put(fmtfile);end;
for k:=1 to trieopptr do begin begin fmtfile^.int:=hyfdistance[k];
put(fmtfile);end;begin fmtfile^.int:=hyfnum[k];put(fmtfile);end;
begin fmtfile^.int:=hyfnext[k];put(fmtfile);end;end;printnl(1268);
printint(triemax);print(1269);printint(trieopptr);print(1270);
if trieopptr<>1 then printchar(115);print(1271);printint(trieopsize);
for k:=255 downto 0 do if trieused[k]>0 then begin printnl(800);
printint(trieused[k]-0);print(1272);printint(k);begin fmtfile^.int:=k;
put(fmtfile);end;begin fmtfile^.int:=trieused[k]-0;put(fmtfile);end;
end{:1324};{1326:}begin fmtfile^.int:=interaction;put(fmtfile);end;
begin fmtfile^.int:=formatident;put(fmtfile);end;
begin fmtfile^.int:=69069;put(fmtfile);end;eqtb[5294].int:=0{:1326};
{1329:}wclose(fmtfile){:1329};end;
{:1302}{1348:}{1349:}procedure newwhatsit(s:smallnumber;w:smallnumber);
var p:halfword;begin p:=getnode(w);mem[p].hh.b0:=8;mem[p].hh.b1:=s;
mem[curlist.tailfield].hh.rh:=p;curlist.tailfield:=p;end;
{:1349}{1350:}procedure newwritewhatsit(w:smallnumber);
begin newwhatsit(curchr,w);
if w<>2 then scanfourbitint else begin scanint;
if curval<0 then curval:=17 else if curval>15 then curval:=16;end;
mem[curlist.tailfield+1].hh.lh:=curval;end;{:1350}procedure doextension;
var i,j,k:integer;p,q,r:halfword;
begin begin if ((curchr>=0)and(curchr<=5)) then case curchr of 0:{1351:}begin newwritewhatsit(3);
scanoptionalequals;scanfilename;mem[curlist.tailfield+1].hh.rh:=curname;
mem[curlist.tailfield+2].hh.lh:=curarea;
mem[curlist.tailfield+2].hh.rh:=curext;end{:1351};
1:{1352:}begin k:=curcs;newwritewhatsit(2);curcs:=k;
p:=scantoks(false,false);mem[curlist.tailfield+1].hh.rh:=defref;
end{:1352};2:{1353:}begin newwritewhatsit(2);
mem[curlist.tailfield+1].hh.rh:=0;end{:1353};
3:{1354:}begin newwhatsit(3,2);mem[curlist.tailfield+1].hh.lh:=0;
p:=scantoks(false,true);mem[curlist.tailfield+1].hh.rh:=defref;
end{:1354};4:{1375:}begin getxtoken;
if(curcmd=59)and(curchr<=2)then begin p:=curlist.tailfield;doextension;
outwhat(curlist.tailfield);flushnodelist(curlist.tailfield);
curlist.tailfield:=p;mem[p].hh.rh:=0;end else backinput;end{:1375};
5:{1377:}if abs(curlist.modefield)<>102 then reportillegalcase else
begin newwhatsit(4,2);scanint;
if curval<=0 then curlist.auxfield.hh.rh:=0 else if curval>255 then
curlist.auxfield.hh.rh:=0 else curlist.auxfield.hh.rh:=curval;
mem[curlist.tailfield+1].hh.rh:=curlist.auxfield.hh.rh;
mem[curlist.tailfield+1].hh.b0:=normmin(eqtb[5314].int);
mem[curlist.tailfield+1].hh.b1:=normmin(eqtb[5315].int);end{:1377} end else confusion(1292) end;end;{:1348}{1376:}procedure fixlanguage;
var l:ASCIIcode;
begin if eqtb[5313].int<=0 then l:=0 else if eqtb[5313].int>255 then l:=
0 else l:=eqtb[5313].int;
if l<>curlist.auxfield.hh.rh then begin newwhatsit(4,2);
mem[curlist.tailfield+1].hh.rh:=l;curlist.auxfield.hh.rh:=l;
mem[curlist.tailfield+1].hh.b0:=normmin(eqtb[5314].int);
mem[curlist.tailfield+1].hh.b1:=normmin(eqtb[5315].int);end;end;
{:1376}{1068:}procedure handlerightbrace;var p,q:halfword;d:scaled;
f:integer;begin begin if ((curgroup>=0)and(curgroup<=16)) then case curgroup of 1:unsave;
0:begin begin if interaction=3 then;printnl(262);print(1045);end;
begin helpptr:=2;helpline[1]:=1046;helpline[0]:=1047;end;error;end;
14,15,16:extrarightbrace;{1085:}2:package(0);3:begin adjusttail:=29995;
package(0);end;4:begin endgraf;package(0);end;5:begin endgraf;
package(4);end;{:1085}{1100:}11:begin endgraf;q:=eqtb[2892].hh.rh;
mem[q].hh.rh:=mem[q].hh.rh+1;d:=eqtb[5836].int;f:=eqtb[5305].int;unsave;
saveptr:=saveptr-1;
p:=vpackage(mem[curlist.headfield].hh.rh,0,1,1073741823);popnest;
if savestack[saveptr+0].int<255 then begin begin mem[curlist.tailfield].
hh.rh:=getnode(5);curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
mem[curlist.tailfield].hh.b0:=3;
mem[curlist.tailfield].hh.b1:=savestack[saveptr+0].int+0;
mem[curlist.tailfield+3].int:=mem[p+3].int+mem[p+2].int;
mem[curlist.tailfield+4].hh.lh:=mem[p+5].hh.rh;
mem[curlist.tailfield+4].hh.rh:=q;mem[curlist.tailfield+2].int:=d;
mem[curlist.tailfield+1].int:=f;
end else begin begin mem[curlist.tailfield].hh.rh:=getnode(2);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
mem[curlist.tailfield].hh.b0:=5;mem[curlist.tailfield].hh.b1:=0;
mem[curlist.tailfield+1].int:=mem[p+5].hh.rh;deleteglueref(q);end;
freenode(p,7);if nestptr=0 then buildpage;end;
8:{1026:}begin if(curinput.locfield<>0)or((curinput.indexfield<>6)and(
curinput.indexfield<>3))then{1027:}begin begin if interaction=3 then;
printnl(262);print(1011);end;begin helpptr:=2;helpline[1]:=1012;
helpline[0]:=1013;end;error;repeat gettoken;until curinput.locfield=0;
end{:1027};endtokenlist;endgraf;unsave;outputactive:=false;
insertpenalties:=0;
{1028:}if eqtb[3933].hh.rh<>0 then begin begin if interaction=3 then;
printnl(262);print(1014);end;printesc(409);printint(255);
begin helpptr:=3;helpline[2]:=1015;helpline[1]:=1016;helpline[0]:=1017;
end;boxerror(255);end{:1028};
if curlist.tailfield<>curlist.headfield then begin mem[pagetail].hh.rh:=
mem[curlist.headfield].hh.rh;pagetail:=curlist.tailfield;end;
if mem[29998].hh.rh<>0 then begin if mem[29999].hh.rh=0 then nest[0].
tailfield:=pagetail;mem[pagetail].hh.rh:=mem[29999].hh.rh;
mem[29999].hh.rh:=mem[29998].hh.rh;mem[29998].hh.rh:=0;pagetail:=29998;
end;popnest;buildpage;end{:1026};{:1100}{1118:}10:builddiscretionary;
{:1118}{1132:}6:begin backinput;curtok:=6710;
begin if interaction=3 then;printnl(262);print(625);end;printesc(900);
print(626);begin helpptr:=1;helpline[0]:=1126;end;inserror;end;
{:1132}{1133:}7:begin endgraf;unsave;alignpeek;end;
{:1133}{1168:}12:begin endgraf;unsave;saveptr:=saveptr-2;
p:=vpackage(mem[curlist.headfield].hh.rh,savestack[saveptr+1].int,
savestack[saveptr+0].int,1073741823);popnest;
begin mem[curlist.tailfield].hh.rh:=newnoad;
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
mem[curlist.tailfield].hh.b0:=29;mem[curlist.tailfield+1].hh.rh:=2;
mem[curlist.tailfield+1].hh.lh:=p;end;{:1168}{1173:}13:buildchoices;
{:1173}{1186:}9:begin unsave;saveptr:=saveptr-1;
mem[savestack[saveptr+0].int].hh.rh:=3;p:=finmlist(0);
mem[savestack[saveptr+0].int].hh.lh:=p;
if p<>0 then if mem[p].hh.rh=0 then if mem[p].hh.b0=16 then begin if mem
[p+3].hh.rh=0 then if mem[p+2].hh.rh=0 then begin mem[savestack[saveptr
+0].int].hh:=mem[p+1].hh;freenode(p,4);end;
end else if mem[p].hh.b0=28 then if savestack[saveptr+0].int=curlist.
tailfield+1 then if mem[curlist.tailfield].hh.b0=16 then{1187:}begin q:=
curlist.headfield;
while mem[q].hh.rh<>curlist.tailfield do q:=mem[q].hh.rh;
mem[q].hh.rh:=p;freenode(curlist.tailfield,4);curlist.tailfield:=p;
end{:1187};end;{:1186} end else confusion(1048) end;end;
{:1068}procedure maincontrol;
label 60,21,70,80,90,91,92,95,100,101,110,111,112,120,10;var t:integer;
begin if eqtb[3419].hh.rh<>0 then begintokenlist(eqtb[3419].hh.rh,12);
60:getxtoken;
21:{1031:}if interrupt<>0 then if OKtointerrupt then begin backinput;
begin if interrupt<>0 then pauseforinstructions;end;goto 60;end;
{if panicking then checkmem(false);}
if eqtb[5299].int>0 then showcurcmdchr{:1031};
case abs(curlist.modefield)+curcmd of 113,114,170:goto 70;
118:begin scancharnum;curchr:=curval;goto 70;end;167:begin getxtoken;
if(curcmd=11)or(curcmd=12)or(curcmd=68)or(curcmd=16)then cancelboundary
:=true;goto 21;end;
112:if curlist.auxfield.hh.lh=1000 then goto 120 else appspace;
166,267:goto 120;{1045:}1,102,203,11,213,268:;
40,141,242:begin{406:}repeat getxtoken;until curcmd<>10{:406};goto 21;
end;15:if itsallover then goto 10;
{1048:}23,123,224,71,172,273,{:1048}{1098:}39,{:1098}{1111:}45,{:1111}
{1144:}49,150,{:1144}7,108,209:reportillegalcase;
{1046:}8,109,9,110,18,119,70,171,51,152,16,117,50,151,53,154,67,168,54,
155,55,156,57,158,56,157,31,132,52,153,29,130,47,148,212,216,217,230,227
,236,239{:1046}:insertdollarsign;
{1056:}37,137,238:begin begin mem[curlist.tailfield].hh.rh:=scanrulespec
;curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
if abs(curlist.modefield)=1 then curlist.auxfield.int:=-65536000 else if
abs(curlist.modefield)=102 then curlist.auxfield.hh.lh:=1000;end;
{:1056}{1057:}28,128,229,231:appendglue;30,131,232,233:appendkern;
{:1057}{1063:}2,103:newsavelevel(1);62,163,264:newsavelevel(14);
63,164,265:if curgroup=14 then unsave else offsave;
{:1063}{1067:}3,104,205:handlerightbrace;
{:1067}{1073:}22,124,225:begin t:=curchr;scandimen(false,false,false);
if t=0 then scanbox(curval)else scanbox(-curval);end;
32,133,234:scanbox(1073742237+curchr);21,122,223:beginbox(0);
{:1073}{1090:}44:newgraf(curchr>0);
12,13,17,69,4,24,36,46,48,27,34,65,66:begin backinput;newgraf(true);end;
{:1090}{1092:}145,246:indentinhmode;
{:1092}{1094:}14:begin normalparagraph;
if curlist.modefield>0 then buildpage;end;
115:begin if alignstate<0 then offsave;endgraf;
if curlist.modefield=1 then buildpage;end;
116,129,138,126,134:headforvmode;
{:1094}{1097:}38,139,240,140,241:begininsertoradjust;
19,120,221:makemark;{:1097}{1102:}43,144,245:appendpenalty;
{:1102}{1104:}26,127,228:deletelast;{:1104}{1109:}25,125,226:unpackage;
{:1109}{1112:}146:appenditaliccorrection;
247:begin mem[curlist.tailfield].hh.rh:=newkern(0);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
{:1112}{1116:}149,250:appenddiscretionary;{:1116}{1122:}147:makeaccent;
{:1122}{1126:}6,107,208,5,106,207:alignerror;35,136,237:noalignerror;
64,165,266:omiterror;{:1126}{1130:}33,135:initalign;
235:if privileged then if curgroup=15 then initalign else offsave;
10,111:doendv;{:1130}{1134:}68,169,270:cserror;
{:1134}{1137:}105:initmath;
{:1137}{1140:}251:if privileged then if curgroup=15 then starteqno else
offsave;
{:1140}{1150:}204:begin begin mem[curlist.tailfield].hh.rh:=newnoad;
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;backinput;
scanmath(curlist.tailfield+1);end;
{:1150}{1154:}214,215,271:setmathchar(eqtb[5007+curchr].hh.rh-0);
219:begin scancharnum;curchr:=curval;
setmathchar(eqtb[5007+curchr].hh.rh-0);end;220:begin scanfifteenbitint;
setmathchar(curval);end;272:setmathchar(curchr);
218:begin scantwentysevenbitint;setmathchar(curval div 4096);end;
{:1154}{1158:}253:begin begin mem[curlist.tailfield].hh.rh:=newnoad;
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
mem[curlist.tailfield].hh.b0:=curchr;scanmath(curlist.tailfield+1);end;
254:mathlimitswitch;{:1158}{1162:}269:mathradical;
{:1162}{1164:}248,249:mathac;{:1164}{1167:}259:begin scanspec(12,false);
normalparagraph;pushnest;curlist.modefield:=-1;
curlist.auxfield.int:=-65536000;
if eqtb[3418].hh.rh<>0 then begintokenlist(eqtb[3418].hh.rh,11);end;
{:1167}{1171:}256:begin mem[curlist.tailfield].hh.rh:=newstyle(curchr);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
258:begin begin mem[curlist.tailfield].hh.rh:=newglue(0);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;
mem[curlist.tailfield].hh.b1:=98;end;257:appendchoices;
{:1171}{1175:}211,210:subsup;{:1175}{1180:}255:mathfraction;
{:1180}{1190:}252:mathleftright;
{:1190}{1193:}206:if curgroup=15 then aftermath else offsave;
{:1193}{1210:}72,173,274,73,174,275,74,175,276,75,176,277,76,177,278,77,
178,279,78,179,280,79,180,281,80,181,282,81,182,283,82,183,284,83,184,
285,84,185,286,85,186,287,86,187,288,87,188,289,88,189,290,89,190,291,90
,191,292,91,192,293,92,193,294,93,194,295,94,195,296,95,196,297,96,197,
298,97,198,299,98,199,300,99,200,301,100,201,302,101,202,303:
prefixedcommand;{:1210}{1268:}41,142,243:begin gettoken;
aftertoken:=curtok;end;{:1268}{1271:}42,143,244:begin gettoken;
saveforafter(curtok);end;{:1271}{1274:}61,162,263:openorclosein;
{:1274}{1276:}59,160,261:issuemessage;
{:1276}{1285:}58,159,260:shiftcase;
{:1285}{1290:}20,121,222:showwhatever;
{:1290}{1347:}60,161,262:doextension;{:1347}{:1045}end;goto 60;
70:{1034:}mains:=eqtb[4751+curchr].hh.rh;
if mains=1000 then curlist.auxfield.hh.lh:=1000 else if mains<1000 then
begin if mains>0 then curlist.auxfield.hh.lh:=mains;
end else if curlist.auxfield.hh.lh<1000 then curlist.auxfield.hh.lh:=
1000 else curlist.auxfield.hh.lh:=mains;mainf:=eqtb[3934].hh.rh;
bchar:=fontbchar[mainf];falsebchar:=fontfalsebchar[mainf];
if curlist.modefield>0 then if eqtb[5313].int<>curlist.auxfield.hh.rh
then fixlanguage;begin ligstack:=avail;
if ligstack=0 then ligstack:=getavail else begin avail:=mem[ligstack].hh
.rh;mem[ligstack].hh.rh:=0;{dynused:=dynused+1;}end;end;
mem[ligstack].hh.b0:=mainf;curl:=curchr+0;mem[ligstack].hh.b1:=curl;
curq:=curlist.tailfield;
if cancelboundary then begin cancelboundary:=false;maink:=0;
end else maink:=bcharlabel[mainf];if maink=0 then goto 92;curr:=curl;
curl:=256;goto 111;
80:{1035:}if curl<256 then begin if mem[curq].hh.rh>0 then if mem[
curlist.tailfield].hh.b1=hyphenchar[mainf]+0 then insdisc:=true;
if ligaturepresent then begin mainp:=newligature(mainf,curl,mem[curq].hh
.rh);if lfthit then begin mem[mainp].hh.b1:=2;lfthit:=false;end;
if rthit then if ligstack=0 then begin mem[mainp].hh.b1:=mem[mainp].hh.
b1+1;rthit:=false;end;mem[curq].hh.rh:=mainp;curlist.tailfield:=mainp;
ligaturepresent:=false;end;if insdisc then begin insdisc:=false;
if curlist.modefield>0 then begin mem[curlist.tailfield].hh.rh:=newdisc;
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;end;end{:1035};
90:{1036:}if ligstack=0 then goto 21;curq:=curlist.tailfield;
curl:=mem[ligstack].hh.b1;91:if not(ligstack>=himemmin)then goto 95;
92:if(curchr<fontbc[mainf])or(curchr>fontec[mainf])then begin
charwarning(mainf,curchr);begin mem[ligstack].hh.rh:=avail;
avail:=ligstack;{dynused:=dynused-1;}end;goto 60;end;
maini:=fontinfo[charbase[mainf]+curl].qqqq;
if not(maini.b0>0)then begin charwarning(mainf,curchr);
begin mem[ligstack].hh.rh:=avail;avail:=ligstack;{dynused:=dynused-1;}
end;goto 60;end;mem[curlist.tailfield].hh.rh:=ligstack;
curlist.tailfield:=ligstack{:1036};100:{1038:}getnext;
if curcmd=11 then goto 101;if curcmd=12 then goto 101;
if curcmd=68 then goto 101;xtoken;if curcmd=11 then goto 101;
if curcmd=12 then goto 101;if curcmd=68 then goto 101;
if curcmd=16 then begin scancharnum;curchr:=curval;goto 101;end;
if curcmd=65 then bchar:=256;curr:=bchar;ligstack:=0;goto 110;
101:mains:=eqtb[4751+curchr].hh.rh;
if mains=1000 then curlist.auxfield.hh.lh:=1000 else if mains<1000 then
begin if mains>0 then curlist.auxfield.hh.lh:=mains;
end else if curlist.auxfield.hh.lh<1000 then curlist.auxfield.hh.lh:=
1000 else curlist.auxfield.hh.lh:=mains;begin ligstack:=avail;
if ligstack=0 then ligstack:=getavail else begin avail:=mem[ligstack].hh
.rh;mem[ligstack].hh.rh:=0;{dynused:=dynused+1;}end;end;
mem[ligstack].hh.b0:=mainf;curr:=curchr+0;mem[ligstack].hh.b1:=curr;
if curr=falsebchar then curr:=256{:1038};
110:{1039:}if((maini.b2-0)mod 4)<>1 then goto 80;
if curr=256 then goto 80;maink:=ligkernbase[mainf]+maini.b3;
mainj:=fontinfo[maink].qqqq;if mainj.b0<=128 then goto 112;
maink:=ligkernbase[mainf]+256*mainj.b2+mainj.b3+32768-256*(128);
111:mainj:=fontinfo[maink].qqqq;
112:if mainj.b1=curr then if mainj.b0<=128 then{1040:}begin if mainj.b2
>=128 then begin if curl<256 then begin if mem[curq].hh.rh>0 then if mem
[curlist.tailfield].hh.b1=hyphenchar[mainf]+0 then insdisc:=true;
if ligaturepresent then begin mainp:=newligature(mainf,curl,mem[curq].hh
.rh);if lfthit then begin mem[mainp].hh.b1:=2;lfthit:=false;end;
if rthit then if ligstack=0 then begin mem[mainp].hh.b1:=mem[mainp].hh.
b1+1;rthit:=false;end;mem[curq].hh.rh:=mainp;curlist.tailfield:=mainp;
ligaturepresent:=false;end;if insdisc then begin insdisc:=false;
if curlist.modefield>0 then begin mem[curlist.tailfield].hh.rh:=newdisc;
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;end;end;
begin mem[curlist.tailfield].hh.rh:=newkern(fontinfo[kernbase[mainf]+256
*mainj.b2+mainj.b3].int);
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;goto 90;end;
if curl=256 then lfthit:=true else if ligstack=0 then rthit:=true;
begin if interrupt<>0 then pauseforinstructions;end;
begin if ((mainj.b2>=1)and(mainj.b2<=3))or((mainj.b2>=5)and(mainj.b2<=7))or(mainj.b2=11) then case mainj.b2 of 1,5:begin curl:=mainj.b3;
maini:=fontinfo[charbase[mainf]+curl].qqqq;ligaturepresent:=true;end;
2,6:begin curr:=mainj.b3;
if ligstack=0 then begin ligstack:=newligitem(curr);bchar:=256;
end else if(ligstack>=himemmin)then begin mainp:=ligstack;
ligstack:=newligitem(curr);mem[ligstack+1].hh.rh:=mainp;
end else mem[ligstack].hh.b1:=curr;end;3:begin curr:=mainj.b3;
mainp:=ligstack;ligstack:=newligitem(curr);mem[ligstack].hh.rh:=mainp;
end;7,11:begin if curl<256 then begin if mem[curq].hh.rh>0 then if mem[
curlist.tailfield].hh.b1=hyphenchar[mainf]+0 then insdisc:=true;
if ligaturepresent then begin mainp:=newligature(mainf,curl,mem[curq].hh
.rh);if lfthit then begin mem[mainp].hh.b1:=2;lfthit:=false;end;
if false then if ligstack=0 then begin mem[mainp].hh.b1:=mem[mainp].hh.
b1+1;rthit:=false;end;mem[curq].hh.rh:=mainp;curlist.tailfield:=mainp;
ligaturepresent:=false;end;if insdisc then begin insdisc:=false;
if curlist.modefield>0 then begin mem[curlist.tailfield].hh.rh:=newdisc;
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;end;end;
curq:=curlist.tailfield;curl:=mainj.b3;
maini:=fontinfo[charbase[mainf]+curl].qqqq;ligaturepresent:=true;end end else begin curl:=mainj.b3;ligaturepresent:=true;
if ligstack=0 then goto 80 else goto 91;end end;
if mainj.b2>4 then if mainj.b2<>7 then goto 80;
if curl<256 then goto 110;maink:=bcharlabel[mainf];goto 111;end{:1040};
if mainj.b0=0 then maink:=maink+1 else begin if mainj.b0>=128 then goto
80;maink:=maink+mainj.b0+1;end;goto 111{:1039};
95:{1037:}mainp:=mem[ligstack+1].hh.rh;
if mainp>0 then begin mem[curlist.tailfield].hh.rh:=mainp;
curlist.tailfield:=mem[curlist.tailfield].hh.rh;end;tempptr:=ligstack;
ligstack:=mem[tempptr].hh.rh;freenode(tempptr,2);
maini:=fontinfo[charbase[mainf]+curl].qqqq;ligaturepresent:=true;
if ligstack=0 then if mainp>0 then goto 100 else curr:=bchar else curr:=
mem[ligstack].hh.b1;goto 110{:1037}{:1034};
120:{1041:}if eqtb[2894].hh.rh=0 then begin{1042:}begin mainp:=fontglue[
eqtb[3934].hh.rh];if mainp=0 then begin mainp:=newspec(0);
maink:=parambase[eqtb[3934].hh.rh]+2;
mem[mainp+1].int:=fontinfo[maink].int;
mem[mainp+2].int:=fontinfo[maink+1].int;
mem[mainp+3].int:=fontinfo[maink+2].int;
fontglue[eqtb[3934].hh.rh]:=mainp;end;end{:1042};
tempptr:=newglue(mainp);end else tempptr:=newparamglue(12);
mem[curlist.tailfield].hh.rh:=tempptr;curlist.tailfield:=tempptr;
goto 60{:1041};10:end;{:1030}{1284:}procedure giveerrhelp;
begin tokenshow(eqtb[3421].hh.rh);end;
{:1284}{1303:}{524:}function openfmtfile:boolean;label 40,10;
var j:0..bufsize;begin j:=curinput.locfield;
if buffer[curinput.locfield]=38 then begin curinput.locfield:=curinput.
locfield+1;j:=curinput.locfield;buffer[last]:=32;
while buffer[j]<>32 do j:=j+1;packbufferedname(0,curinput.locfield,j-1);
if wopenin(fmtfile)then goto 40;
packbufferedname(11,curinput.locfield,j-1);
if wopenin(fmtfile)then goto 40;;
writeln(output,'Sorry, I can''t find that format;',' will try PLAIN.');;
end;packbufferedname(16,1,0);if not wopenin(fmtfile)then begin;
writeln(output,'I can''t find the PLAIN format file!');
openfmtfile:=false;goto 10;end;40:curinput.locfield:=j;
openfmtfile:=true;10:end;{:524}function loadfmtfile:boolean;
label 6666,10;var j,k:integer;p,q:halfword;x:integer;w:fourquarters;
begin{1308:}x:=fmtfile^.int;if x<>172418254 then goto 6666;
begin get(fmtfile);x:=fmtfile^.int;end;if x<>0 then goto 6666;
begin get(fmtfile);x:=fmtfile^.int;end;if x<>30000 then goto 6666;
begin get(fmtfile);x:=fmtfile^.int;end;if x<>6106 then goto 6666;
begin get(fmtfile);x:=fmtfile^.int;end;if x<>1777 then goto 6666;
begin get(fmtfile);x:=fmtfile^.int;end;if x<>307 then goto 6666{:1308};
{1310:}begin begin get(fmtfile);x:=fmtfile^.int;end;
if x<0 then goto 6666;if x>poolsize then begin;
writeln(output,'---! Must increase the ','string pool size');goto 6666;
end else poolptr:=x;end;begin begin get(fmtfile);x:=fmtfile^.int;end;
if x<0 then goto 6666;if x>maxstrings then begin;
writeln(output,'---! Must increase the ','max strings');goto 6666;
end else strptr:=x;end;for k:=0 to strptr do begin begin get(fmtfile);
x:=fmtfile^.int;end;
if(x<0)or(x>poolptr)then goto 6666 else strstart[k]:=x;end;k:=0;
while k+4<poolptr do begin begin get(fmtfile);w:=fmtfile^.qqqq;end;
strpool[k]:=w.b0-0;strpool[k+1]:=w.b1-0;strpool[k+2]:=w.b2-0;
strpool[k+3]:=w.b3-0;k:=k+4;end;k:=poolptr-4;begin get(fmtfile);
w:=fmtfile^.qqqq;end;strpool[k]:=w.b0-0;strpool[k+1]:=w.b1-0;
strpool[k+2]:=w.b2-0;strpool[k+3]:=w.b3-0;initstrptr:=strptr;
initpoolptr:=poolptr{:1310};{1312:}begin begin get(fmtfile);
x:=fmtfile^.int;end;
if(x<1019)or(x>29986)then goto 6666 else lomemmax:=x;end;
begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<20)or(x>lomemmax)then goto 6666 else rover:=x;end;p:=0;q:=rover;
repeat for k:=p to q+1 do begin get(fmtfile);mem[k]:=fmtfile^;end;
p:=q+mem[q].hh.lh;
if(p>lomemmax)or((q>=mem[q+1].hh.rh)and(mem[q+1].hh.rh<>rover))then goto
6666;q:=mem[q+1].hh.rh;until q=rover;
for k:=p to lomemmax do begin get(fmtfile);mem[k]:=fmtfile^;end;
if memmin<-2 then begin p:=mem[rover+1].hh.lh;q:=memmin+1;
mem[memmin].hh.rh:=0;mem[memmin].hh.lh:=0;mem[p+1].hh.rh:=q;
mem[rover+1].hh.lh:=q;mem[q+1].hh.rh:=rover;mem[q+1].hh.lh:=p;
mem[q].hh.rh:=65535;mem[q].hh.lh:=-0-q;end;begin begin get(fmtfile);
x:=fmtfile^.int;end;
if(x<lomemmax+1)or(x>29987)then goto 6666 else himemmin:=x;end;
begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<0)or(x>30000)then goto 6666 else avail:=x;end;memend:=30000;
for k:=himemmin to memend do begin get(fmtfile);mem[k]:=fmtfile^;end;
begin get(fmtfile);varused:=fmtfile^.int;end;begin get(fmtfile);
dynused:=fmtfile^.int;end{:1312};{1314:}{1317:}k:=1;
repeat begin get(fmtfile);x:=fmtfile^.int;end;
if(x<1)or(k+x>6107)then goto 6666;
for j:=k to k+x-1 do begin get(fmtfile);eqtb[j]:=fmtfile^;end;k:=k+x;
begin get(fmtfile);x:=fmtfile^.int;end;
if(x<0)or(k+x>6107)then goto 6666;
for j:=k to k+x-1 do eqtb[j]:=eqtb[k-1];k:=k+x;until k>6106{:1317};
begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<514)or(x>2614)then goto 6666 else parloc:=x;end;
partoken:=4095+parloc;begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<514)or(x>2614)then goto 6666 else writeloc:=x;end;
{1319:}begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<514)or(x>2614)then goto 6666 else hashused:=x;end;p:=513;
repeat begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<p+1)or(x>hashused)then goto 6666 else p:=x;end;begin get(fmtfile);
hash[p]:=fmtfile^.hh;end;until p=hashused;
for p:=hashused+1 to 2880 do begin get(fmtfile);hash[p]:=fmtfile^.hh;
end;begin get(fmtfile);cscount:=fmtfile^.int;end{:1319}{:1314};
{1321:}begin begin get(fmtfile);x:=fmtfile^.int;end;
if x<7 then goto 6666;if x>fontmemsize then begin;
writeln(output,'---! Must increase the ','font mem size');goto 6666;
end else fmemptr:=x;end;for k:=0 to fmemptr-1 do begin get(fmtfile);
fontinfo[k]:=fmtfile^;end;begin begin get(fmtfile);x:=fmtfile^.int;end;
if x<0 then goto 6666;if x>fontmax then begin;
writeln(output,'---! Must increase the ','font max');goto 6666;
end else fontptr:=x;end;
for k:=0 to fontptr do{1323:}begin begin get(fmtfile);
fontcheck[k]:=fmtfile^.qqqq;end;begin get(fmtfile);
fontsize[k]:=fmtfile^.int;end;begin get(fmtfile);
fontdsize[k]:=fmtfile^.int;end;begin begin get(fmtfile);x:=fmtfile^.int;
end;if(x<0)or(x>65535)then goto 6666 else fontparams[k]:=x;end;
begin get(fmtfile);hyphenchar[k]:=fmtfile^.int;end;begin get(fmtfile);
skewchar[k]:=fmtfile^.int;end;begin begin get(fmtfile);x:=fmtfile^.int;
end;if(x<0)or(x>strptr)then goto 6666 else fontname[k]:=x;end;
begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<0)or(x>strptr)then goto 6666 else fontarea[k]:=x;end;
begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<0)or(x>255)then goto 6666 else fontbc[k]:=x;end;
begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<0)or(x>255)then goto 6666 else fontec[k]:=x;end;begin get(fmtfile);
charbase[k]:=fmtfile^.int;end;begin get(fmtfile);
widthbase[k]:=fmtfile^.int;end;begin get(fmtfile);
heightbase[k]:=fmtfile^.int;end;begin get(fmtfile);
depthbase[k]:=fmtfile^.int;end;begin get(fmtfile);
italicbase[k]:=fmtfile^.int;end;begin get(fmtfile);
ligkernbase[k]:=fmtfile^.int;end;begin get(fmtfile);
kernbase[k]:=fmtfile^.int;end;begin get(fmtfile);
extenbase[k]:=fmtfile^.int;end;begin get(fmtfile);
parambase[k]:=fmtfile^.int;end;begin begin get(fmtfile);x:=fmtfile^.int;
end;if(x<0)or(x>lomemmax)then goto 6666 else fontglue[k]:=x;end;
begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<0)or(x>fmemptr-1)then goto 6666 else bcharlabel[k]:=x;end;
begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<0)or(x>256)then goto 6666 else fontbchar[k]:=x;end;
begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<0)or(x>256)then goto 6666 else fontfalsebchar[k]:=x;end;
end{:1323}{:1321};{1325:}begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<0)or(x>307)then goto 6666 else hyphcount:=x;end;
for k:=1 to hyphcount do begin begin begin get(fmtfile);x:=fmtfile^.int;
end;if(x<0)or(x>307)then goto 6666 else j:=x;end;
begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<0)or(x>strptr)then goto 6666 else hyphword[j]:=x;end;
begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<0)or(x>65535)then goto 6666 else hyphlist[j]:=x;end;end;
begin begin get(fmtfile);x:=fmtfile^.int;end;if x<0 then goto 6666;
if x>triesize then begin;
writeln(output,'---! Must increase the ','trie size');goto 6666;
end else j:=x;end;triemax:=j;for k:=0 to j do begin get(fmtfile);
trie[k]:=fmtfile^.hh;end;begin begin get(fmtfile);x:=fmtfile^.int;end;
if x<0 then goto 6666;if x>trieopsize then begin;
writeln(output,'---! Must increase the ','trie op size');goto 6666;
end else j:=x;end;trieopptr:=j;
for k:=1 to j do begin begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<0)or(x>63)then goto 6666 else hyfdistance[k]:=x;end;
begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<0)or(x>63)then goto 6666 else hyfnum[k]:=x;end;
begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<0)or(x>255)then goto 6666 else hyfnext[k]:=x;end;end;
for k:=0 to 255 do trieused[k]:=0;k:=256;
while j>0 do begin begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<0)or(x>k-1)then goto 6666 else k:=x;end;begin begin get(fmtfile);
x:=fmtfile^.int;end;if(x<1)or(x>j)then goto 6666 else x:=x;end;
trieused[k]:=x+0;j:=j-x;opstart[k]:=j-0;end;trienotready:=false{:1325};
{1327:}begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<0)or(x>3)then goto 6666 else interaction:=x;end;
begin begin get(fmtfile);x:=fmtfile^.int;end;
if(x<0)or(x>strptr)then goto 6666 else formatident:=x;end;
begin get(fmtfile);x:=fmtfile^.int;end;
if(x<>69069)or eof(fmtfile)then goto 6666{:1327};loadfmtfile:=true;
goto 10;6666:;writeln(output,'(Fatal format file error; I''m stymied)');
loadfmtfile:=false;10:end;
{:1303}{1330:}{1333:}procedure closefilesandterminate;var k:integer;
begin{1378:}for k:=0 to 15 do if writeopen[k]then aclose(writefile[k])
{:1378};eqtb[5312].int:=-1;
{if eqtb[5294].int>0 then[1334:]if logopened then begin;;;
if strptr<>initstrptr+1 then;;;;;;if fontptr<>1 then;;;
if hyphcount<>1 then;;;end[:1334];};
{642:}while curs>-1 do begin if curs>0 then begin dvibuf[dviptr]:=142;
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;
end else begin begin dvibuf[dviptr]:=140;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;totalpages:=totalpages+1;end;
curs:=curs-1;end;
if totalpages=0 then printnl(838)else begin begin dvibuf[dviptr]:=248;
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;dvifour(lastbop);
lastbop:=dvioffset+dviptr-5;dvifour(25400000);dvifour(473628672);
preparemag;dvifour(eqtb[5280].int);dvifour(maxv);dvifour(maxh);
begin dvibuf[dviptr]:=maxpush div 256;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;
begin dvibuf[dviptr]:=maxpush mod 256;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;
begin dvibuf[dviptr]:=(totalpages div 256)mod 256;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;
begin dvibuf[dviptr]:=totalpages mod 256;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;
{643:}while fontptr>0 do begin if fontused[fontptr]then dvifontdef(
fontptr);fontptr:=fontptr-1;end{:643};begin dvibuf[dviptr]:=249;
dviptr:=dviptr+1;if dviptr=dvilimit then dviswap;end;dvifour(lastbop);
begin dvibuf[dviptr]:=2;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;k:=4+((dvibufsize-dviptr)mod 4);
while k>0 do begin begin dvibuf[dviptr]:=223;dviptr:=dviptr+1;
if dviptr=dvilimit then dviswap;end;k:=k-1;end;
{599:}if dvilimit=halfbuf then writedvi(halfbuf,dvibufsize-1);
if dviptr>0 then writedvi(0,dviptr-1){:599};printnl(839);
slowprint(outputfilename);print(286);printint(totalpages);print(840);
if totalpages<>1 then printchar(115);print(841);
printint(dvioffset+dviptr);print(842);bclose(dvifile);end{:642};
if logopened then begin;aclose(logfile);selector:=selector-2;
if selector=17 then begin printnl(1276);slowprint(logname);
printchar(46);end;end;end;{:1333}{1335:}procedure finalcleanup;label 10;
var c:smallnumber;begin c:=curchr;if c<>1 then eqtb[5312].int:=-1;
if jobname=0 then openlogfile;
while inputptr>0 do if curinput.statefield=0 then endtokenlist else
endfilereading;while openparens>0 do begin print(1277);
openparens:=openparens-1;end;if curlevel>1 then begin printnl(40);
printesc(1278);print(1279);printint(curlevel-1);printchar(41);end;
while condptr<>0 do begin printnl(40);printesc(1278);print(1280);
printcmdchr(105,curif);if ifline<>0 then begin print(1281);
printint(ifline);end;print(1282);ifline:=mem[condptr+1].int;
curif:=mem[condptr].hh.b1;tempptr:=condptr;condptr:=mem[condptr].hh.rh;
freenode(tempptr,2);end;
if history<>0 then if((history=1)or(interaction<3))then if selector=19
then begin selector:=17;printnl(1283);selector:=19;end;
if c=1 then begin for c:=0 to 4 do if curmark[c]<>0 then deletetokenref(
curmark[c]);if lastglue<>65535 then deleteglueref(lastglue);
storefmtfile;goto 10;printnl(1284);goto 10;end;10:end;
{:1335}{1336:}procedure initprim;begin nonewcontrolsequence:=false;
{226:}primitive(376,75,2882);primitive(377,75,2883);
primitive(378,75,2884);primitive(379,75,2885);primitive(380,75,2886);
primitive(381,75,2887);primitive(382,75,2888);primitive(383,75,2889);
primitive(384,75,2890);primitive(385,75,2891);primitive(386,75,2892);
primitive(387,75,2893);primitive(388,75,2894);primitive(389,75,2895);
primitive(390,75,2896);primitive(391,76,2897);primitive(392,76,2898);
primitive(393,76,2899);{:226}{230:}primitive(398,72,3413);
primitive(399,72,3414);primitive(400,72,3415);primitive(401,72,3416);
primitive(402,72,3417);primitive(403,72,3418);primitive(404,72,3419);
primitive(405,72,3420);primitive(406,72,3421);
{:230}{238:}primitive(420,73,5263);primitive(421,73,5264);
primitive(422,73,5265);primitive(423,73,5266);primitive(424,73,5267);
primitive(425,73,5268);primitive(426,73,5269);primitive(427,73,5270);
primitive(428,73,5271);primitive(429,73,5272);primitive(430,73,5273);
primitive(431,73,5274);primitive(432,73,5275);primitive(433,73,5276);
primitive(434,73,5277);primitive(435,73,5278);primitive(436,73,5279);
primitive(437,73,5280);primitive(438,73,5281);primitive(439,73,5282);
primitive(440,73,5283);primitive(441,73,5284);primitive(442,73,5285);
primitive(443,73,5286);primitive(444,73,5287);primitive(445,73,5288);
primitive(446,73,5289);primitive(447,73,5290);primitive(448,73,5291);
primitive(449,73,5292);primitive(450,73,5293);primitive(451,73,5294);
primitive(452,73,5295);primitive(453,73,5296);primitive(454,73,5297);
primitive(455,73,5298);primitive(456,73,5299);primitive(457,73,5300);
primitive(458,73,5301);primitive(459,73,5302);primitive(460,73,5303);
primitive(461,73,5304);primitive(462,73,5305);primitive(463,73,5306);
primitive(464,73,5307);primitive(465,73,5308);primitive(466,73,5309);
primitive(467,73,5310);primitive(468,73,5311);primitive(469,73,5312);
primitive(470,73,5313);primitive(471,73,5314);primitive(472,73,5315);
primitive(473,73,5316);primitive(474,73,5317);
{:238}{248:}primitive(478,74,5830);primitive(479,74,5831);
primitive(480,74,5832);primitive(481,74,5833);primitive(482,74,5834);
primitive(483,74,5835);primitive(484,74,5836);primitive(485,74,5837);
primitive(486,74,5838);primitive(487,74,5839);primitive(488,74,5840);
primitive(489,74,5841);primitive(490,74,5842);primitive(491,74,5843);
primitive(492,74,5844);primitive(493,74,5845);primitive(494,74,5846);
primitive(495,74,5847);primitive(496,74,5848);primitive(497,74,5849);
primitive(498,74,5850);{:248}{265:}primitive(32,64,0);
primitive(47,44,0);primitive(508,45,0);primitive(509,90,0);
primitive(510,40,0);primitive(511,41,0);primitive(512,61,0);
primitive(513,16,0);primitive(504,107,0);primitive(514,15,0);
primitive(515,92,0);primitive(505,67,0);primitive(516,62,0);
hash[2616].rh:=516;eqtb[2616]:=eqtb[curval];primitive(517,102,0);
primitive(518,88,0);primitive(519,77,0);primitive(520,32,0);
primitive(521,36,0);primitive(522,39,0);primitive(330,37,0);
primitive(351,18,0);primitive(523,46,0);primitive(524,17,0);
primitive(525,54,0);primitive(526,91,0);primitive(527,34,0);
primitive(528,65,0);primitive(529,103,0);primitive(335,55,0);
primitive(530,63,0);primitive(408,84,0);primitive(531,42,0);
primitive(532,80,0);primitive(533,66,0);primitive(534,96,0);
primitive(535,0,256);hash[2621].rh:=535;eqtb[2621]:=eqtb[curval];
primitive(536,98,0);primitive(537,109,0);primitive(407,71,0);
primitive(352,38,0);primitive(538,33,0);primitive(539,56,0);
primitive(540,35,0);{:265}{334:}primitive(597,13,256);parloc:=curval;
partoken:=4095+parloc;{:334}{376:}primitive(629,104,0);
primitive(630,104,1);{:376}{384:}primitive(631,110,0);
primitive(632,110,1);primitive(633,110,2);primitive(634,110,3);
primitive(635,110,4);{:384}{411:}primitive(476,89,0);
primitive(500,89,1);primitive(395,89,2);primitive(396,89,3);
{:411}{416:}primitive(668,79,102);primitive(669,79,1);
primitive(670,82,0);primitive(671,82,1);primitive(672,83,1);
primitive(673,83,3);primitive(674,83,2);primitive(675,70,0);
primitive(676,70,1);primitive(677,70,2);primitive(678,70,3);
primitive(679,70,4);{:416}{468:}primitive(735,108,0);
primitive(736,108,1);primitive(737,108,2);primitive(738,108,3);
primitive(739,108,4);primitive(740,108,5);
{:468}{487:}primitive(757,105,0);primitive(758,105,1);
primitive(759,105,2);primitive(760,105,3);primitive(761,105,4);
primitive(762,105,5);primitive(763,105,6);primitive(764,105,7);
primitive(765,105,8);primitive(766,105,9);primitive(767,105,10);
primitive(768,105,11);primitive(769,105,12);primitive(770,105,13);
primitive(771,105,14);primitive(772,105,15);primitive(773,105,16);
{:487}{491:}primitive(774,106,2);hash[2618].rh:=774;
eqtb[2618]:=eqtb[curval];primitive(775,106,4);primitive(776,106,3);
{:491}{553:}primitive(801,87,0);hash[2624].rh:=801;
eqtb[2624]:=eqtb[curval];{:553}{780:}primitive(899,4,256);
primitive(900,5,257);hash[2615].rh:=900;eqtb[2615]:=eqtb[curval];
primitive(901,5,258);hash[2619].rh:=902;hash[2620].rh:=902;
eqtb[2620].hh.b0:=9;eqtb[2620].hh.rh:=29989;eqtb[2620].hh.b1:=1;
eqtb[2619]:=eqtb[2620];eqtb[2619].hh.b0:=115;
{:780}{983:}primitive(971,81,0);primitive(972,81,1);primitive(973,81,2);
primitive(974,81,3);primitive(975,81,4);primitive(976,81,5);
primitive(977,81,6);primitive(978,81,7);
{:983}{1052:}primitive(1026,14,0);primitive(1027,14,1);
{:1052}{1058:}primitive(1028,26,4);primitive(1029,26,0);
primitive(1030,26,1);primitive(1031,26,2);primitive(1032,26,3);
primitive(1033,27,4);primitive(1034,27,0);primitive(1035,27,1);
primitive(1036,27,2);primitive(1037,27,3);primitive(336,28,5);
primitive(340,29,1);primitive(342,30,99);
{:1058}{1071:}primitive(1055,21,1);primitive(1056,21,0);
primitive(1057,22,1);primitive(1058,22,0);primitive(409,20,0);
primitive(1059,20,1);primitive(1060,20,2);primitive(966,20,3);
primitive(1061,20,4);primitive(968,20,5);primitive(1062,20,106);
primitive(1063,31,99);primitive(1064,31,100);primitive(1065,31,101);
primitive(1066,31,102);{:1071}{1088:}primitive(1081,43,1);
primitive(1082,43,0);{:1088}{1107:}primitive(1091,25,12);
primitive(1092,25,11);primitive(1093,25,10);primitive(1094,23,0);
primitive(1095,23,1);primitive(1096,24,0);primitive(1097,24,1);
{:1107}{1114:}primitive(45,47,1);primitive(349,47,0);
{:1114}{1141:}primitive(1128,48,0);primitive(1129,48,1);
{:1141}{1156:}primitive(867,50,16);primitive(868,50,17);
primitive(869,50,18);primitive(870,50,19);primitive(871,50,20);
primitive(872,50,21);primitive(873,50,22);primitive(874,50,23);
primitive(876,50,26);primitive(875,50,27);primitive(1130,51,0);
primitive(879,51,1);primitive(880,51,2);
{:1156}{1169:}primitive(862,53,0);primitive(863,53,2);
primitive(864,53,4);primitive(865,53,6);
{:1169}{1178:}primitive(1148,52,0);primitive(1149,52,1);
primitive(1150,52,2);primitive(1151,52,3);primitive(1152,52,4);
primitive(1153,52,5);{:1178}{1188:}primitive(877,49,30);
primitive(878,49,31);hash[2617].rh:=878;eqtb[2617]:=eqtb[curval];
{:1188}{1208:}primitive(1172,93,1);primitive(1173,93,2);
primitive(1174,93,4);primitive(1175,97,0);primitive(1176,97,1);
primitive(1177,97,2);primitive(1178,97,3);
{:1208}{1219:}primitive(1192,94,0);primitive(1193,94,1);
{:1219}{1222:}primitive(1194,95,0);primitive(1195,95,1);
primitive(1196,95,2);primitive(1197,95,3);primitive(1198,95,4);
primitive(1199,95,5);primitive(1200,95,6);
{:1222}{1230:}primitive(415,85,3983);primitive(419,85,5007);
primitive(416,85,4239);primitive(417,85,4495);primitive(418,85,4751);
primitive(477,85,5574);primitive(412,86,3935);primitive(413,86,3951);
primitive(414,86,3967);{:1230}{1250:}primitive(942,99,0);
primitive(954,99,1);{:1250}{1254:}primitive(1218,78,0);
primitive(1219,78,1);{:1254}{1262:}primitive(274,100,0);
primitive(275,100,1);primitive(276,100,2);primitive(1228,100,3);
{:1262}{1272:}primitive(1229,60,1);primitive(1230,60,0);
{:1272}{1277:}primitive(1231,58,0);primitive(1232,58,1);
{:1277}{1286:}primitive(1238,57,4239);primitive(1239,57,4495);
{:1286}{1291:}primitive(1240,19,0);primitive(1241,19,1);
primitive(1242,19,2);primitive(1243,19,3);
{:1291}{1344:}primitive(1286,59,0);primitive(594,59,1);writeloc:=curval;
primitive(1287,59,2);primitive(1288,59,3);primitive(1289,59,4);
primitive(1290,59,5);{:1344};nonewcontrolsequence:=true;end;
{:1336}{1338:}{procedure debughelp;label 888,10;var k,l,m,n:integer;
begin;while true do begin;printnl(1285);;read(termin,m);
if m<0 then goto 10 else if m=0 then begin goto 888;888:m:=0;
['BREAKPOINT']end else begin read(termin,n);
case m of[1339:]1:printword(mem[n]);2:printint(mem[n].hh.lh);
3:printint(mem[n].hh.rh);4:printword(eqtb[n]);5:printword(fontinfo[n]);
6:printword(savestack[n]);7:showbox(n);8:begin breadthmax:=10000;
depththreshold:=poolsize-poolptr-10;shownodelist(n);end;
9:showtokenlist(n,0,1000);10:slowprint(n);11:checkmem(n>0);
12:searchmem(n);13:begin read(termin,l);printcmdchr(n,l);end;
14:for k:=0 to n do print(buffer[k]);15:begin fontinshortdisplay:=0;
shortdisplay(n);end;16:panicking:=not panicking;
[:1339]others:print(63)end;end;end;10:end;}
{:1338}{:1330}{1332:}begin history:=3;;embload;dvitotal:=0;
if readyalready=314159 then goto 1;{14:}bad:=0;
if(halferrorline<30)or(halferrorline>errorline-15)then bad:=1;
if maxprintline<60 then bad:=2;if dvibufsize mod 8<>0 then bad:=3;
if 1100>30000 then bad:=4;if 1777>2100 then bad:=5;
if maxinopen>=128 then bad:=6;if 30000<267 then bad:=7;
{:14}{111:}if(memmin<>0)or(memmax<>30000)then bad:=10;
if(memmin>0)or(memmax<30000)then bad:=10;if(0>0)or(255<127)then bad:=11;
if(0>0)or(65535<32767)then bad:=12;if(0<0)or(255>65535)then bad:=13;
if(memmin<0)or(memmax>=65535)or(-0-memmin>65536)then bad:=14;
if(0<0)or(fontmax>255)then bad:=15;if fontmax>256 then bad:=16;
if(savesize>65535)or(maxstrings>65535)then bad:=17;
if bufsize>65535 then bad:=18;if 255<255 then bad:=19;
{:111}{290:}if 6976>65535 then bad:=21;
{:290}{522:}if 20>filenamesize then bad:=31;
{:522}{1249:}if 2*65535<30000-memmin then bad:=41;
{:1249}if bad>0 then begin writeln(output,
'Ouch---my internal constants have been clobbered!','---case ',bad:1);
goto 9999;end;initialize;if not getstringsstarted then goto 9999;
initprim;initstrptr:=strptr;initpoolptr:=poolptr;fixdateandtime;
readyalready:=314159;1:{55:}selector:=17;tally:=0;termoffset:=0;
fileoffset:=0;
{:55}{61:}write(output,'This is TeX, Version 3.141592653');
if formatident=0 then writeln(output,' (no format preloaded)')else begin
slowprint(formatident);println;end;;{:61}{528:}jobname:=0;
nameinprogress:=false;logopened:=false;{:528}{533:}outputfilename:=0;
{:533};{1337:}begin{331:}begin inputptr:=0;maxinstack:=0;inopen:=0;
openparens:=0;maxbufstack:=0;paramptr:=0;maxparamstack:=0;
first:=bufsize;repeat buffer[first]:=0;first:=first-1;until first=0;
scannerstatus:=0;warningindex:=0;first:=1;curinput.statefield:=33;
curinput.startfield:=1;curinput.indexfield:=0;line:=0;
curinput.namefield:=0;forceeof:=false;alignstate:=1000000;
if not initterminal then goto 9999;curinput.limitfield:=last;
first:=last+1;end{:331};
if(formatident=0)or(buffer[curinput.locfield]=38)then begin if
formatident<>0 then initialize;if not openfmtfile then goto 9999;
if not loadfmtfile then begin wclose(fmtfile);goto 9999;end;
wclose(fmtfile);
while(curinput.locfield<curinput.limitfield)and(buffer[curinput.locfield
]=32)do curinput.locfield:=curinput.locfield+1;end;
if(eqtb[5311].int<0)or(eqtb[5311].int>255)then curinput.limitfield:=
curinput.limitfield-1 else buffer[curinput.limitfield]:=eqtb[5311].int;
fixdateandtime;{765:}magicoffset:=strstart[893]-9*16{:765};
{75:}if interaction=0 then selector:=16 else selector:=17{:75};
if(curinput.locfield<curinput.limitfield)and(eqtb[3983+buffer[curinput.
locfield]].hh.rh<>0)then startinput;end{:1337};history:=0;maincontrol;
finalcleanup;9998:closefilesandterminate;dumpdvi;9999:readyalready:=0;
end.{:1332}
