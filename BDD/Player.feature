
Feature: Add a new Player to iScorer
As a user of iScorer, one should be able to create his or her player profile.

@Cricket
  Scenario Outline: Player should be able to add his personal details and preferences.
    Given User identified by <Identification Provider> having <User ID> and <Password> "doesn't" exists.
     When Following Personal information is extracted from <Identification Provider>:
      | Information Extracted | 
      | Name                  | 
      | Sex                   | 
      | Date of birth         | 
      | City                  | 
      | State                 | 
      | Country               | 
      And User provides the following personal information <Short Description>, <Batting Style> and <Bowling Style>
     Then A new Player is created.
      And Following information are initialized to default:
      | Information                   | Default Value | 
      | Total Man of the Match        | YTP           | 
      | Total Run Scored              | YTP           | 
      | Total Catches                 | YTP           | 
      | Total Wickets                 | YTP           | 
      | Best Score                    | YTP           | 
      | Best Score Against            | YTP           | 
      | Best Bowling                  | YTP           | 
      | Best Bowling Against          | YTP           | 
      | Number of 4s                  | YTP           | 
      | Number of 6s                  | YTP           | 
      | Number of Hat trick           | YTP           | 
      | Highest Teams Grade Hat trick | YTP           | 
      | Highest Tournament Played     | YTP           | 
      | Teams played for              | YTP           | 
      | Player Active                 | True          | 
  
    Examples: User's Input
      | Identification Provider | User ID                   | Password  | Short Description            | Batting Style | Does Bowling | Bowling Style   | 
      | Facebook                | prasant.me4u@gmail.com    | Password1 | I am a right handed bats men | Right Handed  | Yes          | Right Hand Fast | 
      | Google                  | prasant.sutaria@gmail.com | Password1 | I am a Left handed bats men  | Left Handed   | Yes          | Right Hand Spin | 
  
  @Cricket @Football
  Scenario Outline: Player should be able to update its personal information.
    Given User identified by <Identification Provider> having <User ID> and <Password> "does" exists.
     When User updates it personal information(s) <Information> to <New Values>.
     Then User personal information(s) <Information> updates to <New Values>.
  
    Examples: User's Input
      | Identification Provider | User ID | Password | Information | New Values | 
  
  
