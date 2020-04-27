# Project name: MusicalStudentsGroup
# Description: Lets school administrators use a platform to contact donators for instruments,
# Setup a systematic way for students to receive lessons, and for students to form their own
# student music groups.
# Filename: groups_controller.rb
# Description: Groups controller for functions
# NOTE: This was generated from the scaffold framework
# Last modified on: 4-25-2020

class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  #------------------------------------------------------------------
  #
  # Function: index()
  # Parameters: None
  # Post-Condition: List all music groups
  #
  # -----------------------------------------------------------------
  def index
    @groups = Group.all
  end

  def show
  end
  #------------------------------------------------------------------
  #
  # Function: new()
  # Parameters: None
  # Post-Condition: Create new student group listing
  #
  # -----------------------------------------------------------------
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  #------------------------------------------------------------------
  #
  # Function: create()
  # Parameters:
  # string: name
  # integer: year level
  # integer: number of people needed
  # string: instruments needed
  # string: style of music
  # string: location
  # string: email
  # Pre-Condition: Every parameter must have a valid input from the user
  # Post-Condition: group is created based on user input and listed
  # on the groups page
  # -----------------------------------------------------------------
  def create
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  #------------------------------------------------------------------
  #
  # Function: update()
  # Parameters:
  # string: name
  # integer: year level
  # integer: number of people needed
  # string: instruments needed
  # string: style of music
  # string: location
  # string: email
  # Pre-Condition: group already exists in database for user to edit
  # Post-Condition: group listing is updated based on user info
  # -----------------------------------------------------------------
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  #------------------------------------------------------------------
  #
  # Function: destroy()
  # Parameters: None
  # Pre-Condition: group listing must exist to be destroyed
  # Post-Condition: group listing is removed upon user request
  # -----------------------------------------------------------------
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:name, :yearLevel, :peopleNeeded, :instrumentsNeeded, :musicStyle, :location, :email)
    end
end
