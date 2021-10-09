
using Makie
using AbstractPlotting
println("How many generations would you like to see?")
g=parse(Int,readline())
#readline() Считывает данные с клавиатуры и парсит их в нужное значение(Int,variable/value) и трансформирует его в целое числое
println("How many columns /rows would you like to see?")
size=parse(Int,readline())
Life =round.(rand(size,size))
#Life =[[0.0,0.0,0.0,0.0,0.0] [0.0,0.0,1.0,0.0,0.0] [0.0,0.0,1.0,0.0,0.0] [0.0,0.0,1.0,0.0,0.0] [0.0,0.0,0.0,0.0,0.0]]
Life=[zeros(size)';Life;zeros(size)']
Life=[zeros(size+2) Life zeros(size+2)]
scena=heatmap!(Life,colormap=:binary)
    st = Stepper(scena, "generation")
    step!(st)
function generation(Lifein)
 
#initialize
    NewLifein=zeros(size+2,size+2)
    for colJump in size+4:size+2:(size+2)*(size+2)-(size+2)-size
    for rowWalk in 0:size-1
    i=colJump+rowWalk
    sum=0
    sum=Lifein[i-8]+Lifein[i+8]+Lifein[i+7]+Lifein[i-7]+Lifein[i+6]+Lifein[i-6]+Lifein[i-1]+Lifein[i+1]
    if Lifein[i]==1.0&&1<sum<4 
    NewLifein[i]=1.0
 elseif Lifein[i]==0&&sum==3.0 
    NewLifein[i]=1.0
    end
 
    end
    end
    return NewLifein 
end
for counter in 1:g
Life=generation(Life) #this generates new generation
    scena.clear #this clears the board
    scena=heatmap!(Life,colormap=:binary) # this generates new picture
    scena.strokewidth=20
    step!(st) # this saves new picture with increment name
end
>>>>>>> 25a78e2d58c0c667d3afe9126b2b71cb31580dfb
