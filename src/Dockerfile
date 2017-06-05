FROM jrbeverly/baseimage:golang

#
# Build Arguments
#
ARG MINIFY_URL

#
# Provision
#
COPY rootfs/ /

COPY provision/install.sh /tmp/install.sh
RUN sh /tmp/install.sh && rm -f /tmp/install.sh

# 
# Options
# 
WORKDIR /media
ENTRYPOINT []
CMD []

#
# User
#
ARG USER
USER $USER

#
# Metadata Arguments
#
ARG BUILD_DATE
ARG VERSION
ARG VCS_REF

#
# Metadata
#
LABEL \
    maintainer="jrbeverly" \
    \
    org.label-schema.name="minify" \
    org.label-schema.summary="A super small Alpine image with a web minifier installed." \
    org.label-schema.description="Minify provides HTML5, CSS3, JS, JSON, SVG and XML minifiers and an interface to implement any other minifier." \
    org.label-schema.maintainer="jrbeverly" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.version=$VERSION \
    org.label-schema.url="https://github.com/tdewolff/minify" \
    org.label-schema.license="MIT" \
    org.label-schema.vcs-type="Git" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://gitlab.com/jrbeverly-docker/docker-minify" \
    org.label-schema.docker.cmd="docker run -v $(pwd):/media/ jrbeverly/minify:baseimage minify index.html" \
    \
    io.jrbeverly.project="minify" \
    io.jrbeverly.summary="A docker image with librsvg installed, running as the $USER user." \
    io.jrbeverly.minify.meta.BUILD_DATE="The Date/Time the image was built." \
    io.jrbeverly.minify.meta.VERSION="Release identifier for the contents of the image." \
    io.jrbeverly.minify.meta.VCS_REF="Identifier for the version of the source code from which this image was built." \
    io.jrbeverly.minify.args.USER="Sets the [user](http://www.linfo.org/uid.html) to use when running the image." \
    io.jrbeverly.minify.volume.media="/media/|The default working directory of the image."
