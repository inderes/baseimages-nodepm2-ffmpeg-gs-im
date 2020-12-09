FROM keymetrics/pm2:14-alpine
RUN apk update && \
  apk add --no-cache \
  ffmpeg ffmpeg-libs ghostscript ghostscript-fonts imagemagick
