class Place < ActiveRecord::Base
	before_save :geocode

	def geocode
		loc = Geokit::Geocoders::GoogleGeocoder3.geocode(
			self.address
		)

		self.lat = loc.lat
		self.lng = loc.lng
	end

end
