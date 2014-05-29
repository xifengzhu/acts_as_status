## acts_as_status
==============
### Installation

    gem 'acts_as_status', :git => "git@github.com:huxinghai1988/acts_as_status.git"

### How to use
In your model you can add acts_as_status like this

    class Model <  ActiveRecord::Base
      extend ActsAsStatus
      
      acts_as_status :field, ["public", "private", "others"]
    end

or

    class Model
      include Mongoid::Document
      extend ActsAsStatus

      acts_as_status :field, ["public", "private", "others"]
    end

when you set value to your model attribute
for example:

    Model.last.field == "public" or Model.last.field == 1

when you get the value

    Model.last.field

you can get this:

    <Status:0x00000005ac32a8 @defaults=[:invalid, :lovers, :public, :private], @state=2>

