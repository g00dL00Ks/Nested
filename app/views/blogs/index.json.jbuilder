json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :content, :look, :feel, :be, :author
  json.url blog_url(blog, format: :json)
end
