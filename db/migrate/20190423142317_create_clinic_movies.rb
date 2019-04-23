# frozen_string_literal: true

class CreateClinicMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :clinic_movies, comment: '医院紹介動画' do |t|
      t.references :clinic, foreign_key: true
      t.string :movie_url, null: false, comment: '医院紹介動画'
      t.integer :type, null: false, comment: '撮影場所' # enumerize :type, in: {inside: 1, outside: 2}, default: :inside

      t.timestamps
    end
  end
end
