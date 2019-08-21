/**********************************************
** @Des: This file 图片上传
** @Author: 玉哥
** @Date:   2018-08-28 00:18:02
** @Last Modified by:   玉哥
** @Last Modified time: 2018-08-28 00:18:02
***********************************************/
package controllers

import (
	
	"os"
	"path"
	"fmt"
	"strings"
	"time"
	"github.com/astaxie/beego"
)

type UploadsController struct {
	BaseController
}


//文件上传
func (self *UploadsController) Uploads() {
	
	data := beego.Date(time.Now(), "Ymd")			 
	imgpath := "static/upload/image/"+data
	// fmt.Println(imgpath)
	_, err := os.Stat(imgpath)
	if err != nil {
		fmt.Println("创建文件夹")
		os.MkdirAll(imgpath,os.ModePerm)
		}
	f, h, _ := self.GetFile("imgFile")
	//得到文件的名称
	fileName := h.Filename 
	fmt.Println(fileName)
	arr := strings.Split(fileName, ":")
	if len(arr) > 1 {   
		index := len(arr) - 1
		fileName = arr[index]
	}
	//关闭上传的文件，不然的话会出现临时文件不能清除的情况
	f.Close()  
	//保存文件到指定的位置
	//static/uploadfile,这个是文件的地址，第一个static前面不要有/
	self.SaveToFile("imgFile", path.Join(imgpath,fileName))
	uploadPath := "/"+imgpath + "/"+fileName
	fmt.Println(uploadPath)
	//////////////
	 imgdata := map[string]interface{}{"src":uploadPath,"title":fileName }
	self.Data["json"] = map[string]interface{}{"code": 0,"msg":"" ,"error":0,"url":uploadPath,"data":imgdata}
	self.ServeJSON()
}

