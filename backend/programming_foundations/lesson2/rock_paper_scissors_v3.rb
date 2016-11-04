VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == "rock" && second == ("scissors" || "lizard")) ||
    (first == "paper" && second == ("rock" || "spock")) ||
    (first == "scissors" && second == ("paper" || "lizard")) ||
    (first == "spock" && second == ("rock" || "scissors")) ||
    (first == "lizard" && second == ("spock" || "paper"))
end

def game_result(player, computer)
  if win?(player, computer)
    "you won"
  elsif win?(computer, player)
    "you lose"
  else
    "It's tide"
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
      prompt("wrong typo, please put in 'rock', 'paper', 'scissors', 'spock' or 'lizard'")
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
