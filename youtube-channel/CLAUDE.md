# CLAUDE.md

This folder (`D:\CW_YouTube_Channel`) is the working project for a new YouTube channel.
The owner is a YouTube beginner: explain YouTube terms in plain language, give one clear
recommendation rather than a long list of options, and keep instructions step by step.

## Channel details

Fill these in once the channel requirements are agreed; keep them current.

- Channel name / handle: TBD
- Topic and angle: TBD
- Target audience: TBD
- Format (on camera or faceless, length, Shorts): TBD
- Upload schedule: TBD
- Goal (hobby / side income / business): TBD

Full detail lives in `01-strategy/channel-brief.md` and `02-branding/brand-guide.md`.
Read those before writing titles, scripts, descriptions or thumbnails so everything
stays on-brand.

## Folder conventions

See `README.md` for the full folder map. Key rules:

- Each video gets its own folder `04-videos/NNN-short-title/`, created from `_TEMPLATE`
  with `powershell -File scripts\new-video.ps1 -Number N -Title "short title"`.
- Keep `03-content-plan/content-calendar.csv` up to date whenever a video changes status
  (idea / scripting / filming / editing / scheduled / published).
- Put title, description, tags, chapters and pinned comment in each video's `metadata.md`
  before uploading.
- Scripts follow the structure in `04-videos/_TEMPLATE/01-script/script.md`. Use
  `Hollywood_Script_Example.docx` in the project root as the style reference for scripts.
- YouTube image sizes are in `02-branding/brand-guide.md`.
- Large media and editor files are git-ignored (`.gitignore`); never try to commit them.

## Working in YouTube Studio (Chrome)

- Never type, read aloud or store passwords, 2-step verification codes, recovery codes
  or phone numbers. Stop and let the owner handle any login, verification or CAPTCHA.
- Never enter or change payment, AdSense, tax or bank details.
- Draft all text in the project files first and show it to the owner before entering it.
- Ask for confirmation before every Save, Publish, Schedule or visibility change,
  and before deleting anything on YouTube.
- Upload videos as Private by default; the owner decides when they go public.
- After changing settings, tick the matching item in
  `06-channel-setup/studio-setup-checklist.md`.
