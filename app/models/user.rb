class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :role_assignments, dependent: :destroy
  has_many :roles, through: :role_assignments
  devise :database_authenticatable, :recoverable, :validatable, :trackable

  def computed_permissions
    roles.map(&:computed_permissions).reduce(RoleCore::ComputedPermissions.new, &:concat)
  end

  # def remember_me
  #   (super == nil) ? '1' : super
  # end
end
