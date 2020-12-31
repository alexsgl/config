#!/bin/bash
## usage: chmod +x update-library.sh
## open cmus and run the following ":bind -f common u shell ~/.cmus/scripts/update-library.sh"
## from: https://github.com/cmus/cmus/issues/233#issuecomment-396195503

cmus-remote -C clear
cmus-remote -C "add ~/Music/Library"
cmus-remote -C "update-cache -f"

