Before do
  @bjss_test_1 = bjss_test_1
end

Given("the user navigates to {string}") do |page_url|
  visit page_url
end

When("the user clicks {string}") do |link|
  click_link link
end

When("the user stores the IDs of the buttons") do
  @button_id_original = @bjss_test_1.get_button_ids
end

When("the user clicks the red button") do
  @bjss_test_1.click_red_button
end

Then("the user confirms that the IDs of the buttons have changed") do
  button_id_new = @bjss_test_1.get_button_ids
  expect(@button_id_original).not_to eq button_id_new
end
