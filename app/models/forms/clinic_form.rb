# frozen_string_literal: true

class ::Forms::ClinicForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  # Clinic
  attribute :id, :integer
  attribute :prefecture_id, :integer # '県ID'
  attribute :name, :string # '医院名' null: false
  attribute :post_code, :string # '郵便番号' null: false
  attribute :address, :string # '住所' null: false
  attribute :reserve_tel, :integer # '予約用電話番号'
  attribute :online_reservable_type, :integer # 'オンライン予約可否'
  attribute :how_to_online_reservation, :string # 'オンライン予約方法'
  attribute :comment_for_emergency, :string # '急患への対応'
  attribute :service_list, :string # '治療項目'
  attribute :facility_list, :string # '施設情報'
  attribute :appeal_icon_list, :string # 'アピールアイコン'
  attribute :first_consultation, :string # '初診の流れ'
  attribute :info, :string # '医院からのお知らせ'
  attribute :official_url, :string # '公式URL'
  attribute :latitude, :float # '緯度'
  attribute :longitude, :float # '経度'
  attribute :display_flag, :boolean # '表示フラグ' null: false
  attribute :special_care_info, :string # '特定開院情報'
  attribute :operation_time_info, :string # '開院時間・休診日'
  attribute :description, :string # '開院時間・休診日'

  # Access
  attr_accessor :accesses

  def accesses_attributes=(attributes)
    @accesses ||= []
    attributes.each do |_i, access_params|
      @accesses.push(Access.new(access_params))
    end
  end

  def self.pre_build
    new(
        prefecture_id: Prefecture.first.id,
        accesses: [Access.new]
    )
  end

  def save_for_clinic
    return false if invalid?
    create
  end

  private

  def clinic_params
    {
        prefecture_id: prefecture_id,
        name: name,
        post_code: post_code,
        address: address,
        display_flag: display_flag,
        how_to_online_reservation: how_to_online_reservation
    }
  end

  def create
    clinic = Clinic.new(clinic_params)
    accesses.each { |access| clinic.accesses.build(access.attributes) }

    clinic.save
  end
end
