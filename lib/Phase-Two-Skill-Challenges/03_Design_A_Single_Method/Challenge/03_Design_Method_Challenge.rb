def string_contain_TODO(string)
    if string.include?("#TODO")
        true 
    else 
        fail "This string doesn't contain #TODO!"
    end 
end 