# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :glomouth_frontend do
    resources :clinics
  end
end