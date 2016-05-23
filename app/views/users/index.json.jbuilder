json.array!(@users) do |user|
  json.extract! user, :id, :name, :nickname, :mail
  json.url user_url(user, format: :json)
end
