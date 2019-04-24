class CreateTargets < ActiveRecord::Migration[5.2]
  def change
    create_table :targets, comment: 'こんな方におすすめ' do |t|
      t.references :clinic, foreign_key: true
      t.text :description, null: false, comment: 'こんな方におすすめ詳細'

      t.timestamps
    end
  end
end
