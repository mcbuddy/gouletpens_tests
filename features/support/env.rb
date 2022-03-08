# frozen_string_literal: true

require 'site_prism'
require 'percy/capybara'
require 'pry'
require_relative 'helpers/pages_initializer'
require_relative 'helpers/capybara_helper'

# Capybara ====================================================================
CapybaraHelper.configure

After do
  CapybaraHelper.reset_browser
end

After do |scn|
  binding.pry if scn.failed? && ENV['DEBUG']
  CapybaraHelper.reset_browser
end

# Pages initialization ========================================================
World PagesInitializer

Before do
  @random_int = Time.now.to_i
end
