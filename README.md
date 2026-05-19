# HappyHug — Munich Weekend Planner Routine

Auto-generates a weekend activity email for Aegon (born 2 Nov 2021) every Thursday morning, sent directly to both parents via Resend.

---

## How It Works

Every Thursday, a Claude Code Routine:
1. Checks Munich weather forecast for the coming Saturday & Sunday
2. Searches for real events happening that specific weekend (not generic suggestions)
3. Builds a clean HTML email with event cards, day plans, and a booking checklist
4. Sends it via Resend API from `planner@presalesbench.com` to both recipients

---

## Routine Configuration

**Location:** claude.ai/code/routines → "Munich Weekend Planner for Aegon"

**Trigger:** Weekly · Thursday · 08:00 AM

**Repository:** `joyinfant99/HappyHug`

**Prompt:**
```
Today is Thursday. Run the Munich Weekend Planner for Aegon.

1. Check the weather forecast for Munich this coming Saturday and Sunday
   using wetteronline.de or wetter.de. Note conditions, temperature, rain.

2. Search for REAL events happening this specific weekend in and around Munich
   (up to 1.5 hrs by car or train). Look for: children's festivals, Schnupertags,
   theatre shows, open days, museum events, farm visits, markets, sports taster
   sessions. Max 4 events per day. No generic suggestions — every event must be
   real, named, and happening that weekend.
   Sources: muenchenmitkind.de, kindaling.de, rausgegangen.de, in-muenchen.de,
   muenchenticket.de, muenchen.de

3. Build the full HTML email following the format in CLAUDE.md, then send it
   using this exact curl command (fill in the real subject and html body):

   curl -s -X POST https://api.resend.com/emails \
     -H "Authorization: Bearer $RESEND_API_KEY" \
     -H "Content-Type: application/json" \
     -d '{
       "from": "HappyHug Planner <planner@presalesbench.com>",
       "to": ["joyinfant99@gmail.com", "kanmani818@gmail.com"],
       "reply_to": "joyinfant99@gmail.com",
       "subject": "Weekend Plans for Aegon — [Saturday date] 🗓️",
       "html": "[your generated HTML here]"
     }'

   If curl fails, fall back to Gmail create_draft.
```

---

## Environment Variables

Set in the Routine's cloud environment (gear icon → Update cloud environment):

| Variable | Value |
|---|---|
| `RESEND_API_KEY` | Your Resend API key |

---

## Network Allowlist

Set to **Custom** in the Routine environment with these domains:

```
api.resend.com
muenchenmitkind.de
kindaling.de
rausgegangen.de
in-muenchen.de
muenchenticket.de
muenchen.de
wetteronline.de
wetter.de
```

---

## Email Details

| Field | Value |
|---|---|
| From | `planner@presalesbench.com` |
| To | `joyinfant99@gmail.com`, `kanmani818@gmail.com` |
| Reply-To | `joyinfant99@gmail.com` |
| Subject | `Weekend Plans for Aegon — [Saturday date] 🗓️` |

---

## Files

| File | Purpose |
|---|---|
| `CLAUDE.md` | Full routine instructions + email HTML format |
| `.claude/settings.json` | Registers SessionStart hook for manual sessions |
| `.claude/hooks/session-start.sh` | Triggers routine when opening Claude Code on Thursday |

---

## Managing via CLI

From your terminal (Claude Code CLI):
```bash
/schedule list              # view all routines
/schedule update            # modify a routine
/schedule run               # trigger a routine immediately
```
