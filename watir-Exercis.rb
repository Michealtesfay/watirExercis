require 'watir'
require 'yaml' 

browser = Watir::Browser.new :firefox  
 browser.goto "https://www.tumblr.com/login" 

file = YAML.load_file('./userdetails.yml')
 file["user"].each do |yaml_user|
 		browser.text_field(id: "signup_email").send_keys "#{yaml_user["email"]}" 
        browser.text_field(id: "signup_password").send_keys "#{yaml_user["password"]}"
    end

#singUpEmail = browser.text_field(id: "signup_email").set "nightmar@live.co.uk" 
#singUpPassword = browser.text_field(id: "signup_password").set "example2"
logInButton = browser.button(id: "signup_forms_submit").click
iconPostText = browser.i(class: "icon_post_text").click
textBoxSpace = browser.div(class: "editor-richtext").send_keys "Testing something here"
titleSpace = browser.div(class: "editor").send_keys "hello ruby"
click_button = browser.button(class: "create_post_button").click


body = browser.element(class: "editor-richtext")
body1 = browser.element(class: "editor")

  if (body1.text.match /hello ruby/) && (body.text.match /Testing something here/)
    puts"Hader #{body} been matched successfully !!!"
  	puts"paragraph been matched successfully !!!"
  else
  	puts"sorry text not been found"
  end

