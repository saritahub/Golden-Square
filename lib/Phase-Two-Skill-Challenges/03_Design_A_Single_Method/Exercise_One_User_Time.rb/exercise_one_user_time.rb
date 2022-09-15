def reading_time(string)
    if string.empty?
        return string 
    else 
      string = string.split(" ").length 
      string_reading_time = (string/200).to_f.round(6) 
        if string_reading_time == 1.0
            "#{string_reading_time} minute"
        else 
            "#{string_reading_time} minutes"
        end 
    end 
end 