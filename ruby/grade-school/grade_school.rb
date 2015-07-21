class School

  def initialize
    @students = []
  end

  def to_hash
    hash_students = @students.sort!.to_h
    hash_students.hash_reverse.sort_by {|k| k}.to_h
  end

  def add(name, grade)
    ary = []
    ary << grade
    ary << name
    @students << ary.reverse
  end

  def grade(k)
    @students.inject([]) do |ary, student|
      ary << student.first if student.last == 5
      ary.sort
    end
  end
end

  class Hash
    def hash_reverse
      each_with_object({}) do |(k, v), ary|
        ary[v] ||= []
        ary[v] << k
      end
    end
  end
