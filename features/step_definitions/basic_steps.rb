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

Given("the following Laundry room exists") do |table|
    table.hashes.each do |laundry_room|
        FactoryBot.create(:laundry_room, laundry_room)
    end
end

When("I fill in {string} with {string}") do |element, value|
    fill_in element, with: value 
end

Given("the following user exists") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end 
end

Given("I am logged in as {string}") do |email|
    user = User.find_by(email: email)
    login_as(user, scope: :user)
end  

When("I click on {string} on {string}") do |hours, day|
    date = (Date.today+1).strftime("%d %b").titleize.to_s
    element = "#{date} #{hours}"
    click_on element
end
  

# @date.strftime("%d %b").titleize
  