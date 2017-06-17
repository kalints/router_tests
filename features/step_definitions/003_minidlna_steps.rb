When(/^I check the process list$/) do
  @ps_output = `ssh root@192.168.1.1 ps | grep minidlna`
end

Then(/^I see that the minidlna service is running$/) do
  expect(@ps_output).to match("/usr/bin/minidlna -f /tmp/minidlna.conf")
end
