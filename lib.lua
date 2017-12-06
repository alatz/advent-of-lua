
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
