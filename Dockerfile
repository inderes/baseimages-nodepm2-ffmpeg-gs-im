FROM keymetrics/pm2:16-alpine
RUN apk update && \
  apk add --no-cache \
  ffmpeg ffmpeg-libs ghostscript ghostscript-fonts imagemagick
