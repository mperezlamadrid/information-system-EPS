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

ActiveRecord::Schema.define(version: 20150524024010) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cita", force: true do |t|
    t.date     "fecha"
    t.string   "horario"
    t.string   "paciente"
    t.string   "especialidad"
    t.string   "tipo"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consultorios", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "estado"
    t.integer  "sede_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "consultorios", ["sede_id"], name: "index_consultorios_on_sede_id", using: :btree

  create_table "convenios", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dia_habils", force: true do |t|
    t.string   "nombre"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documento_identidads", force: true do |t|
    t.string   "nombre"
    t.string   "siglas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formato_hc_pregunta", force: true do |t|
    t.string   "formato_hc"
    t.string   "pregunta"
    t.string   "obligatorio"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formato_historial_clinicos", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hora_habils", force: true do |t|
    t.integer  "hora"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "horarios", force: true do |t|
    t.string   "medico"
    t.string   "consultorio"
    t.string   "turno"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "minutos_habiles", force: true do |t|
    t.integer  "minuto"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "opciones_respuestas_cerradas", force: true do |t|
    t.integer  "respuestas_cerrada_id"
    t.string   "opcion"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "opciones_respuestas_cerradas", ["respuestas_cerrada_id"], name: "index_opciones_respuestas_cerradas_on_respuestas_cerrada_id", using: :btree

  create_table "pacientes", force: true do |t|
    t.string   "tipo_documento"
    t.string   "documento"
    t.string   "pri_nombre"
    t.string   "seg_nombre"
    t.string   "pri_apellido"
    t.string   "seg_apellido"
    t.date     "nacimiento"
    t.string   "genero"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "regimen"
    t.string   "num_ficha_sisben"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pregunta", force: true do |t|
    t.string   "pregunta"
    t.string   "tipo"
    t.integer  "respuestas_cerrada_id"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pregunta", ["respuestas_cerrada_id"], name: "index_pregunta_on_respuestas_cerrada_id", using: :btree

  create_table "registro_atencions", force: true do |t|
    t.date     "fecha_inicio"
    t.date     "fecha_final"
    t.integer  "cita_id"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "respuestas_cerradas", force: true do |t|
    t.string   "respuesta"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sedes", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servicios", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specialities", force: true do |t|
    t.string   "name"
    t.string   "descripcion"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turnos", force: true do |t|
    t.string   "dia"
    t.string   "hora"
    t.string   "minuto"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
    t.string   "username",               default: "", null: false
    t.string   "role",                   default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "specialty"
    t.string   "pro_card"
    t.string   "pass_admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
