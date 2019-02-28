Given("I visit the {string}") do |page|
    case page
    when "landing page"
        visit root_path
    when "booking page"
        visit laundry_rooms_path
    else
        return false
    end
 end

 
Given("I click on {string}") do |link|
    click_on link
end
 
