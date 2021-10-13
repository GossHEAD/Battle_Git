
#Функция typeof() - Выводит тип данных полученной переменной. 
k = 25
typeof(k) 


#Ввод строчки с помощью """ """ - При таком написании не требуется ввод переменной для строчки или ф-ции
"""Люблю омлет"""


#= 
Dictionaries - Dict() - хранение информации в структурированном словаре
=#
good = Dict("Adam Sendler" => "Awesome" , "Omlet" => "Is the Best")
good["BBP"] = "Is the best Lider"
good


#Tuples - Картеж
English = ("I", "am", "hamburger")
English[3]  # - обращение к элементу картежа


#Arrays - Массивы
tier_list = ["ApexPredator", "Bronze", "Silver", ""]
tier_list[4]= "Gold" #- Добавление или изменение частички массива
push!(tier_list, 21) # Добавить в конец
pop!() # Удалить из конца 
g = rand(3, 3)
g

#Loop - Петля 
# Ex1
bruh = ["one","two","three","Fous"]
bruh = 1
while i <= length(bruh)
    moment = bruh[i]
    println("Bruh $moment, is detected")
    bruh+=1
end

# Ex2
for n in 1:10 || for n = 1:10
    println(n)
end

# Ex3
for moment in bruh
    println("Bruh $moment, is detected")
end
# Ex4
m, n = 5, 5
A = zeros(m,n)
for i in 1:m 
    for j in 1:n # Либо писать в строчку for in 1:n, for j in 1:n
        A[i, j] = i + j
    end
end


A # Я ЖИВОЙ
C = [i+j for i in 1:m, j in 1:n]

# Ex6
for n in 1:10
    A = [i + j for i in 1:n, j in 1:n]
    display(A)
end

#Conditionals - 
x = rand(1:10)
y = rand(1:10)
if x > y
    println("$x больше чем $y")
elseif y > x
    println("$y больше чем $x")
else
    println("$x и $y равны")
end
#=
a ? b : c Идентично коду выше 
Пример: =#
b = max(x,y)
d = min(x, y) 
(x>y) || (x<y) ? println("$b больше чем $d") : println("$x и $y равны")

#Function - Функции
function sayhi(name) #or "sayhi(name) = println("Hi $name, it's great to see you!")
    println("Hi $name, it's great to see you!")    
end

function f(x) || f(x) = x^2
    x^2
end

sayhi("Sasha")
f(64)

#Anonymous functions - Анонимыне функции 
sayhi = name -> println("Hi $name, it's great to see you!")
f = x -> x^2
sayhi("GG WP")
f(9)

#Я не знаю как это обозвать
v = [3, 5, 2]
sort(v) #Построчная сортировка
v

#Обратное тому что выше
sort!(v)
v

#Трансляция
# f() != f.()
A = [i+3*j for j in 0:2, i in ]

B = f.(A)

#Packages - Библеотеки
#Ex1

#Pkg.add("Good") 
using Good

#Ex2
Pkg.add("Colors")
using Colors
pack - distinguishable_colors(200)
rand(pack, 3,3)

#Methods 

methods(+) #Там дофига всего 