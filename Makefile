PREFIX                  = /usr
INCLUDE_DIR             = ${PREFIX}/include/reactcpp
LIBRARY_DIR             = ${PREFIX}/lib

all:
		$(MAKE) -C src all

static:
		$(MAKE) -C src static

shared:
		$(MAKE) -C src shared

clean:
		$(MAKE) -C src clean

install:
		mkdir -p ${INCLUDE_DIR}/curl
		mkdir -p ${LIBRARY_DIR}
		cp -f curl.h ${INCLUDE_DIR}
		cp -fr include/* ${INCLUDE_DIR}/curl
		cp -f src/libreactcpp-curl.so ${LIBRARY_DIR}
		cp -f src/libreactcpp-curl.a ${LIBRARY_DIR}
