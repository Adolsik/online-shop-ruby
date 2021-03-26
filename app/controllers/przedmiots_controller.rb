class PrzedmiotsController < ApplicationController
  before_action :set_przedmiot, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index,:show]

  # GET /przedmiots or /przedmiots.json
  def index
    @przedmiots = Przedmiot.all.order("created_at desc")
  end

  # GET /przedmiots/1 or /przedmiots/1.json
  def show
  end

  # GET /przedmiots/new
  def new
    @przedmiot = current_user.przedmiots.build
  end

  # GET /przedmiots/1/edit
  def edit
  end

  # POST /przedmiots or /przedmiots.json
  def create
    @przedmiot = current_user.przedmiots.build(przedmiot_params)

    respond_to do |format|
      if @przedmiot.save
        format.html { redirect_to @przedmiot, notice: "Przedmiot został dodany pomyślnie." }
        format.json { render :show, status: :created, location: @przedmiot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @przedmiot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /przedmiots/1 or /przedmiots/1.json
  def update
    respond_to do |format|
      if @przedmiot.update(przedmiot_params)
        format.html { redirect_to @przedmiot, notice: "Przedmiot został edytowany pomyślnie." }
        format.json { render :show, status: :ok, location: @przedmiot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @przedmiot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /przedmiots/1 or /przedmiots/1.json
  def destroy
    @przedmiot.destroy
    respond_to do |format|
      format.html { redirect_to przedmiots_url, notice: "Przedmiot został zniszczony pomyślnie." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_przedmiot
      @przedmiot = Przedmiot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def przedmiot_params
      params.require(:przedmiot).permit(:brand, :model, :description, :conditon, :title, :price, :image, :size)
    end
end
