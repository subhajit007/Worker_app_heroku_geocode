class GeoloateAccountJob < ActiveJob::Base
  queue_as :default

  def perform(account)
    result= Geocoder.search(account.zipcode).first
        if result
            account.city =result.city
            account.state= result.state
            account.latitude = result.latitude
            account.longitude = result.longitude
            account.save!
        end
    # Do something later
  end
end
