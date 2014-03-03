json.array!(@bookreviews) do |bookreview|
  json.extract! bookreview, :id, :rating, :summary, :details
  json.url bookreview_url(bookreview, format: :json)
end
