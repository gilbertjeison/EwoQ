func @_EwoQ.Startup.Configuration$Owin.IAppBuilder$(none) -> () loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Startup.cs" :8 :8) {
^entry (%_app : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Startup.cs" :8 :34)
cbde.store %_app, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Startup.cs" :8 :34)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ConfigureAuth
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Startup.cs" :10 :26) // Not a variable of known type: app
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Startup.cs" :10 :12) // ConfigureAuth(app) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
