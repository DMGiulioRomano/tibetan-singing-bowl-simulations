# Tibetan Singing Bowl Simulations
This repository is designed to simulate and test how algorithms respond to accelerandos, ritardandos, and other musical gestures applied to Tibetan singing bowls.

## Project Structure

- **simulazioniCsound/**: Contains various simulations using Csound.
- **strofinati/**: Another module related to the project with its specific README.

## Getting Started

### Prerequisites

- Ensure you have `Csound` and `Faust` installed on your machine.
- Python (version >= 3.9) should be installed.

### Building and Running Simulations

You can build and run the simulations using the provided Makefiles. For example:

```bash
cd simulazioniCsound
make
```

This will run the default simulation processes.

### Makefile Targets
- all: Runs both csound_process and audio_process.
- csound_process: Executes the Csound-related Makefile.
- audio_process: Executes audio processing using Faust.
