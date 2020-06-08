class Curency < ApplicationRecord

  def calculate_value(amount)
    (current_price.to_f * amount.to_f).round(4)
  end

  def current_price
    url = 'https://min-api.cryptocompare.com/data/price?fsym=BTC&tsyms=USD,JPY,EUR'
    request = HTTParty.get(url + self.slug)
    response = JSON.parse(request.body)["USD"]
  end
end
