# frozen_string_literal: true

class Parking < ApplicationRecord
  belongs_to :clinic,
      inverse_of: :parkings
end
