# frozen_string_literal: true

class FeatureMovie < ApplicationRecord
  # include ::MovieUploader::Attachment.new(:movie)

  belongs_to :feature,
             inverse_of: :feature_movies
end
