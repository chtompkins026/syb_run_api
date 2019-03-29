class ApplicationController < ActionController::API
  # before_action :set_time_zone, if: :logged_in?
  #
  # check_authorization

  def render_resource(resource)
    if resource.errors.empty?
      render json: resource
    else
      validation_error(resource)
    end
  end

  def validation_error(resource)
    render json: {
      errors: [
        {
          status: '400',
          title: 'Bad Request',
          detail: resource.errors,
          code: '100'
        }
      ]
    }, status: :bad_request
  end

private

  def set_time_zone
    Time.zone = current_user.time_zone
  end

end
