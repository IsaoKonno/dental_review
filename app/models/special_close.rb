# frozen_string_literal: true

class SpecialClose < ApplicationRecord
  belongs_to :clinic,
             inverse_of: :special_closes
end
