
htslib: htslib/Makefile
	# Run configure if config makefile not created
	cd htslib && ( if ! [ -f config.mk ]; then autoreconf && ./configure --disable-lzma --disable-bz2 --disable-libcurl; fi; $(MAKE) -e )

.PHONY: htslib
