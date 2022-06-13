#!/bin/bash

# TODO: currently it's not possible to Ctrl-C to quit the terminal in which
# this is running. Modify it to make that possible, either by installing a
# process supervisor or enabling the script to handle a kill signal.

set -euo pipefail

npx tailwindcss -i $TAILWIND_INPUT_FILE -o $TAILWIND_OUTPUT_FILE --watch --poll &
npm run dev
