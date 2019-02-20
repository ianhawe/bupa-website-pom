require 'capybara/dsl'
# This page will hold all the URL links to different sections of the Bupa website
class VisitBupaPage
  include Capybara::DSL

  # Page Objects
  HOMEPAGE_URL = 'https://www.bupa.co.uk/'.freeze
  SIGNIN_LINK = 'Login'.freeze

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def visit_signin
    click_link(SIGNIN_LINK)
  end
end
