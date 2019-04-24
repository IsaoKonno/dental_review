# frozen_string_literal: true

class Policy < ApplicationRecord
  belongs_to :clinic

  has_many :policy_images,
      dependent: :destroy,
      inverse_of: :policy

  has_many :policy_movies,
      dependent: :destroy,
      inverse_of: :policy
end
