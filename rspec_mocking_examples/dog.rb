class Dog
  attr_reader :name, :age, :breed, :state

  def initialize(name:, age:, breed:)
    @name = name
    @age = age
    @breed = breed
    @state = 'sleeping'
  end

  def current_state(activity)
    @state = activity
  end

  def speak
    gets.chomp
  end
end
