-- nmap <leader>t :!clear && lua advent_of_code_day_1.lua<cr>
require('lib')
require('input')

print("Advent of code!")

ti1 ="1111"
ti2 = "1221"
ti3 = "3123"
ti4 = "8124999"
ti5 = "91212129"

-- turn string into list
list = list_create(input_day_1);

-- append first val to end of list
list[#list+1] = list[1]

n = 0;
for i = 1, #list do
    if i < #list and list[i] == list[i+1] then n = n + list[i] end
end
print("n: " .. n);

--part 2

ti1 ="1212"
ti2 = "1221"
ti3 = "123425"
ti4 = "123123"
ti5 = "12131415"

list = list_create(input_day_1);

n = 0;
for i = 1, #list do
    cmp_i = i + #list / 2
    if cmp_i > #list then cmp_i = cmp_i - #list end
    if i <= #list and list[i] == list[cmp_i] then n = n + list[i] end
end
print("n: " .. n);
