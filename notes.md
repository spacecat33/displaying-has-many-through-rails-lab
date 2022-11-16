Planning

doctors
    has_many :appointments
    has_many :patients, through: :appointments

    name:string
    department:string

patients
    has_many :appointments
    has_many :doctors, through: appointments
    
    name:string
    age:integer

appointments
    belongs_to :doctor
    belongs_to :patient

    appointment_datetime:datetime #to be in human readable format
    doctor_id:integer
    patient_id:integer

