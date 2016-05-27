class Context
  module As
    refine Object do
      def as(role, context = nil)
        role.new(self).for(context)
      end
    end
  end

  private_constant :As

  def call(data)
    raise NotImplementedError, 'Context#call should be implemented in a subclass'
  end

  def self.call(*actors, **data)
    new(*actors).call(data)
  end

  def self.[](*args)
    call(*args)
  end
end
