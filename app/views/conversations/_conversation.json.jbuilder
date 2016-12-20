json.extract! conversation, :id, :sender_id, :recipient_id, :created_at, :updated_at
json.url conversation_url(conversation, format: :json)