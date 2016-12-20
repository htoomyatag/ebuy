json.extract! message, :id, :body, :conversation_code, :conversation_id, :buyer_id, :created_at, :updated_at
json.url message_url(message, format: :json)