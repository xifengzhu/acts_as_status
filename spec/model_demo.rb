require File.expand_path('../../lib/acts_as_status', __FILE__)

class ModelDemo
  extend ActsAsStatus
  attr_accessor :status

  acts_as_status :status, [:failer, :warning, :success]
end