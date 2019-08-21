package main

import (
	"webadmin/models"
	_ "webadmin/routers"
	"github.com/astaxie/beego"
)


func main() {
	models.Init()
	beego.Run()
}
