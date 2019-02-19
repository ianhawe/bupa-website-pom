# bupa-website-pom Source(https://www.bupa.co.uk/)

## Description


### Languages and Tools used
* Ruby
* Cucumber(with Gherkin syntax)
* Page Object Model

### How to download
1. If you choose to clone it go into your terminal (on MAC or download one for windows).
2. Create a directory.
3. Type git clone followed by the link obtained via opening 'clone or download'.
```git clone https://github.com/ianhawe/bupa-website-pom.git```
4. This will make copy to the directory you're in.
5. Go to that directory.
6. Open up the folder in your choice of IDE or text editor.


### How to use
1. Open up the terminal in your chosen IDE
2. Type bundle install, all the gems and dependancies will be installed
3. If you want to run the tests, enter the pom-homework folder, then type in 'cucumber' in the   terminal.

### Alternative use
The super class is  ```bupa_webpage.rb``` if you instaniate it, some of the objects are modelled out, meaning you can call the methods with whichever part of the signin page you want. 

``` 
  @bupa_website = BupaWebpage.new
  @bupa_website.visit_bupa_pages.visit_homepage 
  @bupa_website.visit_bupa_pages.visit_signin

```
### Snippet explaination
The above code snippet is how to instaniate the BupaWebpage's, this will get you the data you.need.