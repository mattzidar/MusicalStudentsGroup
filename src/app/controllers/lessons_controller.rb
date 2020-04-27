# Project name: MusicalStudentsGroup
# Description: Lets school administrators use a platform to contact donators for instruments,
# Setup a systematic way for students to receive lessons, and for students to form their own
# student music groups.
# Filename: lessons_controller.rb
# Description: Lessons controller for functions
# NOTE: This was generated from the scaffold framework
# Last modified on: 4-25-2020

class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]

  #------------------------------------------------------------------
  #
  # Function: index()
  # Parameters: None
  # Post-Condition: List all lesson listings on page
  #
  # -----------------------------------------------------------------
  def index
    @lessons = Lesson.all
  end

  
  def show
  end

  #------------------------------------------------------------------
  #
  # Function: new()
  # Parameters: None
  # Post-Condition: Create new lesson listing
  #
  # -----------------------------------------------------------------
  def new
    @lesson = Lesson.new
  end

  def edit
  end

  #------------------------------------------------------------------
  #
  # Function: create()
  # Parameters:
  # string: name
  # integer: years of experience
  # string: instrument
  # string: location
  # string: availability
  # string: email
  # Pre-Condition: Every parameter must have a valid input from the user
  # Post-Condition: lesson listing is created and listed based on user
  # info
  # -----------------------------------------------------------------
  def create
    @lesson = Lesson.new(lesson_params)

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to @lesson, notice: 'Lesson was successfully created.' }
        format.json { render :show, status: :created, location: @lesson }
      else
        format.html { render :new }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  #------------------------------------------------------------------
  #
  # Function: update()
  # Parameters:
  # string: name
  # integer: years of experience
  # string: instrument
  # string: location
  # string: availability
  # string: email
  # Pre-Condition: lesson listing already exists for user to edit
  # Post-Condition: lesson listing is updated and displayed based
  # on user info
  # -----------------------------------------------------------------
  def update
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to @lesson, notice: 'Lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson }
      else
        format.html { render :edit }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  #------------------------------------------------------------------
  #
  # Function: destroy()
  # Parameters: None
  # Pre-Condition: lesson listing must exist to be destroyed
  # Post-Condition: lesson listing is removed upon user request
  # -----------------------------------------------------------------
  def destroy
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to lessons_url, notice: 'Lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_params
      params.require(:lesson).permit(:name, :experience, :instrument, :location, :availability, :email)
    end
end
