def make_snippet(diary)
    diary = diary.split(" ")
    first_five = diary
     
    first_five_join = first_five.join(" ")
   
    if first_five.length > 5
        first_five = diary[0..4]
        first_five_join = first_five.join(" ")
        "#{first_five_join}..."
    elsif first_five.length <= 5
        first_five = diary[0..4]
        first_five_join = first_five.join(" ")
        "#{first_five_join}"
    end 

end 
