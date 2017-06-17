Given(/^that you have ssh client$/) do
  # Look for ssh client
  `which ssh`
end

When(/^you connect to the router IP$/) do
  # Test ssh connection and obtain user id
  @checkid = `ssh root@192.168.1.1 id`
end

Then(/^you are logged in with root$/) do
  # See that root user id was returned
  expect(@checkid).to match("uid=0(root) gid=0(root)\n")
end
