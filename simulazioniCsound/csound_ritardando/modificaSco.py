import os
import sys

def modificaBPM(lines, bpm_numero):
    new_bpm_line = f"t 0 {bpm_numero}"
    if len(lines) > 1:
        old_bpm_line = lines[1].strip()  # Prende la seconda riga
        lines[1] = new_bpm_line + '\n'   # Sostituisce la seconda riga
    return lines

def modificaContatore(lines, contatore_numero):
    new_contatore_line = f"{{ {contatore_numero} CNT"
    if len(lines) > 2:
        old_contatore_line = lines[2].strip()  # Prende la terza riga
        lines[2] = new_contatore_line + '\n'   # Sostituisce la terza riga
    return lines

def modifica_sco(directory, bpm_numero="150", contatore_numero="20"):
    for root, dirs, files in os.walk(directory):
        for file_name in files:
            if file_name.endswith('.sco'):
                file_path = os.path.join(root, file_name)
                
                # Legge il file con codifica latin-1
                with open(file_path, 'r', encoding='latin-1') as file:
                    lines = file.readlines()

                # Modifica il BPM e il contatore
                lines = modificaBPM(lines, bpm_numero)
                lines = modificaContatore(lines, contatore_numero)

                # Scrive di nuovo il file con le modifiche
                with open(file_path, 'w', encoding='latin-1') as file:
                    file.writelines(lines)

if __name__ == "__main__":
    if len(sys.argv) < 4:
        print("Uso: python3 modifica_sco.py <directory> <bpm_numero> <contatore_numero>")
    else:
        directory = sys.argv[1]
        bpm_numero = sys.argv[2]
        contatore_numero = sys.argv[3]
        modifica_sco(directory, bpm_numero=bpm_numero, contatore_numero=contatore_numero)
        print("Modifica completata!")
