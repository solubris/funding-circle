Feature: Sell Loan Parts

#  Background:
  @CI
  Scenario Outline: Sell Loan Parts
    Given i open funding circle
    Given i enter email and password for "<profile>"
    Given i answer the secret question for "<profile>"
    Given i accept the conditions

    Given i goto sell view
    Given i goto sell individually view
    Given there are items to sell
    Given i select 250 items per page
    Given i choose a premium of 0.5 for all records in the view and select these records
    Given i choose appropriate premiums for loan parts defined by "<profile>"
    Given i sell the selected parts

  Examples:
  | profile   |
#  |  tim      |
  |  solubris |
