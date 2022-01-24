# baseimages-nodepm2-ffmpeg-gs-im

Baseimage derived from cahva/baseimages-nodepm2 with ffmpeg, ghostscript and imagemagick added

Changes:

~~- use different baseimage which uses alpine:edge as baseimage~~
~~- use keymetrics/pm2 as baseimage~~
- revert back to normal node:16-alpine and install pm2 as global dependency
