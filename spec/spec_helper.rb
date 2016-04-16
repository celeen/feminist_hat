# Require this file for unit tests
ENV['LOTUS_ENV'] ||= 'test'

require_relative '../config/environment'
require 'minitest/reporters'
require 'minitest/autorun'

reporter_options = { color: true}

Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(reporter_options)]

Lotus::Application.preload!
