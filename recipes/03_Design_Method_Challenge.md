# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

- As a user
- So that I can keep track of my tasks
- I want to check if a test includes the string "#TODO"

### GOAL:
- Check if the string includes "#TODO"
- Return true (or the string) if it does
- If the string does NOT contain #TODO, fail -> "This string does not contain TODO"

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE

# user_grammar checks if a string starts with capital letter and ends with a punctation mark
string_contain_TODO(string)


# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

string_contain_TODO("#TODO")                          => true 
string_contain_TODO("string")                         => fail
string_contain_TODO("Another string")                 => fail
string_contain_TODO("String containing #TODO")        => true
string_contain_TODO("TODO")                           => fail
string_contain_TODO("#todo")                          => fail

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
