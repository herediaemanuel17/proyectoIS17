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

ActiveRecord::Schema.define(version: 20171101185951) do

  create_table "comentariops", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comentariors", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etiqueta", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pregunta", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "respuesta", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universidads", force: :cascade do |t|
    t.string "nombre_de_facultad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "reputacion"
    t.string "foto_de_perfil"
    t.string "tipo"
    t.string "email"
    t.string "contraseña"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votops", force: :cascade do |t|
    t.string "tipodevoto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votors", force: :cascade do |t|
    t.string "tipodevoto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
