# Неудачная попытка в решение
actions = [
    "wink" => 1,
    "double blink" => 10,
    "close your eyes" =>100,
    "jump"=>1000 
]
const reverse_action = 0b10000

function actionInString(bit)
    if bitstring(bit) in actions
        return bit
    end
    if bitstring(bit) == reverse_action
        return reverse!(bit)
    end
    return actions::string
end

actionInString(8)

# Еще одна неудачная
function handshake(bit)
    actions = []
    if bitstring(bit) & 1 == 1
        push!(actions, "wink")
    end
    if  bitstring(bit) & 2 == 2
        push!(actions, "double blink")
    end
    if  bitstring(bit) & 4 == 4
        push!(actions, "close your eyes")
    end
    if  bitstring(bit) & 8 == 8
        push!(actions, "jump")
    end
    if  bitstring(bit) & 16 == 16
        reverse!(actions)
    end
    return actions
end


handshake(16)
