# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Metacard.create!(name: 'Snapcaster Mage',
                mana_cost: '1U',
                power:2,
                toughness:1,
                converted_mana_cost: 2,
                type_line: 'Creature - Human Wizard',
                rules_text:'Clap along if you think snappyness is for you'
                )
