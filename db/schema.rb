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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2018_03_26_203045) do
=======
ActiveRecord::Schema.define(version: 2018_03_15_143947) do
>>>>>>> d3b113a48718ea6e3ce83a18a6eca19552413de1

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "categorys"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_data", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_data", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.string "user"
    t.string "pass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_dates", force: :cascade do |t|
    t.string "itemcode"
    t.string "itemname"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
  end

  create_table "locations", force: :cascade do |t|
    t.string "loccode"
    t.string "project"
    t.string "siteeng"
    t.integer "projects_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["projects_id"], name: "index_locations_on_projects_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "projcode"
    t.string "client"
    t.datetime "startdate"
    t.string "projmanager"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "projname"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "item2"
    t.string "quantity2"
    t.integer "warehouse_locations_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["warehouse_locations_id"], name: "index_tasks_on_warehouse_locations_id"
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
    t.boolean "admin"
    t.boolean "projectmange"
    t.boolean "techoff"
    t.boolean "warkeep"
    t.boolean "siteeng"
    t.boolean "accunt"
    t.boolean "system"
    t.boolean "account"
    t.string "full_name"
    t.string "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer "invitation_limit"
    t.string "invited_by_type"
    t.integer "invited_by_id"
    t.integer "invitations_count", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true
    t.index ["invitations_count"], name: "index_users_on_invitations_count"
    t.index ["invited_by_id"], name: "index_users_on_invited_by_id"
    t.index ["invited_by_type", "invited_by_id"], name: "index_users_on_invited_by_type_and_invited_by_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "warehouse_locations", force: :cascade do |t|
    t.string "warloccode"
    t.string "warlocname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "warehouse_trasactions", force: :cascade do |t|
    t.string "item"
    t.string "quantity"
    t.integer "warehouse_locations_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["warehouse_locations_id"], name: "index_warehouse_trasactions_on_warehouse_locations_id"
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "warcode"
    t.string "warname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
