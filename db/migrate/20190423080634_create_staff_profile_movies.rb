# frozen_string_literal: true

class CreateStaffProfileMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :staff_movies, comment: 'スタッフ紹介動画' do |t|
      t.references :staff_profiles, foreign_key: true
      t.string :movie_url, null: false, comment: 'スタッフ紹介動画'

      t.timestamps
    end
  end
end