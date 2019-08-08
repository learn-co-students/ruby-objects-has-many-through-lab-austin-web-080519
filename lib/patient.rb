require "pry"
require_relative 'appointment'

class Patient
    @@all = []
    attr_accessor :name

#should be initialized in array and saved with a name
        def initialize(name)
            @name = name
            @@all << self
        end

#needs a class method .all that lists each genre in the class variable
        def self.all
            @@all
        end

        def new_appointment(doctor, date)
            Appointment.new(date, self, doctor)
        end

        def appointments
            Appointment.all.select{|appointment| appointment.patient == self}
        end

        def doctors
            self.appointments.collect{|appointment| appointment.doctor}
        end
end
