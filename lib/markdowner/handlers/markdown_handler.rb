require "redcarpet"

module Markdowner
  module Handlers
    class MarkdownHandler
      def call(template, source)
        markdown = ::Redcarpet::Markdown.new(
          Redcarpet::Render::HTML,
          autolink: true,
          tables: true,
          fenced_code_blocks: true,
          underline: true,
          highlight: true,
          quote: true,
          footnotes: true,
          no_styles: true,
          hard_wrap: true,
          prettify: true,
          safe_links_only: true,
          no_intra_emphasis: true,
          strikethrough: true,
          superscript: true,
          lax_spacing: true,
          space_after_headers: true
        )
        "#{markdown.render(source).inspect}.html_safe"
      end
    end
  end
end
