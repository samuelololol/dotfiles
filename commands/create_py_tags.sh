#!/bin/bash
if [ $# -ne 1 ] ; then
    echo './create_py_tags.sh <PROJECT_ROOT_PATH>'
    exit 1
fi
PROJECT_ROOT_PATH=$1

# remove previous
if [ -n "$ZSH_VERSION"  ]; then
    printf "Would you like to remove previous tag file"
    read -r " ? [Y/N]" response
else
    read -r -p " Would you like to remove previous tag file? [Y/N]" response
fi

case "$response" in
    [yY][eE][sS]|[yY])
        rm -rf tags
        printf "tags are removed\n"
        ;;
    *)
        printf "tags are keeped\n"
        ;;
esac

# find $PROJECT_ROOT_PATH -name "*.py" | ctags -R \
ctags -R \
-h ".py" \
--fields-Python=+{decorators} \
--kinds-python=+v \
--language-force=Python \
--exclude=@$HOME/.ctagsignore \
--extra=+q *.py

UNAME_STR=`uname`
if [[ "$UNAME_STR" == 'Linux' ]]; then
    LC_ALL=C sed -i '/_TAG_/d' tags
elif [[ "$UNAME_STR" == 'Darwin' ]]; then
    LC_ALL=C sed -i '' -e '/_TAG_/d' tags
else
    echo 'something wrong'
    exit 2
fi

echo 'tags are generated'
TAG_COUNT=`wc -l tags | awk '{print $1}'`
PY_FILE_COUNT=`find $PROJECT_ROOT_PATH -name "*.py" | wc -l | awk '{print $1}'`
echo "generate "$TAG_COUNT" lines of tags from "$PY_FILE_COUNT" *.py files"
