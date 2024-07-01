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

    initializer "markdowner.assets.precompile" do |app|
      app.config.assets.precompile += %w[markdowner/prism.js markdowner/prism.css]
    end

    # Add the vendor directory to the load path
    config.autoload_paths += %W[#{config.root}/vendor]
  end
end
