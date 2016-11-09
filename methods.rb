# Example: One way to define instance methods

class SoftwareEngineer
  def code
    puts "I can code."
  end
end

elon = SoftwareEngineer.new
elon.code # "I can code."

class WebDeveloper < SoftwareEngineer
  def can_write_ruby?
    puts "Sure I can write ruby!"
  end

  def can_write_javascript?
    puts "Sure I can write javascript!"
  end
end

ly = WebDeveloper.new
ly.code
ly.can_write_ruby?
ly.can_write_javascript?
