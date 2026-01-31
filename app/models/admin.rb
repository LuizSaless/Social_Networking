class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true


  before_destroy :prevent_super_admin_deletion
  
end


private

def prevent_super_admin_deletion
  if email == "admin@admin.com"
    errors.add(:base, "O administrador principal não pode ser removido.")
    throw(:abort)
  end
end


