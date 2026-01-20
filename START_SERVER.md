# How to Start the Server Correctly

## Step-by-Step Instructions

### Method 1: Using Python (Recommended)

1. **Open PowerShell or Command Prompt**

2. **Navigate to the project root directory:**
   ```powershell
   cd C:\Users\rexboo\Downloads\Talk2Sign-Program-v2
   ```

3. **Verify you're in the right place:**
   ```powershell
   dir index.html
   ```
   You should see `index.html` listed.

4. **Start the server:**
   ```powershell
   python -m http.server 8000
   ```

5. **Open your browser and go to:**
   - `http://localhost:8000/` (should show Talk2Sign landing page)
   - `http://localhost:8000/index.html` (same as above)
   - `http://localhost:8000/test.html` (test page)

### Method 2: Using Node.js http-server

If you have Node.js installed:

1. **Install http-server globally (one time only):**
   ```powershell
   npm install -g http-server
   ```

2. **Navigate to project root:**
   ```powershell
   cd C:\Users\rexboo\Downloads\Talk2Sign-Program-v2
   ```

3. **Start the server:**
   ```powershell
   http-server -p 8000
   ```

### Method 3: Using PHP (if installed)

```powershell
cd C:\Users\rexboo\Downloads\Talk2Sign-Program-v2
php -S localhost:8000
```

## Important Notes

⚠️ **CRITICAL:** Make sure you start the server from the **ROOT directory** (where `index.html` is), NOT from the `docs/` folder!

**Correct directory structure:**
```
Talk2Sign-Program-v2/          ← Start server HERE
├── index.html                 ← Landing page
├── landing.html
├── training.html
├── test.html
└── docs/
    └── index.html             ← Kalidoface app
```

## Troubleshooting

### If you get "port already in use" error:

1. Find what's using port 8000:
   ```powershell
   netstat -ano | findstr :8000
   ```

2. Kill the process (replace PID with the number from above):
   ```powershell
   taskkill /PID <PID> /F
   ```

3. Start the server again

### If files still don't load:

1. **Check current directory:**
   ```powershell
   Get-Location
   ```
   Should show: `C:\Users\rexboo\Downloads\Talk2Sign-Program-v2`

2. **List files to verify:**
   ```powershell
   dir *.html
   ```
   Should show: `index.html`, `landing.html`, `training.html`, `test.html`

3. **Clear browser cache:**
   - Press `Ctrl+Shift+R` for hard refresh
   - Or use incognito/private mode

## Quick Test

After starting the server, test these URLs:
- ✅ `http://localhost:8000/` → Should show Talk2Sign landing page
- ✅ `http://localhost:8000/test.html` → Should show test page
- ✅ `http://localhost:8000/training.html` → Should show training page
- ✅ `http://localhost:8000/docs/index.html` → Should show Kalidoface app

