class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def readable_time
        self.appointment_datetime.strftime("%B %e, %Y at %R")
    end
end
