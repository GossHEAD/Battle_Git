mutable struct GameOfLife
    current_frame::Matrix{Int}
    next_frame::Matrix{Int}
end

function stepgame!(state::GameOfLife)
    cr   = state.current_frame
    next = state.next_frame
    for i in 1:n
        for g in 1:m
            # 1-уя Модификацию решили (Строки с 39 -> 64) | 2 -ую решили теоритически (Строка 12)
            # Если i = n || g = m || i = n && g = m то проверяем координуту для i = n => (g;1) , для g = m => (1;i), для i = n && g = m => 1;1
            x = cr[i, g]
            d = 0
            if i < n 
                d += cr[i+1, g]
            end
            if i < n && g < m  
                d += cr[i+1, g+1]
            end
            if g < m
                d += cr[i, g+1]
            end
            if i > 1     
                d += cr[i-1, g]
            end
            if i > 1 && g > 1
                d += cr[i-1, g-1]
            end
            if g > 1
                d += cr[i, g-1]
            end
            if g > 1 && i < n
                d += cr[i+1, g-1]
            end
            if i > 1 && g < m
                d += cr[i-1, g+1]
            end
            probabylityOFstatus = rand(1:100)
            if d == 3  
                if x == 0
                    x = 1
                    if probabylityOFstatus <= 90 
                        x = 1
                    else 
                        x = 0
                end
            end
            if d < 2
                if x == 1
                    x= 0
                    if probabylityOFstatus <= 90 
                        x = 0
                    else 
                        x = 1
                end
            end
            if d > 3 
                if x == 1
                    x = 0
                    if probabylityOFstatus <= 90 
                        x = 0
                    else 
                        x = 1
                end
            end
            next[i, g] = x
        end
    end
    # swap
    state.current_frame = next
    state.next_frame = cr 
    return nothing
end


using Plots

n = 150
m = 150

game = GameOfLife(rand(0:1, n, m), zeros(n, m))

anim = @animate for time = 1:100
    stepgame!(game)
    cr = game.current_frame
    heatmap(cr)
end
gif(anim, "LIFE.gif", fps = 10)
