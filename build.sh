#!/bin/bash
# Build CV/Resume with Docker (Git Bash / WSL / Linux / macOS)
# Usage: ./build.sh
# Equivalent to: docker run -u $UID:$GID --rm -v $PWD:/work csmith/awesome-cv-builder

cd "$(dirname "$0")"
export MSYS_NO_PATHCONV=1
docker run -u "${UID:-0}:${GID:-0}" --rm -v "$PWD:/work" -w //work csmith/awesome-cv-builder
