ActionMailer::Base.default_url_options[:host] = "localhost:2005"
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "generation315.com",
  :user_name            => "raghava.sangars@gmail.com",
  :password             => "businessman",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

