# Thirayu Meererksom — Portfolio

A self-contained, bilingual (EN/TH) personal portfolio. No build step required.

```
portfolio/
├── index.html        # the whole site (HTML + CSS + JS inline)
├── assets/
│   ├── brand.png     # hero image ("I am just a —")
│   └── headshot.jpg  # professional headshot
└── cv/               # downloadable CV/résumé PDFs (linked from the site)
```

## Preview locally
Just open `index.html` in any browser (double-click), or serve the folder:
```bash
npx serve portfolio        # or: python -m http.server 8080
```

## Edit content
All text and data live in two JS objects near the bottom of `index.html`:
- `I18N` — UI labels/paragraphs (English + Thai)
- `DATA` — facts, expertise cards, timeline, projects, publications, clients, topics, memberships

Edit there and refresh — no compile.

## Features
- 🌐 EN/TH toggle (top-right, remembers choice)  ·  ◐ Dark/Light theme
- Animated "I am just a —" rotating role  ·  scroll-reveal  ·  fully responsive
- CV download buttons auto-switch language

## Deploy to Cloudflare Pages (recommended)
1. Push this `portfolio/` folder to a Git repo (or use Direct Upload).
2. Cloudflare Dashboard → Workers & Pages → Create → Pages.
3. Build command: *(none)*  ·  Build output directory: `/` (the folder you upload).
4. Add custom domain `thirayu.in.th` in the Pages project → Custom domains.

Equivalent on Netlify/GitHub Pages/Vercel: drag-drop or point to this folder; no build needed.

## Path to EmDash (Cloudflare CMS) — later
EmDash is Astro-based and runs on Cloudflare. When you're ready, the content in
the `DATA`/`I18N` objects maps cleanly onto EmDash content collections; this
static site can be the design reference for an Astro/EmDash port.
