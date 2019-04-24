# frozen_string_literal: true

class StaffCount < ApplicationRecord
  belongs_to :clinic,
      inverse_of: :staff_counts
end
