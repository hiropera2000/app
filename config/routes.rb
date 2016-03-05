Rails.application.routes.draw do
  get  'input' => 'emp#input'
  get 'input/:id' => 'emp#input'
  get  'show'  => 'emp#show'
  post 'submit' => 'emp#submit'
end
