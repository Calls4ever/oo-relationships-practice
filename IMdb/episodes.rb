class Episodes
    attr_accessor :number, :actor, :name
    def initialize(name, number)
        @name=name
        @number=number
        @actor=[]
    end
    def add=any
        actor << any
    end
end