class NextsController < ApplicationController
  before_action :set_next, only: %i[ show edit update destroy ]

  # GET /nexts or /nexts.json
  def index
    @nexts = Next.all
  end

  # GET /nexts/1 or /nexts/1.json
  def show
  end

  # GET /nexts/new
  def new
    @next = Next.new
  end

  # GET /nexts/1/edit
  def edit
  end

  # POST /nexts or /nexts.json
  def create
    @next = Next.new(next_params)

    respond_to do |format|
      if @next.save
        format.html { redirect_to next_url(@next), notice: "Next was successfully created." }
        format.json { render :show, status: :created, location: @next }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @next.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nexts/1 or /nexts/1.json
  def update
    respond_to do |format|
      if @next.update(next_params)
        format.html { redirect_to next_url(@next), notice: "Next was successfully updated." }
        format.json { render :show, status: :ok, location: @next }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @next.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nexts/1 or /nexts/1.json
  def destroy
    @next.destroy

    respond_to do |format|
      format.html { redirect_to nexts_url, notice: "Next was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_next
      @next = Next.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def next_params
      params.require(:next).permit(:number)
    end
end
