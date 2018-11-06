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

ActiveRecord::Schema.define(version: 2018_11_05_210515) do

  create_table "diagnosticos", force: :cascade do |t|
    t.string "nome"
    t.integer "principal_fator_id"
    t.integer "secundario_fator_id"
    t.integer "terciario_fator_id"
    t.integer "principal_caracteristica_id"
    t.integer "secundaria_caracteristica_id"
    t.integer "terciaria_caracteristica_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["principal_caracteristica_id"], name: "index_diagnosticos_on_principal_caracteristica_id"
    t.index ["principal_fator_id"], name: "index_diagnosticos_on_principal_fator_id"
    t.index ["secundaria_caracteristica_id"], name: "index_diagnosticos_on_secundaria_caracteristica_id"
    t.index ["secundario_fator_id"], name: "index_diagnosticos_on_secundario_fator_id"
    t.index ["terciaria_caracteristica_id"], name: "index_diagnosticos_on_terciaria_caracteristica_id"
    t.index ["terciario_fator_id"], name: "index_diagnosticos_on_terciario_fator_id"
  end

  create_table "principal_caracteristicas", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "principal_fators", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "secundaria_caracteristicas", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "secundario_fators", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "terciaria_caracteristicas", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "terciario_fators", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
