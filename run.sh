#!/usr/bin/env bash

if [ -z $CONVEY_WORKSPACE ]; then
    echo "The CONVEY_WORKSPACE must be set";
    exit 1;
fi

if [ ! -d $CONVEY_WORKSPACE ]; then
    echo "The CONVEY_WORKSPACE does not exist";
    exit 1;
fi

if [ ! -d "$CONVEY_WORKSPACE/$DEBIAN_PATH" ]; then
    echo "The DEBIAN_PATH must be set";
    exit 1;
fi

mkdir -p /tmp/deb_build/buildsrc/
cp -r ${CONVEY_WORKSPACE}/* /tmp/deb_build/buildsrc/

cd /tmp/deb_build/buildsrc/
ln -s $DEBIAN_PATH debian
debuild -i -us -uc

if [ ! -d "$CONVEY_WORKSPACE/$DEB_OUTPUT" ]; then
    mkdir -p ${CONVEY_WORKSPACE}/${DEB_OUTPUT};
fi

mv /tmp/deb_build/*.* ${CONVEY_WORKSPACE}/${DEB_OUTPUT}/
