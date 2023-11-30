*** Settings ***
Library    RPA.Windows
Library    Orders_Data.py     WITH NAME    OrderData
Library    Collections
Library    Process
Library    RPA.FTP
Library    RPA.Smartsheet
Library    OperatingSystem
Library    Options.py    WITH NAME    Op




*** Keywords ***
the Orders.exe application is open
    Windows Run    Orders.exe
    Control Window    subname:Orders
     

I select "Orders" in the navigation bar
    &{structure} =    Print Tree    log_as_warnings=${True}    return_structure=${True}
    Log    Structure:
    Log Dictionary    ${structure}

    Click    name:Orders and type:MenuItemControl and path:5|2

I choose "New Order"
    Click    id:264

a quick order form with data entry fields should be displayed (Case 01)
    Set Focus   id:OrderForm
    OrderData.Create Order 01

a quick order form with data entry fields should be displayed (Case 02)
    Set Focus   id:OrderForm
    OrderData.Create Order 02

a quick order form with data entry fields should be displayed (Case 03)
    Set Focus   id:OrderForm
    OrderData.Create Order 03

Complete the data in the order form
 
    ${product_option}=    OrderData.Get Product Option
    ${Customer}=    OrderData.Get Customer Name
    ${Street}=    OrderData.Get Street
    ${City}=    OrderData.Get City
    ${State}=    OrderData.Get State
    ${Zip}=    OrderData.Get Zip
    ${CardNo}=    OrderData.Get Card Number
    

    

    Select    id:ProductNames    ${product_option}
    Send Keys   id:Customer    ${Customer}
    Send Keys   id:Street    ${Street}
    Send Keys   id:City    ${City}
    Send Keys   id:State    ${State} 
    Send Keys   id:Zip    ${Zip}
    Send Keys    id:CardNo    ${CardNo}
    
I select the "OK" button
    
    Click    id:ButtonOK
    


the order should be created successfully (c01)
    ${item_created01}=    Click    name:"Luisa Kohler I" and type:TextControl and path:1|3|1
    Log To Console    ${item_created01} has been created successfully    

 the order should be created successfully (c02)  
    ${item_created02}=    Click    name:"Natasha Rath III" and type:TextControl and path:1|4|1
    Log To Console    ${item_created02} has been created successfully 

the order should be created successfully (c03)
    ${item_created03}=    Click    name:"Doris Haag" and type:TextControl and path:1|5|1
    Log To Console    ${item_created03} has been created successfully 

I select a Order to edit
    Click    name:"Luisa Kohler I" and type:TextControl and path:1|3|1

I use the command option to edit an order (Ctrl + E)
    Send Keys    id:OrdersView    key={Ctrl}E

Edit any field

    Set Focus   id:OrderForm
    OrderData.Edit Order 01
    ${edit_city}=    OrderData.Get City
    Send Keys   id:City    ${edit_city}

I should observe that the field is edited after selecting OK
    Double Click    name:"Luisa Kohler I" and type:TextControl and path:1|3|1

    ${edited_field}    Get Text    id:City
    ${expected}    Set Variable    Fresno
   Run Keyword If    "${edited_field}" == "${expected}"    Log To Console     Los textos coinciden
    ...    ELSE    Log To Console     Los textos no coinciden
   
   Click    id:ButtonOK

I have one of the created orders selected
     
    Click    name:"Natasha Rath III" and type:TextControl and path:1|4|1


I use the command option to delete an order (Del)
    
    Send Keys    id:OrdersView    key={Del}
    

a confirmation form is invoked with the message: "Delete the selected order?"

    ${message}    Get Text    name:Confirmation
    ${message_expected}    Set Variable    Delete the selected order?
   Run Keyword If    "${message}" == "${message_expected}"    Log     Los textos coinciden
    ...    ELSE    Log     Los textos no coinciden

I select the "Yes" button the order should be deleted

    Click    name:Yes

I verify that the Element has been deleted

     ${original_order}    Get Text    name:"Natasha Rath III" and type:TextControl and path:1|4|1
    ${deleted}    Set Variable    None
   Run Keyword If    "${original_order}" == "${deleted}"    Log     Has been deleted from the grid
    ...    ELSE    Log     Has NOT been deleted from the grid



I clicked on Report option

    Click    name:Report and type:MenuItemControl and path:5|3

I select 'Generate Customer List'

    Click    id:270

Save as window is displayed 

    ${save_window}    Get Text    name:"Save As"
    ${expected_window}    Set Variable    Save As
   Run Keyword If    "${save_window}" == "${expected_window}"    Log     The 'Save as' windows has been displayed
    ...    ELSE    Log     The 'Save as' windows has NOT been displayed 

I enter the Report name in the 'File name' field
    
    Set Focus    name:"Save As"
    Send Keys    class:Edit    CustomerList1.tbl   

I click on Save 
   
    Click    name:Save

I have clicked on 'Open' option
    
    Send Keys    id:OrdersView    key={Ctrl}O 
    Click    name:No
    Send Keys    class:Edit    CustomerList1.tbl
    Click    id:1  

I check that the report has been imported

    ${imported_report}    Get Text    name:"Luisa Kohler I" and type:TextControl and path:1|3|1 and name:"Doris Haag" and type:TextControl and path:1|4|1
    ${customer}    Set Variable    Luisa Kohler I and Doris Haag
   Run Keyword If    "${imported_report}" == "${imported_report}"    Log To Console    The Report is displayed
    ...    ELSE    Log To Console     The report is not displayed 
    
I apply the Maximize window
    Send Keys    id:OrdersView    key={Ctrl}N
    Op.Maximize Window    Orders - Untitled   
    Sleep    2s   

I apply the Minimize window
    Op.Minimize Window    Orders - Untitled  
    Sleep    2s

I apply the Restore window
    Op.Restore Windows    Orders - Untitled
    Sleep    2s

I apply the Close window 
    Op.Close Window    Orders - Untitled
    


  
    
    
 


    

    

    



    
     
    
    
    
   

    
    
    

