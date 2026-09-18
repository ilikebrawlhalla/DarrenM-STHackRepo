local function pascal(numRows)
    local triangle = {}
    triangle[1] = {1}
    for i = 1, numRows do
        triangle[i + 1] = {}

        for j = 1, i + 1 do
            table.insert(triangle[i + 1], j, 
                (triangle[i] and triangle[i][j - 1] or 0) + (triangle[i] and triangle[i][j] or 0)
            )
        end
    end

    for i, v in pairs(triangle) do
        print("Position "..i)
        local full = ""
        for j, w in pairs(v) do
            full = full.." "..tostring(w)
        end
        print(full)
    end
end

-- edit the number here dum dum
pascal(7)