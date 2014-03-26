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

ActiveRecord::Schema.define(version: 20140325215437) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "audios", force: true do |t|
    t.string   "titulo"
    t.string   "audio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comunicados", force: true do |t|
    t.string   "titulo"
    t.text     "contenido"
    t.date     "fecha"
    t.string   "pdf"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contactos", force: true do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "telefono"
    t.text     "mensaje"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "convenios", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directivos", force: true do |t|
    t.string   "nombre"
    t.string   "cargo"
    t.string   "foto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eventos", force: true do |t|
    t.string   "titulo"
    t.string   "lugar"
    t.date     "fecha"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "socio_id"
  end

  create_table "formatos", force: true do |t|
    t.string   "pdf"
    t.string   "titulo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fotografias", force: true do |t|
    t.string   "fotografia"
    t.integer  "socio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "imagenes", force: true do |t|
    t.string   "imagen"
    t.integer  "noticia_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "informaciones", force: true do |t|
    t.string   "titulo"
    t.string   "foto"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "noticias", force: true do |t|
    t.string   "titulo"
    t.date     "fecha"
    t.string   "imagen"
    t.text     "contenido"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "preguntas", force: true do |t|
    t.string   "pregunta"
    t.text     "respuesta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slides", force: true do |t|
    t.string   "imagen"
    t.string   "titulo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "socios", force: true do |t|
    t.string   "nombre"
    t.text     "contenido"
    t.string   "fotografia"
    t.string   "web"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "soundcloud"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "socios", ["email"], name: "index_socios_on_email", unique: true, using: :btree
  add_index "socios", ["reset_password_token"], name: "index_socios_on_reset_password_token", unique: true, using: :btree

  create_table "temas", force: true do |t|
    t.string   "titulo"
    t.date     "ano"
    t.string   "duracion"
    t.string   "formato"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "autor"
  end

  create_table "temas_no_registrados", force: true do |t|
    t.string   "titulo"
    t.string   "autor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ubicaciones", force: true do |t|
    t.float    "lat"
    t.float    "lng"
    t.string   "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
