# frozen_string_literal: true

class SpecialCare < ApplicationRecord
  belongs_to :clinic,
             inverse_of: :special_cares
end