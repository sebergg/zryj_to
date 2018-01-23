json.extract! restauracje, :id, :ID_REST, :NAZWA, :ID_OBSZARU, :ULICA, :NUMER_LOKALU, :KOD_POCZTOWY, :created_at, :updated_at
json.url restauracje_url(restauracje, format: :json)
