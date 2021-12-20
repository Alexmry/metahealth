class Schedule < ApplicationRecord
  # belongs_to :host
  # belongs_to :hostee

  belongs_to :host, class_name: 'User'
  belongs_to :hostee, class_name: 'User'
end
