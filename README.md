# MusicalStudentsGroup

Application for students in underprivileged music programs to receive instruments, get lessons, or form a music group such as a band, orchestra, or choir

The intent with all of these functions is to make sure that students in school districts with a limited number of instruments can play an instrument on a regular basis. Additionally, lessons can serve as additional teaching for younger students, which will overall strengthen the performance of the program as a whole while providing older students with an opportunity to volunteer and give back. Students will be able to form musical groups based on their interests to expand their musical horizons by playing in groups that aren't offered in underfunded school districts such as a jazz combo or string quintet. This will also help them learn multiple styles of music.

All code that I could add for the Ruby on Rails application is included in the src folder. Project proposal is in the docs folder along with documentation and diagrams for my project.

Installation and usage:
Project was developed using a Windows machine with the web application running on a Google Chrome browser. Server is hosted on my TCNJ Virtual Machine running ruby 2.7.0 and rails 6.0.2.1.<br /><br />

For running the application:
Ensure that Ruby 2.7.0 and Rails 6.0.2.1 are installed on your system.<br />
Clone the repository and run bundle install and yarn install.<br />
Install postgreSQL. installation is different depending on the type of machine.<br />
Next, create, migrate, and seed the database.<br />
Afterwards, run the server using rails s --binding= with your ip address.<br /><br />
<br /><br />
Assignment 3 UML Diagrams:
https://imgur.com/a/vXXDFYu
This link is private and can only be accessed by people who have this link. Includes: UI Mockups, System Sequence Diagrams, Design Class Diagram, State Diagram.
<br /><br />
Use Case Descriptions:

Use Case - Create of edit donation listing

Primary Actor - Student with extra instruments, teacher, alumni

Goal in Context - Create a free listing for a donation of an instrument that students in need can request and get. The creator of the donation listing can delete it or edit it by using their private user ID they created when they made the listing.

Preconditions - User must have access to the application and must fill out every field for information about the donation that they will be providing.  Deleting or editing their donation listing requires that their listing already exists and that the user has access to their user ID which they created upon making the donation listing.

Trigger - User wants to donate an instrument, they click the ‘create donation listing’ button in the donations tab. If the user wants to delete or edit their listing, they hit the ‘delete’ or ‘edit’ button in the donations tab.

Scenario -
The user enters the application.
The user selects the tab for ‘Donations’.
The user clicks ‘Create a Donation Listing’ button.
The system displays fields for the user to enter all information associated with their listing.
The user hits ‘submit listing’ and their donation listing is added to the system and sent to the database. The user is prompted that this was a success.
The system displays their donation listing on the screen along with all the other donation listings open.
User clicks on delete / edit listing and validates that action with their unique ID. User confirms deletion and listing is deleted from table and database. If the user selects to edit, they edit all necessary fields and submit the changes.
If the user ID matches the one they created, the deletion / edits made to the listing are reflected by the system on the screen where all donation listings are shown.

Exception -
User does not enter every field when creating a donation listing - System tells the user to go back and fill in the fields that they did not fill in.
User ID they create is not a number up to 4 digits - the system tells them to create a new user ID that is a number up to four digits.
The ID user enters when they edit or delete their listing does not match the ID they first made - system does not allow them to edit or delete that listing and requires that they enter the correct number.



Use Case - User requests donation item

Primary Actor - Student

Goal in Context - Allow users to search through listings based on criteria and select a donation item they would like to request if they need an instrument.

Preconditions - Users must have access to the application, donation items must exist in their area that is suitable for them.

Trigger - A student desires an instrument that they do not have, they click ‘search for donation’ or look through the entire list of donations in the ‘donations’ tab for an instrument that suits them. The student clicks ‘request’ and contacts the donor if they find a good listing.

Scenario - 
The user enters the application.
The user clicks on the ‘Donations’ tab.
The user clicks ‘search for donation’ if they wish to search more specifically or they search through the list for a donation item.
The system displays results based on their search.
The user clicks ‘request’ when they find a donation item that is suitable for them.
The system returns the donor’s contact information to the user.
The user contacts the donor to receive the donation item.

Exceptions - 
The user search does not return any results - the user is prompted to refine their search to get a result that is suitable for them.


Use Case - Create or edit lesson listing for students

Primary Actor - Student, teacher

Goal In Context - Create a free listing for lessons on a particular instrument, mainly taught by older students but teachers in the district can provide these lessons as well. Lesson listing can be deleted as well.

Preconditions - User must have access to the application and must fill in every field for information about lessons that they will be providing. Deleting or editing information about listing requires that the user has access to the ID for the listing, and that the listing already exists.

Trigger - Student or teacher decides to offer lessons, they push a button to create this lesson listing in the lessons tab. Additionally, the student or teacher may desire to delete or edit their listing by hitting the ‘delete’ or ‘edit listing’ button in the lessons tab.

Scenario - 
The user enters the application.
The user selects the tab for ‘Lessons’.
The user clicks the ‘create a listing’ button.
The system displays fields for the user to enter all information associated with them and their lesson listing, including a field for a unique ID.
The user enters the information in all fields.
The user hits ‘submit listing’ and is prompted that their listing was added successfully by the system.
The system displays their lesson listing in the list on the screen.
Users can come back and delete / edit the listing with a unique ID created earlier by clicking the ‘delete’ or ‘edit listing’ buttons respectively. 
If user ID matches, the system tells the user that their listing has been deleted / edited successfully.

Exceptions -
User does not enter information into all of the fields provided - the user is instructed to enter the missing information before submission.
The Student attempts to enter something other than an integer (up to four numbers) for their private ID - The system tells them to re enter a number that is up to four digits.
Unique ID does not match ID when attempting to delete or edit listing - the user gets two more tries but is locked out of deleting or editing the listing if all attempts are used.


Use Case - Request Lessons

Primary Actor - Student

Goal In Context - Allow students to look at a list of lessons or search based on criteria and request the lessons if a good match is found.

Preconditions - Lessons for that particular instrument in that area must exist for students to be able to request lessons.

Trigger - If a student desires to take lessons from an older student or teacher, they click ‘search for lesson’ or look through the entire list and request a lesson in the lessons tab. The student can put in a request for the lesson if they find a good person to teach them.

Scenario - 
Student enters the application.
The student clicks on the tab for lessons.
The student clicks on ‘search for lesson’ if they desire to search with specific criteria.
The system displays matches based on their search. 
The student looks through matches based on search or looks through the entire list of lessons being offered.
Upon finding a suitable person for lessons, the student clicks ‘request’.
The system provides the student with information for contacting them.
The student contacts the person for lessons.

Exceptions -
Information in search does not return any results - the user is prompted to redefine their search from the system or to search the entire list.


Use Case - Create and update musical student group listing

Primary Actor - Student

Goal In Context - Allow for users to make a listing for a specific type of musical group they want to form in their district, information including style of music, instrument players needed, etc. Users can delete or edit this listing as new people make a request to join or if the request has been satisfied.

Preconditions - Students must have access to the application and must fill in every field related to information about the type of group they want to form. The listing must exist and the student must have their ID for the listing in order to edit or delete it.

Trigger - The student desires to form a musical group, they click the ‘Form a Group Listing’ button to create a musical group listing in the ‘Student Groups’ tab. After creating the listing, if the student desires to edit or delete this listing, they can click ‘edit listing’ or ‘delete listing’ to do so.

Scenario - 
The student enters the application.
The student clicks on the ‘Student Groups’ tab.
The student clicks on the ‘Form a Group Listing’ button if they want  to create a musical group listing that other students can request to join.
The system provides the student with fields where they enter all the information associated with the music group that they are trying to form, as well as contact information and unique ID.
The student enters all information into the page.
The student hits the ‘Submit Group Listing’ button.
The system tells the user that their listing has been submitted successfully.
The system adds their listing to the page which has each listing on it.
The student can hit the ‘edit’ or ‘delete’ button in the same tab if they want to edit the information on their listing or delete it once it has been satisfied.
If their ID matches that of the listing they created, their listing will be edited / deleted as specified. 
The system tells the user that their action has been completed.

Exceptions -
The Student does not enter information into all of the fields when creating a listing - The system tells the user to go back and enter this information before submission
The Student attempts to enter something other than an integer (up to four numbers) for their private ID - The system tells them to re enter a number that is up to four digits.
The ID that the student enters does not match the ID of the listing when trying to edit or delete it - They are given two more tries but are locked from attempting to edit or delete the listing if they use all of those attempts.



Use Case - Request to join student music group

Primary Actor - Student

Goal In Context - Allow the student a method of searching through all of the music group listings, or the student can search based on criteria they specify. Upon finding a match that is good for them, the student can put in a request to join this music group and they are provided information to contact the student who put up the listing.

Preconditions - A group listing must already exist in the area if a student wants to request to join it.

Trigger - If a student desires to join a musical group from other students in their area, they click ‘Search for a Group’ if they want to search for one based on criteria or they can search the entire list in the ‘Student Groups’ tab. A request can be put in when they find a suitable group.

Scenario - 
The student enters the application.
The student clicks on the ‘Student Groups’ tab.
The student clicks on the ‘Search for a Group’ button if they want  to search for a musical group to join based on their criteria.
The system displays matches based on their search. 
The student looks through the entire list of group listings, or searches through the matches provided to them based on their search.
If a good group has been identified by the student, they click the ‘Request’ button.
The system provides the user all information necessary to contact the person who made the listing.
The student contacts the other student about joining their group.

Exceptions -
Search that the student does does not return any results - the system prompts the user to enter different criteria for a different search.


