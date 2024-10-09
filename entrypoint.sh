#!/bin/bash
if [ "$1" = "bash" ]; then
    exec /bin/bash
else
    exec python "$@"
fi
