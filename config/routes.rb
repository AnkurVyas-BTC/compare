Rails.application.routes.draw do
  get 'comparisons/compare'
  post 'comparisons/compare_sections'
  root to: 'comparisons#compare'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
