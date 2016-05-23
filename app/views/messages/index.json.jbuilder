json.array!(@messages) do |message|
  json.extract! message, :id, :thread, :content, :user_id
  json.url message_url(message, format: :json)
end
