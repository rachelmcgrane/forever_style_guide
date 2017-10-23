module ForeverStyleGuide
  class Engine < Rails::Engine
    initializer 'forever_style_guide.assets.precompile' do |app|
      %w(stylesheets).each do |sub|
        app.config.assets.paths << root.join('assets', sub).to_s
      end
    end
  end
end
