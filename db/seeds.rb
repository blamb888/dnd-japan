# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

url = "https://www.dnd5eapi.co/api/spells"
json = open(url).read
objs = JSON.parse(json)

puts "Testing...#{objs["results"][1]["name"]} in the API. Did not create the spell yet."
puts "Testing...#{objs["results"][2]["name"]} in the API. Did not create the spell yet."
puts "Cleaning up db"
Spell.destroy_all
puts "Db is clean"


# Magic Items

url = "https://www.dnd5eapi.co/api/magic-items"
json = open(url).read
objs = JSON.parse(json)

# TO Create Spells. TODO Take a good look at the old project and make sure these are all
# accessed the right way
# 319.times do |key|
#   key + 1
#   url2 = "https://www.dnd5eapi.co#{objs["results"][key]["url"]}"
#   json2 = open(url2).read
#   objs2 = JSON.parse(json2)
#   damage_name = objs2.dig("damage", "damage_type", "name")
#   school = objs2.dig("school", "name")
#   classes = objs2["classes"].pluck("name")[0]
#   subclasses = objs2["subclasses"].pluck("name")[0]
#   puts classes
#   spell = Spell.create!(
#     name: "#{objs["results"][key]["name"]}",
#     desc: "#{objs2["desc"][0]}",
#     higher_level: "#{objs2["higher_level"]}",
#     range: "#{objs2["range"]}",
#     components: "#{objs2["components"][0]}",
#     material: "#{objs2["material"]}",
#     ritual: "#{objs2["ritual"]}",
#     duration: "#{objs2["duration"]}",
#     concentration: "#{objs2["concentration"]}",
#     casting_time: "#{objs2["casting_time"]}",
#     level: "#{objs2["level"]}",
#     attack_type: "#{objs2["attack_type"]}",
#     damage_type: "#{damage_name}",
#     school: "#{school}",
#     classes: "#{classes}",
#     subclasses: "#{subclasses}"
#     )
#   puts "#{spell.name} created!"
# end

# puts "#{Spell.count} spells created!"
