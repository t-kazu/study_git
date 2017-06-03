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

def your_turn(ary)
  show_ary(ary)
end

def deccision(whoYour, ary)
  vC = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[1,4,8],[2,4,6]] # 勝利条件
  isVictory = false
  8.times do |i|
    isVictory = true if ary[vC[i][0]] == whoYour && ary[vC[i][1]] == whoYour && ary[vC[i][2]] == whoYour
    break if isVictory
  end
  isVictory
end

# mainの処理
turn = "○"
ary = ["０","１","２","３","４","５","６","７","８"]
ary = your_turn(ary)
isEnd = deccision(turn, ary)
