class Brave < Character
  def attack(monster)
    puts "#{name}の攻撃！"
    select_attack = rand(4)
    if select_attack == 0
      puts "会心の一撃!"
      damage = (offense + rand(200..300) - monster.defense) / 2
      damage = 0 if damage < 0
      monster.hp = monster.hp - damage
      monster.hp = 0 if monster.hp < 0
    else
      puts "通常攻撃"
      damage = (offense - monster.defense) / 2
      damage = 0 if damage < 0
      monster.hp = monster.hp - damage
      monster.hp = 0 if monster.hp < 0
    end
    if damage == 0
      puts "#{monster.name}は効いていないようだ！"
    else
      puts "#{monster.name}に#{damage}のダメージを与えた！"
    end
  end
end
