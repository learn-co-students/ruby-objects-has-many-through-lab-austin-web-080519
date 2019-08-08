require_relative 'appointment'
require 'pry'

class Doctor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        new_app = Appointment.new(date, patient, self)
    end

    def appointments
        my_apps = Appointment.all.select{|app| app.doctor == self}
    end

    def patients
        a = self.appointments.collect{|app| app.patient}
    end
end