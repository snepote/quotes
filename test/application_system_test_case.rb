require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  include Warden::Test::Helpers
  
  # Change :headless_chrome with :chrome to see tests running in the browser
  driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400]
end
