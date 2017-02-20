# ODR
An Online Document Repository for ECS at Durham University. It's a marking system for third and fourth year projects.

Designed by students, and a system designed as part of our Group Project module. Any views in this repo are not those of Durham University.

## Requirements:
- PHP 5.3
- Twig
- Klein Routing (for admin)
- WKHTMLtoPDF for PDF generation (on a separate server)
- PDFGenerator script

## Repository Structure
### conCEPt
Inside this folder is the code for the system. This is divided up to Model, View and Controller, as well as Public (for the public facing JS and CSS).

### Documentation
This contains two markdown documents which act as user guides for the admins and markers. There is also a database guide (as a pdf), along with a demo database (the SQL file).

## Setting up:
The whole project should be wrapped in Apache Authentication. This can be done by moving the whole project into the 'password' folder on Durham Community hosting, or done manually by configuring Apache.

Clone the demo database, and enter information for setting up the forms and basic users. This is all done through the database at the moment, although basic code is available for the super-admin page, in the form of PHP classes (although this entire system isn't fully working due to development time constraints).

The public folder is the public facing folder, containing the basic routing files (index.php, forms.php, admin.php, admin_services.php), and the javascript and css. All other folders should be hidden outside of public_html to ensure database information is not leaked.

## Using the system:
Documentation is available on this repository, for using the admin and marker pages. For the super admin, documentation explaining how the database is structured is present.

## Maintaining the system
### Model, View, Controller
This is a structure we adopted during development to ensure the code had some structure to it. 

#### Model
These are classes that interface directly to the database, and use PDO to obtain information using SQL queries. These use the DB class as a base, which provides a connection to the main database (and contains login information, along with server details).

#### Controller
These are classes that generate the views.

#### Views
These are Twig files that are rendered by the controllers. Controllers pass in values to be displayed on screen, and also contain basic logic for displaying pages (using simple IF statements and loops).

### Javascript
We use JQuery Notebook to format forms (which has been slightly modified to fix bugs). Our forms.js file contains all the javascript to validate and send forms to the server. Furthermore, there are some scripts embedded into the views to ensure that jQuery notebook forms are rendered correctly (ensuring that certain forms are not editable).

We also use charts.js to render a simple chart of the number of forms submitted and unsubmitted.

### CSS
We are using a custom implementation of Bootstrap 3 for theming. We have also written custom CSS to improve the overall look of the site (including use of images for the front page). 

### PDF Generation
The PDF Generation is done separately, using a PHP interface for the binary WKHTMLtoPDF. This is currently hosted on OhmGeek servers (at test.ohmgeek.co.uk/PDfGenerator/generate_pdf.php). This whole system can be hosted locally again - just clone the PDF Generation repository.

## Questions?
If you have any other questions regarding the system, please reach out and contact the developers! We are Team 4, and we are here to help.

