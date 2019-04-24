# frozen_string_literal: true

class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses, comment: '住所' do |t|
      t.references :clinic, foreign_key: true
      t.string :post_code, null: false, comment: '郵便番号'
      t.string :prefecture, null: false, comment: '都道府県'
      t.string :city, null: false, comment: '市区町村'
      t.string :block, null: false, comment: '番地町名'
      t.string :building, comment: 'ビル'

      t.timestamps
    end
  end
end
