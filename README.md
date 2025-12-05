
# 📦 Copy With Progress (PowerShell + Robocopy)

A PowerShell wrapper around **Robocopy** that lets you select **Source** and **Destination** folders via GUI dialogs and then performs a high‑performance copy with:
- Accurate **progress** (files, bytes, speed, ETA) by **tailing Robocopy’s log**,
- A **staging (dry‑run)** phase that calculates how much data will be copied,
- Safe quoting of paths (including those with spaces),
- Sensible **exclusions** (Recycle Bin, System Volume Information),
- Minimal retries, multithreaded copy, and clean logging.

> Script file: `copy_with_progress.ps1`  
> Platform: Windows (PowerShell 5.1 or PowerShell 7+ on Windows)  
> Requires: `robocopy.exe` (bundled with Windows)

---

## ✨ Features

- **GUI folder selection** for Source and Destination (Windows Forms `FolderBrowserDialog`).
- **Dry‑run staging** (`/L`) to extract totals (files/bytes) before copying.
- **Live progress bar** (`Write-Progress`) with:
  - Files copied / to copy,
  - Data transferred / total (GB),
  - Smoothed speed (**EMA**),
  - Estimated time remaining (ETA).
- **Robocopy tuning**:
  - Multithreaded copy (`/MT:<n>`),
  - Include subdirs including empty (`/E`),
  - Avoid junction traversal (`/XJ /XJD /XJF`),
  - Exclude older (`/XO`),
  - Faster retry/wait (`/R:1 /W:2`),
  - Full paths in logs (`/FP`), no directory listing noise (`/NDL`).
- **Safe logging** with proper `/LOG:"path with spaces"` quoting.
- **Exclusions**: `*RECYCLE.BIN`, `System Volume Information`, and some system files.

---

## 🛠 Requirements

- **Windows** with **Robocopy** available (default).
- **PowerShell 5.1** or **PowerShell 7+** on Windows.
- Ability to load `System.Windows.Forms` (for GUI dialogs).
- Read access to Source and write access to Destination.

---
