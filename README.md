# BJSS Technical Test

## Requirements
### Windows
* Windows 10
* Ruby 2.5.5
* A BASH Compliant Terminal
* Ruby Bundler - use the command `gem install bundler` in terminal to install
* All subsidiary Gems (included in the gemfile)
* The latest version of Google Chrome installed
* The latest version of ChromeDriver
* A stable internet connection

## How to install
To clone the repository run the command `git clone` [the HTTP or SSH](https://github.com/Mahboobr/BJSSTEST) within the terminal.

To install all the Ruby Gems required for this suite run the command ` bundle` within the terminal. This will install all the required gems specified within the 'Gemfile'.

## Additional setup steps
### Windows
2.The project uses Chromedriver, where you can find the latest release [here](https://sites.google.com/a/chromium.org/chromedriver/downloads). Move ChromeDriver to either this project's location or to one of your choice. Then right-click on the file, go to **Properties**, and copy the **Location** file path
3. Head to **Control Panel > Sysytem and Security > System** and **Advanced Systems Settings** (it might ask you for an admin password).
4. Open **Environment Variables**. In **System Variables**, open **Path** and click **New**. Paste in the path you copied with the ChromeDriver location.
5. Restart your terminal, and head back to the project directory. Now if you run `cucumber` the project should run.

## Running the software
Open the program, and within the console while in the "BJSSTEST" folder run the command `cucumber` to see all the tests running.
Within the terminal window, it will show all the scenarios that are running and whether they have passed.

Alternatively, to run a single test use the command `cucumber --tag @<test_number>`. The tags can be found in the feature file above the scenario.
Example: `cucumber --tag @test_1`
