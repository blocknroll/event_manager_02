class Attendee

  attr_accessor :first_name, :last_name, :phone_number

  def initialize(input = {})
    @first_name = input[:first_name]
    @last_name = input[:last_name]
    @phone_number = input[:phone_number]
  end

  # def first_name
  #   "George"
  # end

  # def last_name
  #   "Washington"
  # end

  # def phone_number
  #   '2024556677'
  # end

end
