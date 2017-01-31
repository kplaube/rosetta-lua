package.path = package.path .. ';./rosetta/lib/?.lua'

describe('Tree traversal', function()

    local tree_lib = require('tree')

    it('should create a node', function()
        local tree = tree_lib.Node.new('a')

        assert.are_same(tree.value, 'a')
        assert.is_nil(tree.left_child)
        assert.is_nil(tree.right_child)
    end)

    describe('Traversing', function()

        local nodes = {}

        before_each(function()

            for i=1, 9 do
                nodes[i] = tree_lib.Node.new(i)
            end

            nodes[1].left_child = nodes[2]
            nodes[1].right_child = nodes[3]

            nodes[2].left_child = nodes[4]
            nodes[2].right_child = nodes[5]

            nodes[4].left_child = nodes[7]

            nodes[3].left_child = nodes[6]

            nodes[6].left_child = nodes[8]
            nodes[6].right_child = nodes[9]
        end)

        it('should traverse in a pre-order way', function()
            local response = nodes[1]:pre_order_traverse()
            local expected = {1, 2, 4, 7, 5, 3, 6, 8, 9}

            assert.are.same(response, expected)
        end)

        it('should traverse in a in-order way', function()
            local response = nodes[1]:in_order_traverse()
            local expected = {7, 4, 2, 5, 1, 8, 6, 9, 3}

            assert.are.same(response, expected)
        end)

        it('should traverse in a post-order way', function()
            local response = nodes[1]:post_order_traverse()
            local expected = {7, 4, 5, 2, 8, 9, 6, 3, 1}

            assert.are.same(response, expected)
        end)

        it('should traverse in a level-order way', function()
            local response = nodes[1]:level_order_traverse()
            local expected = {1, 2, 3, 4, 5, 6, 7, 8, 9}

            assert.are.same(response, expected)
        end)

    end)

end)
