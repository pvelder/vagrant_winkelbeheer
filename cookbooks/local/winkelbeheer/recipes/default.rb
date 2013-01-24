include_recipe "git"

dvoro_home       = "/home/vagrant/wrk/dvoro"
dvoro_user       = "vagrant"
dvoro_group      = "vagrant"
dvoro_git_url    = "https://github.com/pvelder/dvoro.git"
dvoro_git_branch = "ec2"


#execute "apt-get update" do
#  action :nothing
#end.run_action(:run)

gem_package "capistrano" do 
  version "2.5.11"
end

gem_package "ec2onrails" do 
  version "0.9.9.1"
end


directory "#{dvoro_home}" do
  owner dvoro_user
  group dvoro_group
  mode 00755
  recursive true
  action :create
end

git dvoro_home do
  repository dvoro_git_url
  reference dvoro_git_branch
  user dvoro_user
  group dvoro_group
  action :sync
end

# cd /vagrant/dvoro; cap local externals:setup 
bash "externals" do
  cwd "#{dvoro_home}"
  code <<-EOH
  cap local externals:setup
  sudo gem update --system 1.4.2
  EOH
end

