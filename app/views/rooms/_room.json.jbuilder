json.extract! room, :id, :type, :number_total, :number_avaliable, :created_at, :updated_at
json.url room_url(room, format: :json)
