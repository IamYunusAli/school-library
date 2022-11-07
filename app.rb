require_relative './logic'

class App
  attr_accessor :logics
  def initialize
    @logics = Logic.new
  end

  def list_books
    @logics.list_book
  end

  def list_peoples
    @logics.list_people
  end

  def create_a_persons
    @logics.create_a_person
  end

  def create_a_books
    @logics.create_a_book
  end

  def create_a_rentals
    @logics.create_a_rental
  end

  def list_rentals_by_ids
    @logics.list_rentals_by_id
  end
end