/**********************************************
** @Des: This file ...
** @Author: 玉哥
** @Date:   2018-08-28 00:18:02
** @Last Modified by:   玉哥
** @Last Modified time: 2018-08-28 00:18:02
***********************************************/
package controllers

import (
	"fmt"
	"time"
	"strings"
	"regexp"
	"net/smtp"
	// "strconv"
	"github.com/astaxie/beego"
	"webadmin/models"
)

type ApiDocController struct {
	BaseController
}


func (self *ApiDocController) Works_BACKUP() {
	page, err := self.GetInt("page")
	if err != nil {
		page = 1
	}
	limit, err := self.GetInt("limit")
	if err != nil {
		limit = 100
	}
	self.pageSize = limit
	//查询条件 品牌创意
	filters := make([]interface{}, 0)
	filters = append(filters, "type",1)
	result, count := models.ArticleGetList(page, self.pageSize, filters...)
	list := make([]map[string]interface{}, len(result))
	for k, v := range result {
		row := make(map[string]interface{})
		if v.Content !=""{
			a1:= strings.Split( v.Content, "src=")[1]
			a2:= strings.Split( a1, "alt")[0]			
			a3 :=  strings.Replace(a2, " ", "", -1)
			row["content"] =   a3[1 : len(a3)-1]
		}else{
			row["content"] =  ""
		}
		list[k] = row
	}

	//数字营销
	filtersszyx := make([]interface{}, 0)
	filtersszyx = append(filtersszyx, "type",2)
	resultszyx, count := models.ArticleGetList(page, self.pageSize, filtersszyx...)
	listszyx := make([]map[string]interface{}, len(resultszyx))
	for k, v := range resultszyx {
		row := make(map[string]interface{})
		if v.Content !=""{
			a1:= strings.Split( v.Content, "src=")[1]
			a2:= strings.Split( a1, "alt")[0]			
			a3 :=  strings.Replace(a2, " ", "", -1)
			row["content"] =   a3[1 : len(a3)-1]
		}else{
			row["content"] =  ""
		}
		listszyx[k] = row
	}

	//活动公关
	filtershdgg := make([]interface{}, 0)
	filtershdgg = append(filtershdgg, "type",3)
	resulthdgg, count := models.ArticleGetList(page, self.pageSize, filtershdgg...)
	listhdgg := make([]map[string]interface{}, len(resulthdgg))
	for k, v := range resulthdgg {
		row := make(map[string]interface{})
		if v.Content !=""{
			a1:= strings.Split( v.Content, "src=")[1]
			a2:= strings.Split( a1, "alt")[0]			
			a3 :=  strings.Replace(a2, " ", "", -1)
			row["content"] =   a3[1 : len(a3)-1]
		}else{
			row["content"] =  ""
		}
		listhdgg[k] = row
	}

	//创新文创
	filterscxwc := make([]interface{}, 0)
	filterscxwc = append(filterscxwc, "type",4)
	resultcxwc, count := models.ArticleGetList(page, self.pageSize, filterscxwc...)
	listcxwc := make([]map[string]interface{}, len(resultcxwc))
	for k, v := range resultcxwc {
		row := make(map[string]interface{})
		if v.Content !=""{
			a1:= strings.Split( v.Content, "src=")[1]
			a2:= strings.Split( a1, "alt")[0]			
			a3 :=  strings.Replace(a2, " ", "", -1)
			row["content"] =   a3[1 : len(a3)-1]
		}else{
			row["content"] =  ""
		}
		listcxwc[k] = row
	}

	//品牌视频
	filtersppsp := make([]interface{}, 0)
	filtersppsp = append(filtersppsp, "type",1)
		resultppsp, count := models.WorksGetList(page, self.pageSize, filtersppsp...)
		listppsp := make([]map[string]interface{}, len(resultppsp))
		for k, v := range resultppsp {
			row := make(map[string]interface{})
			if v.Content !=""{
				a1:= strings.Split( v.Content, "src=")[1]
				a2:= strings.Split( a1, "alt")[0]			
				a3 :=  strings.Replace(a2, " ", "", -1)
				row["content"] =   a3[1 : len(a3)-1]
				row["videopath"] =  v.VideoPath
			}else{
				row["content"] =  ""
				row["videopath"] =  ""
			}
			listppsp[k] = row
		}
	aa := self.Ctx.Input.Header("user-agent")
	linuxs := strings.Contains(aa, "Linux")
	iphone := strings.Contains(aa, "iPhone")
	//self.ajaxList("成功", MSG_OK, count,list)
	self.Data["ppcy"] = list
	self.Data["szyx"] = listszyx
	self.Data["hdgg"] = listhdgg
	self.Data["cxwc"] = listcxwc
	self.Data["ppsp"] = listppsp
	self.Data["count"] = count
	if (linuxs == true || iphone == true ){
		self.TplName = "apidoc/phone_works.html"
	}else{
		self.TplName = "apidoc/works.html"
	}
}
func (self *ApiDocController) Works() {
	
	self.Data["pageTitle"] = "作品列表页"
	// self.display()
	aa := self.Ctx.Input.Header("user-agent")
	linuxs := strings.Contains(aa, "Linux")
	iphone := strings.Contains(aa, "iPhone")
	if (linuxs == true || iphone == true ){
		self.TplName = "apidoc/phone_works.html"
	}else{
		self.TplName = "apidoc/works.html"
	}
}

func (self *ApiDocController) AjaxWorks() {
	page, err := self.GetInt("page")
	if err != nil {
		page = 1
	}
	limit, err := self.GetInt("limit")
	if err != nil {
		limit = 6
	}
	self.pageSize = limit
	//查询条件 品牌创意
	filters := make([]interface{}, 0)
	filters = append(filters, "type",1)
	result, count := models.ArticleGetList(page, self.pageSize, filters...)
	list := make([]map[string]interface{}, len(result))
	for k, v := range result {
		row := make(map[string]interface{})
		if v.Content !=""{
			a1:= strings.Split( v.Content, "src=")[1]
			a2:= strings.Split( a1, "alt")[0]			
			a3 :=  strings.Replace(a2, " ", "", -1)
			row["content"] =   a3[1 : len(a3)-1]
		}else{
			row["content"] =  ""
		}
		if v.ThumbnailsPath !=""{
			b1:= strings.Split( v.ThumbnailsPath, "src=")[1]
			b2:= strings.Split( b1, "alt")[0]			
			b3 :=  strings.Replace(b2, " ", "", -1)
			row["thumbnails"] =   b3[1 : len(b3)-1]
		}else{
			row["thumbnails"] =  ""
		}


		list[k] = row
	}

	//数字营销
	filtersszyx := make([]interface{}, 0)
	filtersszyx = append(filtersszyx, "type",2)
	resultszyx, count := models.ArticleGetList(page, self.pageSize, filtersszyx...)
	listszyx := make([]map[string]interface{}, len(resultszyx))
	for k, v := range resultszyx {
		row := make(map[string]interface{})
		if v.Content !=""{
			a1:= strings.Split( v.Content, "src=")[1]
			a2:= strings.Split( a1, "alt")[0]			
			a3 :=  strings.Replace(a2, " ", "", -1)
			row["content"] =   a3[1 : len(a3)-1]
		}else{
			row["content"] =  ""
		}
		if v.ThumbnailsPath !=""{
			b1:= strings.Split( v.ThumbnailsPath, "src=")[1]
			b2:= strings.Split( b1, "alt")[0]			
			b3 :=  strings.Replace(b2, " ", "", -1)
			row["thumbnails"] =   b3[1 : len(b3)-1]
		}else{
			row["thumbnails"] =  ""
		}
		listszyx[k] = row
	}

	//活动公关
	filtershdgg := make([]interface{}, 0)
	filtershdgg = append(filtershdgg, "type",3)
	resulthdgg, count := models.ArticleGetList(page, self.pageSize, filtershdgg...)
	listhdgg := make([]map[string]interface{}, len(resulthdgg))
	for k, v := range resulthdgg {
		row := make(map[string]interface{})
		if v.Content !=""{
			a1:= strings.Split( v.Content, "src=")[1]
			a2:= strings.Split( a1, "alt")[0]			
			a3 :=  strings.Replace(a2, " ", "", -1)
			row["content"] =   a3[1 : len(a3)-1]
		}else{
			row["content"] =  ""
		}
		if v.ThumbnailsPath !=""{
			b1:= strings.Split( v.ThumbnailsPath, "src=")[1]
			b2:= strings.Split( b1, "alt")[0]			
			b3 :=  strings.Replace(b2, " ", "", -1)
			row["thumbnails"] =   b3[1 : len(b3)-1]
		}else{
			row["thumbnails"] =  ""
		}
		listhdgg[k] = row
	}

	//创新文创
	filterscxwc := make([]interface{}, 0)
	filterscxwc = append(filterscxwc, "type",4)
	resultcxwc, count := models.ArticleGetList(page, self.pageSize, filterscxwc...)
	listcxwc := make([]map[string]interface{}, len(resultcxwc))
	for k, v := range resultcxwc {
		row := make(map[string]interface{})
		if v.Content !=""{
			a1:= strings.Split( v.Content, "src=")[1]
			a2:= strings.Split( a1, "alt")[0]			
			a3 :=  strings.Replace(a2, " ", "", -1)
			row["content"] =   a3[1 : len(a3)-1]
		}else{
			row["content"] =  ""
		}
		if v.ThumbnailsPath !=""{
			b1:= strings.Split( v.ThumbnailsPath, "src=")[1]
			b2:= strings.Split( b1, "alt")[0]			
			b3 :=  strings.Replace(b2, " ", "", -1)
			row["thumbnails"] =   b3[1 : len(b3)-1]
		}else{
			row["thumbnails"] =  ""
		}
		listcxwc[k] = row
	}

	//品牌视频
	filtersppsp := make([]interface{}, 0)
	filtersppsp = append(filtersppsp, "type",1)
		resultppsp, count := models.WorksGetList(page, self.pageSize, filtersppsp...)
		listppsp := make([]map[string]interface{}, len(resultppsp))
		for k, v := range resultppsp {
			row := make(map[string]interface{})
			if v.Content !=""{
				a1:= strings.Split( v.Content, "src=")[1]
				a2:= strings.Split( a1, "alt")[0]			
				a3 :=  strings.Replace(a2, " ", "", -1)
				row["content"] =   a3[1 : len(a3)-1]
				row["videopath"] =  v.VideoPath
			}else{
				row["content"] =  ""
				row["videopath"] =  ""
			}
			listppsp[k] = row
		}
	aa := self.Ctx.Input.Header("user-agent")
	linuxs := strings.Contains(aa, "Linux")
	iphone := strings.Contains(aa, "iPhone")
	//self.ajaxList("成功", MSG_OK, count,list)
	self.Data["ppcy"] = list
	self.Data["szyx"] = listszyx
	self.Data["hdgg"] = listhdgg
	self.Data["cxwc"] = listcxwc
	self.Data["ppsp"] = listppsp
	self.Data["count"] = count
	if (linuxs == true || iphone == true ){
		//self.TplName = "apidoc/phone_works.html"
		listsall := make(map[string]interface{})
		listsall["ppcy"] = list
		listsall["szyx"] = listszyx
		listsall["hdgg"] = listhdgg
		listsall["cxwc"] = listcxwc
		listsall["ppsp"] = listppsp
		self.ajaxList("成功", MSG_OK, 6, listsall)
	}else{
		//self.TplName = "apidoc/works.html"
		listsall := make(map[string]interface{})
		listsall["ppcy"] = list
		listsall["szyx"] = listszyx
		listsall["hdgg"] = listhdgg
		listsall["cxwc"] = listcxwc
		listsall["ppsp"] = listppsp
		self.ajaxList("成功", MSG_OK, 6, listsall)
	}
	
}


func (self *ApiDocController) About() {
	page, err := self.GetInt("page")
	if err != nil {
		page = 1
	}
	limit, err := self.GetInt("limit")
	if err != nil {
		limit = 30
	}
	self.pageSize = limit
	//查询条件
	filters := make([]interface{}, 0)
	title := strings.TrimSpace(self.GetString("title"))
	if title != "" {
		filters = append(filters, "title__icontains", title)
	}
	filters = append(filters, "type",1)
	result, count := models.WorksGetList(page, self.pageSize, filters...)
	list := make([]map[string]interface{}, len(result))
	for k, v := range result {
		row := make(map[string]interface{})
		row["id"] = v.Id
		row["title"] = v.Title
		row["content"] = v.Content

		 r, _ := regexp.Compile(`(?U)^".*"`)
		fmt.Println(r.FindStringIndex(v.Content))
		fmt.Println("&&&&&&&")

		row["create_time"] = beego.Date(time.Unix(v.Create_time, 0), "Y-m-d H:i:s")
		if( v.Update_time >0){
			row["update_time"] = beego.Date(time.Unix(v.Update_time, 0), "Y-m-d H:i:s")
		}else{
			row["update_time"] = ""
		}
		list[k] = row
	}
	
	aa := self.Ctx.Input.Header("user-agent")
	linuxs := strings.Contains(aa, "Linux")
	iphone := strings.Contains(aa, "iPhone")
	//self.ajaxList("成功", MSG_OK, count,list)
	self.Data["list"] = list
	self.Data["count"] = count
	if (linuxs == true || iphone == true){
		self.TplName = "apidoc/phone_about.html"
	}else{
		self.TplName = "apidoc/about.html"
	}

//	 self.ajaxList("成功", MSG_OK, count, list)
//	self.Data["list"] = list
	//self.Data["count"] = count
	//self.display()
}



func (self *ApiDocController) Joinus() {

	// self.Data["pageTitle"] = "ssfsdfd"
	page, err := self.GetInt("page")
	if err != nil {
		page = 1
	}
	limit, err := self.GetInt("limit")
	if err != nil {
		limit = 30
	}
	self.pageSize = limit
	//查询条件
	filters := make([]interface{}, 0)
	title := strings.TrimSpace(self.GetString("title"))
	if title != "" {
		filters = append(filters, "title__icontains", title)
	}
	filters = append(filters, "type",1)
	result, count := models.WorksGetList(page, self.pageSize, filters...)
	list := make([]map[string]interface{}, len(result))
	for k, v := range result {
		row := make(map[string]interface{})
		row["id"] = v.Id
		row["title"] = v.Title
		row["content"] = v.Content

		 r, _ := regexp.Compile(`(?U)^".*"`)
		fmt.Println(r.FindStringIndex(v.Content))
		fmt.Println("&&&&&&&")

		row["create_time"] = beego.Date(time.Unix(v.Create_time, 0), "Y-m-d H:i:s")
		if( v.Update_time >0){
			row["update_time"] = beego.Date(time.Unix(v.Update_time, 0), "Y-m-d H:i:s")
		}else{
			row["update_time"] = ""
		}
		list[k] = row
	}
	
	aa := self.Ctx.Input.Header("user-agent")
	linuxs := strings.Contains(aa, "Linux")
	iphone := strings.Contains(aa, "iPhone")
	//self.ajaxList("成功", MSG_OK, count,list)
	self.Data["list"] = list
	self.Data["count"] = count
	if (linuxs == true || iphone == true){
		self.TplName = "apidoc/phone_joinus.html"
	}else{
		self.TplName = "apidoc/joinus.html"
	}

//	 self.ajaxList("成功", MSG_OK, count, list)
	//self.Data["list"] = list
	//self.Data["count"] = count
	//self.display()
}


func (self *ApiDocController) Service() {
	page, err := self.GetInt("page")
	if err != nil {
		page = 1
	}
	limit, err := self.GetInt("limit")
	if err != nil {
		limit = 4
	}
	self.pageSize = limit

	//查询条件 品牌创意
	filters := make([]interface{}, 0)
	filters = append(filters, "type",1)
	result, count := models.ArticleGetList(page, self.pageSize, filters...)
	list := make([]map[string]interface{}, len(result))
	
	for k, v := range result {
		row := make(map[string]interface{})
		if v.Content !=""{
			a1:= strings.Split( v.Content, "src=")[1]
			a2:= strings.Split( a1, "alt")[0]			
			a3 :=  strings.Replace(a2, " ", "", -1)
			row["content"] =   a3[1 : len(a3)-1]
			}else{
				row["content"] =  ""
			}
		list[k] = row
	}

//数字营销
filtersszyx := make([]interface{}, 0)
filtersszyx = append(filtersszyx, "type",2)
	resultszyx, count := models.ArticleGetList(page, self.pageSize, filtersszyx...)
	listszyx := make([]map[string]interface{}, len(resultszyx))
	
	for k, v := range resultszyx {
		row := make(map[string]interface{})
		if v.Content !=""{
			a1:= strings.Split( v.Content, "src=")[1]
			a2:= strings.Split( a1, "alt")[0]			
			a3 :=  strings.Replace(a2, " ", "", -1)
			row["content"] =   a3[1 : len(a3)-1]
			}else{
				row["content"] =  ""
			}
			listszyx[k] = row
	}
//活动公关
filtershdgg := make([]interface{}, 0)
filtershdgg = append(filtershdgg, "type",3)
	resulthdgg, count := models.ArticleGetList(page, self.pageSize, filtershdgg...)
	listhdgg := make([]map[string]interface{}, len(resulthdgg))
	
	for k, v := range resulthdgg {
		row := make(map[string]interface{})
		if v.Content !=""{
			a1:= strings.Split( v.Content, "src=")[1]
			a2:= strings.Split( a1, "alt")[0]			
			a3 :=  strings.Replace(a2, " ", "", -1)
			row["content"] =   a3[1 : len(a3)-1]
			}else{
				row["content"] =  ""
			}
			listhdgg[k] = row
	}
//创新文创
filterscxwc := make([]interface{}, 0)
filterscxwc = append(filterscxwc, "type",4)
	resultcxwc, count := models.ArticleGetList(page, self.pageSize, filterscxwc...)
	listcxwc := make([]map[string]interface{}, len(resultcxwc))
	
	for k, v := range resultcxwc {
		row := make(map[string]interface{})
		if v.Content !=""{
			a1:= strings.Split( v.Content, "src=")[1]
			a2:= strings.Split( a1, "alt")[0]			
			a3 :=  strings.Replace(a2, " ", "", -1)
			row["content"] =   a3[1 : len(a3)-1]
			}else{
				row["content"] =  ""
			}
			listcxwc[k] = row
	}
	aa := self.Ctx.Input.Header("user-agent")
	linuxs := strings.Contains(aa, "Linux")
	iphone := strings.Contains(aa, "iPhone")
	//self.ajaxList("成功", MSG_OK, count,list)
	self.Data["ppcy"] = list
	self.Data["szyx"] = listszyx
	self.Data["hdgg"] = listhdgg
	self.Data["cxwc"] = listcxwc
	self.Data["count"] = count
	if (linuxs == true || iphone == true){
		self.TplName = "apidoc/phone_service.html"
	}else{
		self.TplName = "apidoc/service.html"
	}
}

func (self *ApiDocController) Indexone() {
   	// var dateTime int64 = 1559318400
	// var nowDate  int64 = time.Now().Unix()
	// if dateTime < nowDate {
	// 	self.ajaxMsg("请联系运维人员", MSG_OK)
	// 	return
	// }
	aa := self.Ctx.Input.Header("user-agent")
	linuxs := strings.Contains(aa, "Linux")
	iphone := strings.Contains(aa, "iPhone")
	page, err := self.GetInt("page")
	if err != nil {
		page = 1
	}
	limit, err := self.GetInt("limit")
	if err != nil {
		limit = 30
	}
	self.pageSize = limit
	//查询条件
	filters := make([]interface{}, 0)
	title := strings.TrimSpace(self.GetString("title"))
	if title != "" {
		filters = append(filters, "title__icontains", title)
	}
	filters = append(filters, "type",8)
	if (linuxs == true || iphone == true){
		filters = append(filters, "ispctype", 2)
	}else{
		filters = append(filters, "ispctype", 1)
	}	
	result, count := models.ArticleGetList(page, self.pageSize, filters...)
	list := make([]map[string]interface{}, len(result))
	for k, v := range result {
		row := make(map[string]interface{})
		if v.Content !=""{
		a1:= strings.Split( v.Content, "src=")[1]
		a2:= strings.Split( a1, "alt")[0]			
		a3 :=  strings.Replace(a2, " ", "", -1)
		row["content"] =   a3[1 : len(a3)-1]
		row["urlPath"] = v.UrlPath
		}else{
			row["content"] =  ""
			row["urlPath"] = ""
		}
		list[k] = row
	}
	self.Data["list"] = list
	self.Data["count"] = count
	if (linuxs == true || iphone == true){
		self.TplName = "apidoc/phone_index.html"
	}else{
		self.TplName = "apidoc/indexone.html"
	}	
}
func (self *ApiDocController) SnedToMail() {
	//row := make(map[string]interface{})
	name    := strings.TrimSpace(self.GetString("name"))
	email   := strings.TrimSpace(self.GetString("email"))
	phone   := strings.TrimSpace(self.GetString("phone"))
	content  := strings.TrimSpace(self.GetString("content"))
	emailServer := beego.AppConfig.String("emailServer")
	emailPassword := beego.AppConfig.String("emailPassword")
	emailSmtp := beego.AppConfig.String("emailSmtp")
	emailAdmin := beego.AppConfig.String("emailAdmin")
	detail := "姓名：" + name +"<br>" +"邮箱：" + email + "<br>" + "电话：" + phone + "<br>" + "内容：" + content + "<br>"
	// err := SendMail("78082912@qq.com", "dkcwncuarrxicahg", "smtp.qq.com:587", "1127356574@qq.com", name,detail, "html")
	// fmt.Println("sendOK")
	err := SendMail(emailServer, emailPassword, emailSmtp , emailAdmin , name,detail, "html")
	fmt.Println("sendOK")


	if err != nil { 
		fmt.Printf("send mail error: %v", err)
		}
		self.ajaxMsg("", MSG_OK)
}

//邮箱发送
//发送邮件帮助类
func SendMail(user, password, host, to, subject, body, mailtype string) error {
	fmt.Println("sendloading")
	// err := SendMail("发送的邮箱", "发送的邮箱密码", "smtp.qq.com:25", "目标邮箱", "邮件标题", "邮件内容", "html")
	hp := strings.Split(host, ":")
	auth := smtp.PlainAuth("", user, password, hp[0])
	var content_type string
	if mailtype == "html" {
		content_type = "Content-Type: text/" + mailtype + "; charset=UTF-8"
	} else {
		content_type = "Content-Type: text/plain" + "; charset=UTF-8"
	}
	msg := []byte("To: " + to + "\r\nFrom: " + user + "<" + user + ">\r\nSubject: " + subject + "\r\n" + content_type + "\r\n\r\n" + body)
	send_to := strings.Split(to, ";")
	// fmt.Println(send_to)
	err := smtp.SendMail(host, auth, user, send_to, msg)
	return err
}
