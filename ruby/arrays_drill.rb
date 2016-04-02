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