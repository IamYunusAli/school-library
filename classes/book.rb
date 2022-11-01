class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental, _person)
    @rentals.push(rental)
    rental.book = self
  end
end
