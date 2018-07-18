
class DogWalker
  def initialize
    @distance_traveled = 0
    @status = 'unstarted'
  end

  def walk(dog)
    dog.current_state('walking')
    @status = 'in progress'
  end

  def add_walk(miles)
    @distance_traveled += miles
  end

  def feed(dog)
    dog.current_state('eating')
  end

  def package_deal(dog)
    walk(dog)
    feed(dog)
    @status = 'completed'
  end
end
