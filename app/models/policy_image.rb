# frozen_string_literal: true

class PolicyImage < ApplicationRecord
  # include ::ImageUploader::Attachment.new(:image)

  belongs_to :policy,
             inverse_of: :policy_images
end

