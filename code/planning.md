Sinatra RESTful CRUD
  Implement CRUD in a MVC app (using Sinatra)
  Use Active Record to perform CRUD operations on a database
  Use RESTful routes
Active Record
  User has many skills and a skill can be assigned to many users
  User has profiency rating for each of their skills
  Multiple skills can not be saved with the same name
Authentication and Authorization
  Implement user login and authentication (and authorization)
HTML and CSS
  Use Semantic HTML <link> to structure a website
  Use CSS selectors to efficiently select any DOM element #p2
  Explain the tradeoffs of different CSS selectors and CSS specificity and design your CSS to optimize these
  Change basic CSS appearance: colors, widths, padding, margin
  Position elements using CSS positioning, display and float
Validations and Errors
  Use Active Record Validations
  Use the errors object to display Active Record validation errors in the view
README


--HIGH LEVEL CONCEPT
Website where new boots can login, rate their knowledge/skill level on various technical/social topics, and then login again once per phase of DBC for comparison. Advice for new/future/prospective boots, feedback for DBC, and job placement may also be incorporated. Periodic email reminders for updates

--P1
Website where boots can "log in", identify/select skills, rate them every phase, provide advice. Public facing website to view progress over time and advice to other/prospective boots/

<!-- --P2
Add on email reminders, hopefully tap into DBC API. Overhaul with Javascript?

--P3
Polish, add on additional features? -->



---------------P1 USER STORIES
(MVP)
----AUTHENTICATION
DONE As a user I want to be able to login with my github username.
DONE As a user I want to login with my password.
As a user I want to change my password.

----SKILLS
As a user I want to be able to select my skills(.)
      for each phase completed.(MVP2)
As a user I want to edit my skills.
As a user I want to remove my skills.
As a user I want to be able to select my phase. (MVP2)

----AUTHORIZATION
As a user I only get access to my skills.

----VALIDATION
Throw error messages on the view for validation.


----STRETCH/MVP3 STORIES
As a user I want to be able to rate each of my skills.
As a user I want to be able to rate my skills per phase (pre-phase 0, post phase-0/1/2/3).
As a visitor I want to a DBC members' progress.
As a visitor I want to see an entire cohorts' progress through DBC a phase.
As a user I want to load my profile picture into my profile.
As a user I want to select my cohort from a list.
As a user I want my cohort's picture to display on my profile.
As a user I want to enter my phase once and have it update automatically.
As a user I want to hover over a skill name and see a description.


USERS
id
pw
un
first/last name
timestamps

SKILLS
id
skill_name
user_id








