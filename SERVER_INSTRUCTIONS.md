# Server Setup Instructions

## Problem: Landing page not showing at http://localhost:8000/

If `http://localhost:8000/` is not showing the Talk2Sign landing page, follow these steps:

## Solution 1: Restart Server from Root Directory

1. **Stop the current server** (Press `Ctrl+C` in the terminal)

2. **Navigate to the project root directory:**
   ```bash
   cd C:\Users\rexboo\Downloads\Talk2Sign-Program-v2
   ```

3. **Start the server from the ROOT directory:**
   ```bash
   python -m http.server 8000
   ```
   
   **IMPORTANT:** Make sure you're in the root directory (where `index.html` and `landing.html` are located), NOT in the `docs/` folder.

4. **Clear your browser cache:**
   - Press `Ctrl+Shift+R` (Windows/Linux) or `Cmd+Shift+R` (Mac) to hard refresh
   - Or open in an incognito/private window

5. **Access:** `http://localhost:8000/`

## Solution 2: Verify Server Directory

To check which directory your server is running from:

1. Open a new terminal
2. Check the current directory:
   ```bash
   cd
   ```
3. If you see `docs` in the path, you're in the wrong directory
4. Navigate to the root:
   ```bash
   cd C:\Users\rexboo\Downloads\Talk2Sign-Program-v2
   ```

## Solution 3: Direct Access

If the above doesn't work, try accessing directly:
- `http://localhost:8000/index.html`
- `http://localhost:8000/landing.html`

## File Structure

Your project should look like this:
```
Talk2Sign-Program-v2/
├── index.html          ← Landing page (should be served at /)
├── landing.html        ← Same as index.html
├── training.html       ← Training page
├── docs/
│   └── index.html      ← Kalidoface 3D app
└── ...
```

## Troubleshooting

- **If you see the Kalidoface app instead:** The server is running from the `docs/` folder. Stop it and restart from the root.
- **If you see a 404 error:** Make sure `index.html` exists in the root directory.
- **If you see an old page:** Clear browser cache (Ctrl+Shift+R).

## Quick Test

1. Visit: `http://localhost:8000/test.html`
2. If you see the test page, the server is working correctly from root
3. Then visit: `http://localhost:8000/index.html` to see the landing page

