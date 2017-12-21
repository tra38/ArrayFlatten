# ArrayFlatten

A module designed to flatten arrays. Written as part of a coding challenge.

## Installation
```git clone``` the repository and then create a file.

```ruby
require_relative path/to/flatten.rb

array_to_flatten = [1,2,3,[4,5],6]

puts ArrayFlatten.flatten(array_to_flatten)
#=> [1,2,3,4,5,6]
```

Right now, the ```ArrayFlatten``` module has only one public method (#flatten), which expects an array of integers and then returns a flattened version of that array.

## Tests

```git clone``` the repository and then run ``rspec``.