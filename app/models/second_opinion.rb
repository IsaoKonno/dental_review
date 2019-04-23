# frozen_string_literal: true

class SecondOpinion < ApplicationRecord
  belongs_to :clinic,
             inverse_of: :second_opinions
end

