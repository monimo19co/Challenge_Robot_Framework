import pygetwindow as pgw

class control_window:

    def __init__(self):
        pass


    def maximize_window(self, window_title):
        self.window_title = window_title
        self.window = pgw.getWindowsWithTitle(self.window_title)
        self.window[0].maximize()
        

    def restore_windows(self, window_title):
        self.window_title = window_title
        self.window = pgw.getWindowsWithTitle(self.window_title)
        self.window[0].restore() 


    def minimize_window(self, window_title):
        self.window_title = window_title
        self.window = pgw.getWindowsWithTitle(self.window_title)
        self.window[0].minimize()
               
    def close_window(self, window_title):
        self.window_title = window_title
        self.window = pgw.getWindowsWithTitle(self.window_title)
        self.window[0].close()


        
