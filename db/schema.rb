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

ActiveRecord::Schema.define(version: 2018_10_25_010601) do

  create_table "clientes", force: :cascade do |t|
    t.string "rfc"
    t.string "nom_cliente"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "det_ordens", force: :cascade do |t|
    t.integer "producto_id"
    t.integer "cantidad"
    t.float "precio_venta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["producto_id"], name: "index_det_ordens_on_producto_id"
  end

  create_table "ordens", force: :cascade do |t|
    t.integer "cliente_id"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_ordens_on_cliente_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre_producto"
    t.float "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
