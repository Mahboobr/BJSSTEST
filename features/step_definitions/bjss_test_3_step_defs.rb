Before do
  @bjss_test_3 = bjss_test_3
end

Given("the user creates a new entry for {string}, aged {string} with a salary of {string}") do |name, age, salary|
  @new_entry = @bjss_test_3.create_entry name, salary, age
end

When("the user sends a request to {string} via the {string} route") do |url, route|
  @response = @bjss_test_3.post_url url+route, @new_entry
end

Then("the user verifies that the response indicates a new user was made") do
  expect(JSON.parse(@response.body).keys).to include "id"
end
