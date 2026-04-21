# WIonize CMS

This project is a CMS (Content Management System) based on Ionize 1.0.2, an open-source multilingual PHP CMS released in May 2013. It is designed for web designers and agencies, with an emphasis on usability and native support for multiple languages. This specific version includes Catalan, Spanish, and English as preinstalled languages, and contains some minor modifications.

It uses CodeIgniter version 2.0.2 as its main framework, together with PHP (minimum version 5.1.6), MySQL, JavaScript, jQuery, CSS, and HTML.

### Identified issues or errors:

- Compatibility with modern PHP: The project uses the mysql extension (deprecated since PHP 5.5 and removed in PHP 7.0+), which may cause errors on servers running recent PHP versions. This could prevent it from working properly in modern environments.

- Security vulnerabilities: Since this is an old version (2013), it may contain known vulnerabilities in CodeIgniter 2.x and in the Ionize CMS itself, such as SQL injection, XSS, or other unpatched exploits.

- Outdated dependencies: It uses jQuery and other old libraries, which may have compatibility issues with modern browsers and no longer receive security updates.

- No official support: CodeIgniter 2.x and Ionize 1.0.2 are no longer actively supported, so there are no fixes for newly discovered issues.

- Possible syntax or functional errors: When running it on modern PHP versions, warnings or errors may appear due to obsolete functions, although I have not detected any obvious syntax errors in the main files.

### Possible improvements:

- Upgrade CodeIgniter: Migrate to CodeIgniter 3.x or 4.x (a major change that would require significant code rewriting).

- Change the database driver: Replace mysql with mysqli or PDO in the configuration (database.php) to ensure compatibility with modern PHP.

- Upgrade PHP compatibility: Adapt the code for PHP 7.4+ or 8.x by fixing obsolete functions and adding strict typing where appropriate.

- Modernize the frontend: Update jQuery to more recent versions and improve the CSS/HTML for responsive design.

- Add testing and documentation: Implement unit tests, improve the documentation, and add modern deployment tooling (Docker, etc.).

# Ionize CMS

Version : 1.0.2

Released on may 2013

### About Ionize

Ionize is a free professional and natively multilingual PHP CMS, developed with user experience in mind.

Ionize is dedicated to webdesigners and web agencies to simply make their clients happy.

Ionize uses the PHP framework CodeIgniter.

Official website : http://www.ionizecms.com

![Screenshot](https://github.com/ionize/ionize/raw/master/files/screenshot_ionize_dashboard.jpg)

### Authors

- [Michel-Ange Kuntz](http://www.partikule.net)
- [Christophe Prudent](http://www.toopixel.ch)

### Contributors

- [İskender Totoğlu](http://www.altivebir.com.tr)
- Martin Wernstahl

### Installation

IMPORTANT : Before any update, make a backup of your database.
We will not be responsible for any loose of data.

These instruction takes in account that this version is in developement.

- From Ionize 0.9.x
  - Copy your database, you will start working with this copy,
  - Go in your 0.9.x config/config.php file and copy your encryption key in the new config/config.php file,
  - Launch the installer : http://your_domain/install
  - The installer will migrate the database and the user accounts

- From Ionize 0.9.7 (dev version)
  - Copy your database, you will start working with this copy,
  - Go in your 0.9.6 config/config.php file and copy your encryption key in the new config/config.php file,
  - Launch the installer : http://your_domain/install
  - The installer will migrate the database (not the user accounts)
  - Launch ONE TIME ONLY : http://your_domain/install/?step=migrate_users_to_ci2

### Code Migration

- From Ionize 0.9.x
  - Tags were rewritten for a more logical use. Please refer to the documentation to see how to migrate your views.

- From Ionize 0.9.6
  - Articles Tag : Change your <ion:article filter="title:!=''" > attributes from "title:!=''" to "title !=''" (remove ":")
  - Articles Tag : Change <ion:article filter="type:='your_type'"> to <ion:article type="your_type" >
  - Navigation Tag : Add the "level" attribute : <ion:navigation level="0" />
