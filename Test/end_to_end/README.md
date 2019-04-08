Please note that, I have completed the tests in windows and all my instruction to setup and run the tests are for windows users
# Introduction
*  Please make sure you have Firefox and relevent geckodriver installed in the system, if not please download the firefox from https://www.mozilla.org/en-GB/firefox/new/ and install the firefox
*  Please download the geckodriver from hhttps://github.com/mozilla/geckodriver/releases/download/v0.23.0/geckodriver-v0.23.0-win64.zip and extract the driver and paste it in C:\Windows\System32
*  Download and install Ruby ruby 2.4.4p296 from https://rubyinstaller.org/downloads/
*  Clone the Test from Github to C drive
*  Create a commamd promt and Navigate to C:\worldremit\Test\end_to_end (cd C:\worldremit\Test\end_to_end) and list the directory (dir) see weather you can see the features directory
*  On the command promt install the bundle gem (gem install bundle) to install the required gem for the tests
*  Execute the test by running this command (bundle exec cucumber features\WorldRemit.feature)
*  Navigate to features\report to view the cucumber test report
* I have also uploaded the video of the test execution and checking an assertion

## Test Framework
*  This is a simple framework that I created for me to complete the World Remit tests, I used bundle and gemfile to manage all the required gems.
*  I used BDD, Ruby, cucumber, Capybara and SitePrism (Page Object Model)
*  Cucumber native reports are avaliable in feature\report directory


