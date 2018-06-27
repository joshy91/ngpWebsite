Rails.application.routes.draw do
  get 'parts/automaticTrans'
  get 'parts/standardTrans'
  get 'parts/performance'
  get 'parts/differential'
  get 'parts/transferCase'
  get 'parts/toolsAndEquipment'
  root 'welcome#home'
  get 'welcome/automaticTrans'
  get 'welcome/standardTrans'
  get 'welcome/differential'
  get 'welcome/transferCase'
  get 'welcome/performance'
  get 'welcome/toolAndequipment'
  get 'welcome/suppliers'
  get 'welcome/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
