json.extract! buyer, :id, :buyer_name, :buyer_phone, :buyer_township, :buyer_address, :created_at, :updated_at
json.url buyer_url(buyer, format: :json)