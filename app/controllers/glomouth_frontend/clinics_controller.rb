# frozen_string_literal: true

class ::GlomouthFrontend::ClinicsController < ApplicationController
  def index
    @clinics = Clinic.all.limit(10).includes(:accesses)
  end

  def show
    @clinic = Clinic.find_by(id: params[:id])
  end

  def new
    @clinic_form = ::Forms::ClinicForm.pre_build
  end

  def create
    prefecture_id = Prefecture.first.id
    @clinic_form  = ::Forms::ClinicForm.new(clinic_form_params.except('id').merge!(prefecture_id: prefecture_id))

    if @clinic_form.save_for_clinic
      flash[:notice] = 'Created contacts'
      redirect_to new_glomouth_frontend_clinic_path
    else
      flash[:notice] = 'There were errors'
      render action: 'new'
    end
  end

  def edit
    clinic_id = params[:id]
    @clinic_form = ::Forms::ClinicForm.load(clinic_id)
  end

  def update
    clinic = Clinic.find_by(id: params[:id])
    @clinic_form = ::Forms::ClinicForm.new(clinic_form_params.merge!(id: clinic.id, prefecture_id: clinic.prefecture_id))

    if @clinic_form.save_for_clinic
      flash[:notice] = 'Created contacts'
      redirect_to new_glomouth_frontend_clinic_path
    else
      flash[:notice] = 'There were errors'
      render action: 'new'
    end
  end

  private

  def clinic_form_params
    params.require(:forms_clinic_form).permit(
        :id, :name, :post_code, :address, :display_flag, :how_to_online_reservation,
        accesses_attributes: [:id, :clinic_id, :description]
    )
  end
end
