*** Settings ***
Resource    Order_Resource.resource


*** Test Cases ***
Create Orders_01

    Given the Orders.exe application is open
    When I select "Orders" in the navigation bar
    And I choose "New Order" or use the shortcut Ctrl + Insert
    Then a quick order form with data entry fields should be displayed
    And Complete the data in the order form
    When I select the "OK" button
    Then the order should be created successfully
    


