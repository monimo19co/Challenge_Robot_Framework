from datetime import date

class Orders_Data:

    def __init__(self):
        self.product_option = ""
        self.customer_name = ""
        self.street = ""
        self.city = ""
        self.state = "" 
        self.zip = ""
        self.card_option = ""
        self.card_number = ""
        

    
    def get_product_option(self):
        return self.product_options
    
    def get_customer_name(self):
        return self.customer_name
    
    def get_street(self):
        return self.street
    
    def get_city(self):
        return self.city
    
    def get_state(self):
        return self.state
    
    def get_zip(self):
        return self.zip
    
    def get_card_option(self):
        return self.card_options
    
    def get_card_number(self):
        return self.card_number
    
    
    def create_order_01(self):
        self.product_options = "MyMoney"
        self.customer_name = "Luisa Kohler I"
        self.street = "4538 Diamond Street"
        self.city = "Charlotte"
        self.state = "North Carolina" 
        self.zip = "28217"
        self.card_number = "4027115277090665"
        

    def create_order_02(self):
        self.product_options = "FamilyAlbum"
        self.customer_name = "Natasha Rath III"
        self.street = "1826 Summit Park Avenue"
        self.city = "Fairhope"
        self.state = "Alabama" 
        self.zip = "36532"
        self.card_number = "5970100300000018"
        

    def create_order_03(self):
        self.product_options = "ScreenSaver"
        self.customer_name = "Doris Haag"
        self.street = "1461 Tanglewood Road"
        self.city = "Wirt"
        self.state = "Minnesota" 
        self.zip = "56688"
        self.card_number = "378282000000008"
        

    def edit_order_01(self):
        self.city = "Fresno"
          
        

    def delete_order_03(self):
        self.product_options = "ScreenSaver"
        self.quantity = 2
        self.price_per_unit = 15
        self.discount = 0
        self.total = 30
        self.date_orders = date(2023, 11, 30)
        self.customer_name = "Doris Haag"
        self.street = "1461 Tanglewood Road"
        self.city = "Wirt"
        self.state = "Minnesota" 
        self.zip = "56688"
        self.card_options = "American Express"
        self.card_number = "378282000000008"
        self.expiration_date = date(2027, 12, 26)