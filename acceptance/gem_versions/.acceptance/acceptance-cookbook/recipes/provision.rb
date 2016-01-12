execute 'bundle exec kitchen converge --log-level debug' do
  cwd node['chef-acceptance']['suite-dir']
end
