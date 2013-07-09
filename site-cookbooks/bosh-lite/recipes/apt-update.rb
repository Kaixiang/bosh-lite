execute 'apt-get-update' do
  command 'apt-get update'
  ignore_failure true
  action :nothing
end.run_action(:run)

execute 'apt-get backport' do
  command 'apt-get install -y linux-image-generic-lts-backport-natty'
  ignore_failure true
  action :nothing
end.run_action(:run)

