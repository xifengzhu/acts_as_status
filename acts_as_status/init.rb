require File.expand_path('../acts_as_status', __FILE__)

module ActiveRecord
    Base.send(:include, ActsAsStatus)
end