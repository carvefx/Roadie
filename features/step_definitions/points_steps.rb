# check for a title
Given /^a page with the title "(.*)"$/ do |title|
  assert_equal title, page.find(:css, 'title').text
end
