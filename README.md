# Witness GitHub Pages

This folder contains the GitHub Pages website for Witness, including:

- **index.html** - Landing page
- **privacy.html** - Privacy Policy
- **support.html** - Support Center & FAQs

## 🚀 Setup GitHub Pages

1. **Push to GitHub:**
   ```bash
   git add docs/
   git commit -m "Add GitHub Pages for privacy and support"
   git push origin main
   ```

2. **Enable GitHub Pages:**
   - Go to your GitHub repository: https://github.com/Mickycurran/witness
   - Click **Settings**
   - Scroll to **Pages** (in left sidebar)
   - Under **Source**, select: `main` branch, `/docs` folder
   - Click **Save**

3. **Your site will be live at:**
   ```
   https://mickycurran.github.io/witness/
   ```

## 📱 Update App Store URLs

Once GitHub Pages is live, update these files to use your new URLs:

### In Xcode Project Settings:
- **Privacy Policy URL:** `https://mickycurran.github.io/witness/privacy.html`
- **Support URL:** `https://mickycurran.github.io/witness/support.html`
- **Marketing URL:** `https://mickycurran.github.io/witness/`

### In App Store Connect:
1. Go to App Store Connect → Your App → App Information
2. Update:
   - Privacy Policy URL
   - Support URL
   - Marketing URL (optional)

## 🎨 Customization

The site uses a modern dark theme with green accents matching the app:
- **Colors:** Black/Green (#00ff00) theme
- **Responsive:** Mobile-friendly design
- **Typography:** Apple system fonts for native look
- **Icons:** Emoji for cross-platform compatibility

### To customize colors:
Edit the `<style>` section in each HTML file:
```css
/* Primary color (green) */
#00ff00

/* Background */
linear-gradient(135deg, #0a0a0a 0%, #1a1a1a 100%)
```

## 🌐 Custom Domain (Optional)

If you want to use a custom domain (e.g., `witness.app`):

1. **Create CNAME file:**
   ```bash
   echo "witness.app" > docs/CNAME
   ```

2. **Configure DNS:**
   Add these records to your domain:
   ```
   A     185.199.108.153
   A     185.199.109.153
   A     185.199.110.153
   A     185.199.111.153
   CNAME www.witness.app mickycurran.github.io
   ```

3. **Update GitHub Pages:**
   - Settings → Pages → Custom domain
   - Enter: `witness.app`
   - Enable "Enforce HTTPS"

## ✅ Pre-Launch Checklist

- [ ] Push to GitHub
- [ ] Enable GitHub Pages
- [ ] Verify site loads at `https://mickycurran.github.io/witness/`
- [ ] Test all navigation links
- [ ] Test on mobile device
- [ ] Update App Store Connect URLs
- [ ] Submit app for review

## 📊 Analytics (Optional)

To add Google Analytics or Plausible:

Add before `</head>` in each HTML file:
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

## 🔗 Links

- **Live Site:** https://mickycurran.github.io/witness/ (after setup)
- **Web Verifier:** https://witness-app-a41de.web.app
- **GitHub Repo:** https://github.com/Mickycurran/witness

