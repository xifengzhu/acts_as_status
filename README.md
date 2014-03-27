acts_as_status
==============
<h1>How to user</h1>
<p>In your model you can add acts_as_status like this</p>
class Model <  ActiveRecord::Base
  <p>acts_as_status :attribute, ["public", "private", "others"]		</p>
<p>end</p>

<p>when you set value to your model attribute</p>
<h4>for example: </h4> 
</p>Model.last.attribute == "public" or Model.last.attribute == 1 </p>

<p>when you get the value</p>
<p>Model.last.attribute</p>

<p>you can get this:</p>
 <Status:0x00000005ac32a8 @defaults=[:invalid, :lovers, :public, :private], @state=2>

