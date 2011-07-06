unless gollum_path = ENV["GOLLUM_PATH"]
  puts "set GOLLUM_PATH"
  exit!
end

require 'gollum/frontend/app'
Precious::App.set(:gollum_path, gollum_path)
Precious::App.set(:wiki_options, {})

run Precious::App
