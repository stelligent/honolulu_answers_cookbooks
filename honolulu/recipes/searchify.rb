include_recipe "deploy"

node[:deploy].each do |application, deploy|
  Chef::Log.info("Deploy DIR: #{deploy[:deploy_to]}")
end


execute "rake tanker:reindex" do
  cwd "/srv/www/honoluluanswers/current"
end
