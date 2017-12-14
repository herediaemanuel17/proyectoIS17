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

ActiveRecord::Schema.define(version: 20171214160751) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  create_table "complaint_rans", force: :cascade do |t|
    t.string "motivo"
    t.integer "remarkan_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "complaint_rqs", force: :cascade do |t|
    t.string "motivo"
    t.integer "remarkq_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels_questions", force: :cascade do |t|
    t.integer "label_id"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["label_id"], name: "index_labels_questions_on_label_id"
    t.index ["question_id"], name: "index_labels_questions_on_question_id"
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
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "last_name"
    t.string "foto_de_perfil"
    t.integer "Univercity_id"
    t.integer "Permit_id"
    t.integer "puntos", default: 1, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
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
