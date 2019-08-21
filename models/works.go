/**********************************************
** @Des: This file ...
** @Author: 玉哥
** @Date:   2018-08-28 00:18:02
** @Last Modified by:   玉哥
** @Last Modified time: 2018-08-28 00:18:02
***********************************************/
package models

import (
	"fmt"
	"github.com/astaxie/beego/orm"
)
type Works struct {
	Id int64
	Content string
	Status int
  	Create_id int
  	Update_id int
  	Create_time int64
	Update_time int64
	Type int
	Title string
	VideoPath  string	
}
func (a *Works) TableName() string {
	return TableName("works")
}
//列表
func WorksGetList(page, pageSize int, filters ...interface{}) ([]*Works, int64) {
	offset := (page - 1) * pageSize
	list := make([]*Works, 0)
	query := orm.NewOrm().QueryTable(TableName("works")).Filter("status", 1)
	fmt.Print(query)
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
func WorksAdd(a *Works) (int64, error) {
	return orm.NewOrm().Insert(a)
}
//查询
func WorksGetById(id int) (*Works, error) {
	r := new(Works)
	err := orm.NewOrm().QueryTable(TableName("works")).Filter("id", id).One(r)
	if err != nil {
		return nil, err
	}
	return r, nil
}
//更新 删除
func (a *Works) Update(fields ...string) error {
	if _, err := orm.NewOrm().Update(a, fields...); err != nil {
		return err
	}
	return nil
}
