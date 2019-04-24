# frozen_string_literal: true

class Prefecture < ApplicationRecord
  has_many :clinics,
      dependent: :restrict_with_error,
      inverse_of: :prefecture
end
