require "rails"

module WulinWiki
  class Engine < Rails::Engine
    initializer "add assets to precompile" do |app|
       app.config.assets.precompile += %w( wiki.js kindeditor.js en.js wiki.css wiki.png)
    end
  end
end