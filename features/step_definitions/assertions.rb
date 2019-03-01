Then("I should see {string}") do |expected_content|
    expect(page).to have_content expected_content
end
  
Then("I should see our logo") do 
    expect(page).to have_selector(".logo")
end

Then("I logout") do
    logout 
end

Then("I should see the booking calendar") do
    expect(page).to have_selector(".calendar")
end