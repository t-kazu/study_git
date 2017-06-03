# coding: utf-8

def show_ary(ary)
  9.times do |i|
    print "|" if i % 3 == 0
    if ary[i] == "○" || ary[i] == "✕"
      print ary[i] + " |"
    else
      print ary[i] + "|"
    end
    print "\n" if (i+1) % 3 == 0
  end
end

def your_turn(whoYour, ary)
  print whoYour + " の番です。\n"
  put_number = -1 # 変数の宣言
  loop do
    puts "0~8(数字)を入力して下さい。"
    show_ary(ary)
    put_number = gets.to_i
    break if 0 <= put_number && put_number <= 8 && ary[put_number] != "○" && ary[put_number] != "✕"
    puts "範囲外です。もう一度、入力して下さい。"
  end
  ary[put_number] = whoYour
  ary
end

# mainの処理
turn = "○"
ary = ["０","１","２","３","４","５","６","７","８"]
while true
  ary = your_turn(turn,ary)
  if turn == "○"
    turn = "✕"
  else
    turn = "○"
  end
end
