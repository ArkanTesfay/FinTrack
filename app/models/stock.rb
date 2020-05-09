class Stock < ApplicationRecord


  def self.find_stock(input)
    client = IEX::Api::Client.new(
            publishable_token:Rails.application.credentials.iex_client[:sandbox_api_key],
            secret_token: 'Tsk_bd2bbca4a88e4e67b19728458acac43c',
            endpoint: 'https://sandbox.iexapis.com/v1')
    client.price(input)
  end
end
