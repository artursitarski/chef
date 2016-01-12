execute 'bundle exec kitchen verify --log-level debug' do
  cwd node['chef-acceptance']['suite-dir']
end
