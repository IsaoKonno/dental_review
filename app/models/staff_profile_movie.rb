# frozen_string_literal: true

class StaffProfileMovie < ApplicationRecord
  # include ::MovieUploader::Attachment.new(:movie)

  belongs_to :staff_profile,
      inverse_of: :staff_profile_movies
end
