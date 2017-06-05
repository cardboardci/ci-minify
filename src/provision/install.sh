#!/bin/sh
set -ex
cd /tmp/

go get $MINIFY_URL

rm -rf /tmp/* /var/tmp/* /var/cache/apk/*