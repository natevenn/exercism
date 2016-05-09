function DnaTranscriber() {

    var dnaCompliment = { 'G':'C', 'C':'G', 'A':'U', 'T':'A' };

    this.toRna = function(dna) {
        var compliments = [];
        for (var i = 0; i < dna.length; i++) {
            var character = dna[i]
            compliments.push(dnaCompliment[character])
        }
        return compliments.join('');
    }
};

module.exports = DnaTranscriber
