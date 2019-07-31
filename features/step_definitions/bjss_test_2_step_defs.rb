Before do
  @bjss_test_2 = bjss_test_2
end

When("the user clicks the button {string}") do |button|
  click_button button
end

When("the user waits for the loading bar to disappear") do
  @bjss_test_2.loading_disappear
end

Then("the user confirms {string} has appeared on the page") do |string|
  expect(page.has_content? string).to eq true
end
