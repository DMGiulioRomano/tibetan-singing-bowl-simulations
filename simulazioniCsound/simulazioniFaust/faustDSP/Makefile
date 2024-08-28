FAUST = faustMondi.dsp
MONDO ?= mondo_nuovo
all: process

process:
	faust2sndfile $(FAUST)
	rm -f ../$(MONDO)
	mv ./faustMondi ../$(MONDO)
clean:
	rm ./rimettendoinsieme