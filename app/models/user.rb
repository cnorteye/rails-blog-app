class User < ApplicationRecord

  include Gravtastic
  gravtastic

   enum role: [:author, :admin]
   has_many :comments
   has_many :articles
   after_initialize :set_default_role, :if => :new_record?

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def set_default_role
    self.role ||= :author
  end

end
