@release_sprint_22.10.04  @login_cases @team_crmi
Feature: Login

As a QA
I want to test LinkedIn login page

@ui_web @automated @priority_high @negative @LinkedIn
Scenario: Error on Null Fields
    Given I am on LinkedIn login page
    And Email field is empty
    And Password field is empty
    When I click on 'Sign in'
    Then I should get Error to enter credentials

@ui_web @automated @priority_high @negative @LinkedIn
Scenario: Wrong password
    Given I am on LinkedIn login page
    When I type correct Email Address
    And I type incorrect password
    And I click on 'Sign in'
    Then I should see 'Thats not the right password. Try again or sign in with a one-time link'

@ui_web @automated @priority_medium @negative  @LinkedIn
Scenario: Empty Email Address field
    Given I am on LinkedIn login page
    When I type correct Password
    And I leave Email address field empty
    And I click on 'Sign in'
    Then I should see 'Please enter an email address or phone number'
    
@ui_web @automated @priority_medium @negative  @LinkedIn
Scenario: Empty Password field
    Given I am on LinkedIn login page
    When I type correct Email Address
    And I leave Password field empty
    And I click on 'Sign in'
    Then I should see 'Please enter an email address or phone number'

@ui_web @automated @priority_medium @negative  @LinkedIn
Scenario: invalid Email Address
    Given I am on LinkedIn login page
    When I type invalid Email Address
    And I type password
    And I click on 'Sign in'
    Then I should see 'Please enter an valid username'

@ui_web @automated @priority_medium @negative  @LinkedIn
Scenario: incorrect Email Address
    Given I am on LinkedIn login page
    When I type incorrect Email Address
    And I type password
    And I click on 'Sign in'
    Then I should see 'Couldnt find a LinkedIn account associated with this email. Please try again'

@ui_web @automated @priority_high @positive @LinkedIn
Scenario: Signin with Apple ID
   Given I am on LinkedIn login page
   When I click on 'Sign in with Apple'
   Then I should see a field to enter Apple ID
   And on entering the Apple ID I should see 'Welcome, $firstname'

@ui_web @automated @priority_high @positive @LinkedIn
Scenario: Successful Login
    Given I am on LinkedIn login page
    When I type correct credentials
    And I click on 'Sign in'
    Then I should see 'Welcome, $firstname'



    

