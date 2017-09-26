object Hamming {
    fun compute(leftStrand: String, rightStrand: String): Int {
        if(leftStrand.count() != rightStrand.count()) throw IllegalArgumentException("leftStrand and rightStrand must be of equal length.")
        
        return leftStrand
                .zip(rightStrand)
                .sumBy { if(it.first == it.second) 0 else 1 }
    }
}