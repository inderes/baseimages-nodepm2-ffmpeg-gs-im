# baseimages-nodepm2-ffmpeg-gs-im

Baseimage derived from cahva/baseimages-nodepm2 with ffmpeg, ghostscript and imagemagick added

Changes:

## [2024-11-15]
- Change to node-22 as base image
- build and add mutool binary to image

## [2023-04-06]

### Changes
- Change to use node:18-alpine as base image

## Older changes

~~- use different baseimage which uses alpine:edge as baseimage~~
~~- use keymetrics/pm2 as baseimage~~
- revert back to normal node:16-alpine and install pm2 as global dependency
