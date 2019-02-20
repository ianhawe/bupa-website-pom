require_relative 'pages/bupa_signin'
require_relative 'pages/visit_bupa_pages'
# This class is the super class which will hold all related pages to Bupa
class BupaWebpage
  def bupa_signin_page
    BupaSignIn.new
  end

  def visit_bupa_pages
    VisitBupaPage.new
  end
end
