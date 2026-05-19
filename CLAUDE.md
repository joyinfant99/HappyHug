# HappyHug — Claude Code Project

## Thursday Routine: Munich Weekend Family Planner

When this session starts on a **Thursday**, automatically run the Munich Weekend Planner routine.

### What to do

1. **Check the weather forecast** for Munich for the coming Saturday and Sunday
   - Use wetter.de, wetteronline.de, or weather.com for Munich
   - Note temperature, rain/sun, and wind — this determines outdoor vs indoor framing

2. **Search for real events happening that specific weekend** (not generic suggestions)
   - Look for: festivals, Schnupertags, children's theatre, open days, special museum events, markets, farm visits, nature experiences, sports taster sessions, seasonal events
   - Search in and around Munich — family has a car and can also take the train
   - Range: up to ~1.5 hours from Munich by car or train is fine
   - Sources: muenchen.de, muenchenmitkind.de, kindaling.de, rausgegangen.de, in-muenchen.de, muenchenticket.de
   - Only include events actually happening that weekend — no generic “you could visit” filler
   - Maximum 4 events per day. Quality over quantity.

3. **Compose Gmail drafts** to both `joyinfant99@gmail.com` and `kanmani818@gmail.com`

### Key context
- Child: **Aegon**, born **2 November 2021** (calculate his exact age at time of running)
- Location: Munich, Germany
- Transport: car available + train accessible
- Email recipients: `joyinfant99@gmail.com` and `kanmani818@gmail.com`
- Do NOT include generic suggestions unless there is a specific named event happening there that weekend
- All recommendations must be real, specific, and happening that weekend

---

### Email Format (follow exactly)

Use clean HTML. Font: Arial/sans-serif. Max width 600px centred. Colours defined below.

**Accent colours:**
- Section headers: `#1a73e8` (blue)
- Event cards background: `#f8f9fa`
- Booking alert: `#fff3cd` background, `#856404` text
- Good-to-go badge: `#d4edda` background, `#155724` text

---

#### HEADER
```
Weekend Plans for Aegon 🗓️
[Saturday DD Month] – [Sunday DD Month YYYY]
Aegon is [X years Y months old]
Prepared: Thursday DD Month YYYY
```
One thin divider line below.

---

#### SECTION 1 — WEATHER SNAPSHOT
Title: `☀️ Weekend Weather — Munich`

Two side-by-side boxes (use an HTML table, 2 columns):

| Saturday | Sunday |
|---|---|
| [emoji] Condition | [emoji] Condition |
| 🌡️ High / Low | 🌡️ High / Low |
| 💧 Rain chance | 💧 Rain chance |
| Verdict in one sentence | Verdict in one sentence |

One line summary below the boxes: e.g. “Both days look great for outdoor plans.”

---

#### SECTION 2 — THIS WEEKEND'S PICKS
Title: `🎯 What's On This Weekend`

For each event use a card (light grey `#f8f9fa` background, 8px border-radius, 12px padding, 1px solid `#dee2e6` border):

```
[Emoji] EVENT NAME                          [Age badge] [Booking badge if needed]
──────────────────────────────────────────────────────
📅 Day, Date · 🕙 Time
📍 Venue, Area · 💶 Cost
One sentence: what Aegon will experience.
🔗 [Book / More info](URL)
```

Badges:
- Age suitability: small pill — green `#d4edda` if suitable, grey if borderline
- Booking needed: orange `#fff3cd` pill — “Book ahead” or “Walk-in OK”

Group under **Saturday** and **Sunday** subheadings. Max 4 events per day.

---

#### SECTION 3 — DAY PLAN
Title: `📋 Suggested Day Plan`

Two subsections: **Saturday** and **Sunday**. Each is a simple vertical timeline:

```
🕗 08:30  Activity — one line description
🕙 10:00  Activity — one line description
🕛 12:30  Lunch — suggested area or venue
🕒 15:00  Activity — one line description
🕕 17:00  Wind down / travel home
```

Keep each line to one short sentence. No bullet sub-points inside the timeline.

---

#### SECTION 4 — BOOKING CHECKLIST
Title: `⚠️ Action Required`

Only show this section if there are events that need booking. Use a light yellow `#fff3cd` background box.

Simple checklist — one line per item:
```
☐  Event Name — Book by [date if known] · [Book now](URL)
☐  Event Name — Pay cash at gate, no cards
```

If nothing needs booking, omit this section entirely.

---

#### FOOTER
```
─────────────────────────────────────────────
🤖 Auto-generated every Thursday by Claude · HappyHug
```

---

### Fallback
If Gmail MCP is not authorized, output the full recommendation in chat so nothing is missed.

### How to trigger manually
Start a session any Thursday — this routine runs automatically at session start.
To run outside Thursday: say "Run the Munich weekend planner".
