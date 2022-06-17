require 'pry'

def inserted_bug
    deep_in_a_bug = "You now get inside a bug"
    puts deep_in_a_bug
    pry_fix = "with pry you can check the bug"
    binding.pry
    static = "Pry makes it static" 
    puts static
end

inserted_bug