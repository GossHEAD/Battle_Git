#Без ввода
function myreverse1(name)
    name = ""
    for n in name
        name = string(n,name)
    end
    return name
end

myreverse1("name")
myreverse1("sabaka")
myreverse1("MagadaN")

#С вводом
function myreverse1(name)
    name = readline()
    for n in name
        name = string(n,name)
    end
    return name
end
myreverse1("name")
