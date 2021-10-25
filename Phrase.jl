# #Без ввода
# global name_reverse = ""
# function myreverse1(name)
#     for n in name
#         global name_reverse = string(n, name)    # 1 2 3 4 5... 4321
#     end
#     #name_reverse[1]=""
# return name_reverse
# end

# myreverse1("name")
# myreverse1("sabaka")
# myreverse1("MagadaN")




function myreverse1(name)
    y = ""
    for n = 1:length(name)
        y = string(n,name)
    end
    return y
end
myreverse1("name")
myreverse1("sabaka")
myreverse1("MagadaN")