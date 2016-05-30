package.path = package.path .. ';./lib/?.lua'

describe('Singly-linked list', function()
    local linked_list = require('linked_list')

    describe('Element definition', function()

        it('should set a node with a value', function()
            local list = linked_list.LinkedList.new('a')

            assert.are.same(list.head.value, 'a')
        end)

    end)

    describe('Element insertion', function()
        it('should add a node to the end of the list', function()
            local list = linked_list.LinkedList.new('a')
            list:insert('b')

            assert.are.same(list.head.value, 'a')
            assert.are.same(list.head.next.value, 'b')
        end)

        it('should add a node to an empty list', function()
            local list = linked_list.LinkedList.new()
            list:insert('a')

            assert.are.same(list.head.value, 'a')
            assert.is_nil(list.head.next)
        end)
    end)

    describe('Creating a singly-linked list', function()
        local list = linked_list.create_single_linked_list({'a', 'b', 'c'})

        it('should set a linked list following a Lua array/vector', function()
            assert.are.same(list.head.value, 'a')
            assert.are.same(list.head.next.value, 'b')
            assert.are.same(list.head.next.next.value, 'c')
        end)

    end)

end)
