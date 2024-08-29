# Variabili per le directory dei Makefile secondari
CS ?= accelerando
CSOUND_DIR ?= csound_$(CS)
AUDIO_PROCESSING_DIR := simulazioniFaust

# Target di default
all: csound_process audio_process

# Target per eseguire il primo Makefile
csound_process:
	@echo ""
	@echo "Running Ritardando Makefile..."
	@echo ""
	@$(MAKE) -C $(CSOUND_DIR)

# Target per eseguire il secondo Makefile
audio_process:
	@echo "Running audio processing Makefile..."
	@$(MAKE) -C $(AUDIO_PROCESSING_DIR) TIPO=$(CS)

# Target di pulizia per rimuovere eventuali file temporanei
clean:
	@echo "Cleaning up..."
	@$(MAKE) -C $(CSOUND_DIR) clean
	@$(MAKE) -C $(AUDIO_PROCESSING_DIR) clean

cleanAll: 
	rm -rf ./ritardando
	rm -rf ./accelerando
	@$(MAKE) -C $(AUDIO_PROCESSING_DIR) clean
	@echo "Cleaning All including rec folder..."
	rm -f ../rec/*.wav

.PHONY: all csound_process audio_process clean
