func @_EwoQ.Controllers.AccountController.Login$string$(none) -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :57 :8) {
^entry (%_returnUrl : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :58 :34)
cbde.store %_returnUrl, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :58 :34)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :60 :12) // Identifier from another assembly: ViewBag
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :60 :12) // ViewBag.ReturnUrl (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :60 :32) // Not a variable of known type: returnUrl
// Entity from another assembly: View
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :68 :19) // View() (InvocationExpression)
return %4 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :68 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function Login(none, none), it contains poisonous unsupported syntaxes

// Skipping function VerifyCode(none, none, i1), it contains poisonous unsupported syntaxes

// Skipping function VerifyCode(none), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.AccountController.Register$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :166 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :169 :28) // new RegisterViewModel() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :170 :12) // Not a variable of known type: viewModel
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :170 :12) // viewModel.RoleList (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :170 :33) // new List<SelectListItem>() (ObjectCreationExpression)
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :172 :12) // Not a variable of known type: viewModel
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :172 :12) // viewModel.RoleList (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetRoles
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :172 :33) // GetRoles() (InvocationExpression)
// Entity from another assembly: View
%8 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :174 :24) // Not a variable of known type: viewModel
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :174 :19) // View(viewModel) (InvocationExpression)
return %9 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :174 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetRoles(), it contains poisonous unsupported syntaxes

// Skipping function Register(none), it contains poisonous unsupported syntaxes

// Skipping function ConfirmEmail(none, none), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.AccountController.AccountCreated$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :273 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :276 :19) // View() (InvocationExpression)
return %0 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :276 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_EwoQ.Controllers.AccountController.ForgotPassword$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :282 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :285 :19) // View() (InvocationExpression)
return %0 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :285 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function ForgotPassword(none), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.AccountController.ForgotPasswordConfirmation$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :318 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :321 :19) // View() (InvocationExpression)
return %0 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :321 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function ResetPassword(none), it contains poisonous unsupported syntaxes

// Skipping function ResetPassword(none), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.AccountController.ResetPasswordConfirmation$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :360 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :363 :19) // View() (InvocationExpression)
return %0 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :363 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_EwoQ.Controllers.AccountController.ExternalLogin$string.string$(none, none) -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :368 :8) {
^entry (%_provider : none, %_returnUrl : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :371 :42)
cbde.store %_provider, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :371 :42)
%1 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :371 :59)
cbde.store %_returnUrl, %1 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :371 :59)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :374 :39) // Not a variable of known type: provider
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :374 :49) // Identifier from another assembly: Url
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :374 :60) // "ExternalLoginCallback" (StringLiteralExpression)
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :374 :85) // "Account" (StringLiteralExpression)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :374 :114) // Not a variable of known type: returnUrl
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :374 :96) // new { ReturnUrl = returnUrl } (AnonymousObjectCreationExpression)
%8 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :374 :49) // Url.Action("ExternalLoginCallback", "Account", new { ReturnUrl = returnUrl }) (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :374 :19) // new ChallengeResult(provider, Url.Action("ExternalLoginCallback", "Account", new { ReturnUrl = returnUrl })) (ObjectCreationExpression)
return %9 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :374 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function SendCode(none, i1), it contains poisonous unsupported syntaxes

// Skipping function SendCode(none), it contains poisonous unsupported syntaxes

// Skipping function ExternalLoginCallback(none), it contains poisonous unsupported syntaxes

// Skipping function ExternalLoginConfirmation(none, none), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.AccountController.LogOff$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :482 :7) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :486 :12) // Not a variable of known type: AuthenticationManager
// Entity from another assembly: DefaultAuthenticationTypes
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :486 :42) // DefaultAuthenticationTypes.ApplicationCookie (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :486 :12) // AuthenticationManager.SignOut(DefaultAuthenticationTypes.ApplicationCookie) (InvocationExpression)
// Entity from another assembly: RedirectToAction
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :487 :36) // "Login" (StringLiteralExpression)
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :487 :45) // "Account" (StringLiteralExpression)
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :487 :19) // RedirectToAction("Login", "Account") (InvocationExpression)
return %5 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :487 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_EwoQ.Controllers.AccountController.ExternalLoginFailure$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :492 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :495 :19) // View() (InvocationExpression)
return %0 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :495 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_EwoQ.Controllers.AccountController.Dispose$bool$(i1) -> () loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :498 :8) {
^entry (%_disposing : i1):
%0 = cbde.alloca i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :498 :40)
cbde.store %_disposing, %0 : memref<i1> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :498 :40)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.load %0 : memref<i1> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :500 :16)
cond_br %1, ^1, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :500 :16)

^1: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :502 :20) // Not a variable of known type: _userManager
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :502 :36) // null (NullLiteralExpression)
%4 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :502 :20) // comparison of unknown type: _userManager != null
cond_br %4, ^3, ^4 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :502 :20)

^3: // SimpleBlock
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :504 :20) // Not a variable of known type: _userManager
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :504 :20) // _userManager.Dispose() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :505 :35) // null (NullLiteralExpression)
br ^4

^4: // BinaryBranchBlock
%8 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :508 :20) // Not a variable of known type: _signInManager
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :508 :38) // null (NullLiteralExpression)
%10 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :508 :20) // comparison of unknown type: _signInManager != null
cond_br %10, ^5, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :508 :20)

^5: // SimpleBlock
%11 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :510 :20) // Not a variable of known type: _signInManager
%12 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :510 :20) // _signInManager.Dispose() (InvocationExpression)
%13 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :511 :37) // null (NullLiteralExpression)
br ^2

^2: // SimpleBlock
%14 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :515 :12) // base (BaseExpression)
%15 = cbde.load %0 : memref<i1> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :515 :25)
%16 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :515 :12) // base.Dispose(disposing) (InvocationExpression)
br ^6

^6: // ExitBlock
return

}
// Skipping function AddErrors(none), it contains poisonous unsupported syntaxes

// Skipping function RedirectToLocal(none, none), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.AccountController.ChallengeResult.ExecuteResult$System.Web.Mvc.ControllerContext$(none) -> () loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :578 :12) {
^entry (%_context : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :578 :47)
cbde.store %_context, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :578 :47)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :580 :33) // new AuthenticationProperties { RedirectUri = RedirectUri } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :580 :78) // Not a variable of known type: RedirectUri
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :581 :20) // Not a variable of known type: UserId
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :581 :30) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :581 :20) // comparison of unknown type: UserId != null
cond_br %6, ^1, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :581 :20)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :583 :20) // Not a variable of known type: properties
%8 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :583 :20) // properties.Dictionary (SimpleMemberAccessExpression)
%9 = constant unit loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :583 :42) // XsrfKey (IdentifierName)
%10 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :583 :20) // properties.Dictionary[XsrfKey] (ElementAccessExpression)
%11 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :583 :53) // Not a variable of known type: UserId
br ^2

^2: // SimpleBlock
%12 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :585 :16) // Not a variable of known type: context
%13 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :585 :16) // context.HttpContext (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :585 :16) // context.HttpContext.GetOwinContext() (InvocationExpression)
%15 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :585 :16) // context.HttpContext.GetOwinContext().Authentication (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :585 :78) // Not a variable of known type: properties
%17 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :585 :90) // Not a variable of known type: LoginProvider
%18 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\AccountController.cs" :585 :16) // context.HttpContext.GetOwinContext().Authentication.Challenge(properties, LoginProvider) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
