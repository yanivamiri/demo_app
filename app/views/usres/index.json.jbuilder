json.array!(@usres) do |usre|
  json.extract! usre, :name, :email
  json.url usre_url(usre, format: :json)
end