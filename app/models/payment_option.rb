# frozen_string_literal: true

class PaymentOption < ApplicationRecord
  extend Enumerize

  ENUM_PAYMENT_OPTION_TYPE_HASH = {
      cash: 1,
      card: 2,
      epay: 3
  }.freeze

  ENUM_PAYMENT_OPTION_APPLICABLE_TO_HASH = {
      own: 1,
      any: 2
  }.freeze

  enumerize :type,
      in: ENUM_PAYMENT_OPTION_TYPE_HASH,
      default: :cash
  enumerize :applicable_to,
      in: ENUM_APPLICABLE_TO_TYPE_HASH,
      default: :own

  belongs_to :clinic,
      inverse_of: :payment_options
end
