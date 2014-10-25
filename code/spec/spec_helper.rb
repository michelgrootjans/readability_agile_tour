
RSpec.configure do |config|
  config.expect_with :rspec do |expectation|
    expectation.syntax = :should
  end
end
