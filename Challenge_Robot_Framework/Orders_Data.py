from datetime import date

class Orders_Data:

    def __init__(self):
        self.product_option = ""
        self.quantity = 0
        self.price_per_unit = 0
        self.discount = 0
        self.total = 0
        self.date_order = date.today()
        self.customer_name = ""
        self.street = ""
        self.city = ""
        self.state = "" 
        self.zip = ""
        self.card_option = ""
        self.card_number = ""
        self.expiration_date = date.today()


    
    def get_product_option(self):
        return self.product_options
    
    def get_quantity(self):
        return self.quantity
    
    def get_price_per_unit(self):
        return self.price_per_unit
    
    def get_discount(self):
        return self.discount
    
    def get_total(self):
        return self.total
    
    def get_date_order(self):
        return self.date_orders
    
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
    
    def get_expiration_date(self):
        return self.expiration_date  

    
    def create_order_01(self):
        self.product_options = "MyMoney"
        self.quantity = 99
        self.price_per_unit = 1
        self.discount = 0
        self.total = 100
        self.date_orders = date(2023, 12, 22)
        self.customer_name = "Luisa Kohler I"
        self.street = "4538 Diamond Street"
        self.city = "Charlotte"
        self.state = "North Carolina" 
        self.zip = "28217"
        self.card_number = "4027115277090665"
        self.expiration_date = date(2029, 11, 22)

    def create_order_02(self):
        self.product_options = "FamilyAlbum"
        self.quantity = 5
        self.price_per_unit = 50
        self.discount = 10
        self.total = 225
        self.date_orders = date(2023, 11, 28)
        self.customer_name = "Natasha Rath III"
        self.street = "1826 Summit Park Avenue"
        self.city = "Fairhope"
        self.state = "Alabama" 
        self.zip = "36532"
        self.card_number = "5970100300000018"
        self.expiration_date = date(2028, 12, 25)

    def create_order_03(self):
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
        self.card_number = "378282000000008"
        self.expiration_date = date(2027, 12, 26)

    def edit_order_01(self):
        self.product_options = "ScreenSaver"
        self.quantity = 2
        self.price_per_unit = 10
        self.discount = 0
        self.total = 20
        self.date_orders = date(2023, 12, 22)
        self.customer_name = "Luisa Kohler I"
        self.street = "2077 Center Avenue"
        self.city = "Fresno"
        self.state = "California" 
        self.zip = "93704"
        self.card_options = "Visa"
        self.card_number = "4027115277090665"
        self.expiration_date = date(2029, 11, 22)

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