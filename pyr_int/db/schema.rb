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

ActiveRecord::Schema.define(version: 20150311232955) do

  create_table "passports", force: :cascade do |t|
    t.string   "fileName"
    t.string   "taskName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ssh_connections", force: :cascade do |t|
    t.string   "name"
    t.string   "ip"
    t.string   "login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_templates", force: :cascade do |t|
    t.string   "name"
    t.boolean  "historyenabled"
    t.string   "description"
    t.string   "stopcode"
    t.string   "resultcode"
    t.string   "dir"
    t.boolean  "nfs"
    t.integer  "checkpoint"
    t.string   "logPath"
    t.boolean  "logNfs"
    t.boolean  "logEpk"
    t.boolean  "logCluster"
    t.boolean  "logNode"
    t.integer  "portionCluster"
    t.integer  "portionNode"
    t.integer  "portionProgram"
    t.string   "parameters"
    t.string   "parametersDescription"
    t.string   "profiles"
    t.string   "profilesDescription"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "passportName"
    t.integer  "procNum"
    t.integer  "maxTime"
    t.string   "taskName"
  end

  create_table "templates", force: :cascade do |t|
    t.string   "taskName"
    t.string   "taskDescription"
    t.string   "passportName"
    t.string   "name"
    t.integer  "procNum"
    t.integer  "maxTime"
    t.boolean  "historyenabled"
    t.string   "description"
    t.integer  "stopcode"
    t.integer  "resultcode"
    t.string   "dir"
    t.boolean  "nfs"
    t.integer  "checkpoint"
    t.string   "logPath"
    t.boolean  "logNfs"
    t.boolean  "logEpk"
    t.boolean  "logCluster"
    t.boolean  "logNode"
    t.integer  "portionCluster"
    t.integer  "portionNode"
    t.integer  "portionProgram"
    t.string   "parameters"
    t.string   "parametersDescription"
    t.string   "profiles"
    t.string   "profilesDescription"
    t.string   "otherParams"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "user_tasks", force: :cascade do |t|
    t.string   "task_name"
    t.string   "string"
    t.string   "status"
    t.string   "result"
    t.string   "text"
    t.string   "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
