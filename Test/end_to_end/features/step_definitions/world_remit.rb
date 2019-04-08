Given(/^I navigate to world Remit home page$/) do
  @world_remit = WorldRemit.new
  visit('/')
  expect(@world_remit.has_selector?(:id, 'selectTo')).to eq(true)
end

When(/^I select country 'Philippines' and start the money sending process$/) do
  @world_remit.choose_a_country('Philippines')
end


Then("I should see the Online Money Transfer Page") do
  @money_transfer = MoneyTransfer.new
  expect(@money_transfer.has_selector?(:id, 'selectTo')).to eq(true)
  expect(@money_transfer.get_selected_country).to eq('Philippines')
end

When(/^I select the serive type as 'Cash Pickup'$/) do
  @money_transfer.select_service_type('Cash Pickup')
end

Then(/^I should see the Payout Networks$/) do

  expect(@money_transfer.payout_method.class==Capybara::Node::Element).to eq(true)
end

When(/^I select the Payout Network as 'MLhuillier'$/) do
  @money_transfer.select_payout('MLhuillier')
end

Then(/^I should see the Input Row$/) do
  expect(@money_transfer.role_method.class==Capybara::Node::Element).to eq(true)
end

When(/^I select the Role Method as 'Send'$/) do
  @money_transfer.select_role('Send')
end

Then(/^I should see the Home currency is selected$/) do
  expect(@money_transfer.currency.text).to eq('GBP')
end

When(/^I set the Amount as (\d+)$/) do|amount|
  @money_transfer.set_amount(amount.to_i)
end

Then(/^I should see the calculato$/) do
  expect(@money_transfer.calculator.class==Capybara::Node::Element).to eq(true)
end