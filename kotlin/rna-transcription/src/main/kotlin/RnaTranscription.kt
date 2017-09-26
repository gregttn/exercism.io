val dnaMappings = mapOf('C' to 'G', 'G' to 'C', 'T' to 'A', 'A' to 'U')

fun transcribeToRna(dna: String): String {
    return dna.map({ toRNA(it) }).joinToString(separator = "")
}

fun toRNA(dna: Char): Char {
    return dnaMappings[dna] ?: "".single()
}
