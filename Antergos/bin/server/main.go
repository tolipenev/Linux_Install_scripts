package main

import "os"
import "net/http"
import "fmt"

func main() {
	if len(os.Args) > 2 {
		args := os.Args
		fmt.Println("HTTP service started press control+c to stop")
		panic(http.ListenAndServe(":"+args[1], http.FileServer(http.Dir(args[2]))))
	} else {
		fmt.Println("the syntax is 'port wwwroot'")
	}
}
