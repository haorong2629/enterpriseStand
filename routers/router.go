package routers

import (
	"github.com/astaxie/beego"
	"webadmin/controllers"
)

func init() {
	// 默认登录
	beego.Router("/", &controllers.ApiDocController{}, "*:Indexone")
	beego.Router("/login", &controllers.LoginController{}, "*:LoginIn")
	beego.Router("/login_out", &controllers.LoginController{}, "*:LoginOut")
	beego.Router("/no_auth", &controllers.LoginController{}, "*:NoAuth")
	beego.Router("/home_admin", &controllers.HomeController{}, "*:Index")
	beego.Router("/home/start", &controllers.HomeController{}, "*:Start")
	beego.AutoRouter(&controllers.ApiController{})
	beego.AutoRouter(&controllers.ApiSourceController{})
	beego.AutoRouter(&controllers.ApiPublicController{})
	beego.AutoRouter(&controllers.TemplateController{})
	beego.AutoRouter(&controllers.ApiDocController{})
	beego.AutoRouter(&controllers.EnvController{})
	beego.AutoRouter(&controllers.CodeController{})
	beego.AutoRouter(&controllers.GroupController{})
	beego.AutoRouter(&controllers.AuthController{})
	beego.AutoRouter(&controllers.RoleController{})
	beego.AutoRouter(&controllers.AdminController{})
	beego.AutoRouter(&controllers.UserController{})
	beego.AutoRouter(&controllers.BrandCreativityController{})
	beego.AutoRouter(&controllers.MarketingController{})
	beego.AutoRouter(&controllers.AnnouncementController{})
	beego.AutoRouter(&controllers.LunboController{})
	beego.AutoRouter(&controllers.InnovationController{})
	beego.AutoRouter(&controllers.CompanyProfileController{})
	beego.AutoRouter(&controllers.CompanyConceptController{})
	beego.AutoRouter(&controllers.CompanyListedController{})
	beego.AutoRouter(&controllers.CompanyServiceController{})
	beego.AutoRouter(&controllers.BusinessController{})
	beego.AutoRouter(&controllers.AgentController{})
	beego.AutoRouter(&controllers.JoinTeamController{})
	beego.AutoRouter(&controllers.BrandWorksController{})
	// beego.AutoRouter(&controllers.ArticleController{})
	// beego.AutoRouter(&controllers.FolderController{})
	beego.AutoRouter(&controllers.UploadsController{})

}
