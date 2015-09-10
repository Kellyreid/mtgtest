# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Metacard.create!(name: 'Snapcaster Mage',
#                mana_cost: '1U',
#                power:2,
#                toughness:1,
#                converted_mana_cost: 2,
#                type_line: 'Creature - Human Wizard',
#                rules_text:'Clap along if you think snappyness is for you',
#                notes: 'sold a playset for 45 each'
#                )

#   a transaction is a change in quantity of an asset.
#   a transaction has a partner and a channel (which can be the same)
#   to determine where the cards came from or went.
#   a transaction has a currency which can be a global soveregin (usd, gbp, etc),
#   virtual (btc,tix), mtg (store credit, trade)




Transaction.create!(
                partner:'No one',
                volume:8,
                asset_id:'Jace, the Mind Sculptor',
                notes:'its sooo long....',
                channel:'adventureson',
                partner_trade_id:2,
                currency:'usd',
                price: 4.99,
                owner_id:11
)
# rails destroy scaffold transaction
# rails generate scaffold transaction partner:string asset_id:integer volume:integer price:decimal channel:string notes:text type:string partner_trade_id:integer currency:string