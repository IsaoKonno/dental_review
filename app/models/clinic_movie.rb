# frozen_string_literal: true

class ClinicMovie < ApplicationRecord
  # include ::MovieUploader::Attachment.new(:movie)
  extend Enumerize

  ENUM_CLINIC_MOVIE_TYPE_HASH = {
      inside: 1,
      outside: 2
  }.freeze

  enumerize :type,
      in: ENUM_CLINIC_MOVIE_TYPE_HASH,
      default: :inside

  belongs_to :clinic,
      inverse_of: :clinic_movies
end
