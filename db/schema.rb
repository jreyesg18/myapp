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

ActiveRecord::Schema.define(version: 2022_12_12_150555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "concursos", force: :cascade do |t|
    t.string "cargo"
    t.integer "vacante"
    t.date "finicio"
    t.date "ftermino"
    t.text "descripcion"
    t.string "contrato"
    t.string "jornada"
    t.text "requisito"
    t.integer "eminima"
    t.string "estudio"
    t.string "dcomputacional"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "area_id"
  end

  create_table "postulations", force: :cascade do |t|
    t.string "eleccion"
    t.integer "pr1"
    t.integer "pr2"
    t.integer "pr3"
    t.integer "pr4"
    t.integer "pr5"
    t.integer "pr6"
    t.integer "pr7"
    t.integer "pr8"
    t.integer "pr9"
    t.integer "pr10"
    t.integer "pr11"
    t.integer "pr12"
    t.integer "pr13"
    t.integer "pr14"
    t.integer "pr15"
    t.integer "pr16"
    t.integer "pr17"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "concurso_id"
    t.string "document_file_name"
    t.string "document_content_type"
    t.integer "document_file_size"
    t.datetime "document_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nombre"
    t.string "apellidom"
    t.string "apellidop"
    t.string "rut"
    t.string "cargo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
