# frozen_string_literal: true

class AppealIcon < ApplicationRecord
  extend Enumerize

  ENUM_APPEAL_ITEM_TYPE_HASH = {
      immediate: 1,
      weekend: 2,
      late: 3
  }.freeze

  enumerize :type,
            in: ENUM_APPEAL_ITEM_TYPE_HASH,
            default: :immediate

  belongs_to :clinic,
             inverse_of: :appeal_icons
end
