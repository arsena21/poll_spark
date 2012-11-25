Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :twitter, 'x8fda1dS2qiX92qubDwA', '40JahdWqNB7Zamr7Bfl7rfDFi9yuObQTDC5un5BErE'
  provider :twitter, 'gAUhwMPpyEzVg4J3XdnTog', 'P6STUgxt19rlNrbetKOL9ukCY9TPv8E7zPb4gZcqXU'
  provider :facebook, '260799227376971', 'a9f139f31a924d9e1f7583080647c835'
  provider :identity
end
OmniAuth.config.on_failure = Proc.new { |env|
  OmniAuth::FailureEndpoint.new(env).redirect_to_failure
}