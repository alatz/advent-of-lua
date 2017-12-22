-- nmap <leader>t :!clear && lua advent_of_code_day_5.lua<cr>
require('lib')
require('input')

print("Advent of code!")


lst = list_to_numbers_0_index(list_create_pattern(input_day_5, "%S+"))

----test
--lst = list_to_numbers_0_index({0,3,0,1,-3})

--part 1

pos = 0;
jumps = 0
while true do
    if lst[pos] == nil then break end
    prev_pos = pos
    pos = pos + lst[pos]
    lst[prev_pos] = lst[prev_pos] + 1
    jumps = jumps + 1
end

print("n: "..jumps)


--part 2

--lst = list_to_numbers_0_index(list_create_pattern(input_day_5, "%S+"))

----test
--lst = list_to_numbers_0_index({0,3,0,1,-3})

pos = 0;
jumps = 0
while true do
    if lst[pos] == nil then break end
    prev_pos = pos
    pos = pos + lst[pos]

    if lst[prev_pos] >= 3 then
        lst[prev_pos] = lst[prev_pos] - 1
    else 
        lst[prev_pos] = lst[prev_pos] + 1
    end

    jumps = jumps + 1
end

print("n: "..jumps)

