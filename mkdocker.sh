#!/bin/sh

set -e

JOBS=${JOBS:-\
	amd64:x86_64:musl: \
	amd64:x86_64:glibc: \
}

cat > .gitlab-ci.yml << EOF
include:
  remote: https://gitlab.com/pantacor/ci/ci-templates/raw/master/build-dockerfile.yml

EOF


for j in $JOBS; do
	arch=`echo $j | sed -e 's/:.*//'`
	qemu_arch=`echo $j | sed -e 's/.*:\(.*\):.*:.*/\1/'`
	libc=`echo $j | sed -e 's/.*:.*:\(.*\):.*/\1/'`
	cross=`echo $j | sed -e 's/.*://'`

	dockerfile_name="Dockerfile.template.${libc}"
	if [ "$cross" != "" ]; then dockerfile_name="${dockerfile_name}.cross"; fi

	cat $dockerfile_name | ARCH=$arch QEMU_ARCH=$qemu_arch LIBC=$libc CROSS=$cross envsubst > Dockerfile.$arch.$libc
	cat >> .gitlab-ci.yml << EOF2

build-$arch-$libc:
  extends: .build-dockerfile
  variables:
    ARCH: "$arch"
    QEMU_ARCH: "$qemu_arch"
    LIBC: "$libc"
    CROSS: "$cross"
EOF2
done
