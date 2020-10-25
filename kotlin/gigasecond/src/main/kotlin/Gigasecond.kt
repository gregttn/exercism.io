import java.time.LocalDate
import java.time.LocalDateTime

class Gigasecond(_date: LocalDate) {
    val date: LocalDateTime

    init {
        this.date = LocalDateTime.now()
    }
}