require_relative 'doctor'
require_relative 'patient'

#define a class of Appointment
class Appointment
    attr_accessor :date, :patient, :doctor

# needs a class variable of @@all to an empty array
         @@all = []

#call upon a new appointment (.new) using initialization and passing through date, patient and doctor as arguments
    def initialize(date, patient, doctor)
         @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

# needs a calls method .all that lets each appointment in the class variable
    def self.all
        @@all
    end

end