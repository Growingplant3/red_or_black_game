def edit_name(name)
  @name = name
end

def select_card(card)
  @card = card
end

def game_explanation
  puts "あなたの名前を入力してください。"
  puts "-"*20
  name = gets.chomp
  edit_name(name)
  puts "-"*20
  puts "#{@name}さんですね。わかりました。"
  puts "今から貴方にはゲームをしてもらいます。"
  puts "簡単なゲームです。"
  puts "2枚のトランプがあり、そこから1つ選ぶだけ。"
  puts "1枚はハートのAで、もう1枚はクラブのA。"
  puts "ハートを引いたら#{@name}さんの勝ちで、クラブを引いたら#{@name}さんの負けです。"
  puts "さぁ、どっちを選びますか？"
  puts "-"*20
  puts "チャンスは1度だけ！"

  game_select
end

def game_select
  puts "左なら 1 を入力、"
  puts "右なら 2 を入力せよ。"
  puts "さぁどうする？"
  puts "-"*20
  while true do
    card = gets.chomp.to_i
    select_card(card)
    if @card == 1
      puts "-"*20
      puts "左だあぁ！" 
      puts "-"*20
      game_judgment
    elsif @card == 2
      puts "-"*20
      puts "右に違いねぇ！"
      puts "-"*20
      game_judgment
    else
      puts "正しい値を入力してください。"
      puts "-"*20
    end
  end
end

def game_judgment
  puts "ざわ・・・"
  sleep(2)
  puts "ざわ、ざわ・・・・"
  sleep(4)
  puts "結果は・・・！？"
  sleep(3)
  puts "-"*20
  if @card == 1
    puts "ハートのAだ！"
    puts "#{@name}さんの勝ちです。"
  else
    puts "クラブのAだ！"
    puts "#{@name}さんの負けです。"
  end
  puts "fin"
  exit
end

game_explanation