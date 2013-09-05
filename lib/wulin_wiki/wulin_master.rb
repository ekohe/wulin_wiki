if defined? WulinMaster
  WulinMaster::Grid.add_default_action "wiki"
  WulinMaster::add_javascript 'wulin_wiki.js'
  WulinMaster::add_stylesheet 'wulin_wiki.css'
else
  raise 'WulinMaster gem is missing!'
end