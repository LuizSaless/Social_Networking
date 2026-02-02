class Admin < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true

  before_destroy :prevent_super_admin_deletion

  private

  def prevent_super_admin_deletion
    if super_admin?
      errors.add(:base, "O administrador principal não pode ser removido.")
      throw(:abort)
    end
  end
end
