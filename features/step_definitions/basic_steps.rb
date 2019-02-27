Given("I visit the {string}") do |page|
    case page
    when "landing page"
        visit root_path
    when "booking page"
        visit booking_index
    else
        return false
    end
end

Given("I click on {string}") do |string|
    
  end
  
Then("I click on {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  