class Array

  def accumulate
    inject([]) { |result, operation| result << yield(operation) }
  end
end
