class FlagsController < ApplicationController
  before_action :set_flag, only: %i[ show update destroy ]

  # GET /flags
  def index
    flags = Flag.all.includes(:environment_flags)
    environments = Environment.all.as_json(only: [ :id, :name ])

    render json: { data: { flags:, environments: } }, include: { environment_flags: { only: [ :id, :environment_id, :value ] } }
  end

  # GET /flags/1
  def show
    render json: @flag
  end

  # POST /flags
  def create
    @flag = Flag.new(flag_params)

    if @flag.save
      render json: @flag, status: :created, location: @flag
    else
      render json: @flag.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flags/1
  def update
    if @flag.update(flag_params)
      render json: @flag
    else
      render json: @flag.errors, status: :unprocessable_entity
    end
  end

  # DELETE /flags/1
  def destroy
    @flag.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flag
      @flag = Flag.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def flag_params
      params.expect(flag: [ :name, :key, :description, :default_value ])
    end
end
