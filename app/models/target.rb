# frozen_string_literal: true

class Target < ApplicationRecord
  belongs_to :clinic,
             inverse_of: :targets
end
