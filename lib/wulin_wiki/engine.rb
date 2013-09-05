require "rails"

module WulinWiki
  class Engine < Rails::Engine
    initializer "add assets to precompile" do |app|
       app.config.assets.precompile += %w( wulin_wiki.js kindeditor.js en.js wulin_wiki.css wiki.png)
    end
  end
end