fun hello(name: String = "World"): String {
   val printName = if (name.isBlank()) "World" else name

   return "Hello, $printName!"
}
