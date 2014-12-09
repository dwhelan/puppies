
Given /^I am viewing puppies$/ do
  visit HomePage
end

Then /^I should see a list of puppies$/ do
  on(HomePage).puppy_list_element.should exist
end

Then /^I should see a summary for a (Male|Female) (.*) named (\w+)$/ do |sex, breed, name|
  on(HomePage) do |page|
    page.puppies[0].name.should eq name
    page.puppies[0].breed.should eq breed
    page.puppies[0].sex.should  eq sex
  end
end

When /^I view puppy details$/ do
  on(HomePage).puppies[0].details
end

Then /^I should see a (Male|Female) (.*) named (\w+)$/ do |sex, breed, name|
  on(PuppyDetailsPage) do |page|
    page.name.should eq name
    page.breed.should eq breed
    page.sex.should  eq sex
  end
end