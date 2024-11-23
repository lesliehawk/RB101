def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num # not foolproof validation, but LS says good enough
end

def operation_to_message(op)
  op_hash = { '+' => 'Adding',
              '-' => "Subtracting",
              '*' => "Multiplying",
              '/' => "Dividing" }
  op_hash[op] # returns operator verb
end

prompt("Welcome to Calculator! Enter you name:")

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt("Make sure you use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

# ask for two numbers
loop do # main loop
  num1 = ''
  loop do # first number loop
    prompt("Please enter a number:")
    num1 = gets.chomp

    if valid_number?(num1)
      break
    else
      prompt("Please use a valid number.")
    end
  end

  num2 = ''
  loop do # second number loop
    prompt("Please enter another number:")
    num2 = gets.chomp

    if valid_number?(num2)
      break
    else
      prompt("Please use a valid number.")
    end
  end

  # ask for teh type of operation to perform: add, subtract, multiply or divide

  # allows us to call a multiline message between "<<=MSG" & "MSG"
  operator_prompt = <<-MSG
    Enter the operation you want to perform:
    +, -, * or /
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp
    if %w(+ - * /).include?(operator) # if array of strings include operator?
      break
    else
      prompt("Must choose +, -, * or /.")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  # display the result
  result =  case operator
            when '+'
              num1.to_i + num2.to_i
            when '-'
              num1.to_i - num2.to_i
            when '*'
              num1.to_i * num2.to_i
            when '/'
              num1.to_f / num2.to_f
            end

  prompt("#{num1} #{operator} #{num2} = #{result}")

  prompt("Do you want to perform another calculation? (Y or N)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using Calculator! Goodbye.")
