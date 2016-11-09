# # Example: A Class is a subclass of Module
# class A
# end

# puts "---A---"
# puts "A's class is: #{A.class}"
# puts "A's superclass is: #{A.superclass}"

# puts "---Class---"
# puts "Class' class is: #{Class.class}"
# puts "Class' superclass is: #{Class.superclass}"

# puts "---Module---"
# puts "Module's class is: #{Module.class}"
# puts "Module's superclass is: #{Module.superclass}"

# # Example: Module
# module A
# end

# module B
# end

# class WhateverClass
#   include A
#   prepend B
# end

# puts "WhateverClass' ancestors are: #{WhateverClass.ancestors}"

# class AnotherClass
#   include A
#   include B
# end

# puts "AnotherClass' ancestors are: #{AnotherClass.ancestors}"

# class TheOtherClass
#   include B
#   include A
# end

# puts "TheOtherClass' ancestors are: #{TheOtherClass.ancestors}"

# # Example: What is self?
# class A
#   puts "Inside class self is: #{self}"
#   def whatever_method
#     puts "Inside method self is: #{self}"
#   end
# end

# a = A.new
# b = A.new
# a.whatever_method
# b.whatever_method