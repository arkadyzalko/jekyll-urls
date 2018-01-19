# Jekyll URLs
Better way to get page urls

## Installation
```
gem install jekyll-urls
```
or add it to your `Gemfile`:
```
gem 'jekyll-urls'
```

## Usage

Require the gem in `plugins/ext.rb`
```
require 'jekyll-urls'
```

Or require the gems in the configuration
```
plugins: ['jekyll-urls']
```

## Example
Add an `id` on your page
```html
---
id: home
permalink: home/index.html
---
```

Home page will be accessible by id on `site.urls`
```html
<a href="{{ site.urls.home }}">Home</a>
```

Result:
```html
<a href="home/index.html">Home</a>
```
