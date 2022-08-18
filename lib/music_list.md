# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

```ruby
# EXAMPLE

class Music
  def initialize
  end

  def add_track(track) #track is a string
    adds a track to the list of tracks
  end

  def list_tracks
    #returns a list of all tracks
  end
end

```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
track = Music.new
track.add("Lady Gaga")
track.list #=> "Lady Gaga"

# 2
track = Music.new
track.list # fails with "You don't have any tracks in the list yet"

# 3
track = Music.new
track.add("Lady Gaga")
track.add("Lady Gaga") # fails with "You have already added this track"

```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
