class Patient

	attr_accessor :name, :appointments

	def initialize(name)
		@name = name
		@appointments = []
	end

	def doctors
		@appointments.map { |appt| appt.doctor }
	end

	def add_appointment(appt)
		appt.patient = self
		@appointments << appt
	end

end