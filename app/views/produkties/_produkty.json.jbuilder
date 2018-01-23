json.extract! produkty, :id, :ID_PROD, :NAZWA, :CENA, :CZAS_PRZYG, :created_at, :updated_at
json.url produkty_url(produkty, format: :json)
