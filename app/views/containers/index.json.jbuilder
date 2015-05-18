json.array!(@containers) do |container|
  json.extract! container, :id, :description, :volume_ml, :refillable, :last_refill_date, :expiration_date, :empty
  json.url container_url(container, format: :json)
end
