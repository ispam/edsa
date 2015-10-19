Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "pages#inicio"

  get 'pages/informacion_de_interes', to: 'pages#informacion_de_interes', as: 'informacion_de_interes'
  get 'pages/informes_de_gestion', to: 'pages#informes_de_gestion', as: 'informes_de_gestion'
  get 'pages/nuestra_entidad', to: 'pages#nuestra_entidad', as: 'nuestra_entidad'
  get 'pages/plan_de_accion', to: 'pages#plan_de_accion', as: 'plan_de_accion'
  get 'pages/normatividad', to: 'pages#normatividad', as: 'normatividad'
  
end
