# frozen_string_literal: true

class CreateClinicHours < ActiveRecord::Migration[5.2]
  def change
    create_table :clinic_hours, comment: '医院開閉情報' do |t|
      t.references :clinic, foreign_key: true
      t.time :open_at, null: false, comment: '開院時間'
      t.time :close_at, null: false, comment: '閉院時間'
      t.integer :mon, null: false, comment: '月曜の開院状況'      # enumerize :mon,     in: { open: 1, close: 2, off: 3 }
      t.integer :tue, null: false, comment: '火曜の開院状況'      # enumerize :tue,     in: { open: 1, close: 2, off: 3 }
      t.integer :wed, null: false, comment: '水曜の開院状況'      # enumerize :wed,     in: { open: 1, close: 2, off: 3 }
      t.integer :thu, null: false, comment: '木曜の開院状況'      # enumerize :thu,     in: { open: 1, close: 2, off: 3 }
      t.integer :fri, null: false, comment: '金曜の開院状況'      # enumerize :fri,     in: { open: 1, close: 2, off: 3 }
      t.integer :sat, null: false, comment: '土曜の開院状況'      # enumerize :sat,     in: { open: 1, close: 2, off: 3 }
      t.integer :sun, null: false, comment: '日曜の開院状況'      # enumerize :sun,     in: { open: 1, close: 2, off: 3 }
      t.integer :holiday, null: false, comment: '祝日の開院状況'  # enumerize :holiday, in: { open: 1, close: 2, off: 3 }

      t.timestamps
    end
  end
end
