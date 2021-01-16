// Skipping function Up(), it contains poisonous unsupported syntaxes

func @_EwoQ.Migrations.campos_complementarios_usuarios.Down$$() -> () loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :82 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: DropForeignKey
%0 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :84 :27) // "dbo.AspNetUserRoles" (StringLiteralExpression)
%1 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :84 :50) // "UserId" (StringLiteralExpression)
%2 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :84 :60) // "dbo.AspNetUsers" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :84 :12) // DropForeignKey("dbo.AspNetUserRoles", "UserId", "dbo.AspNetUsers") (InvocationExpression)
// Entity from another assembly: DropForeignKey
%4 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :85 :27) // "dbo.AspNetUserLogins" (StringLiteralExpression)
%5 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :85 :51) // "UserId" (StringLiteralExpression)
%6 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :85 :61) // "dbo.AspNetUsers" (StringLiteralExpression)
%7 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :85 :12) // DropForeignKey("dbo.AspNetUserLogins", "UserId", "dbo.AspNetUsers") (InvocationExpression)
// Entity from another assembly: DropForeignKey
%8 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :86 :27) // "dbo.AspNetUserClaims" (StringLiteralExpression)
%9 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :86 :51) // "UserId" (StringLiteralExpression)
%10 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :86 :61) // "dbo.AspNetUsers" (StringLiteralExpression)
%11 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :86 :12) // DropForeignKey("dbo.AspNetUserClaims", "UserId", "dbo.AspNetUsers") (InvocationExpression)
// Entity from another assembly: DropForeignKey
%12 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :87 :27) // "dbo.AspNetUserRoles" (StringLiteralExpression)
%13 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :87 :50) // "RoleId" (StringLiteralExpression)
%14 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :87 :60) // "dbo.AspNetRoles" (StringLiteralExpression)
%15 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :87 :12) // DropForeignKey("dbo.AspNetUserRoles", "RoleId", "dbo.AspNetRoles") (InvocationExpression)
// Entity from another assembly: DropIndex
%16 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :88 :22) // "dbo.AspNetUserLogins" (StringLiteralExpression)
%17 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :88 :46) // new[] { "UserId" } (ImplicitArrayCreationExpression)
%18 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :88 :54) // "UserId" (StringLiteralExpression)
%19 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :88 :12) // DropIndex("dbo.AspNetUserLogins", new[] { "UserId" }) (InvocationExpression)
// Entity from another assembly: DropIndex
%20 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :89 :22) // "dbo.AspNetUserClaims" (StringLiteralExpression)
%21 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :89 :46) // new[] { "UserId" } (ImplicitArrayCreationExpression)
%22 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :89 :54) // "UserId" (StringLiteralExpression)
%23 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :89 :12) // DropIndex("dbo.AspNetUserClaims", new[] { "UserId" }) (InvocationExpression)
// Entity from another assembly: DropIndex
%24 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :90 :22) // "dbo.AspNetUsers" (StringLiteralExpression)
%25 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :90 :41) // "UserNameIndex" (StringLiteralExpression)
%26 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :90 :12) // DropIndex("dbo.AspNetUsers", "UserNameIndex") (InvocationExpression)
// Entity from another assembly: DropIndex
%27 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :91 :22) // "dbo.AspNetUserRoles" (StringLiteralExpression)
%28 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :91 :45) // new[] { "RoleId" } (ImplicitArrayCreationExpression)
%29 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :91 :53) // "RoleId" (StringLiteralExpression)
%30 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :91 :12) // DropIndex("dbo.AspNetUserRoles", new[] { "RoleId" }) (InvocationExpression)
// Entity from another assembly: DropIndex
%31 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :92 :22) // "dbo.AspNetUserRoles" (StringLiteralExpression)
%32 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :92 :45) // new[] { "UserId" } (ImplicitArrayCreationExpression)
%33 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :92 :53) // "UserId" (StringLiteralExpression)
%34 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :92 :12) // DropIndex("dbo.AspNetUserRoles", new[] { "UserId" }) (InvocationExpression)
// Entity from another assembly: DropIndex
%35 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :93 :22) // "dbo.AspNetRoles" (StringLiteralExpression)
%36 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :93 :41) // "RoleNameIndex" (StringLiteralExpression)
%37 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :93 :12) // DropIndex("dbo.AspNetRoles", "RoleNameIndex") (InvocationExpression)
// Entity from another assembly: DropTable
%38 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :94 :22) // "dbo.AspNetUserLogins" (StringLiteralExpression)
%39 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :94 :12) // DropTable("dbo.AspNetUserLogins") (InvocationExpression)
// Entity from another assembly: DropTable
%40 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :95 :22) // "dbo.AspNetUserClaims" (StringLiteralExpression)
%41 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :95 :12) // DropTable("dbo.AspNetUserClaims") (InvocationExpression)
// Entity from another assembly: DropTable
%42 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :96 :22) // "dbo.AspNetUsers" (StringLiteralExpression)
%43 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :96 :12) // DropTable("dbo.AspNetUsers") (InvocationExpression)
// Entity from another assembly: DropTable
%44 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :97 :22) // "dbo.AspNetUserRoles" (StringLiteralExpression)
%45 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :97 :12) // DropTable("dbo.AspNetUserRoles") (InvocationExpression)
// Entity from another assembly: DropTable
%46 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :98 :22) // "dbo.AspNetRoles" (StringLiteralExpression)
%47 = cbde.unknown : none loc("D:\\Dropbox\\HPC\\Calidad\\EwoQ\\EwoQ\\Migrations\\201808082138562_campos_complementarios_usuarios.cs" :98 :12) // DropTable("dbo.AspNetRoles") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
