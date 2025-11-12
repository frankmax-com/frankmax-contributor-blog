---
title: "FrankMax Digital Blog Contributors"
date: 2024-01-15
description: "Welcome to the FrankMax Digital blog contributor platform. Share your expertise and connect with our community."
---

# Welcome to FrankMax Digital Blog Contributors

This is the contributor platform for the FrankMax Digital blog. Here, external contributors can create, preview, and submit high-quality blog posts for publication on our main website.

## Quick Start Guide

1.  **Create a new blog post** using: `hugo new blogs/your-post-title.md`
2. **Prepare your images** following our image guidelines (see detailed steps below)
3. **Write your content** following our style guide
4. **Test locally** with: `hugo server -D`
5. **Submit for review** via pull request

### 📸 Image Creation and Upload Steps

#### **Blog Banner Images**

1. **Create your banner image:**
   - **Dimensions**: 1200x630px (recommended for social sharing)
   - **Format**: JPG or PNG
   - **File size**: Keep under 500KB for optimal loading
   - **Content**: Should be relevant to your blog topic
   - **Quality**: High-resolution, professional appearance

2. **File naming convention:**
   ```
   your-blog-post-slug-banner.jpg
   ```
   Example: `react-typescript-guide-banner.jpg`

3. **Upload location:**
   ```
   static/images/articles/blogs/your-blog-post-slug/banner.jpg
   ```
   **Full path example:**
   ```
   static/images/articles/blogs/react-typescript-guide/banner.jpg
   ```

4. **Update your blog post frontmatter:**
   ```yaml
   banner: 
     image: "images/articles/blogs/your-blog-post-slug/banner.jpg"
     alt_text: "Descriptive text for accessibility"
   ```

#### **Author Profile Images**

1. **Create your author image:**
   - **Dimensions**: 400x400px (square format)
   - **Format**: JPG or PNG
   - **File size**: Keep under 200KB
   - **Content**: Professional headshot or avatar
   - **Background**: Clean, uncluttered background preferred

2. **File naming convention:**
   ```
   firstname-lastname.jpg
   ```
   Example: `emma-rodriguez.jpg`

3. **Upload location:**
   ```
   static/images/authors/firstname-lastname.jpg
   ```
   **Full path example:**
   ```
   static/images/authors/emma-rodriguez.jpg
   ```

4. **Update your blog post frontmatter:**
   ```yaml
   author: 
     name: "Your Full Name"
     bio: "Brief professional biography"
     image: "images/authors/firstname-lastname.jpg"
   ```

#### **Additional Blog Images (Optional)**

For images within your blog content:

1. **Create supporting images:**
   - **Formats**: JPG, PNG, or SVG
   - **File size**: Under 300KB each
   - **Naming**: Descriptive names (e.g., `architecture-diagram.png`)

2. **Upload location:**
   ```
   static/images/articles/blogs/your-blog-post-slug/
   ├── banner.jpg
   ├── diagram-1.png
   ├── screenshot-1.jpg
   └── code-example.png
   ```

3. **Reference in markdown:**
   ```markdown
   ![Diagram Description](images/articles/blogs/your-blog-post-slug/diagram-1.png)
   ```

#### **🎨 Image Creation Tools**

**Free Tools:**
- **Canva**: Pre-made templates for blog banners
- **GIMP**: Professional image editing
- **Pixlr**: Online photo editor
- **Unsplash**: Free stock photos
- **Pexels**: Free stock photos and videos

**AI-Generated Options:**
- **DALL-E**: AI image generation
- **Midjourney**: AI art creation
- **Stable Diffusion**: Open-source AI images

#### **📁 Complete Directory Structure**

Your final directory structure should look like:

```
static/images/
├── articles/blogs/
│   ├── your-first-post/
│   │   ├── banner.jpg
│   │   ├── diagram-1.png
│   │   └── screenshot-1.jpg
│   ├── react-typescript-guide/
│   │   ├── banner.jpg
│   │   ├── code-example.png
│   │   └── architecture.svg
│   └── aws-infrastructure/
│       ├── banner.jpg
│       └── aws-diagram.png
└── authors/
    ├── emma-rodriguez.jpg
    ├── alex-chen.jpg
    └── sarah-mitchell.jpg
```

#### **✅ Image Checklist**

Before submitting your blog post:

- [ ] Banner image created (1200x630px, <500KB)
- [ ] Author image uploaded (400x400px, <200KB)
- [ ] All images placed in correct directories
- [ ] Image paths updated in frontmatter
- [ ] Alt text provided for accessibility
- [ ] Images tested locally with `hugo server -D`
- [ ] File names follow naming conventions
- [ ] No special characters or spaces in file names

## Featured Content

### Recent Blog Posts

Browse our [blog section](/blogs/) to see recent contributions and get inspiration for your own posts.

### Getting Started

New to Hugo or our platform? Check out our [Getting Started guide](/blogs/getting-started-with-hugo-contributions/) for a comprehensive walkthrough.

## Content Categories

We welcome posts in these areas:

- **AI & Machine Learning**
- **Agentic AI**
- **MCPs**
- **Generative AI**
- **Cloud Computing** 
- **Enterprise IT**
- **Web Development**
- **Full Stack**
- **Cloud Native Solutions**
- **Cybersecurity**
- **Compliance & Risk Management**
- **DevOps**
- **Data Science && Analytics**
- **UI/UX Design**

## Contributor Resources

- **[Blog Posts](/blogs/)** - All published content
- **Style Guide** - Writing and formatting standards
- **Templates** - Pre-configured archetypes


## Contact

Questions about contributing? Reach out to our team:

- **Email**: info@frankmaxdigital.com
- **GitHub**: Submit issues for technical problems
- **LinkedIn**: [FrankMax Digital](https://linkedin.com/company/frankmaxdigital)

---

*Ready to share your expertise? Start by reading our [Contributing Guide](CONTRIBUTING.md) and create your first blog post!*