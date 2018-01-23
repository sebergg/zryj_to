# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171119165228) do

  create_table "Restauracje_Obszary", id: false, force: :cascade do |t|
    t.integer "Restauracje_id"
    t.integer "Obszary_id"
  end

  add_index "Restauracje_Obszary", ["Obszary_id"], name: "index_Restauracje_Obszary_on_Obszary_id"
  add_index "Restauracje_Obszary", ["Restauracje_id"], name: "index_Restauracje_Obszary_on_Restauracje_id"

  create_table "kliencis", force: :cascade do |t|
    t.integer  "ID_KLIENTA"
    t.string   "IMIE"
    t.string   "NAZWISKO"
    t.string   "ULICA"
    t.string   "KOD_POCZTOWY"
    t.string   "NUMER_LOKALU"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "obszaries", force: :cascade do |t|
    t.integer  "ID_OBSZARU"
    t.string   "NAZWA_OBSZARU"
    t.integer  "ID_ULICY"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "pracownicies", force: :cascade do |t|
    t.integer  "ID_PRACOWNIKA"
    t.integer  "ID_REST"
    t.integer  "ID_TYPU"
    t.string   "IMIE"
    t.string   "NAZWISKO"
    t.integer  "ZAROBKI"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "produkties", force: :cascade do |t|
    t.integer  "ID_PROD"
    t.string   "NAZWA"
    t.float    "CENA"
    t.integer  "CZAS_PRZYG"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produkty_na_zamowienius", force: :cascade do |t|
    t.integer  "ID_ZAMOWIENIA"
    t.integer  "ID_PROD"
    t.integer  "LICZBA_SZTUK"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "restauracjes", force: :cascade do |t|
    t.integer  "ID_REST"
    t.string   "NAZWA"
    t.integer  "ID_OBSZARU"
    t.string   "ULICA"
    t.string   "NUMER_LOKALU"
    t.string   "KOD_POCZTOWY"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "typy_pracownikas", force: :cascade do |t|
    t.integer  "ID_TYPU"
    t.string   "NAZWA_TYPU"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ulices", force: :cascade do |t|
    t.integer  "ID_ULICY"
    t.string   "ULICA"
    t.string   "KOD_POCZTOWY"
    t.string   "NUMER_LOKALU"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "zamowienia", force: :cascade do |t|
    t.integer  "ID_ZAMOWIENIA"
    t.integer  "ID_KLIENTA"
    t.integer  "ID_PRACOWNIKA"
    t.integer  "CZAS_REALIZACJI"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
