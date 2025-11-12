# FrankMax Digital - Blog Contributor Platform

A Hugo-powered platform for external contributors to create and submit blog posts for the FrankMax Digital publication.

## 🚀 Quick Start

### Prerequisites

- [Hugo](https://gohugo.io/getting-started/installing/) (latest version)
- [Git](https://git-scm.com/downloads)
- Text editor or IDE

### Setup

1. **Clone the repository**:
   ```bash
   git clone [repository-url]
   cd contributor-blog-hugo
   ```

2. **Start the development server**:
   ```bash
   hugo server -D
   ```

3. **Open your browser** to `http://localhost:1313`

## 📝 Creating Content

### Create a New Blog Post

```bash
hugo new blogs/your-blog-title.md
```

This uses our pre-configured archetype with all necessary frontmatter fields.

### Frontmatter Structure

```yaml
---
title: "Your Blog Post Title"
date: 2024-01-15T10:00:00Z
draft: true
description: "Brief summary of the post"
meta:
  title: "SEO title override"
  keywords: "keyword1, keyword2, keyword3"
  author: "Your Name"
categories: ["Category1", "Category2"]
banner: 
  image: "images/articles/blogs/your-image.jpg"
  alt_text: "Image description"
tags: ["tag1", "tag2"]
blog_no: "B001"
author: 
  name: "Your Full Name"
  bio: "Brief biography"
  image: "images/authors/your-name.jpg"
  social:
    linkedin: "username"
    twitter: "handle"
    github: "username"
---
```

## 📁 Project Structure

```
├── archetypes/
│   └── blogs.md              # Blog post template
├── content/
│   ├── _index.md             # Homepage content
│   ├── about.md              # About page
│   └── blogs/                # Blog posts directory
├── layouts/
│   ├── _default/
│   │   └── baseof.html       # Base template
│   └── blogs/
│       ├── list.html         # Blog list page
│       └── single.html       # Individual blog page
├── static/
│   └── images/
│       ├── articles/blogs/   # Blog post images
│       └── authors/          # Author profile images
├── config.toml               # Hugo configuration
├── CONTRIBUTING.md           # Contributor guide
└── README.md                 # This file
```

## 📋 Content Guidelines

### Categories

Choose from these predefined categories:

- AI & Machine Learning
- Cloud Computing
- Enterprise IT
- Web Development
- Mobile Development
- Cybersecurity
- DevOps
- Data Analytics
- UI/UX Design
- Digital Marketing
- Project Management
- Industry Insights

### Writing Standards

- **Professional tone**: Clear, engaging, and informative
- **Structured content**: Use headings, bullet points, and code blocks
- **Original insights**: Provide unique perspectives and actionable advice
- **Technical accuracy**: Ensure all code examples and technical details are correct
- **SEO optimization**: Include relevant keywords and meta descriptions

## 🖼️ Image Guidelines

### File Organization

```
static/images/articles/blogs/[post-name]/
├── banner.jpg                # Main banner image (1200x630px)
├── diagram.png               # Supporting diagrams
└── screenshot.jpg            # Screenshots and examples
```

### Specifications

- **Format**: JPG or PNG
- **Banner images**: 1200x630px recommended
- **File size**: Under 500KB when possible
- **Alt text**: Always include descriptive alt text

## 🔧 Development Commands

### Local Development

```bash
# Start development server with drafts
hugo server -D

# Start server on specific port
hugo server -D -p 1314

# Clear cache and restart
rm -rf public/ resources/
hugo server -D --disableFastRender
```

### Building for Production

```bash
# Build static site
hugo

# Build with minification
hugo --minify
```

## 📚 Available Content Types

### Blog Posts

Full-featured blog posts with:
- Author profiles and bios
- Category and tag organization
- SEO optimization
- Social sharing metadata
- Reading time estimates

### Static Pages

- Homepage with contributor information
- About page explaining the platform
- Contributing guidelines and documentation

## 🎨 Customization

### Hugo Configuration

Key configuration options in `config.toml`:

```toml
# Site settings
baseURL = "http://localhost:1313"
title = "FrankMax Digital - Blog Contributions"

# Content organization
[permalinks]
  blogs = "/blogs/:slug/"

# Taxonomies
[taxonomies]
  category = "categories"
  tag = "tags"
  author = "authors"
```

### Theme Customization

The platform uses a custom theme with:
- Responsive design
- SEO optimization
- Clean, professional styling
- Author bio integration
- Category and tag display

## 🚀 Deployment

This is a contributor platform for content creation. Approved content will be published to the main FrankMax Digital blog.

### Local Testing

Always test your content locally before submission:

1. Start the development server: `hugo server -D`
2. Review your post at `http://localhost:1313/blogs/your-post-title/`
3. Check for formatting, images, and links
4. Verify metadata and SEO elements

## 📖 Documentation

- **[CONTRIBUTING.md](CONTRIBUTING.md)**: Complete contributor guide
- **[Hugo Documentation](https://gohugo.io/documentation/)**: Official Hugo docs
- **[Markdown Guide](https://www.markdownguide.org/)**: Markdown syntax reference

## 🤝 Contributing

1. **Read the guidelines**: Review [CONTRIBUTING.md](CONTRIBUTING.md)
2. **Create content**: Use the blog archetype to create your post
3. **Test locally**: Verify everything works as expected
4. **Submit for review**: Create a pull request with your changes
5. **Collaborate**: Work with our editorial team for final approval

## 📧 Support

### Getting Help

- **GitHub Issues**: Technical problems and bug reports
- **Email**: info@frankmaxdigital.com
- **Documentation**: Check CONTRIBUTING.md for detailed guidance

### Response Times

- **Email inquiries**: Within 24 hours (business days)
- **Pull request reviews**: 2-3 business days
- **Technical issues**: Within 48 hours

## 🏷️ Version Information

- **Hugo Version**: Latest stable
- **Theme**: Custom FrankMax theme
- **Last Updated**: January 2024

## 📄 License

This contributor platform is provided for creating content for FrankMax Digital. All submitted content will be reviewed and may be edited for publication.

## 🙏 Acknowledgments

Thank you to all contributors who share their expertise and insights with our community. Your knowledge helps businesses navigate the evolving technology landscape.

---

**Ready to contribute?** Start by reading our [Contributing Guide](CONTRIBUTING.md) and create your first blog post with `hugo new blogs/your-topic.md`!