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

ActiveRecord::Schema.define(version: 2019_04_24_142349) do

  create_table "accesses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "アクセス", force: :cascade do |t|
    t.bigint "clinic_id"
    t.string "station", null: false, comment: "駅"
    t.string "from_station", null: false, comment: "駅からのアクセス"
    t.boolean "closest_flag", null: false, comment: "最寄りフラグ"
    t.boolean "primary_flag", null: false, comment: "TOP表示優先度フラグ"
    t.integer "base_access_id", comment: "基になるアクセスID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_accesses_on_clinic_id"
  end

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "住所", force: :cascade do |t|
    t.bigint "clinic_id"
    t.string "post_code", null: false, comment: "郵便番号"
    t.string "prefecture", null: false, comment: "都道府県"
    t.string "city", null: false, comment: "市区町村"
    t.string "block", null: false, comment: "番地町名"
    t.string "building", comment: "ビル"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_addresses_on_clinic_id"
  end

  create_table "appeal_icons", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "アピールアイコン", force: :cascade do |t|
    t.bigint "clinic_id"
    t.string "name", null: false, comment: "名前"
    t.integer "type", null: false, comment: "種類"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_appeal_icons_on_clinic_id"
  end

  create_table "benefits", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "特別な対応", force: :cascade do |t|
    t.bigint "clinic_id"
    t.string "name", comment: "対応名"
    t.integer "type", null: false, comment: "対応リスト"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_benefits_on_clinic_id"
  end

  create_table "brand_names", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "ブランド名（サービス名）", force: :cascade do |t|
    t.bigint "payment_option_id"
    t.string "name", null: false, comment: "ブランド名（サービス名）"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["payment_option_id"], name: "index_brand_names_on_payment_option_id"
  end

  create_table "clinic_hours", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "医院開閉情報", force: :cascade do |t|
    t.bigint "clinic_id"
    t.time "open_at", null: false, comment: "開院時間"
    t.time "close_at", null: false, comment: "閉院時間"
    t.integer "mon", null: false, comment: "月曜の開院状況"
    t.integer "tue", null: false, comment: "火曜の開院状況"
    t.integer "wed", null: false, comment: "水曜の開院状況"
    t.integer "thu", null: false, comment: "木曜の開院状況"
    t.integer "fri", null: false, comment: "金曜の開院状況"
    t.integer "sat", null: false, comment: "土曜の開院状況"
    t.integer "sun", null: false, comment: "日曜の開院状況"
    t.integer "holiday", null: false, comment: "祝日の開院状況"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_clinic_hours_on_clinic_id"
  end

  create_table "clinic_images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "医院紹介写真", force: :cascade do |t|
    t.bigint "clinic_id"
    t.text "image_data", null: false, comment: "医院紹介写真"
    t.integer "type", null: false, comment: "撮影場所"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_clinic_images_on_clinic_id"
  end

  create_table "clinic_movies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "医院紹介動画", force: :cascade do |t|
    t.bigint "clinic_id"
    t.string "movie_url", null: false, comment: "医院紹介動画"
    t.integer "type", null: false, comment: "撮影場所"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_clinic_movies_on_clinic_id"
  end

  create_table "clinics", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "医院", force: :cascade do |t|
    t.bigint "prefecture_id"
    t.string "name", null: false, comment: "医院名"
    t.boolean "display_flag", null: false, comment: "表示フラグ"
    t.string "post_code", null: false, comment: "郵便番号"
    t.string "address", null: false, comment: "住所"
    t.float "latitude", comment: "緯度"
    t.float "longitude", comment: "経度"
    t.string "official_url", comment: "公式URL"
    t.string "appeal_icon_list", comment: "アピールアイコン"
    t.integer "reserve_tel", comment: "予約用電話番号"
    t.integer "online_reservable_type", comment: "オンライン予約可否"
    t.text "how_to_online_reservation", comment: "オンライン予約方法"
    t.text "operation_time_info", comment: "開院時間・休診日"
    t.text "special_care_info", comment: "特定開院情報"
    t.string "service_list", comment: "治療項目"
    t.string "facility_list", comment: "施設情報"
    t.text "first_consultation", comment: "初診の流れ"
    t.text "comment_for_emergency", comment: "急患への対応"
    t.text "info", comment: "医院からのお知らせ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prefecture_id"], name: "index_clinics_on_prefecture_id"
  end

  create_table "parkings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "駐車場", force: :cascade do |t|
    t.bigint "clinic_id"
    t.boolean "free_flag", null: false, comment: "無料フラグ"
    t.integer "capacity", null: false, comment: "駐車可能台数"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_parkings_on_clinic_id"
  end

  create_table "payment_options", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "支払いオプション", force: :cascade do |t|
    t.bigint "clinic_id"
    t.integer "type", null: false, comment: "支払い方法"
    t.integer "applicable_to", null: false, comment: "支払い可能な対象"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_payment_options_on_clinic_id"
  end

  create_table "prefectures", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "県", force: :cascade do |t|
    t.string "name", null: false, comment: "県名"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "second_opinions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "セカンドオピニオン", force: :cascade do |t|
    t.bigint "clinic_id"
    t.text "description", null: false, comment: "セカンドオピニオン詳細"
    t.integer "price", comment: "セカンドオピニオン価格"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_second_opinions_on_clinic_id"
  end

  create_table "service_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "治療項目詳細", force: :cascade do |t|
    t.bigint "clinic_id"
    t.string "name", null: false, comment: "治療名"
    t.text "description", null: false, comment: "治療の流れ"
    t.text "caution", comment: "注意事項"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_service_details_on_clinic_id"
  end

  create_table "special_cares", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "特定開院情報", force: :cascade do |t|
    t.bigint "clinic_id"
    t.text "operate_time", null: false, comment: "特別開院時間"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_special_cares_on_clinic_id"
  end

  create_table "special_closes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "特別休診日", force: :cascade do |t|
    t.bigint "clinic_id"
    t.text "description", comment: "特別休診日詳細"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_special_closes_on_clinic_id"
  end

  create_table "staff_counts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "スタッフ数", force: :cascade do |t|
    t.bigint "clinic_id"
    t.boolean "full_time_flag", null: false, comment: "フルタイムフラグ"
    t.float "count", comment: "スタッフ数"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_staff_counts_on_clinic_id"
  end

  create_table "staff_images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "スタッフ紹介画像", force: :cascade do |t|
    t.bigint "staff_profiles_id"
    t.text "image_data", null: false, comment: "スタッフ紹介画像"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_profiles_id"], name: "index_staff_images_on_staff_profiles_id"
  end

  create_table "staff_movies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "スタッフ紹介動画", force: :cascade do |t|
    t.bigint "staff_profiles_id"
    t.string "movie_url", null: false, comment: "スタッフ紹介動画"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_profiles_id"], name: "index_staff_movies_on_staff_profiles_id"
  end

  create_table "staff_profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "スタッフ", force: :cascade do |t|
    t.bigint "clinic_id"
    t.string "name", null: false, comment: "スタッフ名"
    t.integer "type", null: false, comment: "スタッフ職種"
    t.text "profile", comment: "プロフィール文"
    t.boolean "full_time_flag", null: false, comment: "フルタイムフラグ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_staff_profiles_on_clinic_id"
  end

  create_table "targets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin", comment: "こんな方におすすめ", force: :cascade do |t|
    t.bigint "clinic_id"
    t.text "description", null: false, comment: "こんな方におすすめ詳細"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_targets_on_clinic_id"
  end

  add_foreign_key "accesses", "clinics"
  add_foreign_key "addresses", "clinics"
  add_foreign_key "appeal_icons", "clinics"
  add_foreign_key "benefits", "clinics"
  add_foreign_key "brand_names", "payment_options"
  add_foreign_key "clinic_hours", "clinics"
  add_foreign_key "clinic_images", "clinics"
  add_foreign_key "clinic_movies", "clinics"
  add_foreign_key "clinics", "prefectures"
  add_foreign_key "parkings", "clinics"
  add_foreign_key "payment_options", "clinics"
  add_foreign_key "second_opinions", "clinics"
  add_foreign_key "service_details", "clinics"
  add_foreign_key "special_cares", "clinics"
  add_foreign_key "special_closes", "clinics"
  add_foreign_key "staff_counts", "clinics"
  add_foreign_key "staff_images", "staff_profiles", column: "staff_profiles_id"
  add_foreign_key "staff_movies", "staff_profiles", column: "staff_profiles_id"
  add_foreign_key "staff_profiles", "clinics"
  add_foreign_key "targets", "clinics"
end
