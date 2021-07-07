require_relative 'appointment'

class Patient
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        new_app = Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select{|app| app.patient == self}
    end

    def doctors
        self.appointments.collect{|app| app.doctor}
    end

    def self.all
        @@all
    end
end