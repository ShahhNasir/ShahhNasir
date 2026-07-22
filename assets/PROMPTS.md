# Image-generation prompts

The original spec called for photographic/raster assets — `banner.psd`, `hero-background.png`, `ai.gif`, `robot.gif`, `banner.png`, `social-banner.png`, `favicon.png` — that depict a coding workstation, AI holograms, neural networks, and a modern city. Those require an actual image-generation model (Midjourney, DALL·E, Ideogram, Stable Diffusion) or design software (Photoshop for the `.psd`); no such tool is available in this session, so they were not fabricated as empty or broken files. Everything visual that *could* be built as real, working vector/markup assets was — see the repo's `assets/*.svg` and the README, which render natively on GitHub with no missing files.

Use these prompts in an image generator to produce the raster set:

## Hero banner / hero-background (1280×640)

```
Ultra-premium dark futuristic tech hero illustration, 1280x640, wide cinematic composition.
A minimal coding workstation silhouette in the foreground with soft glowing holographic AI
interface panels and neural network node graphs floating above the desk. Deep navy and black
background (#0B1120), neon cyan (#22D3EE) and electric purple (#A855F7) accent lighting only,
no red, no orange. Faint blurred modern city skyline through a window in the background.
Glassmorphic UI panels, thin glowing circuit lines, subtle lens flare. No people, no anime,
no cartoon style — photoreal / cinematic 3D render, Apple keynote × OpenAI × Anthropic
aesthetic, extremely clean, minimal, high production value, shallow depth of field.
```

## Social preview / GitHub social card (1280×640)

```
Minimal dark tech brand card, 1280x640. Centered abstract geometric AI logomark made of
three glowing orbiting nodes around a core sphere, cyan-to-purple gradient (#22D3EE to
#A855F7), on a near-black navy background (#0B1120) with a very subtle circuit-line texture.
Large clean modern sans-serif wordmark below the mark: "AI OS". Small subtext beneath:
"The Operating System for Artificial Intelligence". Flat, minimal, no clutter, no gradients
outside the defined palette, no red or orange, premium SaaS-startup brand card style
(Stripe / Linear / Vercel aesthetic).
```

## Animated GIFs (ai.gif, robot.gif)

```
Short seamless-loop animation, transparent or near-black background, a minimal line-art
neural network graph where nodes pulse cyan-to-purple in sequence, suggesting "thinking" /
inference. Flat vector style, no characters, no mascots, no anime. Loopable, 2-3 seconds,
subtle and non-distracting for use as a small inline accent in a dark README.
```

## What to do with the outputs

1. Generate the hero/banner art above and export as `banner.png` (1280×640) and `hero-background.png`.
2. Open in Photoshop (or any layered editor) and save a layered working file as `banner.psd` if you need one for future edits.
3. Upload `banner.png` (or a cropped 1280×640 crop of it) via **GitHub repo → Settings → Social preview** — GitHub requires this to be uploaded through the web UI; committing a file to the repo does not set it automatically.
4. Drop the GIFs in `assets/` and reference them from the README (`<img src="assets/robot.gif" width="72"/>`) if you want a small animated accent — keep them subtle so they don't fight the SVG animations already in the profile.
5. `favicon.png` only matters if you build a companion personal website — export a small square PNG from `assets/ai-os-logo.svg` at 64×64/32×32 for that use case.
