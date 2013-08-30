if defined? WulinMaster
  WulinMaster::Grid.add_default_action "wiki"
  WulinMaster::add_javascript 'wiki.js'
  WulinMaster::add_javascript 'screen_wiki.js'
  WulinMaster::add_stylesheet 'wiki.css'
else
  raise 'WulinMaster gem is missing!'
end