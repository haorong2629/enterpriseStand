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
type JoinArticle struct {
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
func (a *JoinArticle) TableName() string {
	return TableName("join_article")
}
//列表
func JoinGetList(page, pageSize int, filters ...interface{}) ([]*JoinArticle, int64) {
	offset := (page - 1) * pageSize
	list := make([]*JoinArticle, 0)
	query := orm.NewOrm().QueryTable(TableName("join_article")).Filter("status", 1)
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
func JoinArticleAdd(a *JoinArticle) (int64, error) {
	return orm.NewOrm().Insert(a)
}
//查询
func JoinGetById(id int) (*JoinArticle, error) {
	r := new(JoinArticle)
	err := orm.NewOrm().QueryTable(TableName("join_article")).Filter("id", id).One(r)
	if err != nil {
		return nil, err
	}
	return r, nil
}
//更新 删除
func (a *JoinArticle) Update(fields ...string) error {
	if _, err := orm.NewOrm().Update(a, fields...); err != nil {
		return err
	}
	return nil
}
