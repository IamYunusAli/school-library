require_relative './classes/student'
require_relative './classes/teacher'
require_relative './classes/book'
require_relative './classes/rental'
require_relative './classes/person'
require 'date'

class Logic
    attr_accessor :people, :books, :rentals
    def initialize
      @people = []
      @books = []
      @rentals = []
    end

    def list_book
        if @books.length.positive?
          @books.each_with_index do |book, index|
            puts "Book: #{index} Title: #{book.title} Author: #{book.author}"
          end
        else
          (puts 'No books found')
        end
      end

      def list_people
        if @people.length.positive?
          @people.each_with_index do |person, index|
            puts "[#{person.class}] #{index} ID: #{person.id} Name: #{person.name} Age: #{person.age} "
          end
        else
          (puts 'No people found Found')
        end
      end

      def parent_permission?
        print 'Has parent permission? [Y/N]: '
        parent_permission = gets.chomp.capitalize
        case parent_permission
        when 'Y'
          parent_permission = true
        when 'N'
          parent_permission = false
        else
          puts 'Please enter a valid input'
          parent_permission?
        end

        parent_permission
      end

      def choice
        a = gets.chomp.to_i
        if [1, 2].include?(a)
          a
        else
          puts 'Please enter a valid value (1 or 2)'
          choice
        end
      end

      def create_a_person
        a = choice
        print 'Age: '
        age = gets.chomp
        print 'Name: '
        name = gets.chomp

        case a
        when 1
          parent_permission = parent_permission?
          @people << Student.new(name, parent_permission, age)
          puts 'Student created successfully'
        when 2
          print 'Specialization: '
          specialization = gets.chomp
          @people << Teacher.new(name, specialization, age)
          puts 'Teacher created successfully'
        end
      end

      def create_a_book
        print 'Title: '
        title = gets.chomp
        print 'Author: '
        author = gets.chomp
        @books << Book.new(title, author)
        puts 'Book created successfully'
      end

      def create_a_rental
        puts 'Add rental'
        puts 'Select Book from the following list by number'
        list_books
        book_index = gets.chomp.to_i
        puts 'Select Person from the following list by number'
        list_people
        person_index = gets.chomp.to_i
        puts "Input Date | today date is: #{Date.today}"
        date = gets.chomp
        rental = Rental.new(date, books[book_index], people[person_index])
        @rentals.push(rental)
        puts 'Rental created successfully'
      end

      def list_rentals_by_id
        @rentals.each { |x| puts "Date: #{x.date} Person: #{x.person.name} ID: #{x.person.id}" }
        print 'ID of person: '
        id = gets.chomp.to_i
        person = @rentals.select { |p| p.person.id == id }
        puts 'Rentals:'
        person.each { |x| puts "Date: #{x.date} Book: #{x.book.title} by #{x.book.author}" }
      end

end