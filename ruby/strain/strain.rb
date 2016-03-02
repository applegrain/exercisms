class Array
  def keep
    keep = []
    each { |value| keep << value if yield(value) }
    keep
  end

  def discard
    keep = []
    each { |value| keep << value unless yield(value) }
    keep
  end
end
