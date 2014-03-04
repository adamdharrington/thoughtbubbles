ThoughtBubbles::Application.routes.draw do
  resources :thoughts
  match 'thoughts/:id' => 'thoughts#index'
  match '/refresh' => 'thoughts#refresh'

  root :to => 'thoughts#index'
end
