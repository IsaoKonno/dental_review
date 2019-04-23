# frozen_string_literal: true

class StaffProfile < ApplicationRecord
  extend Enumerize

  ENUM_STAFF_TYPE_HASH = {
      director: 1,
      nurse: 2,
      assistant: 3
  }.freeze

  enumerize :type,
            in: ENUM_STAFF_TYPE_HASH,
            default: :assistant

  belongs_to :clinic

  has_many :staff_profile_images,
           dependent: :destroy,
           inverse_of: :staff_profile

  has_many :staff_profile_movies,
           dependent: :destroy,
           inverse_of: :staff_profile
end

