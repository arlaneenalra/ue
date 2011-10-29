
# Directory to put files we donn't necessarily want to overwrite
# everytime we install
SHARE_INSTALL=$(DESTDIR)/usr/share/ue/config
PACKAGE_INSTALL=$(DESTDIR)


all:
	@echo "Nothing to do!"

install:
	@if [ -z "$(DESTDIR)" ] ; then \
		echo "\n\nDESTDIR cannot be left blank!\n\n" ; \
		exit 1 ; \
	fi

	mkdir -p ${SHARE_INSTALL}
	cp -r etc ${SHARE_INSTALL}

	cp -r home ${PACKAGE_INSTALL}
	cp -r root ${PACKAGE_INSTALL}
	cp -r usr ${PACKAGE_INSTALL}


	