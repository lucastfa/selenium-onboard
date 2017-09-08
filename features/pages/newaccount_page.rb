class NewAccountPage < SitePrism::Page

  element :gender_radio_button, "#id_gender1"
  element :first_name_field, "#customer_firstname"
  element :last_name_field, "#customer_lastname"
  element :email_field,"#email"
  element :password_field, "#passwd"

  


  def create_new_account()
    first_name = Faker::Name.name
    last_name = Faker::Name.name
    email = Faker::Internet.email
    password = Faker::Number.number(8) 
    gender_radio_button.click
    first_name_field.set(first_name)
    last_name_field.set(last_name)
    email_field.set(email)
    password_field.set(password)
  end 

end