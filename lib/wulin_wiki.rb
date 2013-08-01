require "wulin_wiki/version"

module WulinWiki
end

require 'wulin_wiki/engine' if defined? Rails
require 'wulin_wiki/wulin_master' if defined? WulinMaster