Admin.find_or_create_by!(email: "admin@admin.com") do |admin|
  admin.name = "admin"
  admin.password = "123456"
  admin.password_confirmation = "123456"
  admin.super_admin = true
end
