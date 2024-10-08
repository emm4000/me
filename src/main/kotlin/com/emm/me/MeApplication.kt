package com.emm.me

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class MeApplication

fun main(args: Array<String>) {
	runApplication<MeApplication>(*args)
}
