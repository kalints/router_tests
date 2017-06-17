Given(/^I have ssh access to my router$/) do
  `ssh root@192.168.1.1 exit`
end

When(/^I check \/mnt$/) do
  @check_mnt = `ssh root@192.168.1.1 ls -ld /mnt/users`
end

Then(/^I see that the NAS is mounted there$/) do
  #Match the users folder. Now I'll know if I mess it up somehow ;)
  expect(@check_mnt).to match("drwxr-xr-x    6 root     root             0 Jan  9  2016 /mnt/users\n")
end
