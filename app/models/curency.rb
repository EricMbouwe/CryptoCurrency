class Curency < ApplicationRecord
  def current_price
    # url = 'https://api.coinmarketcap.com/v1/tiket/'
    # url = "https://pro.coinmarketcap.com/migrate/"
    url = 'https://min-api.cryptocompare.com/data/price?fsym=BTC&tsyms=USD,JPY,EUR'
    request = HTTParty.get(url + self.slug)
    response = JSON.parse(request.body)
  end
end
