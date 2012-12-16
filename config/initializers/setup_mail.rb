ActionMailer::Base.default_url_options[:host] = "localhost:2005"
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "generation315.com",
  :user_name            => "ericarsenault6@gmail.com",
  :password             => "",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

