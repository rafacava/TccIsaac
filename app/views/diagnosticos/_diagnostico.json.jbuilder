json.extract! diagnostico, :id, :nome, :principal_fator_id, :secundario_fator_id, :terciario_fator_id, :principal_caracteristica_id, :secundaria_caracteristica_id, :terciaria_caracteristica_id, :created_at, :updated_at
json.url diagnostico_url(diagnostico, format: :json)
