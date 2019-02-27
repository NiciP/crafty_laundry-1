Given("I visit the {string}") do |page|
    case page
    when "landing page"
        visit root_path
    else
        return false
    end
end