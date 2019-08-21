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
type AboutUs struct {
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
func (a *AboutUs) TableName() string {
	return TableName("about_us")
}
//列表
func AboutUsGetList(page, pageSize int, filters ...interface{}) ([]*AboutUs, int64) {
	offset := (page - 1) * pageSize
	list := make([]*AboutUs, 0)
	query := orm.NewOrm().QueryTable(TableName("about_us")).Filter("status", 1)
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
func AboutUsAdd(a *AboutUs) (int64, error) {
	return orm.NewOrm().Insert(a)
}
//查询
func AboutUsGetById(id int) (*AboutUs, error) {
	r := new(AboutUs)
	err := orm.NewOrm().QueryTable(TableName("about_us")).Filter("id", id).One(r)
	if err != nil {
		return nil, err
	}
	return r, nil
}
//更新 删除
func (a *AboutUs) Update(fields ...string) error {
	if _, err := orm.NewOrm().Update(a, fields...); err != nil {
		return err
	}
	return nil
}
