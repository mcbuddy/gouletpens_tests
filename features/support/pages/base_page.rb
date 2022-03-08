# frozen_string_literal: true

require 'rspec/matchers'

class BasePage < SitePrism::Page

  include RSpec::Matchers
  include Capybara::DSL

  def wait_until(timeout: 30)
    Timeout.timeout(timeout) do
      sleep(1) until (value = yield)
      value
    end
  rescue Timeout::Error
    raise Timeout::Error, "After #{timeout}s: #{message}"
  end

end
