class OwnersController < ApplicationController
  before_action :set_owner, only: %i[ show edit update destroy ]

  skip_before_action :require_admin, only: [:owner_report, :big_report]

  # GET /owners or /owners.json
  def index
    @owners = Owner.all
  end

  def owner_report
    @owners = Owner.all
  end

  # GET /owners/1 or /owners/1.json
  def show
  end

  # GET /owners/new
  def new
    @owner = Owner.new
  end

  # GET /owners/1/edit
  def edit
  end

  def big_report
    @valid_sorts = ['first_name', 'last_name', 'email']
    if params[:sort]
      @sort = params[:sort]
    else
      @sort = 'first_name'
    end
    @sorted_owners = Owner.kept.order(@sort)  
  end

  # POST /owners or /owners.json
  def create
    @owner = Owner.new(owner_params)

    respond_to do |format|
      if @owner.save
        format.html { redirect_to @owner, notice: "Owner was successfully created." }
        format.json { render :show, status: :created, location: @owner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /owners/1 or /owners/1.json
  def update
    respond_to do |format|
      if @owner.update(owner_params)
        format.html { redirect_to @owner, notice: "Owner was successfully updated." }
        format.json { render :show, status: :ok, location: @owner }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /owners/1 or /owners/1.json
  def destroy
    @owner.discard
    respond_to do |format|
      format.html { redirect_to owners_url, notice: "Owner was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_owner
      @owner = Owner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def owner_params
      params.require(:owner).permit(:first_name, :last_name, :email, :phone_number, :discarded_at)
    end
end
