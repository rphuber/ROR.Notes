# Code blocks

## FIND

  # find/detect - returns the first value that evaluate true  => Object or nil
  (1..10).find do |i|
    i % 3 == 0
  end
  # => 3

  ## can also use detect - same as find =>Object of nil
  (1..10).detect do |i|
    (1..10).include?(i*3)
  end
  # => 1

  # find_all - returns an array of all the values that match criteria => array
  (1..10).find_all do |i|
    i % 3 == 0
  end
  # => [3,6,9]

  # can also use select => array
  (1..10).select do |i|
    (1..10).include?(i*3)
  end
  # => [1,2,3]

  # any? - returns boolean if any match criteria => boolean
  (1..10).any? do |i|
    i % 3 == 0
  end
  # => true

  # all? - returns boolean if all match criteria => boolean
  (1..10).all? do |i|
    i % 3 == 0
  end
  # => false

  # delete_if doesn't work on range - works on arrays
  # does the same as find_all and then removes them from the array
  [*1..10].delete_if do |i|  #[*range] converts range into an array
    i % 3 ==0
  end 
  # => [1, 2, 4, 5, 7, 8, 10]

