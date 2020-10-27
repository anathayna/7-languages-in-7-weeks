package main

import (
	"fmt"
	"time"
)

func say(s string) {
	for i := 0; i < 5; i++ {
    fmt.Println(s)
		time.Sleep(100 * time.Millisecond) //thread
	}
}

func main() {
	go say("Olá!")
  time.Sleep(200 * time.Millisecond)

  messages := make(chan string)
  go func() { messages <- "ping" }()
  msg := <-messages
  fmt.Println(msg)
}