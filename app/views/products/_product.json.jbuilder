json.extract! product, :id, :type, :brand, :model, :variant, :price, :sdescription, :ldescription, :created_at, :updated_at
json.url product_url(product, format: :json)
