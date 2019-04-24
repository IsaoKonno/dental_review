# frozen_string_literal: true

class CreatePolicyMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :policy_movies, comment: 'こだわり補足動画' do |t|
      t.references :policy, foreign_key: true
      t.text :movie_url, null: false, comment: 'こだわり補足動画' # required to ude gem 'shrine'

      t.timestamps
    end
  end
end
