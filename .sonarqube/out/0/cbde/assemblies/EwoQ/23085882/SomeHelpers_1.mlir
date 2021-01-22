// Skipping function SendGridAsync(i32, none, none), it contains poisonous unsupported syntaxes

func @_EwoQ.Utils.SomeHelpers.TruncateDecimal$decimal.int$(none, i32) -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :68 :8) {
^entry (%_value : none, %_precision : i32):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :68 :46)
cbde.store %_value, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :68 :46)
%1 = cbde.alloca i32 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :68 :61)
cbde.store %_precision, %1 : memref<i32> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :68 :61)
br ^0

^0: // JumpBlock
// Entity from another assembly: Math
%2 = constant 10 : i32 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :70 :45)
%3 = cbde.load %1 : memref<i32> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :70 :49)
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :70 :36) // Math.Pow(10, precision) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :70 :27) // (decimal)Math.Pow(10, precision) (CastExpression)
// Entity from another assembly: Math
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :71 :40) // Not a variable of known type: step
%8 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :71 :47) // Not a variable of known type: value
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :71 :40) // Binary expression on unsupported types step * value
%10 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :71 :26) // Math.Truncate(step * value) (InvocationExpression)
%12 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :72 :19) // Not a variable of known type: tmp
%13 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :72 :25) // Not a variable of known type: step
%14 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :72 :19) // Binary expression on unsupported types tmp / step
return %14 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :72 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_EwoQ.Utils.SomeHelpers.GetCurrentTime$$() -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :75 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: DateTime
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :77 :34) // DateTime.Now (SimpleMemberAccessExpression)
// Entity from another assembly: TimeZoneInfo
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :78 :77) // Not a variable of known type: serverTime
// Entity from another assembly: TimeZoneInfo
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :78 :89) // TimeZoneInfo.Local (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :78 :89) // TimeZoneInfo.Local.Id (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :78 :112) // "SA Pacific Standard Time" (StringLiteralExpression)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :78 :34) // TimeZoneInfo.ConvertTimeBySystemTimeZoneId(serverTime, TimeZoneInfo.Local.Id, "SA Pacific Standard Time") (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :79 :19) // Not a variable of known type: _localTime
return %8 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Utils\\SomeHelpers.cs" :79 :12)

^1: // ExitBlock
cbde.unreachable

}
