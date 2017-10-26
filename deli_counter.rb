# Write your code here.

def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  else
    current_line = []
    # index = 1
    # katz_deli.map do |name|
    #   s = index.to_s + ". " + name
    #   index += 1
    #   current_line << s
    # end
    katz_deli.each.with_index(1) {|name, index| current_line << "#{index}. #{name}"}
    puts "The line is currently: #{current_line.join(" ")}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end
