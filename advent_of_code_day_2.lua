-- nmap <leader>t :!clear && lua advent_of_code_day_2.lua<cr>
require('lib')
require('input')

print("Advent of code!")

input_test = [[
5 1 9 5 1
7 5 3 3 3
2 4 6 8 2
2 4 6 8 2
]]

ti1 ="1234"

rows = list_create_pattern(input_day_2, "[^\r\n]+");
tbl = {}
for i = 1, #rows do
	table.insert(tbl, list_create_pattern(rows[i], "%d+"))
end

for i = 1, #tbl do
    for j = 1, #tbl[1] do tbl[i][j] = tonumber(tbl[i][j]) end
end

n = 0
for i = 1, #tbl do
    max = tbl[i][1]
    min = tbl[i][1]
    for j = 1, #tbl[1] do
        if tbl[i][j] > max then max = tbl[i][j] end
        if tbl[i][j] < min then min = tbl[i][j] end
    end
    n = n + (max - min)
end

print('n: '..n)

n = 0
for i = 1, #tbl do
    div = 0
    for j = 1, #tbl[1] do
        for k = 1, #tbl[1] do
            if tbl[i][j] ~= tbl[i][k] and tbl[i][j] % tbl[i][k] == 0 then
                div = tbl[i][j] / tbl[i][k] 
            end
        end
    end
    n = n + div
end


print('n: '..n)








