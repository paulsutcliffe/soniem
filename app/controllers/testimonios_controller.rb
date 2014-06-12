class TestimoniosController < InheritedResources::Base
  before_filter :authenticate_admin!
  def permitted_params
    params.permit(:testimonio => [:nombre, :mensaje])
  end
end
