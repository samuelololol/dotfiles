#!/bin/bash
if [ $# -ne 1 ] ; then
    echo './create_py_tags.sh <PROJECT_ROOT_PATH>'
    exit 1
fi
PROJECT_ROOT_PATH=$1

find $PROJECT_ROOT_PATH -name "*.py" | ctags -R \
-h ".py" \
--fields-Python=+{decorators} \
--kinds-python=+v \
--language-force=Python \
--exclude=@$HOME/.ctagsignore \
--extra=+q

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
