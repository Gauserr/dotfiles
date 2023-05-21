vim.keymap.set("n", "<leader>fmr", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", "<leader>fms", "<cmd>CellularAutomaton slide<CR>")
vim.keymap.set("n", "<leader>fmc", "<cmd>CellularAutomaton scramble<CR>")
vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton game_of_life<CR>")

local config = {
    fps = 50,
    name = 'slide',
}

--slide animation
config.update = function (grid)
    for i = 1, #grid do
        local prev = grid[i][#(grid[i])]
        for j = 1, #(grid[i]) do
            grid[i][j], prev = prev, grid[i][j]
        end
    end
    return true
end

--scramble animation
local scramble = {
  fps = 50,
  name = "scramble",
}

local scramble_word = function(word)
  local chars = {}
  while #word ~= 0 do
    local index = math.random(1, #word)
    table.insert(chars, word[index])
    table.remove(word, index)
  end
  return chars
end

scramble.update = function(grid)
  for i = 1, #grid do
    local scrambled = {}
    local word = {}
    for j = 1, #grid[i] do
      local c = grid[i][j]
      if c.char == " " then
        if #word ~= 0 then
          for _, d in pairs(scramble_word(word)) do
            table.insert(scrambled, d)
          end
          word = {}
        end
        table.insert(scrambled, c)
      else
        table.insert(word, c)
      end
    end

    grid[i] = scrambled
  end
  return true
end

require("cellular-automaton").register_animation(config)
require("cellular-automaton").register_animation(scramble)
