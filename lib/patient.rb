require_relative "doctor"
require_relative "appointment"
class Patient
attr_accessor :name
@@all = []
def initialize(name)
    @name = name
    @@all << self
end
def self.all 
    @@all 
end 
def appointments   
    Appointment.all.select do |appointment|
        appointment.patient == self
    end 
end 

def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
end
def doctors 
    appointments.collect do |appointment|
        appointment.doctor
    end 
end 



end 