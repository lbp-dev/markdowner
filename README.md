# Markdowner

Enable Markdown files in your `app/views/` directory.

## Usage

After installing the gem you can create and use markdown files in your view folders.

- Markdown files are rendered as HTML using the [redcarpet](https://github.com/vmg/redcarpet) gem.

### Syntax Highlighting

- Markdowner allows you to opt in to the [prismjs](https://prismjs.com/) library for syntax highlighting.

  - You're free to use any other library instead, just skip this section and use your preferred
    syntax highlighter.

  - To enable it add the following to your layout.

```language-erb
 <%= stylesheet_link_tag 'markdowner/prism', media: 'all' %>
 <%= javascript_include_tag 'markdowner/prism' %>
```

- Update your `manifest.json`

```json
//= link markdowner/prism.css
//= link markdowner/prism.js

```

Then in your markdown file you can use the following syntax for code blocks.

````markdown
```language-ruby
your code here
```
````

<img width="656" alt="image" src="https://github.com/lbp-dev/markdowner/assets/148717241/090a0795-4841-4a5a-8ed6-66f77987c9ab">

## Installation

Add this line to your application's Gemfile:

```ruby
gem "markdowner"
```

And then execute:

```bash
bundle
```

Or install it yourself as:

```bash
gem install markdowner
```

## Contributing

Contribution directions go here.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
