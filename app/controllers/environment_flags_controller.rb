class EnvironmentFlagsController < ApplicationController
  before_action :set_environment_flag, only: %i[ toggle ]

  # PATCH/PUT /flags/1
  def toggle
    if @environment_flag.update(environment_flag_params)
      render json: { data: @environment_flag }, include: [ :flag ]
    else
      render json: { data: { errors: @environment_flag.errors } }, status: :unprocessable_entity
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_environment_flag
      @environment_flag = EnvironmentFlag.find(params.expect(:environment_flag_id))
    end

    # Only allow a list of trusted parameters through.
    def environment_flag_params
      params.expect(environment_flag: [ :value ])
    end
end
