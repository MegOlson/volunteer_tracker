# _Volunteer Tracker_

#### _Epicodus Independent Ruby Project, 9/22/17

#### By _Megan Olson_

## Description

_This program will allow the user to track projects and volunteers and assign volunteers to a projects._

## Setup/Installation Requirements

* _Clone directory named volunteer_tracker_
* _Open in your preferred browser_
* _Create a database in SQL called 'volunteer_tracker'_
* _Create tables for 'volunteers' and 'projects' with PK ids for each, a title varchar for projects table, and a name varchar along with a project_id int for volunteers table._

## Known Bugs

_No known bugs._

## Specs

* Program takes project name from user and displays on home page as link.
  * Example Input: "Ruby Tutor"
  * Example Output: "Ruby Tutor"
* Program allows user to click on each project and show list of volunteers.
  * Example Input: click("ruby tutor")
  * Example Output: "Rose", "Stella"
* Program allows user to update project name.
  * Example Input: "Ruby on Rails Tutor"
  * Example Output: "Ruby on Rails Tutor"
* Program allows user to delete project.
  * Example Input: delete
  * Example Output: "No projects"
* Program allows user to click on each volunteer and edit their name.
  * Example Input: "Stella H."
  * Example Output: "Rose", "Stella H."
* Program allows user to delete volunteers.
  * Example Input: delete
  * Example Output: "Rose"

## Support and contact details

_For questions, concerns, or comments, please contact meganannetteolson@yahoo.com_

## Technologies Used

_Ruby, Sinatra, and SQL._

### License

Copyright (c) 2017 **_Megan Olson_**

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
