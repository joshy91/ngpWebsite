Rails.application.routes.draw do
  get 'gearwizard' => 'gearwyzd#gearwizard' 
  get 'about' => 'info#about'
  get 'suppliers' => 'info#suppliers'
  get 'automaticTransmission' => 'parts#automaticTrans'
  get 'standardTransmission' => 'parts#standardTrans'
  get 'performance' => 'parts#performance'
  get 'differential' => 'parts#differential'
  get 'transferCase' => 'parts#transferCase'
  get 'toolsAndEquipment' => 'parts#toolsAndEquipment'
  root 'welcome#home'
  resources :contact, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
