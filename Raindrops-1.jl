function raindrop(score::Int)
    out = ""
    if mod(score, 3) == 0
        out *= "Pling"
    end
    if mod(score, 5) == 0
        out *= "Plang"
    end
    if mod(score, 7) == 0
        out *= "Plong"
    end
    if out != ""
        return out
    else
       return string(score)
    end
end

raindrop(30)

