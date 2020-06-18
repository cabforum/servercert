#!/bin/sh

tlmgr option repository http://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2019/tlnet-final
tlmgr --no-persistent-downloads install sourcecodepro sourcesanspro sourceserifpro crimsonpro
apk add make
cd /data
make pandoc
