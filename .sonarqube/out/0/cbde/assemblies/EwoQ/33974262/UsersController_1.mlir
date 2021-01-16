func @_EwoQ.Controllers.UsersController.Index$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :23 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :25 :24) // "Index" (StringLiteralExpression)
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :25 :19) // View("Index") (InvocationExpression)
return %1 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :25 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function LoadDataAsync(), it contains poisonous unsupported syntaxes

// Skipping function Approve(none), it contains poisonous unsupported syntaxes

func @_EwoQ.Controllers.UsersController.Details$string$(none) -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :110 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :110 :36)
cbde.store %_id, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :110 :36)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :112 :16) // Not a variable of known type: id
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :112 :22) // null (NullLiteralExpression)
%3 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :112 :16) // comparison of unknown type: id == null
cond_br %3, ^1, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :112 :16)

^1: // JumpBlock
// Entity from another assembly: HttpStatusCode
%4 = constant unit loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :114 :48) // HttpStatusCode.BadRequest (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :114 :23) // new HttpStatusCodeResult(HttpStatusCode.BadRequest) (ObjectCreationExpression)
return %5 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :114 :16)

^2: // BinaryBranchBlock
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :116 :38) // Not a variable of known type: db
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :116 :38) // db.AspNetUsers (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :116 :58) // Not a variable of known type: id
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :116 :38) // db.AspNetUsers.Find(id) (InvocationExpression)
%11 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :117 :16) // Not a variable of known type: aspNetUsers
%12 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :117 :31) // null (NullLiteralExpression)
%13 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :117 :16) // comparison of unknown type: aspNetUsers == null
cond_br %13, ^3, ^4 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :117 :16)

^3: // JumpBlock
// Entity from another assembly: HttpNotFound
%14 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :119 :23) // HttpNotFound() (InvocationExpression)
return %14 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :119 :16)

^4: // JumpBlock
// Entity from another assembly: View
%15 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :121 :24) // Not a variable of known type: aspNetUsers
%16 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :121 :19) // View(aspNetUsers) (InvocationExpression)
return %16 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :121 :12)

^5: // ExitBlock
cbde.unreachable

}
func @_EwoQ.Controllers.UsersController.Create$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :125 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :127 :19) // View() (InvocationExpression)
return %0 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :127 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_EwoQ.Controllers.UsersController.Create$EwoQ.Database.AspNetUsers$(none) -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :133 :8) {
^entry (%_aspNetUsers : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :135 :35)
cbde.store %_aspNetUsers, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :135 :35)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :137 :16) // Identifier from another assembly: ModelState
%2 = cbde.unknown : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :137 :16) // ModelState.IsValid (SimpleMemberAccessExpression)
cond_br %2, ^1, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :137 :16)

^1: // JumpBlock
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :139 :16) // Not a variable of known type: db
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :139 :16) // db.AspNetUsers (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :139 :35) // Not a variable of known type: aspNetUsers
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :139 :16) // db.AspNetUsers.Add(aspNetUsers) (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :140 :16) // Not a variable of known type: db
%8 = cbde.unknown : i32 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :140 :16) // db.SaveChanges() (InvocationExpression)
// Entity from another assembly: RedirectToAction
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :141 :40) // "Index" (StringLiteralExpression)
%10 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :141 :23) // RedirectToAction("Index") (InvocationExpression)
return %10 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :141 :16)

^2: // JumpBlock
// Entity from another assembly: View
%11 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :144 :24) // Not a variable of known type: aspNetUsers
%12 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :144 :19) // View(aspNetUsers) (InvocationExpression)
return %12 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :144 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_EwoQ.Controllers.UsersController.Edit$string$(none) -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :148 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :148 :33)
cbde.store %_id, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :148 :33)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :150 :16) // Not a variable of known type: id
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :150 :22) // null (NullLiteralExpression)
%3 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :150 :16) // comparison of unknown type: id == null
cond_br %3, ^1, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :150 :16)

^1: // JumpBlock
// Entity from another assembly: HttpStatusCode
%4 = constant unit loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :152 :48) // HttpStatusCode.BadRequest (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :152 :23) // new HttpStatusCodeResult(HttpStatusCode.BadRequest) (ObjectCreationExpression)
return %5 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :152 :16)

^2: // BinaryBranchBlock
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :154 :38) // Not a variable of known type: db
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :154 :38) // db.AspNetUsers (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :154 :58) // Not a variable of known type: id
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :154 :38) // db.AspNetUsers.Find(id) (InvocationExpression)
%11 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :155 :16) // Not a variable of known type: aspNetUsers
%12 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :155 :31) // null (NullLiteralExpression)
%13 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :155 :16) // comparison of unknown type: aspNetUsers == null
cond_br %13, ^3, ^4 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :155 :16)

^3: // JumpBlock
// Entity from another assembly: HttpNotFound
%14 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :157 :23) // HttpNotFound() (InvocationExpression)
return %14 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :157 :16)

^4: // JumpBlock
// Entity from another assembly: View
%15 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :159 :24) // Not a variable of known type: aspNetUsers
%16 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :159 :19) // View(aspNetUsers) (InvocationExpression)
return %16 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :159 :12)

^5: // ExitBlock
cbde.unreachable

}
func @_EwoQ.Controllers.UsersController.Edit$EwoQ.Database.AspNetUsers$(none) -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :165 :8) {
^entry (%_aspNetUsers : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :167 :33)
cbde.store %_aspNetUsers, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :167 :33)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :169 :16) // Identifier from another assembly: ModelState
%2 = cbde.unknown : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :169 :16) // ModelState.IsValid (SimpleMemberAccessExpression)
cond_br %2, ^1, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :169 :16)

^1: // JumpBlock
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :171 :16) // Not a variable of known type: db
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :171 :25) // Not a variable of known type: aspNetUsers
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :171 :16) // db.Entry(aspNetUsers) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :171 :16) // db.Entry(aspNetUsers).State (SimpleMemberAccessExpression)
// Entity from another assembly: EntityState
%7 = constant unit loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :171 :46) // EntityState.Modified (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :172 :16) // Not a variable of known type: db
%9 = cbde.unknown : i32 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :172 :16) // db.SaveChanges() (InvocationExpression)
// Entity from another assembly: RedirectToAction
%10 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :173 :40) // "Index" (StringLiteralExpression)
%11 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :173 :23) // RedirectToAction("Index") (InvocationExpression)
return %11 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :173 :16)

^2: // JumpBlock
// Entity from another assembly: View
%12 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :175 :24) // Not a variable of known type: aspNetUsers
%13 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :175 :19) // View(aspNetUsers) (InvocationExpression)
return %13 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :175 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_EwoQ.Controllers.UsersController.Delete$string$(none) -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :179 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :179 :35)
cbde.store %_id, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :179 :35)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :181 :16) // Not a variable of known type: id
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :181 :22) // null (NullLiteralExpression)
%3 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :181 :16) // comparison of unknown type: id == null
cond_br %3, ^1, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :181 :16)

^1: // JumpBlock
// Entity from another assembly: HttpStatusCode
%4 = constant unit loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :183 :48) // HttpStatusCode.BadRequest (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :183 :23) // new HttpStatusCodeResult(HttpStatusCode.BadRequest) (ObjectCreationExpression)
return %5 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :183 :16)

^2: // BinaryBranchBlock
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :185 :38) // Not a variable of known type: db
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :185 :38) // db.AspNetUsers (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :185 :58) // Not a variable of known type: id
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :185 :38) // db.AspNetUsers.Find(id) (InvocationExpression)
%11 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :186 :16) // Not a variable of known type: aspNetUsers
%12 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :186 :31) // null (NullLiteralExpression)
%13 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :186 :16) // comparison of unknown type: aspNetUsers == null
cond_br %13, ^3, ^4 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :186 :16)

^3: // JumpBlock
// Entity from another assembly: HttpNotFound
%14 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :188 :23) // HttpNotFound() (InvocationExpression)
return %14 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :188 :16)

^4: // JumpBlock
// Entity from another assembly: View
%15 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :190 :24) // Not a variable of known type: aspNetUsers
%16 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :190 :19) // View(aspNetUsers) (InvocationExpression)
return %16 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :190 :12)

^5: // ExitBlock
cbde.unreachable

}
func @_EwoQ.Controllers.UsersController.DeleteConfirmed$string$(none) -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :194 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :196 :44)
cbde.store %_id, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :196 :44)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :198 :38) // Not a variable of known type: db
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :198 :38) // db.AspNetUsers (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :198 :58) // Not a variable of known type: id
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :198 :38) // db.AspNetUsers.Find(id) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :199 :12) // Not a variable of known type: db
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :199 :12) // db.AspNetUsers (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :199 :34) // Not a variable of known type: aspNetUsers
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :199 :12) // db.AspNetUsers.Remove(aspNetUsers) (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :200 :12) // Not a variable of known type: db
%11 = cbde.unknown : i32 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :200 :12) // db.SaveChanges() (InvocationExpression)
// Entity from another assembly: RedirectToAction
%12 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :201 :36) // "Index" (StringLiteralExpression)
%13 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :201 :19) // RedirectToAction("Index") (InvocationExpression)
return %13 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :201 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_EwoQ.Controllers.UsersController.Dispose$bool$(i1) -> () loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :204 :8) {
^entry (%_disposing : i1):
%0 = cbde.alloca i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :204 :40)
cbde.store %_disposing, %0 : memref<i1> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :204 :40)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.load %0 : memref<i1> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :206 :16)
cond_br %1, ^1, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :206 :16)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :208 :16) // Not a variable of known type: db
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :208 :16) // db.Dispose() (InvocationExpression)
br ^2

^2: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :210 :12) // base (BaseExpression)
%5 = cbde.load %0 : memref<i1> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :210 :25)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Controllers\\UsersController.cs" :210 :12) // base.Dispose(disposing) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
