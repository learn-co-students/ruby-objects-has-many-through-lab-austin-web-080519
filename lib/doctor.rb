require_relative 'appointment'
#define a class of Doctor
class Doctor

    attr_accessor :name
#needs a calass variable @@all that begins as an empty
        @@all = []

#when an artist is initialized, it needs a name and asaved into the array
    def initialize(name)
        @name = name
        @@all << self
    end

    #needs a method .all that lists each arist in the class variable
    def self.all
        @@all
    end

    # new appointment takes in an argumenet of a patient & date and spits out a new instance
    def new_appointment(patient, date)
        #creating a new appointment whose doctor is the current instance of doctor
        Appointment.new(date, patient, self)
    end

 
    def appointments
        Appointment.all.select{|appointment| appointment.doctor = self}
    end

    def patients
        self.appointments.collect{|appointment| appointment.patient}
    end
end
