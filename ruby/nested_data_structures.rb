# Computer full of folders full of files
# Computer will have folder names that link to arrays full of strings.

computer = {
  desktop: ['startup', 'trash', 'files'],
  myComputer:  ['applications', 'colors', 'fonts'],
  games: ['tetris', 'solitaire', 'minesweeper']
}

puts computer[:desktop][1]

puts computer[:myComputer][0]

puts computer[:games][2]