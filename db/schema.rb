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

ActiveRecord::Schema.define(version: 20160126003220) do

  create_table "auditoria", force: true do |t|
    t.integer  "id_log"
    t.integer  "rut_usuario"
    t.string   "tabla_afectada"
    t.string   "instruccion"
    t.string   "datos_antes"
    t.string   "datos_despues"
    t.string   "fecha_modificacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categoria", force: true do |t|
    t.integer  "id_categoria"
    t.string   "nombre_categoria"
    t.integer  "stock_categoria"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cliente_estados", force: true do |t|
    t.integer  "id_est_cliente"
    t.string   "est_cliente"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", force: true do |t|
    t.integer  "id_cliente"
    t.string   "nombre_cliente"
    t.string   "apellido_cliente"
    t.integer  "rut_cliente"
    t.string   "correo_cliente"
    t.string   "direccion_cliente"
    t.integer  "telefono_cliente"
    t.string   "estado_cliente"
    t.string   "password_cliente"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "disfrazs", force: true do |t|
    t.integer  "id_disfraz"
    t.string   "categoria_disfraz"
    t.integer  "stock_disfraz"
    t.integer  "stock_disponible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ejemplar_estados", force: true do |t|
    t.integer  "id_estado_cliente"
    t.string   "est_ejemplar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ejemplars", force: true do |t|
    t.integer  "id_ejemplar"
    t.string   "talla_ejemplar"
    t.string   "color_ejemplar"
    t.string   "estado_ejemplar"
    t.string   "precio_ejemplar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parametro_sistemas", force: true do |t|
    t.integer  "id_parametro"
    t.string   "nombre_parametro"
    t.integer  "valor_parametro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transicion_est_clientes", force: true do |t|
    t.string   "est_ini_cliente"
    t.string   "est_fin_cliente"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transicion_est_ejemplars", force: true do |t|
    t.string   "est_ini_ejemplar"
    t.string   "est_fin_ejemplar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendedors", force: true do |t|
    t.string   "id_vendedor"
    t.string   "nombre_vendedor"
    t.string   "apellido_vendedor"
    t.integer  "rut_vendedor"
    t.string   "correo_vendedor"
    t.string   "direccion_vendedor"
    t.integer  "telefono_vendedor"
    t.string   "estado_vendedor"
    t.string   "password_vendedor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
