class AddManaCostToCard < ActiveRecord::Migration
  def change
    add_column :cards, :mana_cost, :string
  end
end
