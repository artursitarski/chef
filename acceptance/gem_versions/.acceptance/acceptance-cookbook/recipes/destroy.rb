execute 'bundle exec kitchen destroy --log-level debug' do
  cwd node['chef-acceptance']['suite-dir']
end
