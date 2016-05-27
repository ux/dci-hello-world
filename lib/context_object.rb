require 'delegate'

class ContextObject < SimpleDelegator
  attr_reader :context

  def for(context)
    @context = context
    self
  end
end
