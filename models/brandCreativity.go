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
type BrandCreativity struct {
	Id int64
	Content string
	Status int
  	Create_id int
  	Update_id int
  	Create_time int64
	Update_time int64
	Type int
	Ispctype int
	Title string
	VideoPath  string
	UrlPath  string
	ThumbnailsPath string
  	
 	
}
func (a *BrandCreativity) TableName() string {
	return TableName("brand_creativity")
}
//列表
func ArticleGetList(page, pageSize int, filters ...interface{}) ([]*BrandCreativity, int64) {
	offset := (page - 1) * pageSize
	list := make([]*BrandCreativity, 0)
	query := orm.NewOrm().QueryTable(TableName("brand_creativity")).Filter("status", 1)
	if len(filters) > 0 {
		l := len(filters)
		for k := 0; k < l; k += 2 {
			query = query.Filter(filters[k].(string), filters[k+1])
		}
	}
	total, _ := query.Count()
	query.OrderBy("-id").Limit(pageSize, offset).All(&list)
	return list, total
}

//添加
func ArticleAdd(a *BrandCreativity) (int64, error) {
	return orm.NewOrm().Insert(a)
}
//查询
func ArticleGetById(id int) (*BrandCreativity, error) {
	r := new(BrandCreativity)
	err := orm.NewOrm().QueryTable(TableName("brand_creativity")).Filter("id", id).One(r)
	if err != nil {
		return nil, err
	}
	return r, nil
}

//更新 删除
func (a *BrandCreativity) Update(fields ...string) error {
	if _, err := orm.NewOrm().Update(a, fields...); err != nil {
		return err
	}
	return nil
}
