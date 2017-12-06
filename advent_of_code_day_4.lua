-- nmap <leader>t :!clear && lua advent_of_code_day_4.lua<cr>
require('lib')
require('input')

print("Advent of code!")

rows = list_create_pattern(input_day_4, "[^\r\n]+");

tbl = {}
for i = 1, #rows do
	table.insert(tbl, list_create_pattern(rows[i], "%w+"))
end

--part 1

n  = 0
for i = 1, #tbl do
    dupe = false
    tmp_tbl = {}
    for j = 1, #tbl[i] do
        if (tmp_tbl[tbl[i][j]] == 1) then dupe = true end
        tmp_tbl[tbl[i][j]] = 1
    end
    if dupe then n = n + 1 end
end

print('n: '..#tbl - n)

--part 2
n  = 0
for i = 1, #tbl do
    tmp_tbl = {}
    for j = 1, #tbl[i] do
        chars = {}
        for char in string.gmatch(tbl[i][j], '%w') do 
            table.insert(chars, char) 
        end
        table.sort(chars, char)
        tmp_tbl[j] = table.concat(chars, char)
    end

    dupe = false
    for k=1, #tmp_tbl-1 do
        for l=k+1, #tmp_tbl do
            if tmp_tbl[k] == tmp_tbl[l] then dupe = true end
        end
    end

    if dupe then n = n + 1 end
end

print('n: '..#tbl - n)


