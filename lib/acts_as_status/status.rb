module ActsAs
  class Status
    include Comparable
    attr_reader :state, :defaults

    def self.default_convert(obj, defaults = [])
      defaults = defaults.insert(0, :invalid).uniq
      num = case obj
        when Fixnum
          num = obj
        when String, Symbol
          num = defaults.index(obj.to_sym) || 0
        else
          num = 0
        end

      new(num, defaults)
    end

    def initialize(n, defaults)
      @defaults = defaults.insert(0, :invalid).uniq
      @state = unless n.is_a?(Fixnum)
        0
      else
        n < @defaults.size ? n : 0
      end
    end

    def ==(obj)
      case obj
        when Fixnum
          other_state = obj
        when String, Symbol

          other_state = defaults.index(obj.to_sym) || -1
        when Status
          other_state = obj.state
        else
          other_state = -1
        end
      state == other_state
    end

    def as_json(*params)
      @state
    end

    def name
      @defaults[@state]
    end
  end
end