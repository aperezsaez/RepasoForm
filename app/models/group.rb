class Group < ApplicationRecord
    before_save :fuera_chadwick

    def fuera_chadwick
        self.name = self.name.gsub("Chadwick", "Hola")
        # self.name = self.name.split.reduce([]) {|name, value| name.push(value) if value != "Chadwick"; name}.join("")
    end

end
