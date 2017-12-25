serpent = require('serpent')

function list_create(str)
    local lst, tbl = string.gmatch(str, "[1-9]"), {}
    for i in lst do table.insert(tbl, i) end
    return tbl;
end

function list_create_pattern(str, pattern)
    local lst, tbl = string.gmatch(str, pattern), {}
    for i in lst do table.insert(tbl, i) end
    return tbl;
end

function list_print(lst)
    for k, v in ipairs(lst) do print(v) end
end

function list_to_numbers(lst)
    local out = {}
    for i=1,#lst do table.insert(out, tonumber(lst[i])) end
    return out
end

function list_to_numbers_0_index(lst)
    local out = {}
    for i=1,#lst do out[i-1] = tonumber(lst[i]) end
    return out
end

function list_print_0_index(lst)
    for i=0, #lst do print(lst[i]) end
end

function pprint(lst)
    print(serpent.block(lst))
end
