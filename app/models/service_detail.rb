# frozen_string_literal: true

class ServiceDetail < ApplicationRecord
  belongs_to :clinic,
             inverse_of: :service_details
end
