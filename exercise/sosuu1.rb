# 与えられた数が素数かどうか調べる

argv_num = ARGV[0]
unless argv_num =~ /\A[0-9]+\z/
  STDERR.print('数値ではありません。' + ARGV[0])
  exit
end

argv_num = argv_num.to_i

is_sosuu = true

2.upto(argv_num) do |i|
  if (argv_num % i == 0 and argv_num != i)
    is_sosuu = false
    break
  end
end

if (argv_num != 1 and is_sosuu)
  STDOUT.puts('素数です！！')
else
  STDERR.puts('素数ではありません。')
end