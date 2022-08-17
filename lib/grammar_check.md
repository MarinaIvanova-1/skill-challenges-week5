# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

```ruby

boolean = check_grammar(arg)

Boolean: true or false
Argument: a string (e.g. "Hello World!")

```

## 3. Create Examples as Tests



```ruby
# EXAMPLE

check_grammar("Hello, World!") => true
check_grammar("hello, World!") => false
check_grammar("Hello, World") => false
check_grammar("Hello, World.") => true
check_grammar("Hello, World?") => true
check_grammar("") => fail ("Input a string!")
check_grammar(nil) => fail ("Input a string!")

```



## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
