// Skipping function Index(none), it contains poisonous unsupported syntaxes

// Skipping function SaveDigitalSign(none, i32), it contains poisonous unsupported syntaxes

// Skipping function RemoveLogin(none, none), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.ManageController.AddPhoneNumber$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :164 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :166 :19) // View() (InvocationExpression)
return %0 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :166 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function AddPhoneNumber(none), it contains poisonous unsupported syntaxes

// Skipping function EnableTwoFactorAuthentication(), it contains poisonous unsupported syntaxes

// Skipping function DisableTwoFactorAuthentication(), it contains poisonous unsupported syntaxes

// Skipping function VerifyPhoneNumber(none), it contains poisonous unsupported syntaxes

// Skipping function VerifyPhoneNumber(none), it contains poisonous unsupported syntaxes

// Skipping function RemovePhoneNumber(), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.ManageController.ChangePassword$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :278 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :280 :19) // View() (InvocationExpression)
return %0 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :280 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function ChangePassword(none), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.ManageController.SetPassword$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :309 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :311 :19) // View() (InvocationExpression)
return %0 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :311 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function SetPassword(none), it contains poisonous unsupported syntaxes

// Skipping function ManageLogins(none), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.ManageController.LinkLogin$string$(none) -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :364 :8) {
^entry (%_provider : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :366 :38)
cbde.store %_provider, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :366 :38)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :369 :57) // Not a variable of known type: provider
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :369 :67) // Identifier from another assembly: Url
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :369 :78) // "LinkLoginCallback" (StringLiteralExpression)
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :369 :99) // "Manage" (StringLiteralExpression)
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :369 :67) // Url.Action("LinkLoginCallback", "Manage") (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :369 :110) // Identifier from another assembly: User
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :369 :110) // User.Identity (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :369 :110) // User.Identity.GetUserId() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :369 :19) // new AccountController.ChallengeResult(provider, Url.Action("LinkLoginCallback", "Manage"), User.Identity.GetUserId()) (ObjectCreationExpression)
return %9 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :369 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function LinkLoginCallback(), it contains poisonous unsupported syntaxes

// Skipping function Dispose(i1), it contains poisonous unsupported syntaxes

// Skipping function AddErrors(none), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.ManageController.HasPassword$$() -> i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :416 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :418 :23) // Not a variable of known type: UserManager
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :418 :44) // Identifier from another assembly: User
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :418 :44) // User.Identity (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :418 :44) // User.Identity.GetUserId() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :418 :23) // UserManager.FindById(User.Identity.GetUserId()) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :419 :16) // Not a variable of known type: user
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :419 :24) // null (NullLiteralExpression)
%8 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :419 :16) // comparison of unknown type: user != null
cond_br %8, ^1, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :419 :16)

^1: // JumpBlock
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :421 :23) // Not a variable of known type: user
%10 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :421 :23) // user.PasswordHash (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :421 :44) // null (NullLiteralExpression)
%12 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :421 :23) // comparison of unknown type: user.PasswordHash != null
return %12 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :421 :16)

^2: // JumpBlock
%13 = constant 0 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :423 :19) // false
return %13 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :423 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_EwoQ.Controllers.ManageController.HasSign$$() -> i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :426 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :428 :23) // Not a variable of known type: UserManager
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :428 :44) // Identifier from another assembly: User
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :428 :44) // User.Identity (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :428 :44) // User.Identity.GetUserId() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :428 :23) // UserManager.FindById(User.Identity.GetUserId()) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :429 :16) // Not a variable of known type: user
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :429 :24) // null (NullLiteralExpression)
%8 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :429 :16) // comparison of unknown type: user != null
cond_br %8, ^1, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :429 :16)

^1: // JumpBlock
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :431 :23) // Not a variable of known type: user
%10 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :431 :23) // user.SingUrl (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :431 :39) // null (NullLiteralExpression)
%12 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :431 :23) // comparison of unknown type: user.SingUrl != null
return %12 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :431 :16)

^2: // JumpBlock
%13 = constant 0 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :433 :19) // false
return %13 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :433 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_EwoQ.Controllers.ManageController.HasPhoneNumber$$() -> i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :436 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :438 :23) // Not a variable of known type: UserManager
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :438 :44) // Identifier from another assembly: User
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :438 :44) // User.Identity (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :438 :44) // User.Identity.GetUserId() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :438 :23) // UserManager.FindById(User.Identity.GetUserId()) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :439 :16) // Not a variable of known type: user
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :439 :24) // null (NullLiteralExpression)
%8 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :439 :16) // comparison of unknown type: user != null
cond_br %8, ^1, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :439 :16)

^1: // JumpBlock
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :441 :23) // Not a variable of known type: user
%10 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :441 :23) // user.PhoneNumber (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :441 :43) // null (NullLiteralExpression)
%12 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :441 :23) // comparison of unknown type: user.PhoneNumber != null
return %12 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :441 :16)

^2: // JumpBlock
%13 = constant 0 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :443 :19) // false
return %13 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :443 :12)

^3: // ExitBlock
cbde.unreachable

}
