class Laptop
    def initialize(brand, model)
        @brand = brand
        @model = model
    end

    def brand
        @brand
    end

    def model
        @model
    end
end

lp = Laptop.new("ASUS", "ZenBook")

puts lp.brand
puts lp.model

class Gadget

    attr_reader :name

    attr_writer :price

    def initialize(name, price)
        @name = name
        @price = price
    end
end

gt = Gadget.new("FlippyFlop", 1)

puts gt.name

gt.price = 2

# puts gt.price <- makes error

class User 
    def initialize(username)
        @username = username
    end

    def username=(username)
        raise ArgumentError, "Name cannot be empty" if username.to_s.strip.empty?
        @username = username
    end
end

class Appliance
    def show_info
        puts "This is a household appliance"
    end
end

class Refrigerator < Appliance
    def detail
        puts "This is a refrigerator"
    end
end

class Microwave < Appliance
    def detail
        puts "This is a microwave"
    end
end

micro = Microwave.new
fridge = Refrigerator.new

micro.detail
fridge.detail

micro.show_info
fridge.show_info

module Payments
    class Invoice
        def initialize(value)
            @value = value
        end

        def value
            @value = value
        end
    end

    class Receipt
        def initialize(bal_paid)
            @bal_paid = bal_paid
        end

        def bal_paid
            @bal_paid = bal_paid
        end
    end
end

Payments::Invoice.new(7)
Payments::Receipt.new(10)

module Drivable
    def drive
        puts "I'm driving!"
    end
end

class Car
include Drivable
end

class Truck
include Drivable
end

car = Car.new
truck = Truck.new

car.drive
truck.drive

class Painter
    def create
        puts "ART!"
    end
end

class Writer
    def create
        puts "BOOK!"
    end
end

def showcase_talent(peeps)
    peeps.each do |peep|
        peep.create
    end
end

peeps = [Painter.new, Writer.new]

showcase_talent(peeps)

class BankAccount
    def initialize(bal = 0)
        @bal = bal
    end

    def deposit(value)
        bal = bal + value
        log_transaction("Deposited: #{value}")
    end

    def withdraw(value)
        bal = bal - value
        log_transaction("Withdrew: #{value}")
    end

    private

    def log_transaction(transaction)
        puts transaction
    end
end

class Camera
    def initialize
        @status = "off"
    end

    def status
        @status
    end

    def turn_on
        @status = "on"
        puts "Camera is now #{self.status}"
    end

    def turn_off
        @status = "off"
        puts "Camera is now #{self.status}"
    end
end

camera = Camera.new

camera.turn_on
camera.turn_off

class Quiz
    [:math, :history, :science].each do |method_name|
    define_method("question_about_#{method_name}") do
            puts "Here is a question about #{method_name}!"
        end
    end
end

quiz = Quiz.new

quiz.question_about_math
quiz.question_about_history