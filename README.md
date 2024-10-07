# translator generator
This project is built on [translate-shell](https://github.com/soimort/translate-shell).

## Idea
This project lets you generate translating scripts, that translate text from one "human" language to another.

## Prerequisites:
- GNU/Linux
- wget
- make
- m4
- internet connection

## Installation
Run `download.sh` script. This will download translate-shell.  
## Generate translator
Run `make FROM=<lang_code> TO=<lang_code>` or `make cs_to_en` or `make en_to_cs`  
### valid language codes
af,am,ar,as,ay,az,ba,be,bg,bho,bm,bn,bo,bs,ca,ceb,ckb,co,cs,cv,cy,da,de,doi,dv,ee,el,en,eo,es,et,eu,fa,fi,fj,fo,fr,fr-CA,fy,ga,gd,gl,gn,gom,gu,ha,haw,he,hi,hmn,hr,hsb,ht,hu,hy,id,ig,ikt,ilo,is,it,iu,iu-Latn,ja,jv,ka,kk,km,kn,ko,kri,ku,ky,la,lb,lg,ln,lo,lt,lus,lv,lzh,mai,mg,mhr,mi,mk,ml,mn,mn-Mong,mni-Mtei,mr,mrj,ms,mt,my,ne,nl,no,nso,ny,om,or,otq,pa,pap,pl,prs,ps,pt-BR,pt-PT,qu,ro,ru,rw,sa,sah,sd,si,sk,sl,sm,sn,so,sq,sr-Cyrl,sr-Latn,st,su,sv,sw,ta,te,tg,th,ti,tk,tl,tlh-Latn,to,tr,ts,tt,tw,ty,udm,ug,uk,ur,uz,vi,xh,yi,yo,yua,yue,zh-CN,zh-TW,zu
## How to use
This will create language translator for you. Lets say you called `make FROM=en TO=cs`. It would create bash script called `en_to_cs`. You can either use it in shell mode or command mode.
### Shell mode
run `./en_to_cs`
- opens shell that translates everything you type in it from English to Czech
### Command mode
run `./en_to_cs "Your text is here."`
- returns translation into STDOUT directly.


>**_TIP:_** make this script usable globally by linking it into /bin/ (`ln -s <abs_path_to_translator> /bin/`. It is designed so link doesn't break its functionality.)
