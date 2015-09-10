json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :partner, :asset_id, :volume, :price, :channel, :notes, :type, :partner_trade_id, :currency
  json.url transaction_url(transaction, format: :json)
end
