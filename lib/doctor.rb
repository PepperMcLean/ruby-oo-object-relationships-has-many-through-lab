class Doctor
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        x = []
        appointments.each do |appointment|
            if not x.include?(appointment.patient)
                x << appointment.patient
            end
        end
        x
    end
end