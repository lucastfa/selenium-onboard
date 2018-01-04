class NewAccountPage < SitePrism::Page
  element :gender_radio_button, '#id_gender1'
  element :first_name_field, '#customer_firstname'
  element :last_name_field, '#customer_lastname'
  element :email_field, '#email'
  element :password_field, '#passwd'
  element :day_list, "select[name='days']"
  element :month_list, "select[name='months']"
  element :year_list, "select[name='years']"
  element :newsletter_checkbox, '#newsletter'
  element :special_offers_checkbox, '#optin'

  element :adress_first_name_field, '#firstname'
  element :adress_last_name_field, '#lastname'
  element :company_field, '#company'
  element :adress1_field, '#address1'
  element :adress2_field, '#address2'
  element :city_field, '#city'
  element :state_list, "select[name='id_state']"
  element :postcode_field, '#postcode'
  element :country_list, "select[name='id_country']"
  element :additional_information_field, '#other'
  element :phone_field, '#phone'
  element :phone_mobile_field, '#phone_mobile'
  element :adress_alias_field, '#alias'

  element :register_button, '#submitAccount'

  @@first_name = Faker::Name.name
  @@last_name = Faker::Name.name

  def fillPersonalInformation
    wait_for_gender_radio_button
    gender_radio_button.click
    first_name_field.set(@@first_name)
    last_name_field.set(@@last_name)
    email_field.set(Faker::Internet.email)
    password_field.set(Faker::Number.number(8))
    day_list.select('31')
    month_list.select('January')
    year_list.select(2017)
    newsletter_checkbox.click
    special_offers_checkbox.click
  end

  def fillYourAdress
    adress_first_name_field.set(@@first_name)
    adress_last_name_field.set(@@last_name)
    company_field.set(Faker::Company.name)
    adress1_field.set(Faker::Address.street_address)
    adress2_field.set(Faker::Address.secondary_address)
    city_field.set(Faker::Address.city)
    state_list.select('Alabama')
    postcode_field.set(Faker::Number.number(5))
    country_list.select('United States')
    additional_information_field.set(Faker::Name.name)
    phone_field.set(Faker::Number.number(8))
    phone_mobile_field.set(Faker::PhoneNumber.cell_phone)
    adress_alias_field.set(Faker::Address.street_address)
  end

  def confirm
    register_button.click
  end
end
