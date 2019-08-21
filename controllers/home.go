/**********************************************
** @Des: This file ...
** @Author: 玉哥
** @Date:   2018-08-28 00:18:02
** @Last Modified by:   玉哥
** @Last Modified time: 2018-08-28 00:18:02
***********************************************/
package controllers

type HomeController struct {
	BaseController
}

func (self *HomeController) Index() {
	self.Data["pageTitle"] = "系统首页"
	//self.display()
	self.TplName = "public/main.html"
}

func (self *HomeController) Start() {
	self.Data["pageTitle"] = "控制面板"
	self.display()
}
