class Appointment
    attr_accessor :location :purpose :hour :min
    def initialize(location,purpose, hour, min)
        @location = location
        @purpose = purpose
        @hour = 1
        @min = 1
    end
end

class MonthlyAppointment < Appointment
    def initialize(day)
        @day = 1
    end
    def occurs_on?(day)
        false
    end
    puts 
end

class DailyAppointment < Appointment
    def occurs_on?(hour, min)
        true
    end
end