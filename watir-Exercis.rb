require 'watir'
require 'Watir' 
 browser = Watir::Browser.new :firefox  
 browser.goto "https://www.tumblr.com/login"
singUpEmail = browser.text_field(id: "signup_email").set "nightmar@live.co.uk" 
singUpPassword = browser.text_field(id: "signup_password").set "example2"
logInButton = browser.button(id: "signup_forms_submit").click
iconPostText = browser.i(class: "icon_post_text").click
textBoxSpace = browser.div(class: "editor-richtext").send_keys "Testing something here"
titleSpace = browser.div(class: "editor").send_keys "hello ruby"
click_button = browser.button(class: "create_post_button").click

body = browser.div(class: "post_body")

body.each_with_index do |o, post| puts "your post is: #{o.text}"

  if o.text.match /Testing something here/
    puts  "Post #{post+1}: success"
  else  
    puts "Post #{post+1}: failure"
  end 
 end

