module ActsAsStatus

  def acts_as_status(field, status)
    states = status.map(&:to_sym).uniq    
    
    instance_eval do

      define_method field do          
        ActsAs::Status.new(read_attribute(field), states.clone)
      end

      states.each do |name|
        define_method "#{field}_#{name}?" do
          self.send(field) == name
        end
      end

      define_method "#{field}=" do | value |
        s = ActsAs::Status.default_convert(value, states.clone)
        write_attribute(field, s.state)          
      end
    end   

    that = (class << self; self; end)   


    that.send(:define_method, "#{field}_all") do 
      states
    end

    that.send(:define_method, "#{field}_by_index") do |state|
      (states.index(state.to_sym) || -1) + 1
    end

  end
  
end