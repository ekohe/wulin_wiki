require "rails"

module WulinWiki
  class Engine < Rails::Engine
    initializer "add assets to precompile" do |app|
       app.config.assets.precompile += %w( wiki.js wiki.css )
    end
  end
end