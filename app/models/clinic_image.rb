# frozen_string_literal: true

class ClinicImage < ApplicationRecord
  # include ::ImageUploader::Attachment.new(:image)
  extend Enumerize

  ENUM_CLINIC_IMAGE_TYPE_HASH = {
      inside: 1,
      outside: 2
  }.freeze

  enumerize :type,
      in: ENUM_CLINIC_IMAGE_TYPE_HASH,
      default: :inside

  belongs_to :clinic,
      inverse_of: :clinic_images
end
