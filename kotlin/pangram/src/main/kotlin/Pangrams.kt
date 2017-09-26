object Pangrams {
    fun isPangram(sentence: String): Boolean {
        val lowerCaseSentence = sentence.toLowerCase()

        return ('a'..'z').all { lowerCaseSentence.contains(it) }
    }
}