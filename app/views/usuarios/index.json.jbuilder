json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :first_name, :last_name, :username, :role, :email, :password, :password_confirmation, :speciality, :pro_card, :pass_admin
  json.url usuario_url(usuario, format: :json)
end
