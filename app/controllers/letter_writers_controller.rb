class LetterWritersController < ApplicationController
  before_action :set_letter_writer, only: [:show, :edit, :update, :destroy]

  # GET /letter_writers
  # GET /letter_writers.json
  def index
    @letter_writers = LetterWriter.all
  end

  # GET /letter_writers/1
  # GET /letter_writers/1.json
  def show
  end

  # GET /letter_writers/new
  def new
    @letter_writer = LetterWriter.new
  end

  # GET /letter_writers/1/edit
  def edit
  end

  # POST /letter_writers
  # POST /letter_writers.json
  def create
    @letter_writer = LetterWriter.new(letter_writer_params)

    respond_to do |format|
      if @letter_writer.save
        format.html { redirect_to @letter_writer, notice: 'Letter writer was successfully created.' }
        format.json { render :show, status: :created, location: @letter_writer }
      else
        format.html { render :new }
        format.json { render json: @letter_writer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /letter_writers/1
  # PATCH/PUT /letter_writers/1.json
  def update
    respond_to do |format|
      if @letter_writer.update(letter_writer_params)
        format.html { redirect_to @letter_writer, notice: 'Letter writer was successfully updated.' }
        format.json { render :show, status: :ok, location: @letter_writer }
      else
        format.html { render :edit }
        format.json { render json: @letter_writer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /letter_writers/1
  # DELETE /letter_writers/1.json
  def destroy
    @letter_writer.destroy
    respond_to do |format|
      format.html { redirect_to letter_writers_url, notice: 'Letter writer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_letter_writer
      @letter_writer = LetterWriter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def letter_writer_params
      params.require(:letter_writer).permit(:name, :email)
    end
end
