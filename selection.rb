class Selection
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
end
