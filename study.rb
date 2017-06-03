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

# mainの処理
ary = ["０","１","２","３","４","５","６","７","８"]
your_turn(ary)
