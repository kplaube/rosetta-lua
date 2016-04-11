package.path = package.path .. ';./lib/?.lua'

describe('Singly-linked list', function()
    local linked_list = require('linked_list')

    describe('Element definition', function()

        it('should set a node with a value', function()
            local node = linked_list.LinkedList.new('a')

            assert.are.same(node.value, 'a')
        end)

        it('should set a node with a next pointer', function()
            local next = linked_list.LinkedList.new('b')
            local node = linked_list.LinkedList.new('a', next)

            assert.are.same(node.next, next)
        end)

    end)

    describe('Creating a singly-linked list', function()
        local head = linked_list.create_single_linked_list({'a', 'b', 'c'})

        it('should set a linked list following a Lua array/vector', function()
            assert.are.same(head.value, 'a')
            assert.are.same(head.next.value, 'b')
            assert.are.same(head.next.next.value, 'c')
        end)

    end)

end)
