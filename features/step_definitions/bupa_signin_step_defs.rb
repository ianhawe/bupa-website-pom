Given('I access the Bupa signin section of the Bupa webpage') do
  @bupa_website = BupaWebpage.new
  @bupa_website.visit_bupa_pages.visit_homepage
  @bupa_website.visit_bupa_pages.visit_signin
end

Given('I input an incorrect username') do
  @bupa_website.bupa_signin_page.fill_in_username('asd')
end

Given('I input a incorrect password') do
  @bupa_website.bupa_signin_page.fill_in_password('asd')
end

When('I try to log in') do
  @bupa_website.bupa_signin_page.click_submit_button
end

Then('I recieve an error of not finding the account or session timed out') do
  expect(@bupa_website.bupa_signin_page.no_session).to eq(@bupa_website.bupa_signin_page.session_timed_out)
end
