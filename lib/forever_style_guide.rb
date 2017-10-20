require "forever_style_guide/version"

module ForeverStyleGuide
  class << self
    # Inspired by Bootstrap Sass
    def load!
      configure_sass
    end

    # Paths
    def gem_path
      @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
    end

    def stylesheets_path
      File.join assets_path, 'stylesheets'
    end

    def assets_path
      @assets_path ||= File.join gem_path, 'assets'
    end

    private

    def configure_sass
      require 'sass'

      ::Sass.load_paths << stylesheets_path
    end
  end
end
