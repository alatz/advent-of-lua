-- nmap <leader>t :!clear && lua learn_lua_in_15_minutes.lua<cr>

print("advent of code!")

print('-----------------');

str = "some string"
print(str)

print('-----------------');

-- nil and false are false, 0 is not
if 0 then s = 'tis the season' else s = 'nope' end
print(s)

if nil then s = 'tis the season' else s = 'nope' end
print(s)

print('-----------------');

print('up');
for i = 0, 2 do
    print(i);
end

print('up');
for i = 0, 2, 1 do 
    print(i)
end

print('down');
for i = 2, 0, -1 do 
    print(i)
end

print('-----------------');
print('functions');
print('-----------------');

function add(n1, n2)
    return n1 + n2
end

print(add(3,3)) 

lambda_double = function(x) return x + x end

print(lambda_double(4)) 
print('-----------------');

function mult_return_vals() return 1,2 end
x,y = mult_return_vals();
print(x)
print(y)


print('-----------------');
print('tables');
print('-----------------');

tbl = {k1 = 'val1', k2 = 'val2'} 

print(tbl.k1)
print(tbl.k2)

tbl.k3 = 'val3'
print(tbl.k3)

-- remove key
tbl.k3 = nil
print(tbl.k3)
print(tbl.k4)

tbl['!!!'] = 'val4'
tbl[0.21] = 'val5'

print(tbl['!!!'])
print(tbl[0.21])


function h(x) print(x.key1) end
-- doesn't need parens
h{key1 = 'some key'}  -- Prints 'some key'.

print('-----------------');

t = {k1 = 'v1', k2 = 'v2'} 

for k, v in pairs(t) do
    print(k, v)
end

print('-----------------');
lst = {'v1', 'v2', 'v3'}
for i=1, #lst do    -- #listname is the list size
    print(lst[i])
end













