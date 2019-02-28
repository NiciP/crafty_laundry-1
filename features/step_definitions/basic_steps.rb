Given("I visit the {string}") do |page|
  case page
  when "landing page"
    visit root_path
  else
    return false
  end
end

When("I click on {string}") do |element_text|
  click_on element_text
end
  
When("I fill in {string} with {string}") do |element, value|
  fill_in element, with: value 
end

Given("the following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end 
end