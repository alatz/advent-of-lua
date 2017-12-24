-- nmap <leader>t :!clear && lua advent_of_code_day_6.lua<cr>
require('lib')
require('input')

print("Advent of code!")

--part 1 & 2

lst = list_to_numbers(list_create_pattern(input_day_6, "%S+"))

configurations = {}
redistributions = 0
while true do
    redistributions = redistributions + 1

    max, max_idx = 0,1
    for i=1,#lst do
        if lst[i] > max then
            max = lst[i]
            max_idx = i
        end
    end

    blocks = lst[max_idx]
    lst[max_idx] = 0
    adder_idx = max_idx + 1
    while blocks > 0 do
        if adder_idx > #lst then adder_idx = 1 end
        lst[adder_idx] = lst[adder_idx] + 1
        blocks = blocks - 1
        adder_idx = adder_idx + 1
    end

    key = ""
    for i=1, #lst do
        key = key..lst[i]
    end

    if configurations[key] ~= nil then
        diff = redistributions - configurations[key]
        break
    end

    configurations[key] = redistributions
end

print("part 1: "..redistributions)
print("part 2: "..diff)

