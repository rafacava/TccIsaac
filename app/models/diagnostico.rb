class Diagnostico < ApplicationRecord
  belongs_to :principal_fator
  belongs_to :secundario_fator
  belongs_to :terciario_fator
  belongs_to :principal_caracteristica
  belongs_to :secundaria_caracteristica
  belongs_to :terciaria_caracteristica
end
