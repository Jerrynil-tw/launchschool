VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def game_result(choice, computer_choice)
  if choice == computer_choice
    "even"
  elsif choice == "rock" && computer_choice == "paper"
    "you lose"
  elsif choice == "rock" && computer_choice == "scissors"
    "you win"
  elsif choice == "paper" && computer_choice == "rock"
    "you win"
  elsif choice == "paper" && computer_choice == "scissors"
    "you lose"
  elsif choice == "scissors" && computer_choice == "rock"
    "you lose"
  elsif choice == "scissors" && computer_choice == "paper"
    "you win"
  end
end
loop do
  choice = ""
  loop do
    prompt("choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("wrong typo, please put in 'rock', 'paper' or 'scissors'")
    end
  end
  computer_choice = VALID_CHOICES.sample()

  prompt("your chose is #{choice},computer's chose is #{computer_choice}")

  prompt("calculating...")

  prompt(game_result(choice, computer_choice))
  answer = ""
  loop do
    prompt("do you want to play again?")

    answer = Kernel.gets().chomp()

    if answer.downcase().start_with?("y", "n")
      break
    else
      prompt("wrong typo, please out in 'yes' or 'no'")
    end
  end
  if answer.downcase().start_with?("y")
    next
  elsif answer.downcase().start_with?("n")
    break
  end
end

prompt("Thank you for playing")
