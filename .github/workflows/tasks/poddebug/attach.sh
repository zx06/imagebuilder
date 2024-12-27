#!/bin/sh
set -e
dlv --listen=:2345 --headless=true --api-version=2 attach $1