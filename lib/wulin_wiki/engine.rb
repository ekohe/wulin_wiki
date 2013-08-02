require "rails"

module WulinWiki
  class Engine < Rails::Engine
    initializer "add assets to precompile" do |app|
       app.config.assets.precompile += %w( wiki.js kindeditor.js en.js link/link.js wiki.css default/default.css wiki.png kindedior/background.png kindedior/default.png)
    end
  end
end