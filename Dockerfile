FROM node:16-alpine
RUN apk update && \
  apk add --no-cache \
  ffmpeg ffmpeg-libs ghostscript ghostscript-fonts imagemagick
RUN npm install pm2 -g
