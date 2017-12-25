-- nmap <leader>t :!clear && lua advent_of_code_day_8.lua<cr>
require('lib')
require('input')

print("Advent of code!")

--test = [[
--b inc 5 if a > 1
--a inc 1 if b < 5
--c dec -10 if a >= 1
--c inc -20 if c == 10
--]]

--input = list_create_pattern(test, "[^\r\n]+")

input = list_create_pattern(input_day_8:gsub("!=","~="), "[^\r\n]+")

lst = {}
for i=1,#input do
    local t = {}
    t['reg'],t['dir'],t['amt'], x, t['left'], t['cond'], t['right'] 
        = string.match(input[i], "(%S+) (%S+) (%S+) (%S+) (%S+) (%S+) (%S+)")
    t['amt'], t['right'] = tonumber(t['amt']), tonumber(t['right'])
    lst[i] = t
end

regs = {}
for i=1, #lst do regs[lst[i].reg] = 0 end

max = 0
for i=1, #lst do
    ins = lst[i]
    eval = loadstring(string.format("return %s %s %s", regs[ins.left], ins.cond, ins.right))
    if eval() then
        if ins.dir == 'inc' then regs[ins.reg] = regs[ins.reg] + ins.amt end
        if ins.dir == 'dec' then regs[ins.reg] = regs[ins.reg] - ins.amt end
        if regs[ins.reg] > max then max = regs[ins.reg] end
    end
end

r = {}
for k,v in pairs(regs) do table.insert(r, v) end
table.sort(r)

print("part 1: "..r[#r])
print("part 2: "..max)

