Given("I visit the {string}") do |page|
    case page
    when "landing page"
        visit root_path
    else
        return false
    end
  end
  
  Then("I should see {string}") do |expected_content|
    expect(page).to have_content expected_content
  end
  