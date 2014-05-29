require 'active_support/concern'
require 'acts_as_status/status'

module ActsAsStatus
  extend ::ActiveSupport::Concern

  module ClassMethods
    def acts_as_status(field, status)
      _states = status.map(&:to_sym)

      self.instance_eval do
        attr = "#{field}".to_sym

        define_method "#{field}" do
          Status.new(read_attribute(attr), _states.uniq)
        end

        define_method "#{field}=" do | value |
          s = Status.default_convert(value, _states.uniq)
          write_attribute(attr, s.state)
          s
        end
      end

      self.class_eval do

        def self.__states(field = nil, states = nil)
          @states ||= {}
          @states[field] = states if states.present?
          @states
        end

        def self._get_state_val(field, state = nil)
          if state.nil?
            state = field
            field = __states.keys.first
          end
          (__states[field].index(state.to_sym) || -1) + 1
        end
      end

      self.__states(field, status)
    end
  end
end