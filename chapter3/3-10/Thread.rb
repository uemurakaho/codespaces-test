#スレッド
# t = Thread.new do
#     p "start"
#     sleep 5
#     p "end"
# end
# p "wait"
# t.join

3.times do |i|
    Thread.start(i) do |index|
        p "thread-#{index} start"
    end
end
Thread.start(&:join)

# ChatGPTに教えてもらったやつ
threads = []
3.times do |i|
    threads << Thread.start(i) do |index|
        p "thread-#{index} start"
    end
end

threads.each(&:join)