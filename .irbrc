# # require 'home/codespace/.irb-history'

# IRB.conf[:SAVE_HISTORY] = 10000
# # IRB.conf[:HISTORY_FILE] = File.expand_path('~/.irb_history') 

require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = File.expand_path('~/.irb_history') 

