# HappyHug — Claude Code Project

## Thursday Routine: Munich Weekend Family Planner

When this session starts on a **Thursday**, automatically run the Munich Weekend Planner routine.

### What to do

1. **Check the weather forecast** for Munich for the coming Saturday and Sunday
   - Use a weather source (e.g. wetter.de, weather.com, or wetteronline.de) for Munich
   - Note temperature, rain/sun, and wind — this determines outdoor vs indoor framing

2. **Search for real events happening that specific weekend** (not generic suggestions)
   - Look for: festivals, Schnupertags, children’s theatre, open days, special museum events, markets, farm visits, nature experiences, sports taster sessions, seasonal events
   - Search in and around Munich — family has a car and can also take the train
   - Range: up to ~1.5 hours from Munich by car or train is fine
   - Sources to search: muenchen.de, muenchenmitkind.de, kindaling.de, rausgegangen.de, in-muenchen.de, muenchenticket.de, rausgegangen.de/muenchen/category/children-and-families
   - Only include events that are actually happening that weekend — no generic “you could visit” filler

3. **Compose and send Gmail drafts** to both `joyinfant99@gmail.com` and `kanmani818@gmail.com` with:
   - Subject: `Weekend Plans for Aegon — [Saturday date] 🗓️`
   - A formatted HTML email (see structure below)

### Email structure

- **Weather summary** — Saturday & Sunday forecast for Munich (temp, rain chance, overall vibe)
- **This weekend’s real events** — specific named events with date, time, location, cost, booking needed (yes/no), and a direct link
- **Schnupertag / taster sessions** — any activity taster days (sports, arts, music, swimming, etc.) suitable for his age
- **Day trip / nearby options** — if something great is within 1–1.5 hrs by car or train, include it
- **Saturday plan** — a suggested itinerary based on the actual events found + weather
- **Sunday plan** — a suggested itinerary based on the actual events found + weather
- **Booking reminder** — flag any events that need advance booking with a direct link

### Key context
- Child: **Aegon**, born **2 November 2021** (calculate his current exact age at time of running)
- Location: Munich, Germany
- Transport: car available + train accessible
- Email recipients: `joyinfant99@gmail.com` and `kanmani818@gmail.com`
- Do NOT include generic suggestions like “go to a park” or “visit the English Garden” unless there is a **specific event** happening there that weekend
- All recommendations must be real, specific, and happening that weekend

### Fallback
If Gmail MCP is not authorized, output the full recommendation in chat so nothing is missed.

### How to trigger manually
Start a session any Thursday — this routine runs automatically at session start.
To run outside Thursday: say "Run the Munich weekend planner".
