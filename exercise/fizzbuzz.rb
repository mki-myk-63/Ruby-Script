# FizzBuzz問題
# 1から順番に数を表示する
# その数が3で割り切れるならFizz, 5で割り切れるならBuzz、その両方で割り切れるなら
# FizzBuzzと表示する

max = 30
fizz_message = 'Fizz'
buzz_message = 'Buzz'

fizz_num = 3
buzz_num = 5

1.upto(max) do |i|
  output_message = ''
  if (i % fizz_num == 0)
    output_message += fizz_message
  end
  if (i % buzz_num == 0)
    output_message += buzz_message
  end
  if (output_message == '')
    output_message = i.to_s
  end
  output_message += "\r\n"
  print output_message
end
