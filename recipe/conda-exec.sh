#!/bin/bash
set -eo pipefail

usage() {
    cat << _EOF
Usage:  conda exec [OPTIONS] [--] ENVIRONMENT COMMAND [ARG...]

Run a command in an existing conda environment

Options:
  -h        Print usage
_EOF
}

CONDA_EXEC_DIR="$(cd "$(dirname "${0}")" && pwd -P)"

ARGS=`getopt h $*`
if [[ $? -ne 0 ]]; then
    usage
    exit 2
fi

eval set -- "$ARGS"
while true; do
    case "$1" in
        -h)
            usage
            shift 1
            exit 0
            ;;
        --)
            shift 1
            break
            ;;
        *)
            echo "Unexpected error"
            exit 3
            ;;
    esac
done

if [[ $# -lt 2 ]]; then
    usage
    exit 2
fi

ENV=$1
EXEC_DIR=$(dirname "$2")

# Find conda's activate script
if [ -e $CONDA_EXEC_DIR/activate ]; then
    ACTIVATE_DIR=$CONDA_EXEC_DIR
elif [ -e $EXEC_DIR/activate ]; then
    ACTIVATE_DIR=$EXEC_DIR
elif [ -e $ENV/bin/activate ]; then
    ACTIVATE_DIR=$ENV/bin
else
    echo "Error: could not find conda's activate script."
    exit 4
fi

. $ACTIVATE_DIR/activate $ENV

shift 1

exec "$@"
