# frozen_string_literal: true

class FeatureImage < ApplicationRecord
  # include ::ImageUploader::Attachment.new(:image)

  belongs_to :feature,
             inverse_of: :feature_images
end
