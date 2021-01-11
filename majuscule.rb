if (ARGV.length != 1)
    puts "#{__FILE__} requires one argument"
    exit
end

argument = ARGV[0].to_s
argument_downcases = argument.upcase
argument_array = argument_downcases.chars

def capitalize_even_numbers(argument_array)
    nombres = 0
    while nombres < argument_array.length
        solution = argument_array[nombres]
        solution[0] = solution[0].downcase
        if solution[0] != " "
            nombres += 2
        else
            nombres += 1
        end
    end
    return argument_array.join("")
end

puts capitalize_even_numbers argument_array

