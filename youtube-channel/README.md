# YouTube Channel Project

Everything for planning, branding, producing and growing the channel lives here.

## Folder map

| Folder | What goes in it |
|---|---|
| `00-admin/` | Channel facts, account checklist, key links. **Never store passwords here.** |
| `01-strategy/` | Channel brief, target audience, competitor research |
| `02-branding/` | Logo, banner, watermark, thumbnail templates, fonts, brand guide |
| `03-content-plan/` | Video idea bank and the publishing calendar |
| `04-videos/` | One folder per video, copied from `_TEMPLATE` |
| `05-assets/` | Reusable music, sound effects, b-roll, stock images, overlays |
| `06-channel-setup/` | Channel description, YouTube Studio settings checklist |
| `07-analytics/` | Monthly performance reviews |
| `08-monetization/` | Partner Program progress, sponsors, affiliate links |
| `09-archive/` | Finished or abandoned material you want to keep |
| `scripts/` | Helpers, e.g. create a new video folder |

## Workflow for each video

1. Pick an idea from `03-content-plan/video-ideas.md` and schedule it in `content-calendar.csv`.
2. Create its folder:
   - Windows: `powershell -File scripts\new-video.ps1 -Number 1 -Title "my first video"`
   - Mac/Linux: `./scripts/new-video.sh 1 "my first video"`
   This creates e.g. `04-videos/001-my-first-video/`.
3. Work through the subfolders in order: script -> footage -> audio -> graphics -> edit -> export -> thumbnail.
4. Fill in `metadata.md` (title, description, tags) before uploading.
5. After 30 days, log results in `07-analytics/`.

## About large files

Video, audio and design source files (`.mp4`, `.mov`, `.wav`, `.psd`, editor projects, etc.)
are excluded from git by `.gitignore` because they are far too large. Keep them on your computer
and back them up to cloud storage (Google Drive, OneDrive, Dropbox) or an external drive.
Only text files (plans, scripts, metadata) are tracked in git.
