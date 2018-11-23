# 与えられた数までの素数を列挙する
require 'prime'
argv_num = ARGV[0]

unless (argv_num =~ /\A[0-9]+\z/)
  STDERR.puts('数値ではありません。')
  exit
end

argv_num = argv_num.to_i
puts Prime.each(argv_num).to_a