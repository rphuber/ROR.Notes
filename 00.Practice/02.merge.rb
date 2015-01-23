# only for use with hashes

h1 = {"a" => 111, "b" => 222}
h2 = {"b" => 333, "c" => 444}
h1.merge(h2)  # keeps the value from hash being merged in if a conflict
# => {"a"=>111, "b"=>333, "c"=>444}

# can call a code block for conflicts as well
h1.merge(h2) do |key, old, new| #key is the key in conflict and the old is the value being merged into and new is value being merged in
  if old < new
    old
  else
    new
  end
end
# returns {"a"=>111, "b"=>222, "c"=>444}

# .merge! will change the hash it is called on
h1.merge!(h2) do |k,o,n|
  if old < new
    old
  else
    new
  end
end
# h1 is now == {"a"=>111, "b"=>222, "c"=>444}