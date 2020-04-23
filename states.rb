def states_quiz

  states = ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 
  'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii',
  'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana',
  'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi',
  'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey',
  'New Mexico', 'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma',
  'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota',
  'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia',
  'Wisconsin', 'Wyoming']

  correct_guesses = []

  while states.length > 0 do
    puts 'Guess a state!'
    guess = gets.chomp.downcase.capitalize
    if states.include?(guess)
      states.delete(guess)
      correct_guesses << guess
      puts "You have guessed #{50-states.length} states"
    elsif guess == 'Quit'
      puts 'Goodbye!'
      break
    elsif guess == 'X'
      show_guesses
    else
      puts "That's not a state."
    end
  end
  puts 'You win!' unless states.length > 0

end

states_quiz