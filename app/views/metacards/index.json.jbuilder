json.array!(@metacards) do |metacard|
  json.extract! metacard, :id, :name, :rules_text, :mana_cost, :converted_mana_cost, :power, :toughness, :loyalty, :type_line
  json.url metacard_url(metacard, format: :json)
end
