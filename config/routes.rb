Rails.application.routes.draw do
  get 'comparisons/compare'
  post 'comparisons/compare_sections'
  root to: 'comparisons#compare'
end

