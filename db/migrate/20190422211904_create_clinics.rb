# frozen_string_literal: true

class CreateClinics < ActiveRecord::Migration[5.2]
  def change
    create_table :clinics, comment: '医院' do |t|
      t.references :prefecture, foreign_key: true
      t.string :name, null: false, comment: '医院名'
      t.string :address, null: false, comment: '住所'
      t.integer :reserve_tel, comment: '予約用電話番号'
      t.integer :online_reservable_type, comment: 'オンライン予約可否'
      t.text :how_to_online_reservation, comment: 'オンライン予約方法'
      t.text :comment_for_emergency, comment: '急患への対応'
      t.string :service_list, comment: '治療項目' # nested model to be generated via gem 'acts-as-taggable-on'
      t.string :facility_list, comment: '施設情報' # nested model to be generated via gem 'acts-as-taggable-on'
      t.text :first_consultation, comment: '初診の流れ'
      t.text :info, comment: '医院からのお知らせ'
      t.string :official_url, comment: '公式URL'
      t.float :latitude, comment: '緯度'
      t.float :longitude, comment: '経度'
      t.boolean :display_flag, null: false, comment: '表示フラグ'

      t.timestamps
    end
  end
end
