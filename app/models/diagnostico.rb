class Diagnostico < ApplicationRecord
  scope :por_nome, lambda {|parameter| where("nome like ?", "%#{parameter}%")}

def self.search(search)
  where("nome LIKE ?", "%#{search}%") 
end
  
  belongs_to :principal_fator
  belongs_to :secundario_fator
  belongs_to :terciario_fator
  belongs_to :principal_caracteristica
  belongs_to :secundaria_caracteristica
  belongs_to :terciaria_caracteristica
end
