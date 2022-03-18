class NextQuestionsController < ApplicationController
  before_action :set_next_question, only: %i[ show edit update destroy ]

  # GET /next_questions or /next_questions.json
  def index
    @next_questions = NextQuestion.all
    render json: @next_questions
  end

  # GET /next_questions/1 or /next_questions/1.json
  def show
    @next_question = NextQuestion.find(params[:id])
    render json: @next_question
  end

  # GET /next_questions/new
  def new
    @next_question = NextQuestion.new
  end

  # GET /next_questions/1/edit
  def edit
  end

  # POST /next_questions or /next_questions.json
  def create
    @next_question = NextQuestion.new(next_question_params)

    respond_to do |format|
      if @next_question.save
        format.html { redirect_to next_question_url(@next_question), notice: "Next question was successfully created." }
        format.json { render :show, status: :created, location: @next_question }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @next_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /next_questions/1 or /next_questions/1.json
  def update
    respond_to do |format|
      if @next_question.update(next_question_params)
        format.html { redirect_to next_question_url(@next_question), notice: "Next question was successfully updated." }
        format.json { render :show, status: :ok, location: @next_question }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @next_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /next_questions/1 or /next_questions/1.json
  def destroy
    @next_question.destroy

    respond_to do |format|
      format.html { redirect_to next_questions_url, notice: "Next question was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_next_question
      @next_question = NextQuestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def next_question_params
      params.require(:next_question).permit(:number)
    end
end
