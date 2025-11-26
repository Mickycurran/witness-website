# Setup Public GitHub Pages Repository

Your main app code is private (good!), but GitHub Pages needs a public repo.

**Solution:** Create a separate public repository just for the website.

---

## 🚀 Quick Setup (5 minutes)

### Step 1: Create New Public Repository on GitHub

1. Go to: https://github.com/new
2. **Repository name:** `witness-website` (or `witness-pages`, `witness-web`)
3. **Description:** "Official website for Witness - Tamper-Proof Evidence Camera"
4. **Visibility:** ✅ **Public** (required for free GitHub Pages)
5. **Initialize:** ❌ Leave unchecked (we'll push our files)
6. Click **"Create repository"**

---

### Step 2: Push Docs to New Public Repo

From your terminal:

```bash
# Navigate to your docs folder
cd /Users/michaelcurran/Documents/Development/IOS/Witness/docs

# Initialize as a new git repo
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit: Witness website (privacy, support, landing page)"

# Add your new public repo as remote (REPLACE with your actual repo URL)
git remote add origin https://github.com/Mickycurran/witness-website.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**⚠️ IMPORTANT:** Replace `Mickycurran/witness-website` with your actual repository name!

---

### Step 3: Enable GitHub Pages

1. Go to your new repo: `https://github.com/YOUR_USERNAME/witness-website`
2. Click **Settings** (top right)
3. Click **Pages** (left sidebar)
4. Under **Source:**
   - Branch: `main`
   - Folder: `/ (root)`
5. Click **Save**
6. Wait 1-2 minutes

**Your site will be live at:**
```
https://YOUR_USERNAME.github.io/witness-website/
```

Example:
```
https://mickycurran.github.io/witness-website/
```

---

## 📱 Update URLs Everywhere

Once your site is live, update these URLs:

### App Store Connect:
- **Privacy Policy:** `https://YOUR_USERNAME.github.io/witness-website/privacy.html`
- **Support URL:** `https://YOUR_USERNAME.github.io/witness-website/support.html`
- **Marketing URL:** `https://YOUR_USERNAME.github.io/witness-website/`

### Update in HTML Files:

The HTML files currently reference relative paths, so they should work fine. But double-check all links once deployed.

---

## 🔄 Keeping Pages Updated

When you make changes to your website:

```bash
cd /Users/michaelcurran/Documents/Development/IOS/Witness/docs

# Make your edits to HTML files

git add .
git commit -m "Update privacy policy"
git push
```

GitHub Pages will auto-deploy in 1-2 minutes.

---

## 🎨 Alternative: Use a Custom Domain

If you own `witness.app` or want to buy a domain:

1. **Create CNAME file:**
   ```bash
   echo "witness.app" > CNAME
   git add CNAME
   git commit -m "Add custom domain"
   git push
   ```

2. **Configure DNS at your domain registrar:**
   ```
   A     185.199.108.153
   A     185.199.109.153
   A     185.199.110.153
   A     185.199.111.153
   ```

3. **Enable in GitHub Pages settings:**
   - Custom domain: `witness.app`
   - ✅ Enforce HTTPS

Then your URLs become:
- Privacy: `https://witness.app/privacy.html`
- Support: `https://witness.app/support.html`

---

## 📂 File Structure

Your public repo should contain:
```
witness-website/
├── index.html          # Landing page
├── privacy.html        # Privacy policy (required for App Store)
├── support.html        # Support & FAQ
├── README.md          # This file
└── CNAME              # (Optional) Custom domain
```

---

## ✅ Checklist

- [ ] Create public repo on GitHub
- [ ] Push docs folder to new repo
- [ ] Enable GitHub Pages in settings
- [ ] Visit site and test all pages
- [ ] Test on mobile
- [ ] Update App Store Connect URLs
- [ ] Test all links work
- [ ] Submit app for review

---

## 🔒 Keep Your App Code Private

Your main app repository (`witness`) stays private:
- ✅ iOS app code
- ✅ Firebase functions
- ✅ Architecture docs
- ✅ Development notes

Only the public-facing website is public:
- ✅ Landing page
- ✅ Privacy policy
- ✅ Support page

This is the recommended approach! ✨

