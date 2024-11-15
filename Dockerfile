FROM node:20-alpine
RUN apk update && \
  apk add --no-cache \
  ffmpeg ffmpeg-libs ghostscript ghostscript-fonts imagemagick
RUN npm install pm2 -g
