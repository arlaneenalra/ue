
all:
	@echo "Nothing to do!"

install:
	@if [ -z "$(DESTDIR)" ] ; then \
		echo "\n\nDESTDIR cannot be left blank!\n\n" ; \
		exit 1 ; \
	fi

	cp -r etc $(DESTDIR)
	
