*** Settings ***
Resource    Order_Resource.resource



*** Test Cases ***
Open application

    Given the Orders.exe application is open

Create Orders_01

    When I select "Orders" in the navigation bar
    And I choose "New Order"
    Then a quick order form with data entry fields should be displayed (Case 01)
    And Complete the data in the order form
    When I select the "OK" button
    Then the order should be created successfully (c01)

Create Orders_02

    When I select "Orders" in the navigation bar
    And I choose "New Order"
    Then a quick order form with data entry fields should be displayed (Case 02)
    And Complete the data in the order form
    When I select the "OK" button
    Then the order should be created successfully (c02)

Create Orders_03

    When I select "Orders" in the navigation bar
    And I choose "New Order"
    Then a quick order form with data entry fields should be displayed (Case 03)
    And Complete the data in the order form
    When I select the "OK" button
    Then the order should be created successfully (c03)
    

Edit Order

    When I select a Order to edit
    And I use the command option to edit an order (Ctrl + E)
    And Edit any field
    And I select the "OK" button
    Then I should observe that the field is edited after selecting OK

Delete Order

    Given I have one of the created orders selected
    When I use the command option to delete an order (Del)
    And a confirmation form is invoked with the message: "Delete the selected order?"
    And I select the "Yes" button the order should be deleted
    Then I verify that the Element has been deleted
    

Generate Report and Import

    Given I clicked on Report option
    When I select 'Generate Customer List'
    Then Save as window is displayed
    And I enter the Report name in the 'File name' field
    And I click on Save
    And I have clicked on 'Open' option
    And I check that the report has been imported

Control Options

    When I apply the Maximize window
    Then I apply the Minimize window
    And I apply the Restore window
    And I apply the Close window 



   
        
  
