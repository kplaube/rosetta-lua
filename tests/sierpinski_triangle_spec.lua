package.path = package.path .. ';./lib/?.lua'

describe('Sierpinski triangle', function()

    local sierpinski

    setup(function()
        sierpinski = require('sierpinski')
    end)

    it('should return a scheme with only 1 triangle', function()
        local response = sierpinski.triangle(1)

        assert.are.equal(' * ', response[1])
        assert.are.equal('* *', response[2])
    end)

    it('should return a scheme with 2 triangles', function()
        local response = sierpinski.triangle(2)

        assert.are.equal('   *   ' , response[1])
        assert.are.equal('  * *  ' , response[2])
        assert.are.equal(' *   * ' , response[3])
        assert.are.equal('* * * *' , response[4])
    end)

    it('should return a scheme with 4 triangles', function()
        local response = sierpinski.triangle(4)

        assert.are.equal('               *               ', response[1])
        assert.are.equal('              * *              ', response[2])
        assert.are.equal('             *   *             ', response[3])
        assert.are.equal('            * * * *            ', response[4])
        assert.are.equal('           *       *           ', response[5])
        assert.are.equal('          * *     * *          ', response[6])
        assert.are.equal('         *   *   *   *         ', response[7])
        assert.are.equal('        * * * * * * * *        ', response[8])
        assert.are.equal('       *               *       ', response[9])
        assert.are.equal('      * *             * *      ', response[10])
        assert.are.equal('     *   *           *   *     ', response[11])
        assert.are.equal('    * * * *         * * * *    ', response[12])
        assert.are.equal('   *       *       *       *   ', response[13])
        assert.are.equal('  * *     * *     * *     * *  ', response[14])
        assert.are.equal(' *   *   *   *   *   *   *   * ', response[15])
        assert.are.equal('* * * * * * * * * * * * * * * *', response[16])
    end)

end)
