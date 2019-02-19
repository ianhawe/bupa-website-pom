require 'capybara/dsl'
# This page will hold all the URL links to different sections of the bbc website
class VisitBupaPage
  include Capybara::DSL
  # Page Objects
  HOMEPAGE_URL = 'https://www.bupa.co.uk/'
  SIGNIN_LINK = 'Login'.freeze

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def visit_signin
    # find(:xpath, SIGNIN_LINK).click
    click_link(SIGNIN_LINK)
  end
end
