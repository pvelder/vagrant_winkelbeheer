node[:mysql] = {} if !node[:mysql]
node[:mysql][:bind_address] = 'localhost'
node[:mysql][:server_root_password] = 'root'
node[:mysql][:server_debian_password] = 'root'
node[:mysql][:server_repl_password] = 'root'
node[:dvoro_db_name] = "dvoro_development"