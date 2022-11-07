require_relative './app'
require_relative './selection'

def run(app)
  puts ['',
        'Please choose an option by entering a number:',
        '1 - List all books',
        '2 - List all people',
        '3 - Create a person',
        '4 - Create a book',
        '5 - Create a rental',
        '6 - List all rentals for a given person id',
        '7 - Exit']
  input = gets.chomp.to_i
  return puts 'Thank you for using the school library!' unless input != 7
  select = Selection.new
  select.choices(app, input)
  run(app)
end

def main
  puts 'Welcome to School Library App!'
  app = App.new
  run(app)
end

main
