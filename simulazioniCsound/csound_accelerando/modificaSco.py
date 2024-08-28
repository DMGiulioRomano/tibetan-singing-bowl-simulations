import os

def modificaBPM(line, new_bpm):
    """Modifica e restituisce la riga con il nuovo valore di BPM."""
    if line.startswith("#define BPM#"):
        return f"#define BPM#{new_bpm}#\n"
    return line

def modificaContatore(line, new_counter):
    """Modifica e restituisce le righe con i nuovi valori di COUNTER e COUNTER2."""
    if line.startswith("#define COUNTER#"):
        return f"#define COUNTER#{new_counter}#\n"
    elif line.startswith("#define COUNTER2#"):
        new_counter2 = int(new_counter * 0.5)
        return f"#define COUNTER2#{new_counter2}#\n"
    return line

def modifica_sco(directory, bpm_numero="150", contatore_numero="20"):
    """Scorre la directory per trovare e modificare i file .sco."""
    for root, dirs, files in os.walk(directory):
        for file_name in files:
            if file_name.endswith('.sco'):
                file_path = os.path.join(root, file_name)
                
                # Legge il file con codifica latin-1
                with open(file_path, 'r', encoding='latin-1') as file:
                    lines = file.readlines()

                # Modifica le righe
                bpm_numero = int(bpm_numero)
                contatore_numero = int(contatore_numero)
                lines_modificate = []

                for line in lines:
                    line = modificaBPM(line, bpm_numero)
                    line = modificaContatore(line, contatore_numero)
                    lines_modificate.append(line)

                # Scrive di nuovo il file con le modifiche
                with open(file_path, 'w', encoding='latin-1') as file:
                    file.writelines(lines_modificate)

if __name__ == "__main__":
    import sys
    if len(sys.argv) < 4:
        print("Uso: python3 modifica_sco.py <directory> <bpm_numero> <contatore_numero>")
    else:
        directory = sys.argv[1]
        bpm_numero = sys.argv[2]
        contatore_numero = sys.argv[3]
        modifica_sco(directory, bpm_numero=bpm_numero, contatore_numero=contatore_numero)
        print("Modifica completata!")
