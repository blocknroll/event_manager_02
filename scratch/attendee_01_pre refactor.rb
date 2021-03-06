class Attendee

  attr_accessor :first_name, :last_name, :phone_number

  def initialize(input = {})
    @first_name   = input[:first_name]
    @last_name    = input[:last_name]

    if input[:phone_number]
      @phone_number = input[:phone_number].gsub(".", "")
                                          .gsub("-", "")
                                          .gsub("(", "")
                                          .gsub(")", "")
                                          .gsub(" ", "")
    end
  end

end
