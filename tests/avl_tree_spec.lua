package.path = package.path .. ';./rosetta/lib/?.lua'

describe('AVL Tree', function()

    local tree_lib = require('tree')
    local tree

    before_each(function()
        tree = tree_lib.AVL.new()
    end)

    describe('Inserting', function()

        it('should add a node to the tree', function()
            tree:insert(10)

            assert.are_same(tree:height(), 0)
            assert.are_same(tree.root.value, 10)
        end)

        it('should keep the root element', function()
            tree:insert(10)
            tree:insert(20)

            assert.are_same(tree.root.value, 10)
            assert.are_same(tree.root.right_child.value, 20)
        end)

        it('should keep the tree property', function()
            tree:insert(20)
            tree:insert(30)
            tree:insert(10)

            assert.are_same(tree.root.value, 20)
            assert.are_same(tree.root.left_child.value, 10)
            assert.are_same(tree.root.right_child.value, 30)
            assert.are_same(tree:height(), 1)
        end)

        it('should save the parent of each node', function()
            tree:insert(2)
            tree:insert(1)
            tree:insert(3)

            assert.is_nil(tree.root.parent_node)
            assert.are_same(tree.root.left_child.parent_node, tree.root)
            assert.are_same(tree.root.right_child.parent_node, tree.root)
        end)

        it('should keep the balance of the tree through rotate left', function()
            tree:insert(1)
            tree:insert(2)
            tree:insert(3)
            tree:insert(4)
            tree:insert(5)
            tree:insert(6)

            assert.are_same(tree.root.value, 3)

            assert.are_same(tree.root.left_child.value, 2)
            assert.are_same(tree.root.left_child.left_child.value, 1)

            assert.are_same(tree.root.right_child.value, 4)
            assert.are_same(tree.root.right_child.right_child.value, 5)
            assert.are_same(tree.root.right_child.right_child.right_child.value, 6)
        end)

        it('should keep the order when doing just left rotates', function()
            tree:insert(1)
            tree:insert(2)
            tree:insert(3)
            tree:insert(4)
            tree:insert(5)
            tree:insert(6)

            local expected = {1, 2, 3, 4, 5, 6}
            local response = tree.root:in_order_traverse()

            assert.are_same(response, expected)
        end)

        it('should keep the balance of the tree through rotate left and right', function()
            tree:insert(-22)
            tree:insert(33)
            tree:insert(0)
            tree:insert(2)
            tree:insert(-3)
            tree:insert(12)

            assert.are_same(tree.root.value, 0)

            assert.are_same(tree.root.left_child.value, -22)
            assert.are_same(tree.root.left_child.right_child.value, -3)

            assert.are_same(tree.root.right_child.value, 33)
            assert.are_same(tree.root.right_child.left_child.value, 2)
            assert.are_same(tree.root.right_child.left_child.right_child.value, 12)
        end)

        it('should keep the order when doing left and right rotates', function()
            tree:insert(-22)
            tree:insert(33)
            tree:insert(0)
            tree:insert(2)
            tree:insert(-3)
            tree:insert(12)

            local expected = {-22, -3, 0, 2, 12, 33}
            local response = tree.root:in_order_traverse()

            assert.are_same(response, expected)
        end)

        it('should keep the order even if it is a big tree', function()
            tree:insert(10)
            tree:insert(20)
            tree:insert(1)
            tree:insert(2)
            tree:insert(3)
            tree:insert(4)
            tree:insert(5)
            tree:insert(6)
            tree:insert(7)
            tree:insert(8)
            tree:insert(9)
            tree:insert(30)
            tree:insert(50)
            tree:insert(40)

            local expected = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 20, 30, 40, 50}
            local response = tree.root:in_order_traverse()

            assert.are_same(response, expected)
            assert.are_same(tree.root.value, 5)
        end)
    end)

    describe('Deleting', function()

        it('should remove a node', function()
            tree:insert(20)
            tree:insert(30)
            tree:insert(10)

            tree:remove(20)

            assert.are_same(tree.root.value, 30)
            assert.are_same(tree.root.left_child.value, 10)
            assert.is_nil(tree.root.right_child)
        end)

        it('should manage parent nodes', function()
            tree:insert(20)
            tree:insert(30)
            tree:insert(10)

            tree:remove(20)

            assert.is_nil(tree.root.parent_node)
            assert.are_same(tree.root.left_child.parent_node.value, 30)
        end)

        it('should remove the node even in a bigger tree', function()
            tree:insert(1)
            tree:insert(2)
            tree:insert(3)
            tree:insert(4)
            tree:insert(5)
            tree:insert(6)
            tree:insert(7)
            tree:insert(8)
            tree:insert(9)
            tree:insert(10)

            tree:remove(6)

            local expected = {1, 2, 3, 4, 5, 7, 8, 9, 10}

            assert.are_same(tree.root:in_order_traverse(), expected)
        end)
    end)
end)
