OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '867123613376968', 'dd1cbd307492db4475f46c868bf22385'
end