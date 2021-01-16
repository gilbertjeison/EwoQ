// Skipping function Index(none), it contains poisonous unsupported syntaxes

// Skipping function RemoveLogin(none, none), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.ManageController.AddPhoneNumber$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :105 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :107 :19) // View() (InvocationExpression)
return %0 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :107 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function AddPhoneNumber(none), it contains poisonous unsupported syntaxes

// Skipping function EnableTwoFactorAuthentication(), it contains poisonous unsupported syntaxes

// Skipping function DisableTwoFactorAuthentication(), it contains poisonous unsupported syntaxes

// Skipping function VerifyPhoneNumber(none), it contains poisonous unsupported syntaxes

// Skipping function VerifyPhoneNumber(none), it contains poisonous unsupported syntaxes

// Skipping function RemovePhoneNumber(), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.ManageController.ChangePassword$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :219 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :221 :19) // View() (InvocationExpression)
return %0 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :221 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function ChangePassword(none), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.ManageController.SetPassword$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :250 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :252 :19) // View() (InvocationExpression)
return %0 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :252 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function SetPassword(none), it contains poisonous unsupported syntaxes

// Skipping function ManageLogins(none), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.ManageController.LinkLogin$string$(none) -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :305 :8) {
^entry (%_provider : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :307 :38)
cbde.store %_provider, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :307 :38)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :310 :57) // Not a variable of known type: provider
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :310 :67) // Identifier from another assembly: Url
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :310 :78) // "LinkLoginCallback" (StringLiteralExpression)
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :310 :99) // "Manage" (StringLiteralExpression)
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :310 :67) // Url.Action("LinkLoginCallback", "Manage") (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :310 :110) // Identifier from another assembly: User
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :310 :110) // User.Identity (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :310 :110) // User.Identity.GetUserId() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :310 :19) // new AccountController.ChallengeResult(provider, Url.Action("LinkLoginCallback", "Manage"), User.Identity.GetUserId()) (ObjectCreationExpression)
return %9 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :310 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function LinkLoginCallback(), it contains poisonous unsupported syntaxes

// Skipping function Dispose(i1), it contains poisonous unsupported syntaxes

// Skipping function AddErrors(none), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.ManageController.HasPassword$$() -> i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :357 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :359 :23) // Not a variable of known type: UserManager
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :359 :44) // Identifier from another assembly: User
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :359 :44) // User.Identity (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :359 :44) // User.Identity.GetUserId() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :359 :23) // UserManager.FindById(User.Identity.GetUserId()) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :360 :16) // Not a variable of known type: user
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :360 :24) // null (NullLiteralExpression)
%8 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :360 :16) // comparison of unknown type: user != null
cond_br %8, ^1, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :360 :16)

^1: // JumpBlock
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :362 :23) // Not a variable of known type: user
%10 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :362 :23) // user.PasswordHash (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :362 :44) // null (NullLiteralExpression)
%12 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :362 :23) // comparison of unknown type: user.PasswordHash != null
return %12 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :362 :16)

^2: // JumpBlock
%13 = constant 0 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :364 :19) // false
return %13 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :364 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_EwoQ.Controllers.ManageController.HasSign$$() -> i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :367 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :369 :23) // Not a variable of known type: UserManager
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :369 :44) // Identifier from another assembly: User
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :369 :44) // User.Identity (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :369 :44) // User.Identity.GetUserId() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :369 :23) // UserManager.FindById(User.Identity.GetUserId()) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :370 :16) // Not a variable of known type: user
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :370 :24) // null (NullLiteralExpression)
%8 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :370 :16) // comparison of unknown type: user != null
cond_br %8, ^1, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :370 :16)

^1: // JumpBlock
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :372 :23) // Not a variable of known type: user
%10 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :372 :23) // user.SingUrl (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :372 :39) // null (NullLiteralExpression)
%12 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :372 :23) // comparison of unknown type: user.SingUrl != null
return %12 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :372 :16)

^2: // JumpBlock
%13 = constant 0 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :374 :19) // false
return %13 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :374 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_EwoQ.Controllers.ManageController.HasPhoneNumber$$() -> i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :377 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :379 :23) // Not a variable of known type: UserManager
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :379 :44) // Identifier from another assembly: User
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :379 :44) // User.Identity (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :379 :44) // User.Identity.GetUserId() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :379 :23) // UserManager.FindById(User.Identity.GetUserId()) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :380 :16) // Not a variable of known type: user
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :380 :24) // null (NullLiteralExpression)
%8 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :380 :16) // comparison of unknown type: user != null
cond_br %8, ^1, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :380 :16)

^1: // JumpBlock
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :382 :23) // Not a variable of known type: user
%10 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :382 :23) // user.PhoneNumber (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :382 :43) // null (NullLiteralExpression)
%12 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :382 :23) // comparison of unknown type: user.PhoneNumber != null
return %12 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :382 :16)

^2: // JumpBlock
%13 = constant 0 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :384 :19) // false
return %13 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\ManageController.cs" :384 :12)

^3: // ExitBlock
cbde.unreachable

}
