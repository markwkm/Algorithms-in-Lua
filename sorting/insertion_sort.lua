#!/usr/bin/env lua

-- http://en.wikipedia.org/wiki/Insertion_sort
-- This work is licensed under the Creative Commons Attribution-ShareAlike
-- License; additional terms may apply. See Terms of use for details.
-- http://creativecommons.org/licenses/by-sa/3.0/

local function insertionsort(a)
  for i = 2, table.getn(a) do
    local value = a[i]
    local j = i - 1
    local done = false
    repeat
      if a[j] > value then
        a[j + 1] = a[j]
        j = j - 1
        if j < 1 then
          done = true
        end -- if
      else
        done = true
      end -- if
    until done == true
    a[j + 1] = value
  end -- for
end

local a = {3, 7, 4, 9, 5, 2, 6, 1}

print("Before Sort")
for i = 1, table.getn(a) do
  io.write(a[i], " ")
end
print()

insertionsort(a)

print("After Sort")
for i = 1, table.getn(a) do
  io.write(a[i], " ")
end
print()
