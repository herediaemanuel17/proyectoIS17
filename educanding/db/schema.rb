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

ActiveRecord::Schema.define(version: 20171106173611) do

  create_table "answers", force: :cascade do |t|
    t.string "descripcion"
    t.integer "User_id"
    t.integer "Question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "complaint_ans", force: :cascade do |t|
    t.string "motivo"
    t.integer "Answer_id"
    t.integer "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "complaint_qs", force: :cascade do |t|
    t.string "motivo"
    t.integer "Question_id"
    t.integer "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permits", force: :cascade do |t|
    t.string "acciones"
    t.integer "puntos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "descripcion"
    t.string "titulo"
    t.integer "User_id"
    t.integer "Univercity_id"
    t.integer "Label_id"
    t.integer "Resc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "remark_ans", force: :cascade do |t|
    t.string "descripcion"
    t.integer "Answer_id"
    t.integer "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "remark_qs", force: :cascade do |t|
    t.string "descripcion"
    t.integer "Question_id"
    t.integer "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "univercities", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.string "pais"
    t.integer "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "foto_de_perfil"
    t.integer "puntos"
    t.string "email"
    t.string "password"
    t.integer "Univercity_id"
    t.integer "Permit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vote_ans", force: :cascade do |t|
    t.boolean "positivo"
    t.integer "User_id"
    t.integer "Answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vote_qs", force: :cascade do |t|
    t.boolean "positivo"
    t.integer "User_id"
    t.integer "Question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
