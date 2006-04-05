VERSION=0.03

DEST!=perl -MConfig -e 'print $$Config{installsitebin}'

all:

install:
	cp sqlpp ${DEST}

test:
	@./sqlpp test.t | grep -v '^$$'

dist:
	mkdir sqlpp-${VERSION}
	cp sqlpp README Makefile test.t sqlpp-${VERSION}
	tar cf - sqlpp-${VERSION} | gzip > sqlpp-${VERSION}.tar.gz
	rm -rf sqlpp-${VERSION}
