json.extract! pracownicy, :id, :ID_PRACOWNIKA, :ID_REST, :ID_TYPU, :IMIE, :NAZWISKO, :ZAROBKI, :created_at, :updated_at
json.url pracownicy_url(pracownicy, format: :json)
