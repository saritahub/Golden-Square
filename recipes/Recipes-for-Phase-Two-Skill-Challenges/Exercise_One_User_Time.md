# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem
- As a user
- So I can manage my time
- I want to see an esitimate of reading time for a text
- I can read 200 words per minute 

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE

# reading_time works out the length of time to read a given string

string: a string parameter (e.g. "Hello World")
OUTPUT
time: length of time to read a given string in minutes (e.g. "2 minutes")
- Read 200 words per minute 
- time = string.length / 200 
- 200 words per minute = 12000 words per hour 
- Rounds the number of minutes to the nearest integer
- Displays this as a float (example 1.0 minute / 2.0 minutes)



# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

- time = words / minutes (start rounding to 6 decimal points)

### Test strings under 200 words
- If they are under 200 words, need to convert to a factorial and round this to X decimal points?
- Add "minutes" to the end of the string

### Test strings OVER 200 words
- Again, round to X decimal points
- Add "minutes" at the end of the string

```ruby



reading_time("") => ""
reading_time(string_with_fifteen_words) => (15/200) minutes (0.0)
reading_time(string_with_200_words) => (200/200) minutes (1.0)
reading_time(string_with_600_words) => (600/200) minutes (2.0)


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

