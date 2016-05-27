require 'lib/context'
require 'roles/transfer_money/source'
require 'roles/transfer_money/destination'

class TransferMoney < Context
  using As

  attr_reader :source, :destination

  def initialize(source, destination)
    @source = source.as(TransferMoney::Source).for(self)
    @destination = destination.as(TransferMoney::Destination).for(self)
  end

  def call(amount:)
    source.transfer_out(amount)
  end
end
