# frozen_string_literal: true

require 'faraday'
require 'json'
require_relative 'base_page'

class Backend < BasePage

  def get_email_confirmation(email)
    wait_until do
      result = api_get("https://endtest.io/mailbox?email=#{email}&format=json")
      result != []
    end

    expect(result[0]['toAddress']).to eql(email)
    expect(result[0]['fromAddress']).to eql('info@gouletpens.com')
    expect(result[0]['subject']).to eql('Your Goulet Pens account confirmation')
  end

  def get_reset_password_email(email)
    wait_until do
      result = api_get("https://endtest.io/mailbox?email=#{email}&format=json")
      result != []
    end

    expect(result[0]['toAddress']).to eql(email)
    expect(result[0]['fromAddress']).to eql('info@gouletpens.com')
    expect(result[0]['subject']).to eql('Goulet Pens password reset')
  end

  # lighthouse-ruby method helpers
  def run_lighthouse_test(url)
    lighthouse_client = Lighthouse::Ruby::Builder.new(url)
    lighthouse_client.execute
    compile_useful_data(lighthouse_client)
  end

  private

  def api_get(url)
    resp = Faraday.get(url)
    JSON.parse(resp.body)
  end

end
