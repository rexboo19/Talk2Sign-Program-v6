# GitHub Pages Setup Guide

## How to Host Your Talk2Sign Project on GitHub Pages

### Step 1: Create a GitHub Repository

1. Go to [GitHub.com](https://github.com) and sign in
2. Click the "+" icon in the top right → "New repository"
3. Name your repository (e.g., `Talk2Sign-Program-v2`)
4. Choose **Public** (required for free GitHub Pages)
5. **DO NOT** initialize with README, .gitignore, or license (since you already have files)
6. Click "Create repository"

### Step 2: Upload Your Files to GitHub

#### Option A: Using GitHub Web Interface

1. In your new repository, click "uploading an existing file"
2. Drag and drop all your project files:
   - `index.html` (landing page)
   - `landing.html`
   - `training.html`
   - `docs/` folder (entire folder)
   - `training/` folder
   - `Old_Talk2Sign/` folder (if needed)
   - `yci_logo.jpg`
   - Any other files
3. Click "Commit changes"

#### Option B: Using Git Command Line

```bash
# Navigate to your project folder
cd C:\Users\rexboo\Downloads\Talk2Sign-Program-v2

# Initialize git repository
git init

# Add all files
git add .

# Commit files
git commit -m "Initial commit"

# Add your GitHub repository as remote (replace YOUR_USERNAME and REPO_NAME)
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** (top menu)
3. Scroll down to **Pages** in the left sidebar
4. Under **Source**, select:
   - **Deploy from a branch**: Choose `main` branch and `/ (root)` folder
   - OR if you want to use docs folder: Choose `main` branch and `/docs` folder
5. Click **Save**

### Step 4: Access Your Website

- Your site will be available at: `https://YOUR_USERNAME.github.io/REPO_NAME/`
- For example: `https://yourusername.github.io/Talk2Sign-Program-v2/`
- It may take a few minutes for the site to be available after first setup

### Important Notes:

1. **File Paths**: Since GitHub Pages serves from root, make sure all paths are correct:
   - `docs/index.html` should reference files with `./` (current directory)
   - `training.html` should reference `../training/kalidokit.umd.js` correctly
   - Images and assets should use relative paths

2. **HTTPS Required**: GitHub Pages uses HTTPS, which is required for:
   - Webcam access (getUserMedia)
   - Some MediaPipe features

3. **Custom Domain** (Optional): You can use a custom domain by:
   - Adding a `CNAME` file in the root with your domain name
   - Configuring DNS settings

### Troubleshooting:

- **404 Errors**: Check that file paths are correct and case-sensitive
- **Assets Not Loading**: Ensure all files are committed to GitHub
- **Webcam Not Working**: Make sure you're accessing via HTTPS (GitHub Pages provides this automatically)

### Recommended Structure:

```
Your Repository/
├── index.html          (Landing page - served at /)
├── landing.html
├── training.html
├── docs/
│   ├── index.html      (Kalidoface 3D app)
│   └── assets/
├── training/
│   └── kalidokit.umd.js
└── yci_logo.jpg
```

### Quick Start Commands:

```bash
# If using Git for the first time
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# Then follow Option B above
```

