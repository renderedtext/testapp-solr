Given /^I am on the products page$/ do
  visit(products_path)
end

Given /^there is a product "(\w+)"$/ do |product_name|
  Product.create!(:name => product_name, :price => 42)
end

When /^I search for "(\w+)"$/ do |search_term|
  fill_in 'search', :with => search_term
  click_button 'Search'
end

Then /^I should see "(\w+)"$/ do |string|
  page.should have_content(string)
end

Then /^I should not see "(\w+)"$/ do |string|
  page.should_not have_content(string)
end
