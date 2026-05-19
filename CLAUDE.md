# HappyHug — Claude Code Project

## Wednesday Routine: Munich Weekend Family Planner

When this session starts on a **Wednesday**, automatically run the Munich Weekend Planner routine:

1. Search for Munich family/kids events happening **this coming weekend** (Saturday & Sunday)
   - Target audience: 4-year-old child (Aegon) + wife
   - Mix of indoor and outdoor options
   - Include any special events, festivals, or shows for the week
   - Include practical details: cost, location, age suitability, opening hours

2. Compose and **send a Gmail draft** to `joyinfant99@gmail.com` with:
   - Subject: `Weekend Munich Family Plans for Aegon — [Date] 🗓️`
   - A formatted HTML email with:
     - Special events this weekend
     - Outdoor activity picks (weather dependent)
     - Indoor backup options (rain plan)
     - 2 family-friendly lunch spots
     - A simple Saturday / Sunday planner table

3. Use the Gmail MCP tool (`create_draft`) to create the draft. If Gmail MCP is not authorized, output the full recommendation in chat instead so nothing is missed.

### Key context
- Child: Aegon, 4 years old
- Location: Munich, Germany
- Sources to search: muenchen.de, muenchenmitkind.de, kindaling.de, rausgegangen.de
- Email recipient: joyinfant99@gmail.com

### How to trigger manually
Start a session any Wednesday — this routine runs automatically at session start.
To run outside Wednesday: say "Run the Munich weekend planner".
