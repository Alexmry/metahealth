class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :company

  has_many :host_schedules, class_name: 'Schedule', foreign_key: 'host_id'
  has_many :hostee_schedules, class_name: 'Schedule', foreign_key: 'hostee_id'
end
