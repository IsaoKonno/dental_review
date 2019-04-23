# frozen_string_literal: true

class CreateServiceDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :service_details, comment: '治療項目詳細' do |t|
      t.references :clinic, foreign_key: true
      t.string :name, null: false, comment: '治療名'
      t.text :description, null: false, comment: '治療の流れ' # 料金プランもここに含める
      t.text :caution, comment: '注意事項'

      t.timestamps
    end
  end
end
