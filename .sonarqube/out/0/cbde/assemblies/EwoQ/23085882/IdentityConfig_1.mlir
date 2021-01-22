func @_EwoQ.EmailService.SendAsync$Microsoft.AspNet.Identity.IdentityMessage$(none) -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :22 :8) {
^entry (%_message : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :22 :30)
cbde.store %_message, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :22 :30)
br ^0

^0: // JumpBlock
// Entity from another assembly: Task
%1 = constant 0 : i32 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :25 :35)
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :25 :19) // Task.FromResult(0) (InvocationExpression)
return %2 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :25 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function configSendGrindAsync(none, none, none), it contains poisonous unsupported syntaxes

func @_EwoQ.SmsService.SendAsync$Microsoft.AspNet.Identity.IdentityMessage$(none) -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :49 :8) {
^entry (%_message : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :49 :30)
cbde.store %_message, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :49 :30)
br ^0

^0: // JumpBlock
// Entity from another assembly: Task
%1 = constant 0 : i32 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :52 :35)
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :52 :19) // Task.FromResult(0) (InvocationExpression)
return %2 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :52 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_EwoQ.ApplicationUserManager.Create$Microsoft.AspNet.Identity.Owin.IdentityFactoryOptions$EwoQ.ApplicationUserManager$.Microsoft.Owin.IOwinContext$(none, none) -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :64 :8) {
^entry (%_options : none, %_context : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :64 :52)
cbde.store %_options, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :64 :52)
%1 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :64 :108)
cbde.store %_context, %1 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :64 :108)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :66 :84) // Not a variable of known type: context
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :66 :84) // context.Get<ApplicationDbContext>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :66 :53) // new UserStore<ApplicationUser>(context.Get<ApplicationDbContext>()) (ObjectCreationExpression)
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :66 :26) // new ApplicationUserManager(new UserStore<ApplicationUser>(context.Get<ApplicationDbContext>())) (ObjectCreationExpression)
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :68 :12) // Not a variable of known type: manager
%8 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :68 :12) // manager.UserValidator (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :68 :71) // Not a variable of known type: manager
%10 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :68 :36) // new UserValidator<ApplicationUser>(manager)              {                  AllowOnlyAlphanumericUserNames = false,                  RequireUniqueEmail = true              } (ObjectCreationExpression)
%11 = constant 0 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :70 :49) // false
%12 = constant 1 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :71 :37) // true
%13 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :75 :12) // Not a variable of known type: manager
%14 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :75 :12) // manager.PasswordValidator (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :75 :40) // new PasswordValidator              {                  RequiredLength = 6,                  RequireNonLetterOrDigit = true,                  RequireDigit = true,                  RequireLowercase = true,                  RequireUppercase = true,              } (ObjectCreationExpression)
%16 = constant 6 : i32 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :77 :33)
%17 = constant 1 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :78 :42) // true
%18 = constant 1 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :79 :31) // true
%19 = constant 1 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :80 :35) // true
%20 = constant 1 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :81 :35) // true
%21 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :85 :12) // Not a variable of known type: manager
%22 = cbde.unknown : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :85 :12) // manager.UserLockoutEnabledByDefault (SimpleMemberAccessExpression)
%23 = constant 1 : i1 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :85 :50) // true
%24 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :86 :12) // Not a variable of known type: manager
%25 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :86 :12) // manager.DefaultAccountLockoutTimeSpan (SimpleMemberAccessExpression)
// Entity from another assembly: TimeSpan
%26 = constant 5 : i32 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :86 :73)
%27 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :86 :52) // TimeSpan.FromMinutes(5) (InvocationExpression)
%28 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :87 :12) // Not a variable of known type: manager
%29 = cbde.unknown : i32 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :87 :12) // manager.MaxFailedAccessAttemptsBeforeLockout (SimpleMemberAccessExpression)
%30 = constant 5 : i32 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :87 :59)
%31 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :91 :12) // Not a variable of known type: manager
%32 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :91 :46) // "Código telefónico" (StringLiteralExpression)
%33 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :91 :67) // new PhoneNumberTokenProvider<ApplicationUser>              {                  MessageFormat = "Su código de seguridad es {0}"              } (ObjectCreationExpression)
%34 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :93 :32) // "Su código de seguridad es {0}" (StringLiteralExpression)
%35 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :91 :12) // manager.RegisterTwoFactorProvider("Código telefónico", new PhoneNumberTokenProvider<ApplicationUser>              {                  MessageFormat = "Su código de seguridad es {0}"              }) (InvocationExpression)
%36 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :95 :12) // Not a variable of known type: manager
%37 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :95 :46) // "Código de correo electrónico" (StringLiteralExpression)
%38 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :95 :78) // new EmailTokenProvider<ApplicationUser>              {                  Subject = "Código de seguridad",                  BodyFormat = "Su código de seguridad es {0}"              } (ObjectCreationExpression)
%39 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :97 :26) // "Código de seguridad" (StringLiteralExpression)
%40 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :98 :29) // "Su código de seguridad es {0}" (StringLiteralExpression)
%41 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :95 :12) // manager.RegisterTwoFactorProvider("Código de correo electrónico", new EmailTokenProvider<ApplicationUser>              {                  Subject = "Código de seguridad",                  BodyFormat = "Su código de seguridad es {0}"              }) (InvocationExpression)
%42 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :100 :12) // Not a variable of known type: manager
%43 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :100 :12) // manager.EmailService (SimpleMemberAccessExpression)
%44 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :100 :35) // new EmailService() (ObjectCreationExpression)
%45 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :101 :12) // Not a variable of known type: manager
%46 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :101 :12) // manager.SmsService (SimpleMemberAccessExpression)
%47 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :101 :33) // new SmsService() (ObjectCreationExpression)
%48 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :102 :41) // Not a variable of known type: options
%49 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :102 :41) // options.DataProtectionProvider (SimpleMemberAccessExpression)
%51 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :103 :16) // Not a variable of known type: dataProtectionProvider
%52 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :103 :42) // null (NullLiteralExpression)
%53 = cbde.unknown : i1  loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :103 :16) // comparison of unknown type: dataProtectionProvider != null
cond_br %53, ^1, ^2 loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :103 :16)

^1: // SimpleBlock
%54 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :105 :16) // Not a variable of known type: manager
%55 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :105 :16) // manager.UserTokenProvider (SimpleMemberAccessExpression)
%56 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :106 :68) // Not a variable of known type: dataProtectionProvider
%57 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :106 :98) // "ASP.NET Identity" (StringLiteralExpression)
%58 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :106 :68) // dataProtectionProvider.Create("ASP.NET Identity") (InvocationExpression)
%59 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :106 :20) // new DataProtectorTokenProvider<ApplicationUser>(dataProtectionProvider.Create("ASP.NET Identity")) (ObjectCreationExpression)
br ^2

^2: // JumpBlock
%60 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :108 :19) // Not a variable of known type: manager
return %60 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :108 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_EwoQ.ApplicationSignInManager.CreateUserIdentityAsync$EwoQ.Models.ApplicationUser$(none) -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :120 :8) {
^entry (%_user : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :120 :69)
cbde.store %_user, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :120 :69)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :122 :19) // Not a variable of known type: user
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :122 :74) // Identifier from another assembly: UserManager
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :122 :50) // (ApplicationUserManager)UserManager (CastExpression)
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :122 :19) // user.GenerateUserIdentityAsync((ApplicationUserManager)UserManager) (InvocationExpression)
return %4 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :122 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_EwoQ.ApplicationSignInManager.Create$Microsoft.AspNet.Identity.Owin.IdentityFactoryOptions$EwoQ.ApplicationSignInManager$.Microsoft.Owin.IOwinContext$(none, none) -> none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :125 :8) {
^entry (%_options : none, %_context : none):
%0 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :125 :54)
cbde.store %_options, %0 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :125 :54)
%1 = cbde.alloca none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :125 :112)
cbde.store %_context, %1 : memref<none> loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :125 :112)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :127 :48) // Not a variable of known type: context
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :127 :48) // context.GetUserManager<ApplicationUserManager>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :127 :98) // Not a variable of known type: context
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :127 :98) // context.Authentication (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :127 :19) // new ApplicationSignInManager(context.GetUserManager<ApplicationUserManager>(), context.Authentication) (ObjectCreationExpression)
return %6 : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\App_Start\\IdentityConfig.cs" :127 :12)

^1: // ExitBlock
cbde.unreachable

}
