-- https://en.wikipedia.org/wiki/Hungarian_algorithm
--
-- The problem:
--
-- Armond, Francine and Herbert. One of them has to clean the bathroom,
-- another sweep the floors, and the third wash the windows, but they
-- each demand different pay for the various tasks. The problem is to
-- to find the lowest-cost way to assign the jobs.
--
-- Reference: https://github.com/amirbawab/Hungarian-Algorithm/blob/master/Hungarian.java

local DIRECTIONS = {
    INTERSECTION=2,
    VERTICAL=1,
    HORIZONTAL=-1
}

local matrix = {}
local copied_matrix = {}
local people = {}

local function append_to_matrix(person, values)
    table.insert(matrix, {table.unpack(values)})
    table.insert(copied_matrix, {table.unpack(values)})
    table.insert(people, person)
end

-- Creates an empty matrix to store the lines drawn during the step 3
local function initialize_lines()
    local lines = {}

    for r=1, #matrix, 1 do
        table.insert(lines, {})

        for c=1, #matrix, 1 do
            table.insert(lines[r], 0)
        end
    end

    return lines
end

local function color_cell(lines, row, col, direction)
    local opposite_direction = -(direction)

    if lines[row][col] == opposite_direction or lines[row][col] == 2 then
        return DIRECTIONS.INTERSECTION
    else
        return direction
    end
end

local function color_vertically(lines, col)
    for i=1, #matrix, 1 do
        lines[i][col] = color_cell(lines, i, col, DIRECTIONS.VERTICAL)
    end
end

local function color_horizontally(lines, row)
    for i=1, #matrix, 1 do
        lines[row][i] = color_cell(lines, row, i, DIRECTIONS.HORIZONTAL)
    end
end

local function get_minimum_uncovered_value(lines)
    local min_uncovered_value = math.huge

    for r=1, #matrix, 1 do
        local min_row_value = math.huge

        for c=1, #matrix, 1 do
            if lines[r][c] == 0 then
                min_row_value = math.min(matrix[r][c], min_row_value)
            end
        end

        min_uncovered_value = math.min(min_row_value, min_uncovered_value)
    end

    return min_uncovered_value
end

-- Step 1: Subtract from every element the minimum value from its row
local function subtract_row_minima()
    for i=1, #matrix, 1 do
        local row = matrix[i]
        local minimum = math.min(table.unpack(row))

        for j=1, #row, 1 do
            row[j] = row[j] - minimum
        end
    end
end

-- Step 2: Subtract from every element the minimum value from its column
local function subtract_col_minima()
    for c=1, #matrix, 1 do
        -- Get all rows from column c
        local column = {}
        for r=1, #matrix, 1 do
            table.insert(column, matrix[r][c])
        end

        -- Compare all rows from column c and subtract from minimum
        local minimum = math.min(table.unpack(column))
        for r=1, #matrix, 1 do
            matrix[c][r] = matrix[c][r] - minimum
        end
    end
end

-- Step 4: Create additional zeros, by coloring the minimum value of uncovered cells
local function create_additional_zeros(lines)
    local min_uncovered_value = get_minimum_uncovered_value(lines)

    for r=1, #matrix, 1 do
        for c=1, #matrix, 1 do
            if lines[r][c] == 0 then
                matrix[r][c] = matrix[r][c] - min_uncovered_value
            elseif lines[r][c] == 2 then
                matrix[r][c] = matrix[r][c] + min_uncovered_value
            end
        end
    end
end

-- Step 3.1: Checks which direction contains more zeros
-- Positive result means vertical line, zero or negative means horizontal
local function maximum_vh(row, col)
    local result = 0

    for i=1, #matrix, 1 do
        if matrix[i][col] == 0 then
            result = result + 1
        end

        if matrix[row][i] == 0 then
            result = result -1
        end
    end

    return result
end


-- Step 3.2: Color the neighbors of the cell at index [row][col].
-- To know which direction to draw the lines we use `max_vh`
local function color_neighbors(row, col, max_vh, lines)
    -- If it is an intersection cell, don't color it again
    if lines[row][col] == DIRECTIONS.INTERSECTION then
        return false
    end

    -- If vertically colored (and needs to be vertically colored), don't color it again
    if max_vh > 0 and lines[row][col] == DIRECTIONS.VERTICAL then
        return false
    end

    -- If horizontally colored (and needs to be horizontally colored), don't color it again
    if max_vh <= 0 and lines[row][col] == DIRECTIONS.HORIZONTAL then
        return false
    end

    if max_vh > 0 then
        color_vertically(lines, col)
    else
        color_horizontally(lines, row)
    end

    return true
end

-- Step 3: Loop through all elements, and run `color_neighbors` when
-- element is zero
local function cover_zeros()
    local number_of_lines = 0
    local lines = initialize_lines()

    for r=1, #matrix, 1 do
        for c=1, #matrix, 1 do
            local value = matrix[r][c]

            if value == 0 then
                local has_been_colored = color_neighbors(r, c, maximum_vh(r, c), lines)

                if has_been_colored then
                    number_of_lines = number_of_lines + 1
                end
            end
        end
    end

    if number_of_lines < #matrix then
        create_additional_zeros(lines)
        cover_zeros()
    end
end

-- Step 5: Given the matrix, find the optimal combination
local function get_solution(result, row, occupied_cols)
    -- Initialize parameters
    if result == nil then
        result = {}
    end

    if row == nil then
        row = 1
    end

    if occupied_cols == nil then
        occupied_cols = {}

        for i=1, #matrix, 1 do
            table.insert(occupied_cols, 0)
        end
    end

    -- Base case
    if row > #matrix then
        return result
    end

    -- Go though matrix results (could be done using Queue)
    for col=1, #matrix, 1 do
        if matrix[row][col] == 0 and occupied_cols[col] == 0 then
            result[row] = col
            occupied_cols[col] = 1

            if get_solution(result, row + 1, occupied_cols) then
                return result
            end

            occupied_cols[col] = 0
        end
    end

    return false
end

local function print_result(result)
    local total = 0

    for row=1, #matrix, 1 do
        local person = people[row]
        local col = result[row]
        local value = copied_matrix[row][col]

        print(person .. ': ' .. value)

        total = total + value
    end

    print('Total: ' .. total)
end

-- Initialize
append_to_matrix('armond', {2, 3, 3})
append_to_matrix('francine', {3, 2, 3})
append_to_matrix('herbert', {3, 3, 2})

-- The "core" of the algorithm
subtract_row_minima()
subtract_col_minima()
cover_zeros()

-- Print results
local result = get_solution()
print_result(result)
