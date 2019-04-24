# frozen_string_literal: true

class Clinic < ApplicationRecord
  belongs_to :prefecture,
      inverse_of: :clinics

  has_many :accesses,
      dependent: :restrict_with_error,
      inverse_of: :clinic

  has_many :appeal_icons,
      dependent: :restrict_with_error,
      inverse_of: :clinic

  has_many :benefits,
      dependent: :restrict_with_error,
      inverse_of: :clinic

  has_many :clinic_hours,
      dependent: :restrict_with_error,
      inverse_of: :clinic

  has_many :clinic_images,
      dependent: :restrict_with_error,
      inverse_of: :clinic

  has_many :clinic_movies,
      dependent: :restrict_with_error,
      inverse_of: :clinic

  has_many :features,
      dependent: :restrict_with_error,
      inverse_of: :clinic

  has_many :parkings,
      dependent: :restrict_with_error,
      inverse_of: :clinic

  has_many :payment_options,
      dependent: :restrict_with_error,
      inverse_of: :clinic

  has_many :policies,
      dependent: :restrict_with_error,
      inverse_of: :clinic

  has_many :second_opinions,
      dependent: :restrict_with_error,
      inverse_of: :clinic

  has_many :service_details,
      dependent: :restrict_with_error,
      inverse_of: :clinic

  has_many :special_cares,
      dependent: :restrict_with_error,
      inverse_of: :clinic

  has_many :special_closes,
      dependent: :restrict_with_error,
      inverse_of: :clinic

  has_many :staff_counts,
      dependent: :restrict_with_error,
      inverse_of: :clinic

  has_many :staff_profiles,
      dependent: :restrict_with_error,
      inverse_of: :clinic
end
