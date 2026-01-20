# Quick Start Guide - Server Setup

## 🚀 Fastest Way to Start the Server

### Option 1: Double-Click Script (Easiest)

1. **Double-click** `start-server.bat` in the project folder
2. A window will open showing the server status
3. Open your browser to: `http://localhost:8000/`

### Option 2: Manual PowerShell Commands

1. **Open PowerShell** in the project folder
   - Right-click in the folder → "Open in Terminal" or "Open PowerShell window here"

2. **Run this command:**
   ```powershell
   python -m http.server 8000
   ```

3. **You should see:**
   ```
   Serving HTTP on :: port 8000 (http://[::]:8000/) ...
   ```

4. **Open your browser:**
   - Go to: `http://localhost:8000/`
   - You should see the **Talk2Sign** landing page!

## ✅ Verify It's Working

After starting the server, test these URLs:

- `http://localhost:8000/` → **Talk2Sign landing page** (with Start and Training buttons)
- `http://localhost:8000/test.html` → Test page
- `http://localhost:8000/training.html` → Training page
- `http://localhost:8000/docs/index.html` → Kalidoface 3D app

## ❌ If It's Not Working

### Problem: Still seeing 404 errors

**Solution:**
1. Make sure you're in the **root directory** (where `index.html` is located)
2. Check current directory:
   ```powershell
   Get-Location
   ```
   Should show: `C:\Users\rexboo\Downloads\Talk2Sign-Program-v2`

3. List files to verify:
   ```powershell
   dir *.html
   ```
   Should show: `index.html`, `landing.html`, `training.html`, `test.html`

### Problem: Port 8000 already in use

**Solution:**
1. Find and stop the old server:
   ```powershell
   # Find the process
   netstat -ano | findstr :8000
   
   # Kill it (replace PID with the number you found)
   taskkill /PID <PID> /F
   ```

2. Start the server again

### Problem: Python not found

**Solution:**
1. Install Python from: https://www.python.org/downloads/
2. Make sure to check "Add Python to PATH" during installation
3. Restart PowerShell and try again

## 📁 Directory Structure

Make sure your server starts from this directory:
```
Talk2Sign-Program-v2/          ← Server must start HERE
├── index.html                 ← Landing page (served at /)
├── landing.html
├── training.html
├── test.html
├── start-server.bat          ← Double-click this!
└── docs/
    └── index.html            ← Kalidoface app
```

## 🎯 Expected Result

When you visit `http://localhost:8000/`, you should see:
- **Title:** "Talk2Sign"
- **Subtitle:** "Learn and practice sign language with interactive tools"
- **Two buttons:**
  - "Start" button (purple gradient)
  - "Training" button (pink gradient)

If you see this, the server is set up correctly! ✅

