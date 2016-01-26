json.array!(@multa) do |multum|
  json.extract! multum, :id, :id_multa, :total_multa
  json.url multum_url(multum, format: :json)
end
