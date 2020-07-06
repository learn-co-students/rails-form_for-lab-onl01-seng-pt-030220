class SchoolClass < ActiveRecord::Base

    def class_info
        self.title + " " + self.room_number.to_s
    end

end