class Doctor

	attr_accessor :name, :appointments

	def initialize(name)
		@name = name
		@appointments = []
	end

	def patients
		@appointments.map { |appt| appt.patient }
	end

	def add_appointment(appt)
		appt.doctor = self
		@appointments << appt
	end

end