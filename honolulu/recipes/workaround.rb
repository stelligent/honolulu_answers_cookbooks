# fix for apache loading issue
# "In the meantime, a workaround for the issue is found in modifying the /etc/auto.master file. 
# Once an EBS backed instance is booted, autofs run and mounts the volumes. A volume map is 
# made and if the instance is rebooted, an issue with autofs causes specific directories to 
# not be mounted correctly."
bash "workaround-apache-issue" do
  code "sudo sed -i /opsworks/d /etc/auto.master"
  action :run
end
