include_recipe "deploy"

node[:deploy].each do |application, deploy|
  deploy[:environment_variables].each do |key, value|
    Chef::Log.info("Setting ENV[#{key}] to #{value}")
    ENV[key] = value
  end
end


execute "rake tanker:reindex" do
  cwd "/srv/www/honoluluanswers/current"
end
