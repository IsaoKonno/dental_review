# frozen_string_literal: true

class Feature < ApplicationRecord
  belongs_to :clinic,
             inverse_of: :features

  has_many :feature_images,
           dependent: :destroy,
           inverse_of: :feature

  has_many :feature_movies,
           dependent: :destroy,
           inverse_of: :feature
end

