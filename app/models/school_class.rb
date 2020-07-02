class SchoolClass < ActiveRecord::Base

  def class_display
    self.title + " - " + self.room_number.to_s
  end

end