Rails.application.routes.draw do
  devise_for :users
  scope({path: 'api'}) {
    resources(:shows)
  }
end
