# Project name: MusicalStudentsGroup
# Description: Lets school administrators use a platform to contact donators for instruments,
# Setup a systematic way for students to receive lessons, and for students to form their own
# student music groups.
# Filename: donation.rb
# Description: Donations model, function for searching
# NOTE: This was generated from the scaffold framework and the function was implemented by me
# Last modified on: 4-30-2020

class Donation < ApplicationRecord
    #------------------------------------------------------------------
    #
    # Function: search_donations()
    # Parameters: instrument: string
    # Pre-Condition: instrument entered must be valid
    # Post-Condition: List all music donation with associated instrument
    # otherwise no results are returned
    # -----------------------------------------------------------------
    def self.search_donations(search)
        if search
          where(["instrument LIKE ?","%#{search}%"])
        else
          all 
        end
    end
end
