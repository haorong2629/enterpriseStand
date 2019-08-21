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
	"strings"
	"time"
	// "net/smtp"
	"github.com/astaxie/beego"
	"webadmin/models"
)

type AnnouncementController struct {
	BaseController
}
//列表页
func (self *AnnouncementController) List() {
	self.Data["pageTitle"] = "活动公告"
	self.display()
}
//新增页
func (self *AnnouncementController) Add() {
	self.Data["pageTitle"] = "活动公告新增"
	self.display()
}
//添加修改接口
func (self *AnnouncementController) AjaxSave() {
	 ArticleId, _ := self.GetInt("id")
	if ArticleId == 0 {
		article := new(models.BrandCreativity)
		article.Title    = strings.TrimSpace(self.GetString("title"))
		article.VideoPath    = strings.TrimSpace(self.GetString("video_path"))
		article.ThumbnailsPath    = strings.TrimSpace(self.GetString("thumbnails"))
		article.Content    = strings.TrimSpace(self.GetString("content"))
		article.Create_time = time.Now().Unix()
		article.Status = 1
		article.Type = 3
		if _, err := models.ArticleAdd(article); err != nil {
			self.ajaxMsg(err.Error(), MSG_ERR)
		}
		// self.ajaxMsg("", MSG_OK)
		self.redirect(beego.URLFor("AnnouncementController.List"))
	}
	article, _ := models.ArticleGetById(ArticleId)
	article.Title    = strings.TrimSpace(self.GetString("title"))
	article.VideoPath    = strings.TrimSpace(self.GetString("video_path"))
	article.ThumbnailsPath    = strings.TrimSpace(self.GetString("thumbnails"))
	article.Content    = strings.TrimSpace(self.GetString("content"))
	article.Update_time = time.Now().Unix()
	article.Status = 1
	article.Type = 3
	if err := article.Update(); err != nil {
		self.ajaxMsg(err.Error(), MSG_ERR)
	}
	// self.ajaxMsg("", MSG_OK)
	self.redirect(beego.URLFor("AnnouncementController.List"))
}
//列表接口
func (self *AnnouncementController) Table() {
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
	filters = append(filters, "type",3)
	result, count := models.ArticleGetList(page, self.pageSize, filters...)
	list := make([]map[string]interface{}, len(result))
	for k, v := range result {
		row := make(map[string]interface{})
		row["id"] = v.Id
		row["title"] = v.Title
		row["create_time"] = beego.Date(time.Unix(v.Create_time, 0), "Y-m-d H:i:s")
		if( v.Update_time >0){
			row["update_time"] = beego.Date(time.Unix(v.Update_time, 0), "Y-m-d H:i:s")
		}else{
			row["update_time"] = ""
		}
		list[k] = row
	}
	self.ajaxList("成功", MSG_OK, count, list)
}
//查看详情 
func (self *AnnouncementController) Detail() {
	// self.Data["ApiCss"] = true
	self.Data["pageTitle"] = "活动公告详情"
	id, _ := self.GetInt("id", 0)
	detail, _ := models.ArticleGetById(id)
	row := make(map[string]interface{})
	fmt.Print(row)
	row["id"] = detail.Id
	row["title"] = detail.Title
	row["videoPath"] = detail.VideoPath
	row["thumbnails"] = detail.ThumbnailsPath
	row["content"] = detail.Content
	row["create_time"] = beego.Date(time.Unix(detail.Create_time, 0), "Y-m-d H:i:s")
	if(detail.Update_time > 0 ){
		row["update_time"] = beego.Date(time.Unix(detail.Update_time, 0), "Y-m-d H:i:s")
	}else{
		row["update_time"] =""
	}
	self.Data["Detail"] = row
	self.display()
}
//编辑
func (self *AnnouncementController) Edit() {
	self.Data["pageTitle"] = "活动公告编辑"
	id, _ := self.GetInt("id", 0)
	detail, _ := models.ArticleGetById(id)
	row := make(map[string]interface{})
	row["id"] = detail.Id
	row["title"] = detail.Title
	row["videoPath"] = detail.VideoPath
	row["thumbnails"] = detail.ThumbnailsPath
	row["content"] = detail.Content
	self.Data["Detail"] = row
	self.display()
}
//删除 接口
func (self *AnnouncementController) AjaxDel() {	
	id, _ := self.GetInt("id")
	article, _ := models.ArticleGetById(id)
	article.Status = 0	
	if err := article.Update(); err != nil {
		self.ajaxMsg(err.Error(), MSG_ERR)
	}
	self.ajaxMsg("", MSG_OK)
	}
	

