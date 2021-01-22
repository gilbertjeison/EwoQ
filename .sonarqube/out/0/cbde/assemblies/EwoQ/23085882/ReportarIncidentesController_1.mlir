// Skipping function LoadDataAsync(), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.ReportarIncidentesController.Index$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :99 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :101 :19) // View() (InvocationExpression)
return %0 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :101 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetAllUsersAsync(), it contains poisonous unsupported syntaxes

// Skipping function GetAllUsersJsonAsync(), it contains poisonous unsupported syntaxes

// Skipping function GetAllDispoJsonAsync(), it contains poisonous unsupported syntaxes

// Skipping function GetAreasJsonAsync(), it contains poisonous unsupported syntaxes

// Skipping function GetAllUniMedJsonAsync(), it contains poisonous unsupported syntaxes

// Skipping function Get4MQuestionsByType(i32), it contains poisonous unsupported syntaxes

// Skipping function GetAllUsers(), it contains poisonous unsupported syntaxes

// Skipping function Details(none), it contains poisonous unsupported syntaxes

// Skipping function Create(), it contains poisonous unsupported syntaxes

// Skipping function CreateAsync(none), it contains poisonous unsupported syntaxes

// Skipping function ProcesarIncidente(none), it contains poisonous unsupported syntaxes

// Skipping function ProcesarIncidentePost(none), it contains poisonous unsupported syntaxes

// Skipping function Edit(none), it contains poisonous unsupported syntaxes

// Skipping function Edit(none), it contains poisonous unsupported syntaxes

// Skipping function Delete(none), it contains poisonous unsupported syntaxes

// Skipping function DeleteConfirmed(none), it contains poisonous unsupported syntaxes

// Skipping function GetProducts(none), it contains poisonous unsupported syntaxes

// Skipping function GetAcionsList(none), it contains poisonous unsupported syntaxes

// Skipping function GetEwoAsync(i32), it contains poisonous unsupported syntaxes

// Skipping function GetZeroQuestions(i32), it contains poisonous unsupported syntaxes

// Skipping function GetDropDownListAsync(i32, i32), it contains poisonous unsupported syntaxes

// Skipping function BuildModel(none), it contains poisonous unsupported syntaxes

// Skipping function CreateEwoObject(none, i1), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.ReportarIncidentesController.SaveImageEwoServer$System.Web.HttpPostedFileBase$(none) -> () loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :752 :8) {
^entry (%_file : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :752 :40)
cbde.store %_file, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :752 :40)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :754 :16) // Not a variable of known type: file
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :754 :24) // null (NullLiteralExpression)
%3 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :754 :16) // comparison of unknown type: file != null
cond_br %3, ^1, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :754 :16)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :756 :41) // Not a variable of known type: ewo_images
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :756 :54) // Not a variable of known type: file
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :756 :54) // file.FileName (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :756 :41) // Binary expression on unsupported types ewo_images + file.FileName
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :757 :16) // Not a variable of known type: file
%10 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :757 :28) // Identifier from another assembly: Server
%11 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :757 :43) // Not a variable of known type: nameAndLocation
%12 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :757 :28) // Server.MapPath(nameAndLocation) (InvocationExpression)
%13 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :757 :16) // file.SaveAs(Server.MapPath(nameAndLocation)) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_EwoQ.Controllers.ReportarIncidentesController.Dispose$bool$(i1) -> () loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :761 :8) {
^entry (%_disposing : i1):
%0 = cbde.alloca i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :761 :40)
cbde.store %_disposing, %0 : memref<i1> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :761 :40)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.load %0 : memref<i1> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :763 :16)
cond_br %1, ^1, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :763 :16)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :765 :16) // Not a variable of known type: db
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :765 :16) // db.Dispose() (InvocationExpression)
br ^2

^2: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :767 :12) // base (BaseExpression)
%5 = cbde.load %0 : memref<i1> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :767 :25)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ReportarIncidentesController.cs" :767 :12) // base.Dispose(disposing) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
