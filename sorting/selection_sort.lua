#!/usr/bin/env lua

-- http://en.wikipedia.org/wiki/Selection_sort
-- This work is licensed under the Creative Commons Attribution-ShareAlike
-- License; additional terms may apply. See Terms of use for details.
-- http://creativecommons.org/licenses/by-sa/3.0/

local function selectionsort(a)
  for pos = 1, table.getn(a) do
    local min = pos
    for i = pos +  1, table.getn(a) do
      if a[i] < a[min] then
        min = i
      end -- if
    end -- for
    if min ~= pos then
        a[pos], a[min] = a[min], a[pos]
    end -- if
  end -- for
end

local a = {64, 25, 12, 22, 11}

print("Before Sort")
for i = 1, table.getn(a) do
  io.write(a[i], " ")
end
print()

selectionsort(a)

print("After Sort")
for i = 1, table.getn(a) do
  io.write(a[i], " ")
end
print()
