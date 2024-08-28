MONDO ?= mondo_I

FAUST = ./$(MONDO)

OUTDIR := output
TIPO ?= ritardando
REAPER_PROJECT := ../REAPER/ascolto_$(TIPO)/ascolto_$(TIPO).RPP

SRCDIR ?= ../$(TIPO)
SRCDIRSTROF := ../strofinati
all: process open

process:
	@mkdir -p $(OUTDIR)
	@echo ""
	@echo ""
	@echo ""
	@echo ""
	@echo "Stai simulando il $(notdir $(FAUST)) con eseguibile $(FAUST)"
	@echo "In modalità $(notdir $(SRCDIR))"
	@echo ""
	@for file in $(wildcard $(SRCDIR)/*.wav); do \
		base=$$(basename $$file); \
		nameWithType=$(TIPO)_$${base}; \
		echo "Processing $$file -> $(OUTDIR)/$$nameWithType"; \
		$(FAUST) -c 960000 $$file $(OUTDIR)/$$nameWithType; \
	done
	@for file in $(wildcard $(SRCDIRSTROF)/*.wav); do \
		base=$$(basename $$file); \
		nameWithType=$(TIPO)_$${base}; \
		echo "Processing $$file -> $(OUTDIR)/$$nameWithType"; \
		$(FAUST) -c 960000 $$file $(OUTDIR)/$$nameWithType; \
	done

open:
	open $(OUTDIR) 
	open -a REAPER $(REAPER_PROJECT)


clean:
	rm -f $(OUTDIR)/*.wav

cleanAll:
	rm -rf $(OUTDIR)