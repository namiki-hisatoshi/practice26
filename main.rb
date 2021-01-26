require "./character"
require "./brave"
require "./monster"

MONSTER_LIST = [
  {name: "スライム", hp: 20, offense: 10, defense: 9},
  {name: "メタルスライム", hp: 40, offense: 20, defense: 40},
  {name: "キングスライム", hp: 100, offense: 30, defense: 100},
  {name: "シドー", hp: 200, offense: 194, defense: 100},
  {name: "ゾーマ", hp: 400, offense: 300, defense: 290}
]

brave = Brave.new(name: "勇者", hp: 320, offense: 219, defense: 189)
monster = Monster.new(MONSTER_LIST.sample)

puts "#{monster.name}があらわれた！"

while monster.hp > 0 && brave.hp > 0
  brave.attack(monster)
  if monster.hp == 0
    puts <<~TEXT
      ========================
      【#{brave.name}】 HP: #{brave.hp}
      【#{monster.name}】 HP: #{monster.hp}
      ========================
    TEXT
  else
    monster.attack(brave)
    puts <<~TEXT
      ========================
      【#{brave.name}】 HP: #{brave.hp}
      【#{monster.name}】 HP: #{monster.hp}
      ========================
    TEXT
  end
end

if brave.hp == 0
  puts "#{brave.name}は死んでしまった！"
else
  puts "#{monster.name}をやっつけた！"
end
