require '../classes/nameable'

class Decorator < Nameable
  def initialize(nameable)
    @nameable = nameable
    super()
  end

  def correct_name
    @nameable.correct_name
  end
end

class Capitalize < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class Trimmer < Decorator
  def correct_name
    @nameable.correct_name[0..9]
  end
end
