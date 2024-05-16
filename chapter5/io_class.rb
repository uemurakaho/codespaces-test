# io = open("../../README.md")
# puts io
# io = open("| ls -la")
# puts io
# io = open("|ls -la /workspaces/codespaces-test/README.md")
# puts io

IO.popen("grep -i ruby", "r+") do |io|
    io.write("This is Ruby program")
    io.close_write  # ここで標準入力を閉じる
    puts io.read    # 標準出力を読み取る
end

