$LOAD_PATH.unshift File.expand_path('.')

require 'models/account'
require 'contexts/transfer_money'

account1 = Account.new(100)
account2 = Account.new(-10)

p account1, account2

TransferMoney[account1, account2, amount: 62]

p account1, account2

TransferMoney.(account2, account1, amount: 10)

p account1, account2
