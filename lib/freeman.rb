module Freeman
  VERSION = "0.0.3"
end

module Kernel
  def test(description, &block)
    KFTest.new(description, block).run
  end
end

class Object
  def is(expected)
    self == expected
  end

  def isnt(expected)
    self != expected
  end
end

KFTest = Struct.new(:description, :block) do
  def run
    status = block.call ? "✓" : "✗"
    puts "#{ status } #{ description }"
    if status.is false
      line = block.source_location.join(": ")
      puts "  from #{ line }"
    end
    return status
  end
end
