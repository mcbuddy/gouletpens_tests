# Goulet Pens Tests
created by: Budi Sugianto

[![ci-api-tests](https://github.com/mcbuddy/gouletpens_tests/actions/workflows/run-test-ci.yml/badge.svg)](https://github.com/mcbuddy/gouletpens_tests/actions/workflows/run-test-ci.yml)
[![This project is using Percy.io for visual regression testing.](https://percy.io/static/images/percy-badge.svg)](https://percy.io/67ceaff3/gouletpens_tests)
[![CucumberReports: gouletpens_tests](https://messages.cucumber.io/api/report-collections/77060dee-5120-4209-93b4-7b704c532d1d/badge)](https://reports.cucumber.io/report-collections/77060dee-5120-4209-93b4-7b704c532d1d)

The testing framework to validate 2 modules of the Goulet Pens e-commerce site. This testing framework build using Cucumber, Ruby and RSpec as the test runner and validator.

#### Project Structure

    gouletpens_tests
    ├─> .github/
    │   └─> workflows/                # Github Actions workflows 
    ├─> config/
    │   ├─> cucumber.yml 
    ├─> features/
    │   ├─> auth/                     # Authentication and Authorization tests module
    │   ├─> filter_and_search/        # empty
    │   ├─> shopping/                 # Shopping Experience tests module
    │   ├─> support/
    │       ├─> helpers/              # All helpers files
    │       ├─> pages/                # Page Object
    │       ├─> step_definitions/     # Test Steps 
    │       ├─> env.rb                # cucumber env configuration
    ├── Gemfile
    ├── Gemfile.lock
    ├── package.json
    ├── package-lock.json
    └── README.md

#### Setup and Install programs to Unix-based Machine
Prerequisite:
- [rvm](https://rvm.io/rvm/install) - Ruby Version Manager
- ruby equal or higher than version: 2.7.4

Install RVM and Ruby 3.1.1
```
\curl -sSL https://get.rvm.io | bash
rvm install ruby-3.1.1
rvm use ruby-3.1.1
```

Install all dependencies 
```
gem install bundler
bundle install
npm install
```

To run this cucumber test locally:
```
 cucumber  
   -or- 
 npm run test
```

#### Github Action CI Build [![ci-api-tests](https://github.com/mcbuddy/gouletpens_tests/actions/workflows/run-test-ci.yml/badge.svg)](https://github.com/mcbuddy/gouletpens_tests/actions/workflows/run-test-ci.yml)
The CI Build included and basically it will run all the test for each push and pull-request. 
Feel free to acess and check that out, Click the Github Action badge on this README file. 

#### Percy Visual Regression Tests [![This project is using Percy.io for visual regression testing.](https://percy.io/static/images/percy-badge.svg)](https://percy.io/67ceaff3/gouletpens_tests)
Using third party tools to provide us with the visual test on multiple different browsers. [Percy](https://percy.io/) very useful to prevent any unwanted CSS and/or Asset changes.
The entire build can view publicly.

#### Cucumber Reports [![CucumberReports: gouletpens_tests](https://messages.cucumber.io/api/report-collections/77060dee-5120-4209-93b4-7b704c532d1d/badge)](https://reports.cucumber.io/report-collections/77060dee-5120-4209-93b4-7b704c532d1d)
Simple the cucumber tests result and reporting.

 > *Feel free to ask/send me any questions or concerns to my email: budisugianto777@gmail.com*
