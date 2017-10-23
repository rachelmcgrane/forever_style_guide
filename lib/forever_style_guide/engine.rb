module ForeverStyleGuide
  class Engine < Rails::Engine
    initializer 'hello_world.assets.precompile' do |app|
      %w(stylesheets).each do |sub|
        app.config.assets.paths << root.join('assets', sub).to_s
      end
    end
  end
end
