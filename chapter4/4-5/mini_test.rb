module M4 
    def method1; 1; end
end

class C4 
    include M4 
    extend M4
end

p C4.method1
c4 = C4.new
p c4.method1
