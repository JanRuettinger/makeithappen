require "net/https"
require "uri"
require "json"

class EstimateCalc

  def getUberXPrice(address1, address2)

    gMaps_baseURL="https://maps.googleapis.com/maps/api/geocode/json?address="

    address1_getURL=URI.parse(URI.escape(gMaps_baseURL.dup.concat(address1)))
    address2_getURL=URI.parse(URI.escape(gMaps_baseURL.dup.concat(address2)))
    
    address1_json=Net::HTTP.get_response(address1_getURL).body
    address2_json=Net::HTTP.get_response(address2_getURL).body
    
    address1_data=JSON.parse(address1_json)

    address1_latitude=address1_data["results"][0]["geometry"]["location"]["lat"]
    address1_longitude=address1_data["results"][0]["geometry"]["location"]["lng"]

    address2_data=JSON.parse(address2_json)

    address2_latitude=address2_data["results"][0]["geometry"]["location"]["lat"]
    address2_longitude=address2_data["results"][0]["geometry"]["location"]["lng"]

    #uber_header="Authorization: Token z1Vph_RcWDFfs5aW2QST1RA54KuEPkCsn2gOx19P"
    uber_baseURL="https://api.uber.com/v1/estimates/price?"

    uber_requestURL=uber_baseURL
                        .concat("start_latitude=").concat(address1_latitude.to_s)
                        .concat("&start_longitude=").concat(address1_longitude.to_s)
                        .concat("&end_latitude=").concat(address2_latitude.to_s)
                        .concat("&end_longitude=").concat(address2_longitude.to_s)

    uber_URL=URI.parse(uber_requestURL)

    http = Net::HTTP.new(uber_URL.host, uber_URL.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    request = Net::HTTP::Get.new(uber_URL.request_uri(),{"Authorization" => "Token z1Vph_RcWDFfs5aW2QST1RA54KuEPkCsn2gOx19P"})
    response = http.start {|http| http.request(request) }

    uber_json=JSON.parse(response.body)

    estimate=uber_json["prices"][0]["estimate"]

    return estimate
  end

end

