require 'lib/context'
require 'lib/context_object'

class TransferMoney < Context
  class Destination < ContextObject

    def transfer_in(amount)
      self.balance += amount
    end

  end
end
