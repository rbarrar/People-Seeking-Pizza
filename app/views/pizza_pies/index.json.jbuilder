json.array!(@pizza_pies) do |pizza_py|
  json.extract! pizza_py, :id
  json.url pizza_py_url(pizza_py, format: :json)
end
