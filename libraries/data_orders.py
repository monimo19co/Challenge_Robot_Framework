from datetime import date
import os


class data_orders:

    def __init__(self):
        self.product_option = ""
        self.customer_name = ""
        self.street = ""
        self.city = ""
        self.state = "" 
        self.zip = ""
        self.card_number = ""
        self.date_orders = date.today()
        self.report_name = ""
        self.report_open = ""
        self.title_wind = ""
        

    
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
    
    def get_card_number(self):
        return self.card_number
    
    def get_date_orders(self):
        return self.date_orders
    
    def get_report_file_name(self):
        return self.report_name
    
    def get_open_report(self):
        return self.report_open
    
    def get_city_edited(self):
        return self.city
    
    def get_title_window(self):
        return self.title_wind

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
        

    def edit_order(self):
        self.city = "Fresno"

    def title_win(self):
        self.title_wind = "Orders - Untitled" 
    
    def report_file_name(self):
        self.report_name = "CustomerList1.tbl"

    def open_report(self):
        self.report_open = "CustomerList1.tbl" 
        

    def sad_path(self):
        self.product_options = "ScreenSaver"
        self.date_orders = date(3000, 11, 27).strftime("%m-%d-%Y")
        self.customer_name = "Sam Smith"
        self.street = "1461 Green Road"
        self.city = "Wise"
        self.state = "Texas" 
        self.zip = "10688"
        self.card_number = "378282000000008"
    
    def delete_file(self):

       # Ruta completa del archivo que deseas borrar
        file_route = "C:\\Users\\monik\\Documents\\Orders\\CustomerList1.tbl"

        # Verificar si el archivo existe antes de intentar borrarlo
        try:
            os.remove(file_route)
            print(f"El archivo {file_route} ha sido borrado exitosamente.")
        except Exception as e:
            print(f"Error al borrar el archivo {file_route}: {e}")