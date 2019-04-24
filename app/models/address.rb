# frozen_string_literal: true

class Address < ApplicationRecord
  belongs_to :clinic,
             inverse_of: :addresses
end
