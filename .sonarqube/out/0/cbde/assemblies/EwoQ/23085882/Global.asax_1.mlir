func @_EwoQ.MvcApplication.Application_Start$$() -> () loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :13 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: AreaRegistration
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :15 :12) // AreaRegistration.RegisterAllAreas() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: FilterConfig
// Entity from another assembly: GlobalFilters
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :16 :47) // GlobalFilters.Filters (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :16 :12) // FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: RouteConfig
// Entity from another assembly: RouteTable
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :17 :39) // RouteTable.Routes (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :17 :12) // RouteConfig.RegisterRoutes(RouteTable.Routes) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: BundleConfig
// Entity from another assembly: BundleTable
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :18 :41) // BundleTable.Bundles (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :18 :12) // BundleConfig.RegisterBundles(BundleTable.Bundles) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_EwoQ.MvcApplication.Application_Error$object.System.EventArgs$(none, none) -> () loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :21 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :21 :38)
cbde.store %_sender, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :21 :38)
%1 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :21 :53)
cbde.store %_e, %1 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :21 :53)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :23 :34) // Identifier from another assembly: Server
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :23 :34) // Server.GetLastError() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :24 :12) // Identifier from another assembly: Server
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :24 :12) // Server.ClearError() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :26 :28) // new RouteData() (ObjectCreationExpression)
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :27 :12) // Not a variable of known type: routeData
%10 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :27 :12) // routeData.Values (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :27 :33) // "controller" (StringLiteralExpression)
%12 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :27 :47) // "ErrorPage" (StringLiteralExpression)
%13 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :27 :12) // routeData.Values.Add("controller", "ErrorPage") (InvocationExpression)
%14 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :28 :12) // Not a variable of known type: routeData
%15 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :28 :12) // routeData.Values (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :28 :33) // "action" (StringLiteralExpression)
%17 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :28 :43) // "Error" (StringLiteralExpression)
%18 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :28 :12) // routeData.Values.Add("action", "Error") (InvocationExpression)
%19 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :29 :12) // Not a variable of known type: routeData
%20 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :29 :12) // routeData.Values (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :29 :33) // "exception" (StringLiteralExpression)
%22 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :29 :46) // Not a variable of known type: exception
%23 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :29 :12) // routeData.Values.Add("exception", exception) (InvocationExpression)
%24 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :31 :16) // Not a variable of known type: exception
%25 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :31 :16) // exception.GetType() (InvocationExpression)
%26 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :31 :39) // typeof(HttpException) (TypeOfExpression)
%27 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :31 :16) // comparison of unknown type: exception.GetType() == typeof(HttpException)
cond_br %27, ^1, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :31 :16)

^1: // SimpleBlock
%28 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :33 :16) // Not a variable of known type: routeData
%29 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :33 :16) // routeData.Values (SimpleMemberAccessExpression)
%30 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :33 :37) // "statusCode" (StringLiteralExpression)
%31 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :33 :67) // Not a variable of known type: exception
%32 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :33 :52) // (HttpException)exception (CastExpression)
%33 = cbde.unknown : i32 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :33 :51) // ((HttpException)exception).GetHttpCode() (InvocationExpression)
%34 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :33 :16) // routeData.Values.Add("statusCode", ((HttpException)exception).GetHttpCode()) (InvocationExpression)
br ^3

^2: // SimpleBlock
%35 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :37 :16) // Not a variable of known type: routeData
%36 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :37 :16) // routeData.Values (SimpleMemberAccessExpression)
%37 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :37 :37) // "statusCode" (StringLiteralExpression)
%38 = constant 500 : i32 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :37 :51)
%39 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :37 :16) // routeData.Values.Add("statusCode", 500) (InvocationExpression)
br ^3

^3: // SimpleBlock
%40 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :40 :12) // Identifier from another assembly: Response
%41 = cbde.unknown : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :40 :12) // Response.TrySkipIisCustomErrors (SimpleMemberAccessExpression)
%42 = constant 1 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :40 :46) // true
%43 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :41 :37) // new ErrorPageController() (ObjectCreationExpression)
%45 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :42 :12) // Not a variable of known type: controller
%46 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :42 :73) // Identifier from another assembly: Context
%47 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :42 :50) // new HttpContextWrapper(Context) (ObjectCreationExpression)
%48 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :42 :83) // Not a variable of known type: routeData
%49 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :42 :31) // new RequestContext(new HttpContextWrapper(Context), routeData) (ObjectCreationExpression)
%50 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :42 :12) // controller.Execute(new RequestContext(new HttpContextWrapper(Context), routeData)) (InvocationExpression)
%51 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :43 :12) // Identifier from another assembly: Response
%52 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Global.asax.cs" :43 :12) // Response.End() (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
