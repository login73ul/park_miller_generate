class ParkMiller  
  @@last = 0
  
  def pm_hash(pwd, length=32)
    unless pwd.length
      puts "String may not be empty"
      return 0
    end
    puts "String is: #{pwd}"
    pwd += '0'
    puts "Generating seed..."
    @@last = self.sum_asci(pwd)
    puts "Generating seed: #{self.sum_asci(pwd)}"
    result = ""
    puts "Generating number..."
    for i in 0...length
        result += (((pwd[i % pwd.length]).ord + self.park_miller) % 15).to_s(16)
        puts "generate_seed =: #{self.park_miller}"
    end
    return result
  end
  
protected
  def sum_asci(str)
    seed = 0
    for i in 0...str.length
      if str[i] != nil 
        seed += str[i].ord * (257 ** i)
      end
    end
    seed 
  end
  
  def park_miller()
    return @@last = (16807 * @@last % 2147483647) % 65535
  end
  
end