function raindrop(score::Int)
    out = ""
    if mod(score, 3) == 0
        out *= "Pling"
    end
    if mod(score, 5) == 0
        out *= "Plang"
    end
    if mod(score, 3) == 0
        out *= "Pling"
    end