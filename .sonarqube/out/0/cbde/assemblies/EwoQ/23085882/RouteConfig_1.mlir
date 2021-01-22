func @_EwoQ.RouteConfig.RegisterRoutes$System.Web.Routing.RouteCollection$(none) -> () loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\RouteConfig.cs" :11 :8) {
^entry (%_routes : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\RouteConfig.cs" :11 :42)
cbde.store %_routes, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\RouteConfig.cs" :11 :42)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\RouteConfig.cs" :13 :12) // Not a variable of known type: routes
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\RouteConfig.cs" :13 :31) // "{resource}.axd/{*pathInfo}" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\RouteConfig.cs" :13 :12) // routes.IgnoreRoute("{resource}.axd/{*pathInfo}") (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\RouteConfig.cs" :15 :12) // Not a variable of known type: routes
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\RouteConfig.cs" :16 :22) // "Default" (StringLiteralExpression)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\RouteConfig.cs" :17 :21) // "{controller}/{action}/{id}" (StringLiteralExpression)
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\RouteConfig.cs" :18 :45) // "Account" (StringLiteralExpression)
%8 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\RouteConfig.cs" :18 :65) // "Login" (StringLiteralExpression)
// Entity from another assembly: UrlParameter
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\RouteConfig.cs" :18 :79) // UrlParameter.Optional (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\RouteConfig.cs" :18 :26) // new { controller = "Account", action = "Login", id = UrlParameter.Optional } (AnonymousObjectCreationExpression)
%11 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\RouteConfig.cs" :15 :12) // routes.MapRoute(                  name: "Default",                  url: "{controller}/{action}/{id}",                  defaults: new { controller = "Account", action = "Login", id = UrlParameter.Optional }              ) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
