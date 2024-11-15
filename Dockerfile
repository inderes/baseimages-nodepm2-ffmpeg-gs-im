ARG NODE_VERSION=22

# For building the mutool binary
FROM node:${NODE_VERSION}-alpine AS mupdf-builder
RUN apk add --no-cache \
    git \
    make \
    pkgconfig \
    build-base \
    && git clone --recursive git://git.ghostscript.com/mupdf.git \
    && cd mupdf \
    && git submodule update --init \
    && make HAVE_X11=no HAVE_GLUT=no prefix=/usr/local install

FROM node:${NODE_VERSION}-alpine
RUN apk update && \
  apk add --no-cache \
  ffmpeg ffmpeg-libs ghostscript ghostscript-fonts imagemagick

# Copy the mutool binary from the mupdf-builder stage
COPY --from=mupdf-builder /usr/local/bin/mutool /usr/local/bin/mutool

RUN npm install pm2 -g
