# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

- As a user
- So that I can improve my grammar
- I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

### GOAL:

- Check if a string starts with a capital letter AND
- Ends with a punctuation mark (!)

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE

# user_grammar checks if a string starts with capital letter and ends with a punctation mark
user_grammar(string)

Start: String with capital letter (e.g. "Hello WORLD" => true)
End: a list of strings (e.g. ["WORLD!"] => true)

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

user_grammar("Hello")           => false
user_grammar("hello!")          => false
user_grammar("Hey!")            => true
user_grammar("")                => false
user_grammar("Hello there!")    => true
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
