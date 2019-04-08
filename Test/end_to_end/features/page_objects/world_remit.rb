class WorldRemit < SitePrism::Page

  element :country_to_send_menu, :id, 'selectTo'

  element :get_started_btn, :id, 'sendTargetHREF'

  def choose_a_country(country)
    country_to_send_menu.select(country)
    get_started_btn.click
  end

end

class MoneyTransfer < SitePrism::Page

  element :destination, :xpath, '//*[@id="destinationContainer"]/span'
  element :service_type, :id, 'selectService'
  element :payout_method, :xpath, '//*[@id="calculator-form"]/fieldset[1]/div[3]/select'
  element :role_method, :xpath, '//*[@id="calculator-form"]/fieldset[2]/div[1]/div[1]/div/select'
  element :currency, :xpath, '//*[@id="calculator-form"]/fieldset[2]/div[1]/div[2]/div/span'
  element :amount_txt, :xpath, '//*[@id="calculator-form"]/fieldset[2]/div[1]/div[3]/input'
  element :calculator, :xpath, '//*[@id="calculator-form"]/fieldset[2]/div[2]'

  def get_selected_country()
    destination.text
  end

  def select_service_type(servicetype)
    service_type.select(servicetype)
  end

  def select_payout(payout)
    payout_method.select(payout)
  end

  def select_role(role)
    role_method.select(role)
  end

  def set_amount(amount)
    amount_txt.set amount
  end

end
