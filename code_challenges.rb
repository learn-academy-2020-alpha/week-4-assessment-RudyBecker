# ASSESSMENT 4: Ruby Coding Practical Questions

# --------------------1) Create a method that takes in an array and returns an array with only odd numbers sorted from least to greatest.





fullArr1 = [4, 9, 0, '7', 8, true, 'hey', 7, 199, -9, false, 'hola']
# Expected output: [-9, 7, 9, 199]
fullArr2 = ['hello', 7, 23, -823, false, 78, nil, '67', 6, 'Number']
# Expected output: [-823, 7, 23]



fullArr1 = [4, 9, 0, '7', 8, true, 'hey', 7, 199, -9, false, 'hola']
# Expected output: [-9, 7, 9, 199]
fullArr2 = ['hello', 7, 23, -823, false, 78, nil, '67', 6, 'Number']
# Expected output: [-823, 7, 23]

filtered_Array = fullArr1.select { |element| element.is_a?(Integer)}
sorted_Array = filtered_Array.sort
final_Array = sorted_Array.delete_if &:even?
puts final_Array

filtered_Array2 = fullArr2.select { |element| element.is_a?(Integer)}
sorted_Array2 = filtered_Array2.sort
final_Array2 = sorted_Array2.delete_if &:even?
puts final_Array2


# --------------------2) Create a class called Bike that is initialized with a model, wheels, and a frame size. The default number of wheels is 2. Create a get_info method that returns a sentence with all the data from the bike object.

class Bike
    
    def initialize(model, wheels, frame_size)
        @model = model
        @wheels = 2
        @frame_size = frame_size
    end

    def set_model(model)
        @model = model
    end

    def set_frame_size (frame_size)
        @frame_size = frame_size
    end

    def set_wheels(wheels)
        @wheels = wheels
    end
    
    def model
        @model
    end

    def frame_size
        @frame_size
    end

    def wheels
        @wheels
    end

    def get_bike_info
        @model 
        @wheels
        @frame_size 
    end

    def show_bike_info
        puts "The #@model bike has #@wheels wheels and a #@frame_size cm frame. "
    end

end

my_bike = Bike.new("Huffy", 2, "168")
puts my_bike.show_bike_info



# Expected output example: 'The Trek bike has 2 wheels and a 168cm frame.'


# -------------------3) Add a bell to the bike class and create a method that will ring the bell when the method is called.


class Bike
    
    def initialize(model, wheels, frame_size, bell)
        @model = model
        @wheels = 2
        @frame_size = frame_size
        @bell = 'ring ring!'
    end

    def set_model(model)
        @model = model
    end

    def set_frame_size (frame_size)
        @frame_size = frame_size
    end

    def set_wheels(wheels)
        @wheels = wheels
    end
    
    def model
        @model
    end

    def frame_size
        @frame_size
    end

    def wheels
        @wheels
    end

    def ring_bell
        @bell
    end

    def get_bike_info
        @model 
        @wheels
        @frame_size 
    end

    def show_bike_info
        puts "The #@model bike has #@wheels wheels and a #@frame_size cm frame. "
    end

end

my_bike = Bike.new("Huffy", 2, "168", "")
puts my_bike.ring_bell



# Expected output example: my_bike.ring_bell => 'Beep beep!'


# -------------------4) Add a speedometer to the Bike class. The speed should be initialized at 0.

class Bike
    
    def initialize(model, wheels, frame_size, bell, speed)
        @model = model
        @wheels = 2
        @frame_size = frame_size
        @bell = 'ring ring!'
        @speed = 0
    end

    def set_model(model)
        @model = model
    end

    def set_frame_size (frame_size)
        @frame_size = frame_size
    end

    def set_wheels(wheels)
        @wheels = wheels
    end
    
    def model
        @model
    end

    def frame_size
        @frame_size
    end

    def wheels
        @wheels
    end

    def ring_bell
        @bell
    end

    def speed
        @speed
    end

    def get_bike_info
        @model 
        @wheels
        @frame_size 
    end

    def show_bike_info
        puts "The #@model bike has #@wheels wheels and a #@frame_size cm frame. "
    end

end

my_bike = Bike.new("Huffy", 2, "168", "", "")
puts my_bike.speed



# Expected output example: my_bike.speed => 0


# -------------------5) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed. The brake method should decrease the speed. The bike cannot go negative speeds.

class Bike
    
    def initialize(model, wheels, frame_size, bell, speed)
        @model = model
        @wheels = 2
        @frame_size = frame_size
        @bell = 'ring ring!'
        @speed = 0
    end

    def set_model(model)
        @model = model
    end

    def set_frame_size (frame_size)
        @frame_size = frame_size
    end

    def set_wheels(wheels)
        @wheels = wheels
    end
    
    def set_speed (speed)
        if @speed >= 0
            @speed +=10
        else
        @speed = 0
        end
    end

    def decrement_speed(speed)
       if @speed > 0
            @speed -=10
       else
        @speed = 0
       end
    end

    def model
        @model
    end

    def frame_size
        @frame_size
    end

    def wheels
        @wheels
    end

    def ring_bell
        @bell
    end

    def speed
        @speed
    end

    def get_bike_info
        @model 
        @wheels
        @frame_size 
    end

    def show_bike_info
        puts "The #@model bike has #@wheels wheels and a #@frame_size cm frame. "
    end

end

my_bike = Bike.new("Huffy", 2, "168", "", "")
puts my_bike.set_speed 1
puts my_bike.set_speed 1
puts my_bike.decrement_speed 1
puts my_bike.decrement_speed 1
puts my_bike.decrement_speed 1
puts my_bike.decrement_speed 1
puts my_bike.decrement_speed 1
puts my_bike.decrement_speed 1
puts my_bike.speed



# Expected output example: my_bike.pedal_faster 10 => 10
# Expected output example: my_bike.brake 15 => 0
