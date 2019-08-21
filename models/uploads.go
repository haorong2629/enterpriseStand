/**********************************************
** @Des: This file ...
** @Author: 玉哥
** @Date:   2018-08-28 00:18:02
** @Last Modified by:   玉哥
** @Last Modified time: 2018-08-28 00:18:02
***********************************************/
package models

import (
	"github.com/astaxie/beego/orm"
)

type Uploads struct {
	Id         	int
	Name       	string
	Img_name   	string
	Upload_path string
	Thumb_path 	string
	Size       	int64
	Groupid    	int
	Ctetime    	int64
	Feature    	float64
	Uid        	int
	Status     	int64	
	Statusdel   int64
}

func (a *Uploads) TableName() string {
	return TableName("ar_uploads")
}
func UploadsGetList(page, pageSize int, filters ...interface{}) ([]*Uploads, int64) {
	offset := (page - 1) * pageSize
	list := make([]*Uploads, 0)
	query := orm.NewOrm().QueryTable(TableName("ar_uploads"))
	if len(filters) > 0 {
		l := len(filters)
		for k := 0; k < l; k += 2 {
			query = query.Filter(filters[k].(string), filters[k+1]).Filter("statusdel",1)
		}
	}
	total, _ := query.Count()
	query.OrderBy("-id").Filter("statusdel",1).Limit(pageSize, offset).All(&list)
	return list, total
}


func Imgadd(a *Uploads) (int64, error) {
	return orm.NewOrm().Insert(a)
}