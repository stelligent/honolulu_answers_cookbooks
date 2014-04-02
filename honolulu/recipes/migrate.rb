chef_gem 'encrypt_signo'

execute "rake db:migrate" do
  cwd "/srv/www/honoluluanswers/current"
end
