package main
import "net/http"

func main() {
    http.HandleFunc("/", helloworld)
    http.ListenAndServe(":9090", nil)
}

func helloworld(w http.ResponseWriter, r *http.Request) {
    w.Write([]byte("Hello World"))
}
