# # Example: One way to define instance methods

# class SoftwareEngineer
#   def code
#     puts "I can code."
#   end
# end

# elon = SoftwareEngineer.new
# elon.code # "I can code."

# class WebDeveloper < SoftwareEngineer
#   def can_write_ruby?
#     puts "Sure I can write ruby!"
#   end

#   def can_write_javascript?
#     puts "Sure I can write javascript!"
#   end
# end

# ly = WebDeveloper.new
# ly.code
# ly.can_write_ruby?
# ly.can_write_javascript?

# Example: Use a more elegant way to define instance methods

class SoftwareEngineer
  def code
    puts "I can code."
  end

  def self.can_write(*args)
    args.each do |name|
      define_method("can_write_#{name}?") do
        puts "Sure I can write #{name}!"
      end
    end
  end
end

elon = SoftwareEngineer.new
elon.code # "I can code."

class WebDeveloper < SoftwareEngineer
  can_write :ruby, :javascript
end

ly = WebDeveloper.new
ly.code
ly.can_write_ruby?
ly.can_write_javascript?

# Example: method_missing

class Athlete
end

class BasketballPlayer < Athlete
  def method_missing(method_name, *args, &blk)
    puts "Ha I got you!"
  end

end

li_yi = BasketballPlayer.new
puts "---First time called the method---"
li_yi.is_dribbling

