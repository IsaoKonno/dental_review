# frozen_string_literal: true

class Benefit < ApplicationRecord
  belongs_to :clinic,
      inverse_of: :benefits
end
