class Attendee

  attr_accessor :first_name, :last_name, :phone_number

  def initialize(input = {})
    @first_name   = input[:first_name]
    @last_name    = input[:last_name]
    @phone_number = clean_phone_number(input[:phone_number])

    # if input[:phone_number]
    #   @phone_number = input[:phone_number].scan(/[0-9]/).join
    #   if @phone_number.length == 11 && @phone_number.start_with?("1")
    #     @phone_number = phone_number[1..-1]
    #   end
    #   if @phone_number.length != 10
    #     @phone_number = "0000000000"
    #   end
    # end

      # if input[:phone_number]
    #   @phone_number = input[:phone_number].gsub(".", "")
    #   .gsub("-", "")
    #   .gsub("(", "")
    #   .gsub(")", "")
    #   .gsub(" ", "")
    # end
  end

  def clean_phone_number(phone_number)

    if phone_number
      phone_number = phone_number.scan(/[0-9]/).join

      if phone_number.length == 11 && phone_number.start_with?("1")
        phone_number = phone_number[1..-1]
      end

      if phone_number.length != 10
        phone_number = "0000000000"
      end

      return phone_number
    end
    
  end

end
