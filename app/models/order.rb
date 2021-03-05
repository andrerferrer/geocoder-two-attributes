class Order < ApplicationRecord
  # geocoded_by :from_address, latitude: :from_address_lat, longitude: :from_address_lon
  # geocoded_by :to_address, latitude: :to_address_lat, longitude: :to_address_lon

  after_validation :geocode_from_address, if: :will_save_change_to_from_address?
  after_validation :geocode_to_address, if: :will_save_change_to_to_address?

  private

  def geocode_from_address
    geocoded_results = Geocoder.search(self.from_address)
    best_result = geocoded_results.first
    if best_result
      self.from_address_lat = best_result.latitude
      self.from_address_lon = best_result.longitude
    end
  end
  
  def geocode_to_address
    geocoded_results = Geocoder.search(self.to_address)
    best_result = geocoded_results.first
    if best_result
      self.to_address_lat = best_result.latitude
      self.to_address_lon = best_result.longitude
    end
  end
  
end
