module UbicacionesHelper
  def google_maps_api_key
    "AIzaSyD4r8bvm7GuzJ7iBTC3nFjQ2tA_--sWxwc"
  end

  def google_api_url
    "https://maps.googleapis.com/maps/api/js"
  end

  def google_api_access
    "#{google_api_url}?key=#{google_maps_api_key}&libraries=geometry&sensor=false"
  end

  def google_maps_api
    content_tag(:script,:type => "text/javascript",:src => google_api_access) do
    end
  end
end
