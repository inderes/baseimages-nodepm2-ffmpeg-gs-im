FROM vsync/nodepm2:node-6.11.4
RUN apk add --no-cache ffmpeg
RUN apk add --no-cache ffmpeg-libs
RUN apk add --no-cache ghostscript
RUN apk add --no-cache ghostscript-fonts
RUN apk add --no-cache imagemagick
