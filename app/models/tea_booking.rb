class TeaBooking < ApplicationRecord
	def self.import(file)
  		spreadsheet = Roo::Spreadsheet.open(file.path)
  		header = spreadsheet.row(1)
  		(2..spreadsheet.last_row).each do |i|
    		row = Hash[[header, spreadsheet.row(i)].transpose]
    		tea_booking = find_by(id: row["id"]) || new
    		tea_booking.attributes = row.to_hash
    		tea_booking.save!
  		end
	end 
end
