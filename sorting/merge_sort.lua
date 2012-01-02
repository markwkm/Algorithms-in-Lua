#!/usr/bin/env lua

-- http://en.wikipedia.org/wiki/Merge_sort
-- This work is licensed under the Creative Commons Attribution-ShareAlike
-- License; additional terms may apply. See Terms of use for details.
-- http://creativecommons.org/licenses/by-sa/3.0/

local function merge(left, right)
  local result = {}
  while table.getn(left) > 0 or table.getn(right) > 0 do
    if table.getn(left) > 0 and table.getn(right) > 0 then
      if left[1] <= right[1] then
        table.insert(result, table.remove(left, 1))
      else
        table.insert(result, table.remove(right, 1))
      end -- if
    elseif table.getn(left) > 0 then
      table.insert(result, table.remove(left, 1))
    elseif table.getn(right) > 0 then
      table.insert(result, table.remove(right, 1))
    end -- if
  end -- while
  return result
end

local function mergesort(m)
  if table.getn(m) <= 1 then
    return m
  end -- if
  local left = {}
  local right = {}
  local middle = math.ceil(table.getn(m) / 2)
  print(middle)
  for x = 1, middle do
    table.insert(left, m[x])
  end -- for
  for x = middle + 1, table.getn(m) do
    table.insert(right, m[x])
  end -- for
  left = mergesort(left)
  right = mergesort(right)
  return merge(left, right)
end

local a = {38, 27, 43, 3, 9, 82, 10}

print("Before Sort")
for i = 1, table.getn(a) do
  io.write(a[i], " ")
end
print()

a = mergesort(a)

print("After Sort")
for i = 1, table.getn(a) do
  io.write(a[i], " ")
end
print()
