
def is_alpha?(character)
    ascii_num = character.ord
    if ascii_num >=65 && ascii_num <=90
        # alphabet is uppercase
        return true
    elsif ascii_num >= 97 && ascii_num <=122
        # alphabet is lowercase
        return true
    else
        return false
    end
end

def encrypt_alpha(character,shift)
    ascii_num = character.ord - shift
    if ascii_num < 65 || ascii_num <97 
        #loop it back to a or A if overflow
        ascii_num +=26
    end
    ascii_num.chr
end

def caesar_shift(input,shift)
    split_input = input.split("")
    split_input.map do |character|
        alpha = is_alpha?(character)
        character = alpha ? encrypt_alpha(character,shift) : character
        character
    end.join
end

print("Input string: ")
input = gets.chomp
print("Input left shift amount: ")
shift = gets.chomp.to_i
p caesar_shift(input,shift)