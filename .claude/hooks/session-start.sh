#!/bin/bash
set -euo pipefail

# On Thursdays, signal Claude to run the Munich Weekend Planner routine
DAY=$(date +%u)  # 1=Mon ... 4=Thu ... 7=Sun

if [ "$DAY" = "4" ]; then
  echo "Today is Thursday — running Munich Weekend Planner for Aegon."
  echo '{"message": "THURSDAY_ROUTINE: Follow the Thursday routine instructions in CLAUDE.md. Search for real Munich weekend events, check weather, and send Gmail drafts to joyinfant99@gmail.com and kanmani818@gmail.com."}'
fi
