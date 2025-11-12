# Contributing to FrankMax Digital Blog

Welcome to the FrankMax Digital Blog contributor platform! This guide will help you contribute high-quality blog posts to our publication.

## Table of Contents

- [Getting Started](#getting-started)
- [Setting Up Your Environment](#setting-up-your-environment)
- [Creating Blog Posts](#creating-blog-posts)
- [Content Guidelines](#content-guidelines)
- [Submission Process](#submission-process)
- [Style Guide](#style-guide)
- [Technical Requirements](#technical-requirements)

## Getting Started

### Prerequisites

- Hugo (latest version)
- Git
- Text editor or IDE
- Basic Markdown knowledge
- Understanding of our brand and content themes

### Installation

1. **Install Hugo**:
   ```bash
   # Windows (using Chocolatey)
   choco install hugo-extended
   
   # macOS (using Homebrew)
   brew install hugo
   
   # Linux (Ubuntu/Debian)
   sudo apt install hugo
   ```

2. **Clone the repository**:
   ```bash
   git clone [repository-url]
   cd contributor-blog-hugo
   ```

3. **Install dependencies** (if any):
   ```bash
   npm install  # if package.json exists
   ```

## Setting Up Your Environment

1. **Start the development server**:
   ```bash
   hugo server -D
   ```

2. **Open your browser** to `http://localhost:1313`

3. **Verify the setup** by checking that the site loads correctly

## Creating Blog Posts

### Using the Blog Archetype

Create a new blog post using our pre-configured template:

```bash
hugo new blogs/your-blog-title.md
```

This creates a file at `content/blogs/your-blog-title.md` with all required frontmatter.

### Frontmatter Reference

```yaml
---
title: "Your Blog Post Title"
date: 2024-01-15T10:00:00Z
draft: true  # Set to false when ready to publish
description: "Brief summary (2-3 sentences)"
meta:
  title: ""  # SEO title override (optional)
  keywords: "keyword1, keyword2, keyword3"
  author: "Your Name"
categories: ["Category1", "Category2"]  # See available categories below
banner: 
  image: "images/articles/blogs/your-image.jpg"
  alt_text: "Descriptive alt text"
tags: ["tag1", "tag2", "tag3"]
blog_no: ""  # Will be assigned by editors
author: 
  name: "Your Full Name"
  bio: "Brief professional biography"
  image: "images/authors/your-name.jpg"
  social:
    linkedin: "your-linkedin-username"
    twitter: "your-twitter-handle"
    github: "your-github-username"
seo:
  canonical_url: ""  # If reposting from another site
  meta_description: "SEO-optimized description"
featured: false  # Editors may set to true
reading_time: "X min read"  # Estimate based on content
---
```

### Available Categories

Choose appropriate categories from:

- **AI & Machine Learning**
- **Cloud Computing**
- **Enterprise IT**
- **Web Development**
- **Mobile Development**
- **Cybersecurity**
- **DevOps**
- **Data Analytics**
- **UI/UX Design**
- **Digital Marketing**
- **Project Management**
- **Industry Insights**

## Content Guidelines

### Content Themes

We focus on content that:

- Provides practical, actionable insights
- Shares technical expertise and best practices
- Discusses industry trends and innovations
- Offers case studies and real-world examples
- Helps businesses solve technology challenges

### Writing Style

- **Professional yet approachable** tone
- **Clear and concise** language
- **Well-structured** with proper headings
- **Evidence-based** with credible sources
- **Original content** (no plagiarism)

### Content Structure

1. **Introduction** (2-3 paragraphs)
   - Hook the reader
   - Outline what they'll learn
   - Provide context

2. **Main Content** (multiple sections)
   - Use H2 and H3 headings
   - Include subheadings for scanability
   - Add bullet points and numbered lists
   - Include code examples when relevant

3. **Conclusion** (1-2 paragraphs)
   - Summarize key points
   - Provide actionable next steps
   - Include call-to-action if appropriate

### Technical Content

- **Code examples**: Use proper syntax highlighting
- **Screenshots**: Include descriptive captions
- **Diagrams**: Use consistent styling
- **Links**: Verify all external links work
- **References**: Cite sources appropriately

## Submission Process

### 1. Content Creation

- Write your blog post following the guidelines
- Add images to `static/images/articles/blogs/[post-name]/`
- Test locally using `hugo server -D`

### 2. Quality Check

Before submission, verify:

- [ ] All frontmatter fields are complete
- [ ] Images have appropriate alt text
- [ ] Links are functional
- [ ] Content is proofread
- [ ] Code examples are tested
- [ ] SEO elements are optimized

### 3. Submission

1. **Create a pull request** with your changes
2. **Include a brief description** of your post
3. **Tag relevant reviewers**
4. **Respond to feedback** promptly

### 4. Review Process

- Initial review within 2-3 business days
- Editorial feedback and suggestions
- Technical review for accuracy
- Final approval and publishing

## Style Guide

### Headings

```markdown
# H1 - Page Title (avoid in content)
## H2 - Main Sections
### H3 - Subsections
#### H4 - Detail Points (use sparingly)
```

### Code Blocks

```markdown
    ```language
    your code here
    ```
```

Supported languages: `javascript`, `python`, `bash`, `yaml`, `json`, `html`, `css`, `sql`, etc.

### Images

```markdown
![Alt text describing the image](images/articles/blogs/post-name/image.jpg)
```

### Links

```markdown
[Link text](https://example.com)
[Internal link](../other-post/)
```

### Emphasis

```markdown
**Bold text** for strong emphasis
*Italic text* for subtle emphasis
`Inline code` for technical terms
```

## Technical Requirements

### Image Specifications

- **Format**: JPG or PNG
- **Size**: Minimum 800px width
- **Quality**: High resolution, web-optimized
- **File size**: Under 500KB when possible
- **Banner images**: 1200x630px recommended

### File Naming

- **Blog files**: lowercase, hyphen-separated
- **Image files**: descriptive, lowercase, hyphen-separated
- **Author images**: author-full-name.jpg

### Directory Structure

```
content/blogs/
├── your-post-title.md
└── another-post.md

static/images/
├── articles/blogs/
│   ├── your-post-title/
│   │   ├── banner.jpg
│   │   └── diagram.png
│   └── another-post/
│       └── screenshot.jpg
└── authors/
    └── your-name.jpg
```

## Best Practices

### SEO Optimization

- Include target keywords naturally in content
- Write compelling meta descriptions
- Use descriptive headings and subheadings
- Optimize images with alt text
- Include internal and external links

### Performance

- Optimize image file sizes
- Use appropriate image formats
- Minimize use of external resources
- Test page load times locally

### Accessibility

- Use semantic HTML elements
- Provide alt text for all images
- Ensure good color contrast
- Use descriptive link text

## Common Issues and Solutions

### Hugo Server Not Starting

```bash
# Check Hugo version
hugo version

# Clear cache and restart
rm -rf public/ resources/
hugo server -D --disableFastRender
```

### Images Not Displaying

- Verify file paths are correct
- Check file extensions (case-sensitive)
- Ensure images are in `static/` directory
- Restart Hugo server after adding images

### Frontmatter Errors

- Validate YAML syntax
- Check for proper indentation
- Ensure dates are in ISO format
- Verify all required fields are present

## Getting Help

### Resources

- [Hugo Documentation](https://gohugo.io/documentation/)
- [Markdown Guide](https://www.markdownguide.org/)
- [YAML Syntax](https://yaml.org/spec/1.2/spec.html)

### Support Channels

1. **GitHub Issues**: Technical problems
2. **Email**: content@frankmaxdigital.com
3. **Team Chat**: Internal contributors only

## Content Calendar and Deadlines

- **Draft submission**: At least 1 week before desired publication
- **Review cycle**: 3-5 business days
- **Publication schedule**: Weekly on Tuesdays and Thursdays

## Recognition and Attribution

All contributors will receive:

- Author bio and social links on published posts
- Recognition in our contributor newsletter
- LinkedIn recommendations upon request
- Portfolio pieces for professional use

---

Thank you for contributing to the FrankMax Digital blog! Your expertise and insights help our community grow and learn together.