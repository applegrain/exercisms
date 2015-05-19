class HelloWorld

  def self.hello(input=nil)
    if input == nil
      "Hello, world!"
    else
      "Hello, #{input}!"
    end
  end
end
