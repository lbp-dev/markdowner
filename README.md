# Markdowner

Simple rails gem to use Markdown files in your views.

## Usage

After installing the gem you can create and use markdown files in your view folders. The markdown files are rendered as html using the redcarpet gem.

### Syntax Highlighting

Markdowner comes with the [prismjs](https://prismjs.com/) library for syntax highlighting. You're free to use any other library you like, just skip this section and include your own.

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
