require_relative './app'

def choices(app, input)
  case input
  when 1
    app.list_books
  when 2
    app.list_people
  when 3
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    app.create_a_person
  when 4
    app.create_a_book
  when 5
    app.create_a_rental
  when 6
    puts 'ID of person'
    app.list_rentals_by_id
  else
    puts 'Command not found'
  end
end

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

  choices(app, input)
  run(app)
end

def main
  puts 'Welcome to School Library App!'
  app = App.new
  run(app)
end

main
