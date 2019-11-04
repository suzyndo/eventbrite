class Attendance < ApplicationRecord
    # 1-N association with gossips table
  belongs_to :user

  # 1-N association with tags table
  belongs_to :event
end
