# Variabili
ORC_FILE := 01orchestra.orc  # Specifica il tuo file .orc
SCO_FILES := $(wildcard *.sco)  # Trova tutti i file .sco nella directory corrente
OUTPUT_PATH := ../accelerando

# Genera l'elenco dei file di output .wav
OUTPUT_FILES := $(foreach file,$(SCO_FILES),$(OUTPUT_PATH)/$(basename $(file)).wav)

# Variabili per lo script Python
BPM ?= 150  # Valore di default per BPM
COUNTER ?= 20  # Valore di default per il contatore
SCRIPT := modificaSco.py  # Nome dello script Python



# Target di default
all: create_output_dir process_sco_files

# Target per processare i file SCO con Csound
process_sco_files:
	@for file in $(SCO_FILES); do \
		basename=$$(basename $$file .sco); \
		output_file=$(OUTPUT_PATH)/$$basename.wav; \
		echo "Processing $$file -> $$output_file"; \
		csound -o $$output_file $(ORC_FILE) $$file; \
	done


# Target per creare la directory di output se non esiste
create_output_dir:
	mkdir -p $(OUTPUT_PATH)

# Target per eseguire lo script Python con le variabili BPM e COUNTER
modificaSco:
	python3 $(SCRIPT) . $(BPM) $(COUNTER)

# Target di pulizia
clean:
	rm -rf $(OUTPUT_PATH)

# Target per tutto
.PHONY: all clean create_output_dir
