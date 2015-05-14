# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

STATE_LIST = "#{File.dirname(__FILE__)}/states"
state_file = File.new(STATE_LIST)

puts "Created states: "
state_file.each_line do |st|
  name, abbrev = st.chomp.split("-")
  this_state = State.create(name: name, abbreviation: abbrev)
  print [this_state.name, this_state.abbreviation, " "].join(" ")
end

# states = State.create