
htslib: htslib/Makefile
	# Run configure if config makefile not created
	cd htslib && ( if ! [ -f config.mk ]; then echo "==auto" && autoreconf && echo "==config" && ./configure --disable-lzma --disable-bz2 --disable-libcurl; fi; $(MAKE) -e )

clean:
	cd htslib && make clean && rm config.mk

.PHONY: htslib clean
