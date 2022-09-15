def encode(plaintext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    ciphertext_chars = plaintext.chars.map do |char|
      (65 + cipher.find_index(char)).chr.gsub(/[^a-z0-9\s]/i, '')
    end
    return ciphertext_chars.join
  end
  
  def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    plaintext_chars = ciphertext.chars.map do |char|
      cipher[65 - char] #.to_i.chr.gsub(/[^a-z0-9\s]/i, '')]
    end
    return plaintext_chars.join
  end
  
  # Intended output:
  #
  # encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  #
p decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # => "theswiftfoxjumpedoverthelazydog"