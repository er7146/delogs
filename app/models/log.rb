class Log < ActiveRecord::Base
  #validates :driver, presence: true
  validates :company,   presence: true
end
