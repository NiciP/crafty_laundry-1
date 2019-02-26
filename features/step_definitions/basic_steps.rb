Given("I visit the {string}") do |page|
    case page
    when "landing page"
        visit root_path
    else
        return false
    end
  end
  
  Then("I should see {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  