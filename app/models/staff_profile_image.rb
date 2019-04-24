# frozen_string_literal: true

class StaffProfileImage < ApplicationRecord
  # include ::ImageUploader::Attachment.new(:image)

  belongs_to :staff_profile,
      inverse_of: :staff_profile_images
end
