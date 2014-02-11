json.array!(@users) do |user|
  json.extract! user, :name, :pokername, :rank, :email
  json.url user_url(user, format: :json)
end