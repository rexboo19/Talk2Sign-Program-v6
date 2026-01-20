# How to Open and Run Kalidoface 3D Project

## Project Overview

This is the **Kalidoface 3D** project - a web application for face and body tracking with 3D VRM avatars. It's built with:
- **Vite** (build tool)
- **Svelte** (frontend framework)
- **Three.js** (3D rendering)
- **MediaPipe** (face/body tracking)
- **Kalidokit** (tracking solver)

## Prerequisites

Before running the project, you need:

1. **Node.js** (version 14.x or higher)
   - Download from: https://nodejs.org/
   - Check version: `node --version`

2. **npm** (comes with Node.js)
   - Check version: `npm --version`

## Installation Steps

### 1. Install Dependencies

Open a terminal/command prompt in the project folder and run:

```bash
npm install
```

This will install all required packages listed in `package.json`.

### 2. Start Development Server

After installation, start the development server:

```bash
npm run dev
```

Or alternatively:

```bash
npm start
```

This will:
- Start a local development server (usually at `http://localhost:5173` or similar)
- Enable hot-reload for development
- Show the URL in the terminal

### 3. Open in Browser

1. Open your web browser
2. Navigate to the URL shown in the terminal (e.g., `http://localhost:5173`)
3. Allow camera access when prompted (required for face/body tracking)

## Available Scripts

From `package.json`, you have these commands:

- **`npm run dev`** or **`npm start`** - Start development server
- **`npm run build`** - Build for production (outputs to `docs/` folder)
- **`npm run serve`** - Preview production build
- **`npm run clean`** - Remove built files

## Project Structure

```
Talk2Sign-Program-v2/
├── src/                    # Source files (Svelte components) - MAY BE MISSING
│   └── main.js             # Entry point
├── docs/                    # Built/compiled files (production) ✅ EXISTS
│   ├── index.html          # Built HTML
│   └── assets/             # Compiled JS/CSS
├── index.html              # Main HTML file (development)
├── package.json            # Dependencies and scripts
├── vite.config.js          # Vite configuration
├── jsconfig.json           # JavaScript configuration
└── README.md               # Project documentation
```

## Quick Start (Using Built Files)

If you just want to **run the application** without development:

1. **Option 1: Use Built Files Directly**
   - Open `docs/index.html` in a web browser
   - **Note:** This may not work due to CORS restrictions
   - Better to use a local server (see below)

2. **Option 2: Serve Built Files with a Server**
   ```bash
   # Using Python
   cd docs
   python -m http.server 8000
   # Then open http://localhost:8000
   
   # Or using Node.js http-server
   npx http-server docs -p 8000
   ```

3. **Option 3: Use npm serve (if dependencies installed)**
   ```bash
   npm run serve
   ```

## Important Notes

### Camera Access
- The app requires **camera access** to work
- Works best on **HTTPS** or **localhost**
- Modern browsers (Chrome, Firefox, Edge) recommended

### Missing Source Files
**Current Status:** The `src/` folder appears to be missing, but the **built files are in `docs/`**

If you want to **develop/modify** the project:
- You need the source files from the original repository
- Clone from: https://github.com/yeemachine/kalidoface-3d.git
- Or download the source files separately

If you just want to **run** the application:
- Use the built files in `docs/` folder (see Quick Start above)

### Node Version
- The project specifies Node.js 14.x in `package.json`
- If you have a newer version, it should still work, but you may need to adjust

## Troubleshooting

### Error: "Cannot find module"
**Solution:** Run `npm install` to install dependencies

### Error: "Port already in use"
**Solution:** Kill the process using the port or change the port in vite.config.js

### Camera not working
**Solution:** 
- Ensure you're using HTTPS or localhost
- Check browser permissions
- Try a different browser

### Build errors
**Solution:**
- Clear node_modules and reinstall: `rm -rf node_modules && npm install`
- Check Node.js version compatibility

## Production Build

To create a production build:

```bash
npm run build
```

The built files will be in the `docs/` folder, ready to deploy.

## Additional Resources

- Original Repository: https://github.com/yeemachine/kalidoface-3d
- Live Demo: https://3d.kalidoface.com/
- Kalidokit Library: https://github.com/yeemachine/kalidokit

