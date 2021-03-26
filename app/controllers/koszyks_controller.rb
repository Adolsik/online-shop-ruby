class KoszyksController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart
  before_action :set_koszyk, only: %i[ show edit update destroy ]

  # GET /koszyks or /koszyks.json
  def index
    @koszyks = Koszyk.all
  end

  # GET /koszyks/1 or /koszyks/1.json
  def show
  end

  # GET /koszyks/new
  def new
    @koszyk = Koszyk.new
  end

  # GET /koszyks/1/edit
  def edit
  end

  # POST /koszyks or /koszyks.json
  def create
    @koszyk = Koszyk.new(koszyk_params)

    respond_to do |format|
      if @koszyk.save
        format.html { redirect_to @koszyk, notice: "Koszyk was successfully created." }
        format.json { render :show, status: :created, location: @koszyk }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @koszyk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /koszyks/1 or /koszyks/1.json
  def update
    respond_to do |format|
      if @koszyk.update(koszyk_params)
        format.html { redirect_to @koszyk, notice: "Koszyk was successfully updated." }
        format.json { render :show, status: :ok, location: @koszyk }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @koszyk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /koszyks/1 or /koszyks/1.json
  def destroy 
    @koszyk.destroy if @koszyk.id == session[:koszyk_id]
    session[:cart_id] = nil
    respond_to do |format|
      format.html { redirect_to przedmiots_url, notice: "Koszyk został wyczyszczony." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_koszyk
      @koszyk = Koszyk.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def koszyk_params
      params.fetch(:koszyk, {})
    end

    def invalid_cart
      logger.error "Próba dostania się do niewłaściwego koszyka. #{params[:id]}"
      redirect_to root_path, notice: "Ten koszyk nie istnieje."
    
    end








end
