require_relative "handlers/markdown_handler"

module Markdowner
  class Engine < ::Rails::Engine
    isolate_namespace Markdowner

    initializer "markdowner.markdown_handler" do |app|
      ActionView::Template.register_template_handler(
        :md,
        Markdowner::Handlers::MarkdownHandler.new
      )
    end
  end
end
