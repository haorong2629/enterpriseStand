/**********************************************
** @Des: This file ...
** @Author: 玉哥
** @Date:   2018-08-28 00:18:02
** @Last Modified by:   玉哥
** @Last Modified time: 2018-08-28 00:18:02
***********************************************/
package controllers

type ApiMonitorController struct {
	BaseController
}

func (self *ApiMonitorController) List() {
	self.Data["pageTitle"] = "API文档"
	self.display()
}
