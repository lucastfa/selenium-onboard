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

  element :adress_first_name_field, "#firstname"
  element :adress_last_name_field, "#lastname"
  element :company_field, "#company"
  element :adress1_field, "#address1"
  element :adress2_field, "#address2"
  element :city_field, "#city"
  element :state_list, "select[name='id_state']"
  element :postcode_field, "#postcode"
  element :country_list, "select[name='id_country']"
  element :additional_information_field, "#other"
  element :phone_field, "#phone"
  element :phone_mobile_field, "#phone_mobile"
  element :adress_alias_field, "#alias"

  element :register_button, "#submitAccount"

  @@first_name = Faker::Name.name
  @@last_name = Faker::Name.name

  def fillPersonalInformation()
    email = Faker::Internet.email
    password = Faker::Number.number(8)
    day = 31
    month = "January"
    year = 2017

    wait_for_gender_radio_button
    gender_radio_button.click
    first_name_field.set(@@first_name)
    last_name_field.set(@@last_name)
    email_field.set(email)
    password_field.set(password)
    day_list.select(day)
    month_list.select(month)
    year_list.select(year)
    newsletter_checkbox.click
    special_offers_checkbox.click
  end

  def fillYourAdress()
  	company = Faker::Company.name
  	address1 = Faker::Address.street_address
  	address2 = Faker::Address.secondary_address
  	city = Faker::Address.city
  	state = "Alabama"
  	postcode = assword = Faker::Number.number(5)
  	country = "United States"
  	additional_information = Faker::LeagueOfLegends.quote
  	phone = assword = Faker::Number.number(8)
  	phone_mobile = Faker::PhoneNumber.cell_phone
  	adress_alias = Faker::Address.street_address

  	adress_first_name_field.set(@@first_name)
  	adress_last_name_field.set(@@last_name)
  	company_field.set(company)
  	adress1_field.set(address1)
  	adress2_field.set(address2)
  	city_field.set(city)
  	state_list.select(state)
  	postcode_field.set(postcode)
  	country_list.select(country)
  	additional_information_field.set(additional_information)
  	phone_field.set(phone)
  	phone_mobile_field.set(phone_mobile)
  	adress_alias_field.set(adress_alias)
  end

  def confirm()
    register_button.click
  end

end
