json.array!(@eklabus) do |eklabus|
  json.extract! eklabus, :id, :name, :address
  json.url eklabus_url(eklabus, format: :json)
end
