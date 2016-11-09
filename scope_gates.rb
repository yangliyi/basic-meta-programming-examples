# Example: Scope gate
v1 = 1
class MyClass #SCOPE GATE: entering class
  v2 = 2
  p local_variables #=>["v2"]
  def my_method #SCOPE GATE: entering def
    v3 = 3
    p local_variables
  end # SCOPE GATE: leaving def
  p local_variables #=>["v2"]
end # SCOPE GATE: leaving class

obj = MyClass.new
obj.my_method #=>[:v3]
p local_variables #=>[:v1, :obj]

# Example: Flattening the Scope