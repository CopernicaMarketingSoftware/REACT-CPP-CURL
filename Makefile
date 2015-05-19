PREFIX                  = /usr
INCLUDE_DIR             = ${PREFIX}/include/reactcpp
LIBRARY_DIR             = ${PREFIX}/lib
export LIBRARY_NAME		= reactcpp-curl
export SONAME			= 1.0
export VERSION			= 1.0.0

all:
		$(MAKE) -C src all

release:
		$(MAKE) -C src release

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
		cp -f src/lib$(LIBRARY_NAME).so.$(VERSION) ${LIBRARY_DIR}
		cp -f src/lib$(LIBRARY_NAME).a.$(VERSION) ${LIBRARY_DIR}
		ln -s -f $(LIBRARY_DIR)/lib$(LIBRARY_NAME).so.$(VERSION) $(LIBRARY_DIR)/lib$(LIBRARY_NAME).so.$(SONAME)
		ln -s -f $(LIBRARY_DIR)/lib$(LIBRARY_NAME).so.$(VERSION) $(LIBRARY_DIR)/lib$(LIBRARY_NAME).so
		ln -s -f $(LIBRARY_DIR)/lib$(LIBRARY_NAME).a.$(VERSION) $(LIBRARY_DIR)/lib$(LIBRARY_NAME).a
