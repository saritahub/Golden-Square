def user_grammar(string)
    if string[0] === string[0].upcase && string[-1] == "!"
        true
    elsif string[0] == string[0].upcase && string[-1] != "!"
         "Check grammar, sentence doesn't end in a punctuation mark!"
    elsif string[-1] == "!" && string[0] != string[0].upcase 
         "Check grammar, sentence doesn't start with a capital letter!"
    else
         "Check grammar, sentence needs to start with a capital letter and end with a puncation mark"
    end
end 

