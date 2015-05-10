class Paciente < ActiveRecord::Base
	has_many :convenios
end
