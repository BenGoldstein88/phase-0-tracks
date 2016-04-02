def build_array(x, y, z)
  arr = []
  arr << x
  arr << y
  arr << z
  return arr
end

def add_to_array(arr, val)
  arr << val
  return arr
end






practice = [0]

p practice

practice << 1
practice << 2
practice << 3
practice << 4
practice << 5

p practice

practice.delete_at(1)

p practice

practice.insert(1, "replacement")

p practice

practice.shift

p practice

practice.include?(3)

p "Does array include 3? #{practice.include?(3)}"

other = ["bob", "jim", "johnny"]

result = practice + other

p result

p build_array(4, "juice", false)

p add_to_array([1, 2, 3], "bob")
p add_to_array([2], true)