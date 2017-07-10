# Please copy/paste all three classes into this file to submit your solution!

# OMFG I'm sooo fooked. 

class Customer
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

@all = []

  def self.all
    @all
  end

  def find_by_name(name)
    first = name.split(" ")[0]
    second = name.split(" ")[1]
    @all.find{ (self.first_name == first) && (self.last_name == second)}

  end

  def find_all_by_first_name(name)
    answer_array = []
    @all.select do |el|
      if el[:first_name] == name
      answer_array << el
      end
    end
    answer_array
  end

  def self.all_names

    @all.each do |el|
      answer_array << el[:name]
    end
    answer_array
  end

  def add_review(restaurant, content)
    review = Review.create(restaraunt, content)
    restaurant.name(restaurant)
    @rest_reviews << content
  end

  def save
    @all << self
  end
end




class Restaraunt
@rest_reviews = []
@restaurants = []
attr_accessor :name

  def initialize (name)
    @name = name
  end

  def self.all
    @restaurants
  end

  def save
    @restaurants << self
  end

  def find_by_name(name)
    @restaurants.select {||restaraunt| restaraunt.self.name = name}
  end

  def reviews
    @@reviews.select {restaraunt == self.name}
  end

  def customers
    @@reviews.select{restaraunt[:name] == self.name}
  end
end


class Review
  @@reviews = []
  attr_accessor :restaurant, :content, :customer

  def initialize(restaurant, content)
    @restaurant = restaurant
    @content = content
    @customer = Customer.self.name
  end

  def create
    Review.new(restaurant, content)
    @@reviews << self
  end

  def self.all
    @reviews
  end

  def self.customer
    @@reviews.select {@@reviews[:customer] = self.customer}
  end

  def restaurant
    self.restaurant
  end
end
