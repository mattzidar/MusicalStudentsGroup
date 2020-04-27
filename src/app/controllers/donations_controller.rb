# Project name: MusicalStudentsGroup
# Description: Lets school administrators use a platform to contact donators for instruments,
# Setup a systematic way for students to receive lessons, and for students to form their own
# student music groups.
# Filename: donations_controller.rb
# Description: Donations controller for functions
# NOTE: This was generated from the scaffold framework
# Last modified on: 4-25-2020


class DonationsController < ApplicationController
  before_action :set_donation, only: [:show, :edit, :update, :destroy]

  #------------------------------------------------------------------
  #
  # Function: index()
  # Parameters: None
  # Post-Condition: List all donations
  #
  # -----------------------------------------------------------------
  def index
    @donations = Donation.all
  end

  def show
  end

  #------------------------------------------------------------------
  #
  # Function: new()
  # Parameters: None
  # Post-Condition: Create donation listing
  #
  # -----------------------------------------------------------------
  def new
    @donation = Donation.new
  end

  
  def edit
  end
    
  #------------------------------------------------------------------
  #
  # Function: create()
  # Parameters:
  # string: name
  # string: instrument
  # string: condition
  # string: model
  # string: location
  # string: email
  # Pre-Condition: Every parameter must have a valid input from the user
  # Post-Condition: Donation is created based on user input and listed
  # on the donations page
  # -----------------------------------------------------------------
  def create
    @donation = Donation.new(donation_params)
    
    respond_to do |format|
      if @donation.save 
        format.html { redirect_to @donation, notice: 'Donation was successfully created.' }
        format.json { render :show, status: :created, location: @donation }
      else
        format.html { render :new }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end


  #------------------------------------------------------------------
  #
  # Function: update()
  # Parameters:
  # string: name
  # string: instrument
  # string: condition
  # string: model
  # string: location
  # string: email
  # Pre-Condition: Donation exists previously in the system for the
  # user to update
  # Post-Condition: Donation is updated with different / correct
  #information, changes are listed on donations page
  # -----------------------------------------------------------------
  def update
    respond_to do |format|
      if @donation.update(donation_params)
        format.html { redirect_to @donation, notice: 'Donation was successfully updated.' }
        format.json { render :show, status: :ok, location: @donation }
      else
        format.html { render :edit }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  #------------------------------------------------------------------
  #
  # Function: destroy()
  # Parameters: None
  # Pre-Condition: Donation must exist to be destroyed
  # Post-Condition: Donation listing is removed upon user request
  # -----------------------------------------------------------------
  def destroy
    @donation.destroy
    respond_to do |format|
      format.html { redirect_to donations_url, notice: 'Donation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  #def self.search(str)
    #if str.blank?  
      #all
    #else
      #wher)
    #end
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation
      @donation = Donation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donation_params
      params.require(:donation).permit(:name, :instrument, :condition, :model, :location, :email)
    end
end
