acts_as_status
==============
<h1>How to user</h1>
In your model you can add acts_as_status like this 
class Model < ActiveRecord::Base
  acts_as_status :attribute, ["public", "private", "others"]			
end

when you set value to your model attribute 
for example: Model.last.attribute == "public" or Model.last.attribute == 1

get the value 
when you use this: Model.last.attribute

you can get this:  #<Status:0x00000005ac32a8 @defaults=[:invalid, :lovers, :public, :private], @state=2>

