# frozen_string_literal: true

class BrandName < ApplicationRecord
  belongs_to :payment_option,
             inverse_of: :brand_names
end
