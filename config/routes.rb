Rails.application.routes.draw do
  get  'input' => 'emp#input'
  get  'show'  => 'emp#show'
  post 'submit' => 'emp#submit'
end
