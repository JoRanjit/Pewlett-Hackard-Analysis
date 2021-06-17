## Pewlett Hackard Analysis
##=============================================

#### Pewlett Hackard was founded in the era of 'baby-bloomers', i.e, the beginning phases of technology revolution. Now most of these original employees are getting ready for retirement and Pewlett Hackard management needs to plan for this. Some questions we are trying to answer are:
	1. who will be retiring this year
	2. how many positions PH would need to fill
	3. How many positiosn are redundant.
	
## Objective of this project 
-----------------------------------------------
#### PH management needs to design out a mentorship program to allow successful knowledge transfer from these retiress to the newer generation.

## Analysis
-----------------------------------------------
#### We mapped the dependencies on multiple PH data tables containing important staff information like:
	* Employees
	* Departments
	* Titles etc.
#### Then we created sub-tables like the following to collect the data needed to arrive at an informed decision:
	* retirement_titles
	* unique_titles
	* mentorship_eligibilty
------------------------------------------------
### Retirement ready employees and their titles:

	* We joined the PH Employees table data with Titles table data and then filtered by the birth date range BETWEEN '1952-01-01' AND '1955-12-31'
	* There are about 90,000+ employees who are eligible to retirement in the near future
	
Here is a screenshot of our results:
![retirement titles]( https://github.com/JoRanjit/Pewlett-Hackard-Analysis/blob/main/Images/retirement_titles.PNG)
	

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?

	* From the above table with retirement-ready employees and their titles, we used "GROUP BY" to derive the 'unique titles and the corresponsding employee count.
![uinque titles]( https://github.com/JoRanjit/Pewlett-Hackard-Analysis/blob/main/Images/unique_titles.PNG)
	
	* This the screenshot of the table with  the number of positions that will be eliminated with the silver tsunami. Management needs to shoose ifthey need to fill in all of these roles, or 
![Titles]( https://github.com/JoRanjit/Pewlett-Hackard-Analysis/blob/main/Images/titles.PNG)

### The mentorship eligiblity report
 
#### PH has about 1940 staff who are eligible to guide as part of the mentorship program
 
	* This is a screenshot of the employees who are eligible to mentor.
![Mentorship eligibility #1]( https://github.com/JoRanjit/Pewlett-Hackard-Analysis/blob/main/Images/mentorship_eligibility.PNG)

	* This screen shows the unique titles of these mentorship eligible employees. 
	* We can see that this list inlcudes all retirement unique titles listed in the table above.
	* Which implies that PH has to act fast to make sure that they kick-start the mentorship program before these 
	  employees retire.
![Mentorship Eligible]( https://github.com/JoRanjit/Pewlett-Hackard-Analysis/blob/main/Images/mentor%20eligible%20count.PNG)	
	
