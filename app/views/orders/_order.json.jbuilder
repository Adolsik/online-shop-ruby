json.extract! order, :id, :imie, :nazwisko, :miasto, :ulica, :kodpocztowy, :telefon, :created_at, :updated_at
json.url order_url(order, format: :json)
