func @_EwoQ.Controllers.HomeController.Index$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :20 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :23 :19) // View() (InvocationExpression)
return %0 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :23 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_EwoQ.Controllers.HomeController.OnPost$int$(i32) -> () loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :26 :8) {
^entry (%_counter : i32):
%0 = cbde.alloca i32 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :27 :27)
cbde.store %_counter, %0 : memref<i32> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :27 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :29 :12) // Not a variable of known type: ivm
%2 = cbde.unknown : i32 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :29 :12) // ivm.Counter (SimpleMemberAccessExpression)
%3 = cbde.load %0 : memref<i32> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :29 :26)
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :30 :12) // Identifier from another assembly: Session
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :30 :20) // "SessionCount" (StringLiteralExpression)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :30 :12) // Session["SessionCount"] (ElementAccessExpression)
%7 = cbde.load %0 : memref<i32> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :30 :38)
br ^1

^1: // ExitBlock
return

}
// Skipping function IndexAdmin(), it contains poisonous unsupported syntaxes

// Skipping function GetDonutData(), it contains poisonous unsupported syntaxes

// Skipping function GetDonutData4M(), it contains poisonous unsupported syntaxes

// Skipping function GetDonutDataTffz(), it contains poisonous unsupported syntaxes

// Skipping function GetDonutDataPlants(), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.HomeController.About$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :114 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :116 :12) // Identifier from another assembly: ViewBag
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :116 :12) // ViewBag.Message (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :116 :30) // "Your application description page." (StringLiteralExpression)
// Entity from another assembly: View
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :118 :19) // View() (InvocationExpression)
return %3 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :118 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_EwoQ.Controllers.HomeController.Contact$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :121 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :123 :12) // Identifier from another assembly: ViewBag
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :123 :12) // ViewBag.Message (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :123 :30) // "Your contact page." (StringLiteralExpression)
// Entity from another assembly: View
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :125 :19) // View() (InvocationExpression)
return %3 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\HomeController.cs" :125 :12)

^1: // ExitBlock
cbde.unreachable

}
