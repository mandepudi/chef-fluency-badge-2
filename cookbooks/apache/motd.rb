hostname = node['hostnmae']

file '/etc/motd' do
  content "Hostname is this: ${hostname}"
end
