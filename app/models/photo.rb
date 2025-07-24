class Photo < ApplicationRecord
  has_one_attached :photo


  private

  def extract_exif
    begin 
      data = Exif::Data.new(self.photo.download)
          self.camera = data.model
          self.digitized_date = data.date_time_digitized
          self.shot_date = data.date_time_original
          puts "EXIF Data extracted: Model=#{self.model}"
          self.save
      end
    rescue => e
      Rails.logger.error "An unexpected error occurred while extracting EXIF data: #{e.message}"
    end
end
