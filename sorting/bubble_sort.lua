#!/usr/bin/env lua

-- http://en.wikipedia.org/wiki/Bubble_sort
-- This work is licensed under the Creative Commons Attribution-ShareAlike
-- License; additional terms may apply. See Terms of use for details.
-- http://creativecommons.org/licenses/by-sa/3.0/

local function bubblesort(a)
  repeat
    local swapped = false
    for i = 2, table.getn(a) do
      if a[i - 1] > a[i] then
        local tmp = a[i]
        a[i] = a[i - 1]
        a[i - 1] = tmp
        swapped = true
      end -- if
    end -- for
  until swapped == false
end

local a = {5, 1, 4, 2, 8}

print("Before Sort")
for i = 1, table.getn(a) do
  io.write(a[i], " ")
end
print()

bubblesort(a)

print("After Sort")
for i = 1, table.getn(a) do
  io.write(a[i], " ")
end
print()
