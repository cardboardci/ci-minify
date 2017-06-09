#!/bin/sh

# Tests
#
# A set of common functions that should be tested on the docker image.

install()
{
    apt-get update >/dev/null 2>&1
    apt-get install -y zip >/dev/null 2>&1
}

go_version()
{
    go version >/dev/null 2>&1
}

minify_version()
{
    minify --version >/dev/null 2>&1
}

simple_site()
{
    minify -o target/ resources/ >/dev/null 2>&1
}