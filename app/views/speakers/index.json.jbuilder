json.array!(@speakers) do |speaker|
  json.extract! speaker, :id, :name, :sector, :description, :phone, :email
  json.url speaker_url(speaker, format: :json)
end
