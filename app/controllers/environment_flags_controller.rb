class EnvironmentFlagsController < ApplicationController
  before_action :set_environment_flag, only: %i[ update ]

  # PATCH/PUT /environment_flags/1
  def update
    if @environment_flag.update(environment_flag_params)
      render json: { data: @environment_flag }, include: [ :flag ]
    else
      render json: { data: { errors: @environment_flag.errors } }, status: :unprocessable_entity
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_environment_flag
      @environment_flag = EnvironmentFlag.find_by(flag_id: params[:flag_id], environment_id: params[:environment_id])
    end

    # Only allow a list of trusted parameters through.
    def environment_flag_params
      params.expect(environment_flag: [ :value ])
    end
end
