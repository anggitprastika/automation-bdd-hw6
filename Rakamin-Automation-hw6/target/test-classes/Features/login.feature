Feature: Bincang QA Login test
  Scenario: Login success on saucedemo
    Given Open web url "https://www.saucedemo.com/"
    And Input username "standard_user" and password "secret_sauce"
    When Click login button
    Then Should success login and redirected to homepage

  Scenario Outline: Login success on saucedemo using scenario outline
    Given Open web url "https://www.saucedemo.com/"
    And Input username "<username>" and password "<password>"
    When Click login button
    Then Should success login and redirected to homepage
    Examples:
      |username|password|
      |standard_user|secret_sauce|

  Scenario Outline: Login failed on saucedemo with invalid password
    Given Open web url "https://www.saucedemo.com/"
    And Input username "<username>" and password "<password>"
    When Click login button
    Then Failed login and showing message
    Examples:
      |username|password|
      |standard_user|xxxyyyzzzz|

  Scenario Outline: Login failed on saucedemo with invalid usernama
    Given Open web url "https://www.saucedemo.com/"
    And Input username "<username>" and password "<password>"
    When Click login button
    Then Failed login and showing message
    Examples:
      |username|password|
      |adminkece|secret_sauce|

  Scenario Outline: Login failed on saucedemo with empty username
    Given Open web url "https://www.saucedemo.com/"
    And Input username "<username>" and password "<password>"
    When Click login button
    Then Failed login and showing message
    Examples:
      |username|password|
      | |secret_sauce|

  Scenario Outline: Login failed on saucedemo with empty password
    Given Open web url "https://www.saucedemo.com/"
    And Input username "<username>" and password "<password>"
    When Click login button
    Then Failed login and showing message
    Examples:
      |username|password|
      |standard_user| |