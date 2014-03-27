acts_as_status
==============
<h1>How to user</h1>
<p>In your model you can add acts_as_status like this</p><br/>
class Model < ActiveRecord::Base </br>
  acts_as_status :attribute, ["public", "private", "others"]<br/>			
end</br>

<p>when you set value to your model attribute</p> <br />
<p>for example: </p> 
Model.last.attribute == "public" or Model.last.attribute == 1 <br/>

<p>when you get the value</p>
<p>Model.last.attribute</p><br/>

<p>you can get this:</p> <br/>
 #<Status:0x00000005ac32a8 @defaults=[:invalid, :lovers, :public, :private], @state=2>

