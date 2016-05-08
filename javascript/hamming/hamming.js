function Hamming() {

    this.compute = function(strand1, strand2) {
        if (strand1.length !== strand2.length) {
            throw "DNA strands must be of equal length."
        }

        var total = 0
        for (var i = 0; i < strand1.length; i++) {
            if (strand1[i] !== strand2[i]) {
                total += 1
            }
        }
        return total
    }
};

module.exports = Hamming;
