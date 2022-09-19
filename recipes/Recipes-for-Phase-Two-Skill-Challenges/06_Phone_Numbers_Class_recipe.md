# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

- As a user
- So that I can keep track of my phone numbers
- I want to keep record of all phone numbers I use in my entries 

### GOAL:
- Save all phone numbers (name: phone number)
- User will put in entry (maybe a list)
- Need to be able to add / extract phone numbers 
- Starts with 0 and has 11 characters
- No duplicates (so iterate over the array to remove duplicates, maybe using uniq)
 
## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
class PhoneBook
  def initalizer
  end 

  def extract_numbers(text) #Text is a string representing a journal entry
    #returns nothing
  end 

  def list
    # Returns list of strings representing phone numbers
  end 
end 


# EXAMPLE

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

#1
phone_book = PhoneBook.new #Initalises PhoneBook, creates a new instance
phone_book.list # => []   (Empty list as nothing added so far)

#2
phone_book = PhoneBook.new 
phone_book.extract_numbers("07800000000")
phone_book.list # => ["07800000000"]

#3
phone_book = PhoneBook.new 
phone_book.extract_numbers("I called my friend on 07800000000")
phone_book.list # => ["07800000000"]

#4
phone_book = PhoneBook.new 
phone_book.extract_numbers("My faves: 07800000000, 07800000001")
phone_book.list # => ["07800000000", "07800000001"]

#5
phone_book = PhoneBook.new 
phone_book.extract_numbers("My faves: ")
phone_book.list # => []

#6
phone_book = PhoneBook.new 
phone_book.extract_numbers("My friend George: 07800000000")
phone_book.extract_numbers("My friend George: 07800000002")
phone_book.list # => ["07800000000", "07800000002"]

#7 Too few digits
phone_book = PhoneBook.new 
phone_book.extract_numbers("My friend George: 0780000000")
phone_book.list # => []

#8 Remove duplicates
phone_book = PhoneBook.new 
phone_book.extract_numbers("My friend George: 07800000000")
phone_book.extract_numbers("My mate George: 07800000000")
phone_book.list # => ["07800000000"]


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
