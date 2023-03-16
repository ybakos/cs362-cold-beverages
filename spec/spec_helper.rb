# http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration

# generates coverage analysis report at /coverage/index.html after executing tests via `rspec`
require 'simplecov'
SimpleCov.start do
  add_filter '/spec/'
end

RSpec.configure do |config|
  # rspec-expectations config
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # rspec-mocks config
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  # backward compatibility
  config.shared_context_metadata_behavior = :apply_to_host_groups
end