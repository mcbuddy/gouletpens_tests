# frozen_string_literal: true

module CapybaraHelper

  def self.configure
    require 'selenium-webdriver'
    require 'capybara/cucumber'
    require 'webdrivers' unless File.exist?('/usr/bin/chromedriver')
    require 'lighthouse/ruby'

    chrome_options = {
      args: %w[ --enable-automation
                --no-sandbox'
                --test-type'
                --window-size=1920,1080
                --disable-gpu
                --disable-infobars
                --disable-extensions
                --disable-dev-shm-usage
                --remote-debugging-port=9222]
    }
    options = Selenium::WebDriver::Chrome::Options.new(**chrome_options)
    options.headless! if ENV['CHROME_HEADLESS']

    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(
        app,
        browser: :chrome,
        options: options,
      )
    end

    Capybara.javascript_driver = :chrome
    Capybara.app_host = ENV['BASE_URI']
    Capybara.default_max_wait_time = 30
    Capybara.disable_animation = true
    Capybara.run_server = false
    Capybara.threadsafe = true

    # Lighthouse Preferences for Performance test config.
    Lighthouse::Preferences.remote_debugging_port = 9222
    Lighthouse::Preferences.chrome_flags = %w[headless no-sandbox disable-gpu]
    Lighthouse::Preferences.lighthouse_options = %w[disable-storage-reset throttling-method=provided preset=desktop]
  end

  def self.reset_browser
    if Capybara.current_driver == Capybara.javascript_driver
      Capybara.current_session.driver.browser.manage.delete_all_cookies
    else
      Capybara.current_session.driver.browser.clear_cookies
    end
    Capybara.reset_sessions!
  end
end
