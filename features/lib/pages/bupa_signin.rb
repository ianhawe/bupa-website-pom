require 'capybara/dsl'
# This will test the registration process of Bupa.
class BupaSignIn
  include Capybara::DSL
  attr_accessor :details_dont_match, :session_timed_out
  USERNAME_TEXT_ID = 'IDToken1'.freeze
  PASSWORD_TEXT_ID = 'IDToken2'.freeze
  INCORRECT_DETAILS = '/html/body/section/div/p/b'.freeze
  SESSION_TIMED_OUT = '.message h3'
  LOGIN_BUTTON_NAME = 'Log In'.freeze

  def initialize
    @session_timed_out = 'Your session has timed out.'
    @details_dont_match = "These details don't match those held by us".freeze
  end
  def fill_in_username(username)
    fill_in(USERNAME_TEXT_ID, with: username)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_TEXT_ID, with: password)
  end

  def click_submit_button
    click_button(LOGIN_BUTTON_NAME)
  end

  def incorrect_details_message_appears
    find(:xpath, INCORRECT_DETAILS).text
  end

  def no_session
    find(:css, SESSION_TIMED_OUT).text
  end
end
