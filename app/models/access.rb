# frozen_string_literal: true

class Access < ApplicationRecord
  belongs_to :clinic,
      inverse_of: :accesses
end
