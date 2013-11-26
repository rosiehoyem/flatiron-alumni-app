json.array!(@forums) do |forum|
  json.extract! forum, 
  json.url forum_url(forum, format: :json)
end
