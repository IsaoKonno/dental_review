# frozen_string_literal: true

class PolicyMovie < ApplicationRecord
  # include ::MovieUploader::Attachment.new(:movie)

  belongs_to :policy,
      inverse_of: :policy_movies
end
