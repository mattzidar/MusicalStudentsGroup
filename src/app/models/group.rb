# Project name: MusicalStudentsGroup
# Description: Lets school administrators use a platform to contact donators for instruments,
# Setup a systematic way for students to receive lessons, and for students to form their own
# student music groups.
# Filename: group.rb
# Description: groups model, function for searching
# NOTE: This was generated from the scaffold framework and the function was implemented by me
# Last modified on: 4-30-2020

class Group < ApplicationRecord
    #------------------------------------------------------------------
    #
    # Function: search_groups()
    # Parameters: name: string
    # Pre-Condition: name entered must be valid
    # Post-Condition: List all music groups being offered from someone
    # with a specific name, otherwise no results are returned
    # -----------------------------------------------------------------
    def self.search_groups(search)
        if search
          where(["name LIKE ?","%#{search}%"])
        else
          all 
        end
    end
end
