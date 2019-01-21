require 'pry'
require 'time'


class Event

	attr_accessor :start_date,:length,:title,:attendees


	def initialize (start_date, length,	title, attendees)
		@start_date = Time.parse(start_date)
		@length = length.to_i
		@title = title
		@attendees = attendees

		
	end
	
	def postpone_24h 
		@start_date = @start_date +60*60*24
	end
	


	def end_date
		@end_date = @start_date + 60*@length
	end


	def is_past
		return @start_date < Time.now ? true : false
	end


	def is_future
		#return @start_date > Time.now ? true : false
	#end (samy mety ireo)
	!self.is_past
	end

	def is_soon
		(start_date - Time.now)/60 <= 30 ? true : false if is_future
	end
	














end

binding.pry
puts "end of file"
