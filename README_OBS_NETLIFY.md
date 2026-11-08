# OBS Studio Live Overlay — Netlify Deployment & Setup Guide

A complete, zero-background, hardware-accelerated animated overlay ready for **OBS Studio**, **Streamlabs**, or **TikTok Live Studio** with 1-click Netlify deployment.

---

## ⚡ Step 1: Deploy to Netlify (Get Your Live Public URL)

### Method A: 10-Second Drag & Drop (Fastest — No Login Required)
1. Open [**app.netlify.com/drop**](https://app.netlify.com/drop) in your browser.
2. Drag and drop this folder directly into the upload area:
   `D:\BGremovuer\uploads\obs_overlay_netlify`
3. Netlify will deploy your overlay in 5 seconds and generate your live URL:
   `https://[your-site-name].netlify.app`
4. *(Optional)* Go to **Site Configuration** ➔ **Change site name** to rename it to something custom like `https://my-stream-gift-overlay.netlify.app`.

### Method B: Deploy via Netlify CLI
1. Double-click [**`deploy_to_netlify.bat`**](file:///D:/BGremovuer/uploads/obs_overlay_netlify/deploy_to_netlify.bat) in this folder.
2. If prompted, authorize your Netlify account in your browser.
3. The CLI will output your live production URL.

### Method C: Run Locally (No Internet Needed)
1. Double-click [**`run_local_obs_server.bat`**](file:///D:/BGremovuer/uploads/obs_overlay_netlify/run_local_obs_server.bat).
2. Your overlay is hosted locally at: `http://localhost:8080/?obs=true`

---

## 🎥 Step 2: Add to OBS Studio (Browser Source)

1. Open **OBS Studio**.
2. In the **Sources** dock, click the **`+`** button ➔ select **Browser**.
3. Name it `Gift Overlay` and click **OK**.
4. Configure the settings:
   - **URL**: `https://[your-site-name].netlify.app/?obs=true`
     *(Or if running locally: check **Local file** and browse to `index.html`, or enter `http://localhost:8080/?obs=true`)*
   - **Width**: `1080` (or `1920` for horizontal 16:9 canvas)
   - **Height**: `1920` (or `1080`)
   - **Custom CSS**: *(leave blank or default)*
   - **Shutdown source when not visible**: ☑ Checked *(saves CPU/GPU when scene is inactive)*
   - **Refresh browser when scene becomes active**: ☑ Checked *(resets animation cleanly on scene switch)*
   - **Control audio via OBS**: ☑ Checked *(lets you adjust the overlay sound volume directly in the OBS Audio Mixer)*
5. Click **OK**.

---

## 🎛️ Step 3: Powerful URL Customization Parameters

You can customize your overlay instantly without touching any code by simply changing the URL in OBS:

| URL Parameter | What It Does | Example URL |
| :--- | :--- | :--- |
| `?obs=true` | **Clean Mode**: Permanently suppresses the control bar and tips so viewers only see the transparent graphic. | `https://my-site.netlify.app/?obs=true` |
| `&pos=bottom-right` | Positions the animation in the bottom-right corner. Options: `center`, `bottom-right`, `bottom-center`, `bottom-left`, `top-right`, `top-left`. | `.../?obs=true&pos=bottom-right` |
| `&scale=0.7` | Sets the visual scale (from `0.25` to `1.5`). | `.../?obs=true&scale=0.7` |
| `&mode=loop-pause` | **Relaxed Loop**: Plays the animation smoothly with a 1-second resting pause before replaying. | `.../?obs=true&mode=loop-pause` |
| `&mode=loop-smooth` | **Continuous Loop**: Loops with zero pause. | `.../?obs=true&mode=loop-smooth` |
| `&mode=alert-30` | **Gift Alert**: Triggers a gift alert burst every 30 seconds (or `alert-10`, `alert-60`). | `.../?obs=true&mode=alert-30` |
| `&speed=1.2` | Animation speed multiplier (`0.5` to `2.0`). | `.../?obs=true&speed=1.2` |
| `&audio=0` | Mutes audio completely. | `.../?obs=true&audio=0` |
| `&fx=neon` | Adds a glowing cyberpunk streamer aura (`none`, `shadow`, or `neon`). | `.../?obs=true&fx=neon` |

### Recommended Pro OBS Preset:
```
https://[your-site-name].netlify.app/?obs=true&pos=bottom-right&scale=0.65&mode=loop-pause
```

---

## 💡 How to Interact / Trigger Live in OBS
Want to manually fire the animation on command during your stream?
- In OBS Studio, right-click the **Browser Source** ➔ select **Interact**.
- An interactive window pops up! Press **Spacebar** or click **Replay** anytime to fire the gift burst live on stream!
