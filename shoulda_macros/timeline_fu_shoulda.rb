require 'timeline_fu/matchers'
require 'timeline_fu/macros'

module ActiveSupport
  class TestCase
    include NotificationFu::Matchers
    if ! defined? Spec
      extend NotificationFu::Macros
    end
  end
end
