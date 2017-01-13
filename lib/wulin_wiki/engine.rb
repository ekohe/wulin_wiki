require "rails"

module WulinWiki
  class Engine < Rails::Engine
    initializer "add assets to precompile" do |app|
       app.config.assets.precompile += %w( wulin_wiki.js kindeditor.js en.js wulin_wiki.css wiki.png)
    end

    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end
  end
end
