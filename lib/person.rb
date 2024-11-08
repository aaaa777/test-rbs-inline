# rbs_inline: enabled

class Person
  
  # @dynamic name
  attr_reader :name #: String
  
  # @dynamic addresses
  attr_reader :addresses #: Array[String]

  # @rbs name: String
  # @rbs addresses: Array[String]
  # @rbs return: void
  def initialize(name:, addresses:)
    @name = name
    @addresses = addresses
  end

  def to_s #: String
    "#{name} (#{addresses.join(', ')})"
  end

  # @rbs &block: (String) -> void
  def each_address(&block) #: void
    addresses.each(&block)
  end
end