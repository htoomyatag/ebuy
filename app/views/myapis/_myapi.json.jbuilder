json.extract! myapi, :id, :created_at, :updated_at
json.url myapi_url(myapi, format: :json)