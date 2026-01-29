# db/seeds.rb
Admin.find_or_create_by!(email: "admin@admin.com") do |admin|
    admin.password = "123456"
    admin.password_confirmation = "123456" # Se o Devise exigir confirmação
end
  