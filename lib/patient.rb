class Patient

    attr_reader :name, :date, :doctor

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.each do |appointment|
            appointment.patient == self
        end
    end

    def doctors
        appointments.map do |appointment|
            appointment.doctor
        end
    end

end