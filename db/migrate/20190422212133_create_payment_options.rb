# frozen_string_literal: true

class CreatePaymentOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_options, comment: '支払いオプション' do |t|
      t.references :clinic, foreign_key: true
      t.integer :type, null: false, comment: '支払い方法' # enumerize :type, in: {cash: 1, card: 2, epay: 3}, default: :cash
      t.integer :applicable_to, null: false, comment: '支払い可能な対象' # enumerize :applicable_to, in: {own: 1, any: 2}, default: :own

      t.timestamps
    end
  end
end
