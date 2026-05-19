#!/bin/bash
set -euo pipefail

# On Wednesdays, signal Claude to run the Munich Weekend Planner routine
DAY=$(date +%u)  # 1=Mon ... 3=Wed ... 7=Sun

if [ "$DAY" = "3" ]; then
  echo "Today is Wednesday — running Munich Weekend Planner for Aegon."
  echo '{"message": "WEDNESDAY_ROUTINE: Search for Munich family weekend activities for a 4-year-old (Aegon) and his wife. Follow the Wednesday routine instructions in CLAUDE.md and create a Gmail draft to joyinfant99@gmail.com."}'
fi
