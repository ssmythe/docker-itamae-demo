template "/usr/share/nginx/html/index.html" do
  action :create
  source "template.erb"
  mode "644"
  variables(message: "World")
end
