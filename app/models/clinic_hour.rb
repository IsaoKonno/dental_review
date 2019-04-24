# frozen_string_literal: true

class ClinicHour < ApplicationRecord
  extend Enumerize

  ENUM_CLINIC_HOUR_OPEN_STATUS_HASH = {
      open: 1,
      close: 2,
      off: 3
  }.freeze

  enumerize :mon,
            in: ENUM_CLINIC_HOUR_OPEN_STATUS_HASH,
            default: :open
  enumerize :tue,
            in: ENUM_CLINIC_HOUR_OPEN_STATUS_HASH,
            default: :open
  enumerize :wed,
            in: ENUM_CLINIC_HOUR_OPEN_STATUS_HASH,
            default: :open
  enumerize :thu,
            in: ENUM_CLINIC_HOUR_OPEN_STATUS_HASH,
            default: :open
  enumerize :fri,
            in: ENUM_CLINIC_HOUR_OPEN_STATUS_HASH,
            default: :open
  enumerize :sat,
            in: ENUM_CLINIC_HOUR_OPEN_STATUS_HASH,
            default: :open
  enumerize :sun,
            in: ENUM_CLINIC_HOUR_OPEN_STATUS_HASH,
            default: :open
  enumerize :holiday,
            in: ENUM_CLINIC_HOUR_OPEN_STATUS_HASH,
            default: :open

  belongs_to :clinic,
             inverse_of: :clinic_hours
end
