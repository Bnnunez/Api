#Obtenido de: https://stackoverflow.com/questions/23332320/how-can-i-return-a-404-json-format-in-rails-4

class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, :with=> :record_not_found

  private
  def record_not_found(error)
    render json: {error:error.message, message:"No se ha podido encontrar el pedido en la base de datos"}, status: :not_found
  end

end
