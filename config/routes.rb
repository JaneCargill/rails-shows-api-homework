Rails.application.routes.draw do
  scope({path: 'api'}) {
    resources(:shows)
  }
end
