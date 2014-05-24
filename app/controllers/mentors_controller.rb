class MentorsController < ApplicationController
  before_action :set_mentor, only: [:show, :edit, :update, :destroy]

  # GET /mentors
  # GET /mentors.json
  def index
    @q = Mentor.search(params[:q])
    @mentors = @q.result(distinct: true)
    @mentors = Mentor.all.paginate(page: params[:page], per_page:5)
  end

  # GET /mentors/1
  # GET /mentors/1.json
  def show
  end

  # GET /mentors/new
  def new
    @mentor = Mentor.new
  end

  # GET /mentors/1/edit
  def edit
  end


  # POST /mentors
  # POST /mentors.json
  def create
    @mentor = Mentor.new(mentor_params)

    respond_to do |format|
      if @mentor.save
        format.html { redirect_to @mentor, notice: 'Mentor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mentor }
      else
        format.html { render action: 'new' }
        format.json { render json: @mentor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mentors/1
  # PATCH/PUT /mentors/1.json
  def update
    events = params[:event_ids]
    events.each do |event|
      signup = SignUp.where(event_id: event).where(signupable_type: "Mentor").where(signupable_id: params[:id]).first_or_create
    end

    respond_to do |format|
      if @mentor.update(mentor_params)
        format.html { redirect_to @mentor, notice: 'Mentor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mentor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentors/1
  # DELETE /mentors/1.json
  def destroy
    @mentor.destroy
    respond_to do |format|
      format.html { redirect_to mentors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentor
      @mentor = Mentor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mentor_params
      params.require(:mentor).permit(:first_name, :last_name, :email, :gender, :first_aid_certified)
    end
end
