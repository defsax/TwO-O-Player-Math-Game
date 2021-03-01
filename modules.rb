module Helpers
  def Helpers.get_input()
    print "> " 
    return $stdin.gets.chomp
  end

  def Helpers.print_output(message)
    puts message
  end
end