class Monster < Character
  def attack(brave)
    puts "#{@name}の攻撃！"
    select_attack = rand(4)
    if select_attack == 0
      puts "会心の一撃！"
      damage = (@offense + rand(80..100) - brave.defense) / 2
      damage = 0 if damage < 0
      brave.hp = brave.hp - damage
      brave.hp = 0 if brave.hp < 0
    else
      puts "通常攻撃"
      damage = (@offense - brave.defense) / 2
      damage = 0 if damage < 0
      brave.hp = brave.hp - damage
      brave.hp = 0 if brave.hp < 0
    end
    if damage == 0
      puts "#{brave.name}は効いていない！"
    else
      puts "#{brave.name}は#{damage}のダメージを受けた！"
    end
  end
end
