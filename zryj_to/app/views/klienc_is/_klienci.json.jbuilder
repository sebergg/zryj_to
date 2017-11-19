json.extract! klienci, :id, :ID_KLIENTA, :IMIE, :NAZWISKO, :ULICA, :KOD_POCZTOWY, :NUMER_LOKALU, :created_at, :updated_at
json.url klienci_url(klienci, format: :json)
