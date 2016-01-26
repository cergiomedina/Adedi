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

ActiveRecord::Schema.define(version: 20160126005253) do

  create_table "arriendo_estados", force: true do |t|
    t.integer  "id_est_arriendo"
    t.string   "est_arriendo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "arriendos", force: true do |t|
    t.integer  "id_arriendo"
    t.integer  "numero_disfraces"
    t.date     "fecha_arriendo"
    t.string   "estado_arriendo"
    t.integer  "total_arriendo"
    t.integer  "total_garantia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "detalle_arriendos", force: true do |t|
    t.integer  "linea_detalle_arriendo"
    t.integer  "garantia_arriendo"
    t.integer  "precio_arriendo"
    t.integer  "diferencia_dinero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "detalle_devolucions", force: true do |t|
    t.integer  "linea_detalle_dev"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devolucions", force: true do |t|
    t.integer  "id_devolucion"
    t.date     "fecha_devolucion"
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

  create_table "multa", force: true do |t|
    t.integer  "id_multa"
    t.integer  "total_multa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nota_de_venta", force: true do |t|
    t.integer  "id_nota"
    t.integer  "total_nota"
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

  create_table "pedido_estados", force: true do |t|
    t.integer  "id_est_pedido"
    t.string   "est_pedido"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pedidos", force: true do |t|
    t.integer  "id_pedido"
    t.date     "fecha_pedido"
    t.string   "estado_pedido"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pedidos_detalles", force: true do |t|
    t.date     "fecha_retiro"
    t.date     "fecha_dev"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transicion_arriendos", force: true do |t|
    t.string   "est_ini_arriendo"
    t.string   "est_fin_arriendo"
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

  create_table "transicion_est_pedidos", force: true do |t|
    t.string   "est_ini_pedido"
    t.string   "est_fin_pedido"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transicion_est_vendedors", force: true do |t|
    t.string   "est_ini_vendedor"
    t.string   "est_fin_vendedor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendedor_estados", force: true do |t|
    t.integer  "id_est_vendedor"
    t.string   "est_vendedor"
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
