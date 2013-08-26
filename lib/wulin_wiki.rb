require "wulin_wiki/version"
require 'rails_kindeditor'
require 'wulin_wiki/rails_kindeditor'

module WulinWiki;end

require 'wulin_wiki/engine' if defined? Rails
require 'wulin_wiki/wulin_master' if defined? WulinMaster