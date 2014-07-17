#JIRA PRIMERO-298

@javascript @primero
Feature: Attack on Hospitals Form
  As a User, I want to be able to select a 'cause' for violation types Attacks on Schools and Attacks on Hospitals so that I can collect more detailed information about the incident

  Scenario: As a logged in user, I will create a incident for attack on hospitals
    Given I am logged in as an admin with username "primero" and password "primero"
    When I access "incidents page"
    And I press the "Create a New Incident" button
    And I press the "Attack on Hospitals" button
    And I fill in the following:
      | Number of Sites Attacked | 3                           |
      | Type of Attack On Site   | <Select> Aerial Bombardment |
      | Hospital Name            | Some hospital name          |
      | Number of Patients       | 125                         |
    And I fill in the 1st "Human Impact Attack Hospital Section" subform with the follow:
      | Number of Boys Killed                             | 23 |
      | Number of Girls Killed                            | 15 |
      | Number of Unknown Children Killed                 | 5  |
      | Total Children Killed                             | 43 |
      | Number of Boys Injured                            | 6  |
      | Number of Girls Injured                           | 10 |
      | Number of Unknown Children Injured                | 0  |
      | Total Children Injured                            | 16 |
      | Number of Staff Killed                            | 7  |
      | Number of Staff Injured                           | 12 |
      | Number of Other Adults Killed                     | 4  |
      | Number of Other Adults Injured                    | 9  |
      | Number of Children Affected by Service Disruption | 60 |
      | Number of Adults Affected by Service Disruption   | 12 |
      | Number of Children Recruited During Attack        | 3  |
    And I fill in the following:
      | What organization manages this facilty?      | <Select> Government     |
      | What was the main objective of the "attack"? | Some information        |
      | Physical Impact of Attack                    | <Select> Serious Damage |
      | Was Facility Closed As A Result?             | <Radio> Yes             |
      | For How Long? (Days)                         | 60                      |
    And I press "Save"
    Then I should see "Incident record successfully created" on the page
    And I should see a value for "Number of Sites Attacked" on the show page with the value of "3"
    And I should see a value for "Type of Attack On Site" on the show page with the value of "Aerial Bombardment"
    And I should see a value for "Hospital Name" on the show page with the value of "Some hospital name"
    And I should see a value for "Number of Patients" on the show page with the value of "125"
    And I should see a value for "What organization manages this facilty?" on the show page with the value of "Government"
    And I should see a value for "What was the main objective of the "attack"?" on the show page with the value of "Some information"
    And I should see a value for "Physical Impact of Attack" on the show page with the value of "Serious Damage"
    And I should see a value for "Was Facility Closed As A Result?" on the show page with the value of "Yes"
    And I should see a value for "For How Long? (Days)" on the show page with the value of "60"
    And I should see in the 1st "Human Impact of Attack" subform with the follow:
      | Number of Boys Killed                             | 23 |
      | Number of Girls Killed                            | 15 |
      | Number of Unknown Children Killed                 | 5  |
      | Total Children Killed                             | 43 |
      | Number of Boys Injured                            | 6  |
      | Number of Girls Injured                           | 10 |
      | Number of Unknown Children Injured                | 0  |
      | Total Children Injured                            | 16 |
      | Number of Staff Killed                            | 7  |
      | Number of Staff Injured                           | 12 |
      | Number of Other Adults Killed                     | 4  |
      | Number of Other Adults Injured                    | 9  |
      | Number of Children Affected by Service Disruption | 60 |
      | Number of Adults Affected by Service Disruption   | 12 |
      | Number of Children Recruited During Attack        | 3  |