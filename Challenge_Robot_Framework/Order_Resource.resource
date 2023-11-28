*** Settings ***
Library    RPA.Windows
Library    Orders_Data.py     WITH NAME    OrderData
Library    Collections
Library    Process



*** Variables ***



*** Keywords ***
the Orders.exe application is open
    Windows Run    Orders.exe
    Control Window    subname:Orders    

I select "Orders" in the navigation bar
    &{structure} =    Print Tree    log_as_warnings=${True}    return_structure=${True}
    Log    Structure:
    Log Dictionary    ${structure}

    Click    name:Orders and type:MenuItemControl and path:5|2

I choose "New Order" or use the shortcut Ctrl + Insert
    Click    id:264

a quick order form with data entry fields should be displayed
    Set Focus   id:OrderForm
    OrderData.Create Order 01

Complete the data in the order form
 
    ${product_option}=    OrderData.Get Product Option
    ${quantity}=    OrderData.Get Quantity
    ${price}=    OrderData.Get Price Per Unit
    ${Discount}=    OrderData.Get Discount
    ${Total}=    OrderData.Get Total
    ${Date}=    OrderData.Get Date Order
    ${Customer}=    OrderData.Get Customer Name
    ${Street}=    OrderData.Get Street
    ${City}=    OrderData.Get City
    ${State}=    OrderData.Get State
    ${Zip}=    OrderData.Get Zip
    ${CardNo}=    OrderData.Get Card Number
    ${ExpDate}=    OrderData.Get Expiration Date

    Send Keys    id:Quantity    key={Del}

    Send Keys    id:ProductNames    ${product_option}
    Send Keys    id:Quantity    ${quantity}
    Send Keys   id:Price    ${price}
    Send Keys   id:Discount    ${Discount}
    Send Keys   id:Total    ${Total}
    Send Keys   id:Date    ${Date}
    Send Keys   id:Customer    ${Customer}
    Send Keys   id:Street    ${Street}
    Send Keys   id:City    ${City}
    Send Keys   id:State    ${State} 
    Send Keys   id:Zip    ${Zip}
    Click    id:Visa
    Send Keys    id:CardNo    ${CardNo}
    Send Keys    id:ExpDate    ${ExpDate}
    Sleep    2s


I select the "OK" button
    Click    id:ButtonOK


the order should be created successfully
    #${list}=    List Attributes    id:OrdersView
    #Log    \n\n\nATRIBUTOS: ${list}    console=true

    ${order_created}=    RPA.Windows.Get Attribute    id:OrdersView    ItemType 
    Log To Console    OrderView** ${order_created}

    ${rows}=    Get Elements    id:OrdersView
    # ${rows} is a list of `WindowsElement`s
    FOR    ${row}    IN    @{rows}
        Log To Console   ${row.item} 
    END

    #Click    name:"Luisa Kohler I" and type:TextControl and path:1|3|1
    #Click    id:OrdersView and type:ListControl and class:WindowsForms10.SysListView32.app.0.141b42a_r7_ad1 and path:1
    
    




    
     
    
    
    
   

    
    
    

