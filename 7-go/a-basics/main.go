package main

import (
	"fmt"
	"time"
)

func say(s string) {
	for i := 0; i < 5; i++ {
    fmt.Println(s)
		time.Sleep(100 * time.Millisecond)
	}
}

func main() {
	say("Olá!")
  //time.Sleep(200 * time.Millisecond)
}