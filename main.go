package main

import (
	"time"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		time.Sleep(1 * time.Second)
		c.String(200, "OK")
	})
	r.Run()
}
