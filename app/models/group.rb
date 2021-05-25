class Group < ApplicationRecord
    enum status: ["Activo", "No activo", "Retirado"]
    before_save :fuera_chadwick
    has_many :members, dependent: :destroy

    def fuera_chadwick
        self.name = self.name.gsub("Chadwick", "Hola")
        # self.name = self.name.split.reduce([]) {|name, value| name.push(value) if value != "Chadwick"; name}.join("")
    end

    def to_s
        name
    end
    

end
