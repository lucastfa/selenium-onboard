class NewAccountPage < SitePrism::Page

  element :gender_radio_button, "#id_gender1"
  element :first_name_field, "#customer_firstname"
  element :last_name_field, "#customer_lastname"
  element :email_field,"#email"
  element :password_field, "#passwd"
  element :day_list, "select[name='days']"
  element :month_list, "select[name='months']"
  element :year_list, "select[name='years']"
  element :newsletter_checkbox, "#newsletter"
  element :special_offers_checkbox, "#optin"

  


  def fillPersonalInformation()

    first_name = Faker::Name.name
    last_name = Faker::Name.name
    email = Faker::Internet.email
    password = Faker::Number.number(8)
    day = 31
    month = "January"
    year = 2017

    gender_radio_button.click
    first_name_field.set(first_name)
    last_name_field.set(last_name)
    email_field.set(email)
    password_field.set(password)
    day_list.select(day)
    month_list.select(month)
    year_list.select(year)
    newsletter_checkbox.click
    special_offers_checkbox.click

  end 

  def fillYourAdress()

  	

  end

end