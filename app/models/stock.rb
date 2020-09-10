class Stock < ApplicationRecord

  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
    publishable_token: 'Tpk_2e0528073b4449638d3ab1410dea6ace',
    endpoint: 'https://sandbox.iexapis.com/v1'
    )
    client.price(ticker_symbol)
  end

end
