require 'lib/context'
require 'lib/context_object'

class TransferMoney < Context
  class Source < ContextObject

    def transfer_out(amount)
      raise 'Amount should be greater than 0' if amount <= 0
      raise 'Insufficient funds' if balance < amount

      self.balance -= amount
      context.destination.transfer_in(amount)
    end

  end
end
