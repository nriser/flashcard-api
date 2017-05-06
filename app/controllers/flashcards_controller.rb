class FlashcardsController < ProtectedController
  before_action :set_flashcard, only: [:update, :destroy] # [:show, :update, :destroy]
  # before_action :validate_user, only: [:index, :create, :update, :destroy, :set_item]
  # before_action :flashcard_params, only: [:create]

  # GET /flashcards
  def index
    @flashcards = current_user.flashcards
    render json: @flashcards
  end

  # GET /flashcards/1
  def show
    # binding.pry
    @flashcard = current_user.flashcards.find(params[:id])
    render json: @flashcard
  end

  # POST /flashcards
  def create
    # binding.pry
    # @flashcard = Flashcard.new(flashcard_params)
    @flashcard = current_user.flashcards.build(flashcard_params)

    if @flashcard.save
      render json: @flashcard, status: :created, location: @flashcard
    else
      render json: @flashcard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flashcards/1
  def update
    if @flashcard.update(flashcard_params)
      render json: @flashcard
    else
      render json: @flashcard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /flashcards/1
  def destroy
    @flashcard.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flashcard
      # @flashcard = Flashcard.find(params[:id])
      @flashcard = current_user.flashcards.find(params[:id])
    end

    def validate_user
      set_current_user
    end

    # Only allow a trusted parameter "white list" through.
    def flashcard_params
      params.require(:flashcard).permit(:word, :definition)
    end
end
