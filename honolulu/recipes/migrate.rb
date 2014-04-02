chef_gem 'encrypto_signo'

execute "rake db:migrate" do
  cwd "/srv/www/honoluluanswers/current"
end
