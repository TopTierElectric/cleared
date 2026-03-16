:root {
  --font-sans: ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Arial;
  --font-mono: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas,
    "Liberation Mono", "Courier New", monospace;

  --max: 1120px;
  --gutter: clamp(1rem, 3vw, 1.5rem);

  --space-1: 0.5rem;
  --space-2: 0.75rem;
  --space-3: 1rem;
  --space-4: 1.5rem;
  --space-5: 2rem;
  --space-6: 3rem;
  --space-7: 4.5rem;

  --radius-1: 0.6rem;
  --radius-2: 0.9rem;
  --radius-3: 1.25rem;

  --shadow-1: 0 10px 30px rgba(0, 0, 0, 0.1);
  --shadow-2: 0 18px 50px rgba(0, 0, 0, 0.14);
  --focus: 0 0 0 3px rgba(184, 134, 11, 0.35);

  --c-bg: #ffffff;
  --c-bg-alt: #f7f7f7;
  --c-surface: #ffffff;
  --c-text: #0b0b0c;
  --c-muted: rgba(11, 11, 12, 0.72);
  --c-border: rgba(11, 11, 12, 0.12);

  --c-accent: #b8860b; /* brand gold */
  --c-accent-2: #111111; /* brand black */
  --c-accent-soft: rgba(184, 134, 11, 0.14);

  --text-0: clamp(0.95rem, 0.2vw + 0.9rem, 1rem);
  --text-1: clamp(1rem, 0.3vw + 0.95rem, 1.05rem);
  --text-2: clamp(1.15rem, 0.6vw + 1.05rem, 1.3rem);
  --text-3: clamp(1.35rem, 1.2vw + 1.1rem, 1.7rem);
  --text-4: clamp(1.7rem, 2.2vw + 1.2rem, 2.35rem);
  --text-5: clamp(2.1rem, 3.4vw + 1.3rem, 3rem);
}
* {
  box-sizing: border-box;
}
html,
body {
  margin: 0;
  padding: 0;
}
body {
  font-family: var(--font-sans);
  font-size: var(--text-1);
  line-height: 1.65;
  color: var(--c-text);
  background: radial-gradient(
      1200px 800px at 15% 0%,
      rgba(184, 134, 11, 0.1),
      transparent 55%
    ),
    radial-gradient(
      900px 600px at 85% 10%,
      rgba(17, 17, 17, 0.06),
      transparent 60%
    ),
    var(--c-bg);
}

h1,
h2,
h3 {
  letter-spacing: -0.02em;
}
h1 {
  font-size: var(--text-5);
  line-height: 1.08;
  margin: 0 0 var(--space-3);
}
h2 {
  font-size: var(--text-4);
  line-height: 1.12;
  margin: 0 0 var(--space-3);
}
h3 {
  font-size: var(--text-3);
  line-height: 1.2;
  margin: 0 0 var(--space-2);
}
p {
  margin: 0 0 var(--space-3);
  color: var(--c-muted);
}
.container {
  max-width: var(--max);
  margin: 0 auto;
  padding: 0 var(--gutter);
}
a {
  color: inherit;
  text-decoration-thickness: 1px;
  text-underline-offset: 3px;
}
a:hover {
  text-decoration: underline;
}
a:focus-visible,
button:focus-visible,
input:focus-visible,
select:focus-visible,
textarea:focus-visible {
  outline: none;
  box-shadow: var(--focus);
  border-radius: var(--radius-1);
}
.skip-link {
  position: absolute;
  left: -999px;
}
.skip-link:focus {
  left: var(--space-3);
  top: var(--space-3);
  width: auto;
  height: auto;
  padding: var(--space-2) var(--space-3);
  background: #fff;
  box-shadow: var(--shadow-1);
  z-index: 9999;
}
.site-header {
  position: sticky;
  top: 0;
  z-index: 50;
  background: rgba(255, 255, 255, 0.86);
  backdrop-filter: blur(10px);
  border-bottom: 1px solid rgba(11, 11, 12, 0.1);
}
.header-inner {
  display: flex;
  align-items: center;
  gap: var(--space-3);
  padding: 0.9rem 0;
}
.logo-text {
  font-weight: 800;
  letter-spacing: -0.02em;
}
.logo {
  display: inline-flex;
  align-items: center;
  gap: 0.6rem;
}
.logo-img {
  height: 34px;
  width: auto;
}
.nav {
  display: flex;
  gap: 0.35rem;
  margin-left: auto;
  align-items: center;
}
.nav a {
  padding: 0.55rem 0.75rem;
  border-radius: 999px;
  text-decoration: none;
  font-weight: 650;
  color: var(--c-text);
}
.nav a:hover {
  background: var(--c-accent-soft);
  text-decoration: none;
}
.nav a[aria-current="page"] {
  background: rgba(11, 11, 12, 0.06);
}
.header-cta {
  display: flex;
  gap: var(--space-2);
}
.menu-toggle {
  display: none;
  margin-left: auto;
  border: 1px solid var(--c-border);
  background: rgba(255, 255, 255, 0.75);
  border-radius: 999px;
  padding: 0.55rem 0.85rem;
  font-weight: 750;
  line-height: 1;
  cursor: pointer;
  transition:
    background-color 0.18s ease,
    border-color 0.18s ease,
    box-shadow 0.18s ease;
}
.menu-toggle:hover {
  background: rgba(184, 134, 11, 0.1);
  border-color: rgba(184, 134, 11, 0.35);
  box-shadow: var(--shadow-1);
}
.btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 0.5rem;
  padding: 0.8rem 1.05rem;
  border-radius: var(--radius-2);
  text-decoration: none;
  font-weight: 750;
  border: 1px solid var(--c-border);
  transition:
    transform 0.18s ease,
    box-shadow 0.18s ease,
    background-color 0.18s ease,
    border-color 0.18s ease;
  will-change: transform;
}
.btn:hover {
  transform: translateY(-1px);
  box-shadow: var(--shadow-1);
}
.btn:active {
  transform: translateY(0);
  box-shadow: none;
}
.btn-primary {
  background: linear-gradient(135deg, #111111 0%, #0c0c0d 55%, #111111 100%);
  color: #fff;
  border-color: rgba(184, 134, 11, 0.32);
}
.btn-primary:hover {
  border-color: rgba(184, 134, 11, 0.55);
}
.btn-ghost {
  background: rgba(255, 255, 255, 0.75);
  color: var(--c-text);
}
.btn-ghost:hover {
  background: rgba(184, 134, 11, 0.1);
  border-color: rgba(184, 134, 11, 0.35);
}
.hero {
  padding: var(--space-6) 0;
}
.hero h1 {
  font-size: clamp(1.8rem, 3vw, 2.5rem);
  line-height: 1.15;
}
.cta-row {
  display: flex;
  gap: var(--space-2);
  flex-wrap: wrap;
}
.tiles {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: var(--space-3);
}
.tile {
  border: 1px solid rgba(0, 0, 0, 0.08);
  border-radius: var(--radius-2);
  padding: var(--space-3);
}
.breadcrumbs {
  font-size: 0.95rem;
  margin: var(--space-3) 0 var(--space-4);
}
.breadcrumbs ol {
  list-style: none;
  padding: 0;
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}
.breadcrumbs li::after {
  content: "/";
  margin-left: 0.5rem;
  opacity: 0.6;
}
.breadcrumbs li:last-child::after {
  content: "";
}
.cta-block {
  margin: var(--space-6) 0;
  padding: var(--space-4);
  border-radius: var(--radius-2);
  border: 1px solid rgba(0, 0, 0, 0.1);
  box-shadow: var(--shadow-1);
}
.form {
  display: grid;
  gap: var(--space-2);
  max-width: 620px;
}
label {
  font-weight: 700;
}
input,
textarea,
select {
  width: 100%;
  padding: 0.8rem;
  border-radius: var(--radius-1);
  border: 1px solid rgba(0, 0, 0, 0.2);
}
details {
  border: 1px solid rgba(0, 0, 0, 0.1);
  border-radius: var(--radius-1);
  padding: var(--space-2) var(--space-3);
}
details + details {
  margin-top: var(--space-2);
}
summary {
  cursor: pointer;
  font-weight: 800;
}
.site-footer {
  margin-top: var(--space-6);
  padding: var(--space-6) 0;
  background: #fafafa;
  border-top: 1px solid rgba(0, 0, 0, 0.08);
}
.footer-grid {
  display: grid;
  grid-template-columns: 1.2fr 1fr 1fr;
  gap: var(--space-4);
}
.footer-links {
  list-style: none;
  padding: 0;
  display: grid;
  gap: 0.5rem;
}
.footer-bottom {
  display: flex;
  justify-content: space-between;
  margin-top: var(--space-4);
}
.sticky-cta {
  position: fixed;
  left: 0;
  right: 0;
  bottom: 0;
  display: none;
  gap: var(--space-2);
  padding: var(--space-2);
  background: #fff;
  box-shadow: 0 -8px 24px rgba(0, 0, 0, 0.12);
  z-index: 60;
}
.sticky-btn {
  flex: 1;
  text-align: center;
  padding: 0.9rem 1rem;
  border-radius: var(--radius-2);
  font-weight: 900;
  text-decoration: none;
  border: 1px solid var(--c-border);
}
/* Brand logo */
.logo {
  display: flex;
  align-items: center;
  gap: 0.75rem;
  text-decoration: none;
  color: var(--c-text);
}

.logo-img {
  height: 40px;
  width: auto;
  display: block;
}

/* Homepage hero with media */
.hero-with-media .hero-grid {
  display: grid;
  grid-template-columns: 1.15fr 0.85fr;
  gap: 2rem;
  align-items: center;
}

.hero-media {
  border-radius: 14px;
  overflow: hidden;
  border: 1px solid var(--c-border);
  background: #0b0c0f;
}

.hero-media img {
  display: block;
  width: 100%;
  height: 100%;
  object-fit: cover;
  aspect-ratio: 4 / 3;
}

/* Check-list bullets */
.checklist {
  list-style: none;
  padding-left: 0;
  margin: var(--space-3) 0;
}

.checklist li {
  position: relative;
  padding-left: 1.5rem;
  margin: 0.5rem 0;
}

.checklist li::before {
  content: "✓";
  position: absolute;
  left: 0;
  color: var(--c-accent);
}

/* Trust section */
.trust {
  padding: 3rem 0;
}

.trust-grid {
  display: grid;
  grid-template-columns: 0.95fr 1.05fr;
  gap: 2rem;
  align-items: center;
}

.trust-media {
  border-radius: 14px;
  overflow: hidden;
  border: 1px solid var(--c-border);
  background: #0b0c0f;
}

.trust-media img {
  display: block;
  width: 100%;
  height: 100%;
  object-fit: cover;
  aspect-ratio: 3 / 4;
}

/* Page hero (all non-home pages) */
.page-hero {
  margin: 1rem 0 2.5rem;
}

.page-hero__media {
  border-radius: 14px;
  overflow: hidden;
  border: 1px solid var(--c-border);
  background: #0b0c0f;
  aspect-ratio: 16 / 9;
}

.page-hero__media img {
  display: block;
  width: 100%;
  height: 100%;
  object-fit: cover;
}

/* Gallery image grid */
.image-grid {
  margin-top: 1.5rem;
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
  gap: 1rem;
}

.image-card {
  border: 1px solid var(--c-border);
  border-radius: 12px;
  background: var(--c-surface);
  box-shadow: 0 0 0 rgba(0, 0, 0, 0);
  transition:
    transform 0.18s ease,
    box-shadow 0.18s ease,
    border-color 0.18s ease;

  overflow: hidden;
  background: var(--c-bg-alt);
}

.image-card img {
  display: block;
  width: 100%;
  height: auto;
}

.image-card figcaption {
  padding: var(--space-2) var(--space-3);
  font-size: 0.95rem;
  color: var(--c-muted);
}

@media (max-width: 900px) {
  .hero-with-media .hero-grid {
    grid-template-columns: 1fr;
  }

  .trust-grid {
    grid-template-columns: 1fr;
  }

  .trust-media img {
    aspect-ratio: 4 / 3;
  }
}

@media (max-width: 900px) {
  .menu-toggle {
    display: block;
  }
  .nav {
    display: none;
    position: absolute;
    left: 0;
    right: 0;
    top: 62px;
    padding: var(--space-3);
    background: rgba(255, 255, 255, 0.92);
    backdrop-filter: blur(10px);
    border-bottom: 1px solid rgba(11, 11, 12, 0.1);
    flex-direction: column;
    align-items: stretch;
    gap: 0.25rem;
  }
  .nav a {
    width: 100%;
  }
  .nav.is-open {
    display: flex;
  }
  .header-cta {
    display: none;
  }
  .tiles {
    grid-template-columns: 1fr;
  }
  .footer-grid {
    grid-template-columns: 1fr;
  }
  .footer-bottom {
    flex-direction: column;
  }
  .sticky-cta {
    display: flex;
  }
  body {
    padding-bottom: 72px;
  }
}

@media (prefers-reduced-motion: reduce) {
  * {
    scroll-behavior: auto !important;
  }
  .btn,
  .tile,
  .image-card {
    transition: none !important;
  }
}

.tile:hover,
.image-card:hover,
.service-card:hover,
.card:hover {
  transform: translateY(-2px);
  box-shadow: var(--shadow-1);
  border-color: rgba(184, 134, 11, 0.28);
}

.page-hero__media {
  position: relative;
}
.page-hero__media::after {
  content: "";
  position: absolute;
  inset: 0;
  background: linear-gradient(
    180deg,
    rgba(11, 11, 12, 0) 0%,
    rgba(11, 11, 12, 0.16) 65%,
    rgba(11, 11, 12, 0.22) 100%
  );
  pointer-events: none;
}

@media (max-width: 900px) {
  body.nav-open {
    overflow: hidden;
  }
}

.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  white-space: nowrap;
  border: 0;
}

.eyebrow {
  display: inline-block;
  margin-bottom: var(--space-2);
  font-size: 0.85rem;
  font-weight: 800;
  letter-spacing: 0.12em;
  text-transform: uppercase;
  color: var(--c-accent);
}

.section-stack {
  padding: var(--space-6) 0;
}

.section-stack--tight {
  padding: var(--space-5) 0;
}

.kpi-grid,
.two-col,
.process-grid,
.quote-grid {
  display: grid;
  gap: var(--space-3);
}

.kpi-grid {
  grid-template-columns: repeat(4, 1fr);
  margin-top: var(--space-4);
}

.kpi-card,
.quote-card {
  border: 1px solid rgba(11, 11, 12, 0.08);
  border-radius: var(--radius-2);
  padding: var(--space-3);
  background: rgba(255, 255, 255, 0.82);
  box-shadow: var(--shadow-1);
}

.kpi-card strong {
  display: block;
  margin-bottom: 0.35rem;
  font-size: var(--text-3);
  line-height: 1;
}

.two-col {
  grid-template-columns: repeat(2, minmax(0, 1fr));
  align-items: start;
}

.process-grid {
  grid-template-columns: repeat(4, minmax(0, 1fr));
}

.quote-grid {
  grid-template-columns: repeat(3, minmax(0, 1fr));
}

.process-step {
  border: 1px solid rgba(11, 11, 12, 0.08);
  border-radius: var(--radius-2);
  padding: var(--space-3);
  background: var(--c-surface);
}

.process-step strong {
  display: inline-flex;
  width: 2rem;
  height: 2rem;
  align-items: center;
  justify-content: center;
  margin-bottom: var(--space-2);
  border-radius: 999px;
  background: rgba(184, 134, 11, 0.12);
  color: var(--c-accent-2);
}

.quote-card p:last-child {
  margin-bottom: 0;
}

.quote-card cite {
  display: block;
  margin-top: var(--space-2);
  font-style: normal;
  font-weight: 700;
  color: var(--c-text);
}

.tile h3,
.process-step h3 {
  margin-top: 0;
}

@media (max-width: 900px) {
  .kpi-grid,
  .process-grid,
  .quote-grid,
  .tiles {
    grid-template-columns: 1fr 1fr;
  }

  .two-col {
    grid-template-columns: 1fr;
  }
}

@media (max-width: 640px) {
  .kpi-grid,
  .process-grid,
  .quote-grid,
  .tiles {
    grid-template-columns: 1fr;
  }
}

.section-lead {
  max-width: 72ch;
}

.eyebrow-row {
  display: flex;
  flex-wrap: wrap;
  gap: 0.65rem;
  margin-bottom: var(--space-3);
}

.pill {
  display: inline-flex;
  align-items: center;
  padding: 0.38rem 0.75rem;
  border-radius: 999px;
  background: rgba(255, 255, 255, 0.78);
  border: 1px solid rgba(11, 11, 12, 0.09);
  font-size: 0.92rem;
  font-weight: 700;
  color: var(--c-muted);
  backdrop-filter: blur(8px);
}

.hero-copy p {
  max-width: 62ch;
}

.hero-proof {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: var(--space-2);
  margin-top: var(--space-4);
}

.hero-proof .kpi-card strong {
  font-size: var(--text-2);
}

.section-shell {
  padding: var(--space-6) 0;
}

.section-shell--alt {
  background: linear-gradient(
    180deg,
    rgba(184, 134, 11, 0.06),
    rgba(255, 255, 255, 0)
  );
}

.feature-band,
.case-study,
.form-shell,
.stat-band {
  border: 1px solid rgba(11, 11, 12, 0.08);
  border-radius: var(--radius-3);
  background: rgba(255, 255, 255, 0.86);
  box-shadow: var(--shadow-1);
}

.feature-band,
.stat-band {
  padding: var(--space-4);
}

.feature-band + .feature-band,
.case-study + .case-study {
  margin-top: var(--space-3);
}

.audience-grid,
.story-grid,
.case-study-grid,
.form-grid {
  display: grid;
  gap: var(--space-3);
}

.audience-grid {
  grid-template-columns: repeat(3, minmax(0, 1fr));
}

.audience-card,
.case-study {
  border: 1px solid rgba(11, 11, 12, 0.08);
  border-radius: var(--radius-3);
  padding: var(--space-4);
  background: rgba(255, 255, 255, 0.84);
  box-shadow: var(--shadow-1);
}

.audience-card h3,
.case-study h3 {
  margin-top: 0;
}

.metric-row {
  display: flex;
  flex-wrap: wrap;
  gap: var(--space-2);
  margin-top: var(--space-3);
}

.metric {
  min-width: 10rem;
  padding: var(--space-2) var(--space-3);
  border-radius: var(--radius-2);
  background: rgba(184, 134, 11, 0.08);
  border: 1px solid rgba(184, 134, 11, 0.18);
}

.metric strong {
  display: block;
  font-size: var(--text-2);
  line-height: 1.1;
}

.case-study-grid {
  grid-template-columns: repeat(3, minmax(0, 1fr));
}

.case-study ul {
  margin-bottom: 0;
}

.quote-card blockquote {
  margin: 0 0 var(--space-2);
  font-size: 1.02rem;
}

.quote-card cite {
  font-style: normal;
  color: var(--c-muted);
}

.checklist--compact li {
  margin: 0.3rem 0;
}

.split-callout {
  display: grid;
  grid-template-columns: 1.1fr 0.9fr;
  gap: var(--space-4);
  align-items: stretch;
}

.split-callout__copy,
.split-callout__media {
  min-width: 0;
}

.split-callout__media {
  border-radius: var(--radius-3);
  overflow: hidden;
  border: 1px solid rgba(11, 11, 12, 0.08);
  background: #0b0c0f;
}

.split-callout__media img {
  width: 100%;
  height: 100%;
  display: block;
  object-fit: cover;
}

.case-study figure {
  margin: 0 0 var(--space-3);
  border-radius: var(--radius-2);
  overflow: hidden;
  border: 1px solid rgba(11, 11, 12, 0.08);
}

.case-study figure img {
  display: block;
  width: 100%;
  height: auto;
}

.form-shell {
  padding: var(--space-4);
}

.form-shell .form {
  max-width: none;
}

.form-grid {
  grid-template-columns: repeat(2, minmax(0, 1fr));
}

.form-grid .field-span-2 {
  grid-column: 1 / -1;
}

.helper-copy {
  color: var(--c-muted);
  font-size: 0.95rem;
}

.list-tight {
  margin: var(--space-2) 0 0;
  padding-left: 1.1rem;
}

.list-tight li + li {
  margin-top: 0.4rem;
}

.cta-panel {
  display: grid;
  gap: var(--space-2);
  align-content: start;
}

.logo-lockup {
  display: flex;
  flex-direction: column;
  gap: 0.35rem;
}

.logo-subtitle {
  color: var(--c-muted);
  font-size: 0.95rem;
}

.site-footer p,
.site-footer small {
  color: rgba(255, 255, 255, 0.78);
}

.site-footer a {
  color: #fff;
}

.site-footer {
  background: linear-gradient(180deg, #101112, #0a0b0c);
  color: #fff;
}

.footer-title {
  color: #fff;
}

.footer-bottom {
  gap: var(--space-2);
  flex-wrap: wrap;
}

.footer-note {
  color: rgba(255, 255, 255, 0.62);
  margin-top: var(--space-2);
  font-size: 0.95rem;
}

@media (max-width: 900px) {
  .hero-proof,
  .audience-grid,
  .case-study-grid,
  .form-grid,
  .split-callout,
  .process-grid,
  .quote-grid,
  .kpi-grid {
    grid-template-columns: 1fr;
  }
}

/* v2 premium shells */
