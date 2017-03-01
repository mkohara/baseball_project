class Location < ApplicationRecord
  before_validation :geocode_field

  def geocode_field
    if self.field.present?
      url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{URI.encode(self.field)}"

      raw_data = open(url).read

      parsed_data = JSON.parse(raw_data)

      if parsed_data["results"].present?
        self.field_latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]

        self.field_longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

        self.field_formatted_address = parsed_data["results"][0]["formatted_address"]
      end
    end
  end
  # Direct associations

  has_many   :teams,
             :dependent => :destroy

  has_many   :schedules,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
