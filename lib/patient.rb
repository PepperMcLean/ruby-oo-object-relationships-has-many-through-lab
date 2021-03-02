class Patient
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date,doctor)
        Appointment.new(date, self, doctor)
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end

    def doctors
        x = []
        appointments.each do |appointment|
            if not x.include?(appointment.doctor)
                x << appointment.doctor
            end
        end
        x
    end

end
