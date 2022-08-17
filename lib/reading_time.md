# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.


## 2. Design the Method Signature


```ruby
'reading_time' takes text as an argument and returns time in hours and minutes  

```

## 3. Create Examples as Tests


```ruby
# EXAMPLE

#reading_time("") => "Required time to read is 0 mins"

reading_time("One") => "Required time to read is 1 mins"

reading_time("Tortor tellus duis diam rutrum netus nisi ipsum rhoncus ultricies eleifend, hac bibendum habitasse. Convallis ac congue, dapibus mattis amet fames parturient, tincidunt senectus placerat vivamus metus magnis etiam sociis litora. Molestie odio vehicula at nam platea et ligula nonummy placerat ante habitant eleifend. Potenti elit eget facilisi aenean erat, faucibus tellus molestie tristique. Fusce sociosqu tortor eu aenean dictum primis velit feugiat proin pharetra rhoncus nisl blandit orci arcu senectus potenti in vivamus. Cubilia elit nam vivamus massa nec. Leo libero vehicula aliquam fermentum morbi. Pede magna facilisis imperdiet condimentum inceptos felis vulputate nascetur senectus nascetur leo. Habitant nonummy. Molestie viverra lacinia aliquam Lacus commodo, metus tempor nisl Mattis lorem nullam hendrerit mollis lobortis. Morbi maecenas ac.

Fusce ridiculus leo elit turpis sociis parturient laoreet elementum. Integer lacinia duis egestas aptent facilisis sociosqu tempor sem eros vehicula proin suspendisse urna. Mi. Praesent aliquam orci sociosqu nulla pulvinar id eu. Hac. Vestibulum eget augue. Class nisi tempus mus iaculis sed ornare mi id, tempus vehicula ante vulputate erat, curae; ultricies, duis curae; leo nascetur cum euismod Arcu nisi integer aliquam commodo mus ut id bibendum, tincidunt sociis. Commodo at iaculis potenti. Egestas. Molestie facilisi fames est posuere lacinia faucibus luctus dictumst placerat per vitae mi turpis ullamcorper lobortis. Lorem nec sem, nulla etiam fusce phasellus, nostra Congue eget, penatibus ornare sem aliquet cras vestibulum tempor fringilla in condimentum dis vivamus sagittis turpis sociosqu euismod platea commodo metus dapibus quis varius. Parturient luctus vulputate felis dui accumsan augue cum luctus lorem, natoque. Interdum at mus platea non sociis, velit pretium velit. Mus placerat. Erat torquent. Morbi convallis laoreet praesent odio fusce tristique ultricies nostra condimentum nullam malesuada tellus amet conubia, porttitor sagittis velit vestibulum at purus magnis sed, nisi hymenaeos. Nam euismod lobortis vehicula praesent taciti malesuada ipsum in. Eros. Duis, habitant justo erat. In tristique felis Egestas ullamcorper dapibus sed cras diam vivamus pulvinar hendrerit lorem accumsan, maecenas, venenatis praesent dapibus purus.

Pede libero, ultrices nullam hendrerit. Posuere Gravida potenti placerat hymenaeos consequat eleifend parturient pede justo interdum vestibulum. Laoreet tempor lorem penatibus urna. Consectetuer, malesuada dictum sollicitudin tempus amet penatibus, nostra donec nostra. Varius vivamus porttitor ultrices magnis vel nulla id nam potenti taciti malesuada facilisi magnis accumsan habitasse interdum quisque ornare facilisis nulla suspendisse viverra tristique ut tincidunt senectus hendrerit parturient aliquam bibendum, ligula. Felis euismod morbi, aliquet morbi cras montes lectus platea dis. Diam vulputate, arcu pretium diam praesent. Tortor sociis laoreet sed in diam dignissim justo lacinia in varius magnis mi potenti imperdiet habitant urna nonummy urna viverra mattis, metus cras luctus nisi Erat aliquet tempor enim. Habitasse luctus aptent pulvinar risus ornare praesent eu ac sed auctor. Facilisis ante. Conubia netus amet faucibus suscipit amet. Pede. Tortor eu interdum mi mollis consectetuer metus ut, nascetur id inceptos porttitor sodales malesuada habitant pretium. Vitae. Urna aptent, dolor a. Ipsum ultrices eget non quam porta ridiculus cum volutpat amet euismod a netus ipsum. Sagittis condimentum, urna curae; condimentum habitasse natoque, dignissim lacinia justo volutpat auctor inceptos. Nam.") => "Required time to read is 3 mins"


=begin 
reading_time("Dictum natoque egestas hymenaeos sit placerat mollis mollis turpis habitant Sociis rhoncus varius dignissim conubia vivamus. Accumsan class. Pede purus est. Senectus feugiat curabitur. Facilisi praesent taciti. A posuere cum phasellus accumsan praesent turpis convallis mattis erat cubilia vitae Natoque rutrum porttitor nam rhoncus justo potenti lorem Pellentesque.

Tincidunt maecenas blandit a. Senectus laoreet fringilla volutpat volutpat risus. Primis eros Habitasse sociis adipiscing class nibh odio bibendum pede vehicula ipsum dictumst nibh pulvinar cubilia quis.

Non lectus pede pretium ligula urna. Hendrerit facilisi purus, praesent feugiat sagittis semper platea lacinia phasellus aliquam ut enim suscipit pede a convallis cum accumsan.") => "Required time to read is 1 mins"
=end
```


## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._