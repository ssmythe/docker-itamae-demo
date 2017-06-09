service 'nginx' do
  action [:disable, :stop]
end

package 'nginx' do
  action :remove
end

package 'nginx-filesystem' do
  action :remove
end

