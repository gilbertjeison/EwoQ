—
:D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\App_Start\BundleConfig.cs
	namespace 	
EwoQ
 
{ 
public 

class 
BundleConfig 
{ 
public		 
static		 
void		 
RegisterBundles		 *
(		* +
BundleCollection		+ ;
bundles		< C
)		C D
{

 	
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) ;
); <
.< =
Include= D
(D E
$str 7
)7 8
)8 9
;9 :
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str 4
)4 5
)5 6
;6 7
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str /
)/ 0
)0 1
;1 2
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str .
). /
)/ 0
;0 1
bundles 
. 
Add 
( 
new 
StyleBundle '
(' (
$str( 7
)7 8
.8 9
Include9 @
(@ A
$str /
,/ 0
$str *
)* +
)+ ,
;, -
} 	
} 
} α
:D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\App_Start\FilterConfig.cs
	namespace 	
EwoQ
 
{ 
public 

class 
FilterConfig 
{ 
public 
static 
void !
RegisterGlobalFilters 0
(0 1"
GlobalFilterCollection1 G
filtersH O
)O P
{		 	
filters

 
.

 
Add

 
(

 
new

  
HandleErrorAttribute

 0
(

0 1
)

1 2
)

2 3
;

3 4
} 	
} 
} †K
<D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\App_Start\IdentityConfig.cs
	namespace 	
EwoQ
 
{ 
public 

class 
EmailService 
: #
IIdentityMessageService  7
{ 
public 
Task 
	SendAsync 
( 
IdentityMessage -
message. 5
)5 6
{ 	
return 
Task 
. 

FromResult "
(" #
$num# $
)$ %
;% &
} 	
private 
async 
Task  
configSendGrindAsync /
(/ 0
IdentityMessage0 ?
message@ G
,G H
stringI O
mailP T
,T U
stringV \
nombre] c
)c d
{ 	
var 
apiKey 
=  
ConfigurationManager -
.- .
AppSettings. 9
[9 :
$str: G
]G H
;H I
var   
client   
=   
new   
SendGridClient   +
(  + ,
apiKey  , 2
)  2 3
;  3 4
var!! 
from!! 
=!! 
new!! 
EmailAddress!! '
(!!' (
$str!!( A
,!!A B
$str!!C Y
)!!Y Z
;!!Z [
var"" 
subject"" 
="" 
$str"" 9
;""9 :
var## 
to## 
=## 
new## 
EmailAddress## %
(##% &
mail##& *
,##* +
nombre##, 2
)##2 3
;##3 4
var$$ 
plainTextContent$$  
=$$! "
$str$$# l
;$$l m
var%% 
htmlContent%% 
=%% 
$str%% w
;%%w x
var&& 
msg&& 
=&& 

MailHelper&&  
.&&  !
CreateSingleEmail&&! 2
(&&2 3
from&&3 7
,&&7 8
to&&9 ;
,&&; <
subject&&= D
,&&D E
plainTextContent&&F V
,&&V W
htmlContent&&X c
)&&c d
;&&d e
var'' 
response'' 
='' 
await''  
client''! '
.''' (
SendEmailAsync''( 6
(''6 7
msg''7 :
)'': ;
;''; <
System)) 
.)) 
Diagnostics)) 
.)) 
Debug)) $
.))$ %
	WriteLine))% .
()). /
$str))/ Q
+))Q R
response))R Z
.))Z [
Body))[ _
)))_ `
;))` a
}-- 	
}.. 
public00 

class00 

SmsService00 
:00 #
IIdentityMessageService00 5
{11 
public22 
Task22 
	SendAsync22 
(22 
IdentityMessage22 -
message22. 5
)225 6
{33 	
return55 
Task55 
.55 

FromResult55 "
(55" #
$num55# $
)55$ %
;55% &
}66 	
}77 
public:: 

class:: "
ApplicationUserManager:: '
:::( )
UserManager::* 5
<::5 6
ApplicationUser::6 E
>::E F
{;; 
public<< "
ApplicationUserManager<< %
(<<% &

IUserStore<<& 0
<<<0 1
ApplicationUser<<1 @
><<@ A
store<<B G
)<<G H
:== 
base== 
(== 
store== 
)== 
{>> 	
}?? 	
publicAA 
staticAA "
ApplicationUserManagerAA ,
CreateAA- 3
(AA3 4"
IdentityFactoryOptionsAA4 J
<AAJ K"
ApplicationUserManagerAAK a
>AAa b
optionsAAc j
,AAj k
IOwinContextAAl x
context	AAy €
)
AA€ 
{BB 	
varCC 
managerCC 
=CC 
newCC "
ApplicationUserManagerCC 4
(CC4 5
newCC5 8
	UserStoreCC9 B
<CCB C
ApplicationUserCCC R
>CCR S
(CCS T
contextCCT [
.CC[ \
GetCC\ _
<CC_ ` 
ApplicationDbContextCC` t
>CCt u
(CCu v
)CCv w
)CCw x
)CCx y
;CCy z
managerEE 
.EE 
UserValidatorEE !
=EE" #
newEE$ '
UserValidatorEE( 5
<EE5 6
ApplicationUserEE6 E
>EEE F
(EEF G
managerEEG N
)EEN O
{FF *
AllowOnlyAlphanumericUserNamesGG .
=GG/ 0
falseGG1 6
,GG6 7
RequireUniqueEmailHH "
=HH# $
trueHH% )
}II 
;II 
managerLL 
.LL 
PasswordValidatorLL %
=LL& '
newLL( +
PasswordValidatorLL, =
{MM 
RequiredLengthNN 
=NN  
$numNN! "
,NN" ##
RequireNonLetterOrDigitOO '
=OO( )
trueOO* .
,OO. /
RequireDigitPP 
=PP 
truePP #
,PP# $
RequireLowercaseQQ  
=QQ! "
trueQQ# '
,QQ' (
RequireUppercaseRR  
=RR! "
trueRR# '
,RR' (
}SS 
;SS 
managerVV 
.VV '
UserLockoutEnabledByDefaultVV /
=VV0 1
trueVV2 6
;VV6 7
managerWW 
.WW )
DefaultAccountLockoutTimeSpanWW 1
=WW2 3
TimeSpanWW4 <
.WW< =
FromMinutesWW= H
(WWH I
$numWWI J
)WWJ K
;WWK L
managerXX 
.XX 0
$MaxFailedAccessAttemptsBeforeLockoutXX 8
=XX9 :
$numXX; <
;XX< =
manager\\ 
.\\ %
RegisterTwoFactorProvider\\ -
(\\- .
$str\\. A
,\\A B
new\\C F$
PhoneNumberTokenProvider\\G _
<\\_ `
ApplicationUser\\` o
>\\o p
{]] 
MessageFormat^^ 
=^^ 
$str^^  ?
}__ 
)__ 
;__ 
manager`` 
.`` %
RegisterTwoFactorProvider`` -
(``- .
$str``. L
,``L M
new``N Q
EmailTokenProvider``R d
<``d e
ApplicationUser``e t
>``t u
{aa 
Subjectbb 
=bb 
$strbb /
,bb/ 0

BodyFormatcc 
=cc 
$strcc <
}dd 
)dd 
;dd 
manageree 
.ee 
EmailServiceee  
=ee! "
newee# &
EmailServiceee' 3
(ee3 4
)ee4 5
;ee5 6
managerff 
.ff 

SmsServiceff 
=ff  
newff! $

SmsServiceff% /
(ff/ 0
)ff0 1
;ff1 2
vargg "
dataProtectionProvidergg &
=gg' (
optionsgg) 0
.gg0 1"
DataProtectionProvidergg1 G
;ggG H
ifhh 
(hh "
dataProtectionProviderhh &
!=hh' )
nullhh* .
)hh. /
{ii 
managerjj 
.jj 
UserTokenProviderjj )
=jj* +
newkk &
DataProtectorTokenProviderkk 2
<kk2 3
ApplicationUserkk3 B
>kkB C
(kkC D"
dataProtectionProviderkkD Z
.kkZ [
Createkk[ a
(kka b
$strkkb t
)kkt u
)kku v
;kkv w
}ll 
returnmm 
managermm 
;mm 
}nn 	
}oo 
publicrr 

classrr $
ApplicationSignInManagerrr )
:rr* +
SignInManagerrr, 9
<rr9 :
ApplicationUserrr: I
,rrI J
stringrrK Q
>rrQ R
{ss 
publictt $
ApplicationSignInManagertt '
(tt' ("
ApplicationUserManagertt( >
userManagertt? J
,ttJ K"
IAuthenticationManagerttL b!
authenticationManagerttc x
)ttx y
:uu 
baseuu 
(uu 
userManageruu 
,uu !
authenticationManageruu  5
)uu5 6
{vv 	
}ww 	
publicyy 
overrideyy 
Taskyy 
<yy 
ClaimsIdentityyy +
>yy+ ,#
CreateUserIdentityAsyncyy- D
(yyD E
ApplicationUseryyE T
useryyU Y
)yyY Z
{zz 	
return{{ 
user{{ 
.{{ %
GenerateUserIdentityAsync{{ 1
({{1 2
({{2 3"
ApplicationUserManager{{3 I
){{I J
UserManager{{J U
){{U V
;{{V W
}|| 	
public~~ 
static~~ $
ApplicationSignInManager~~ .
Create~~/ 5
(~~5 6"
IdentityFactoryOptions~~6 L
<~~L M$
ApplicationSignInManager~~M e
>~~e f
options~~g n
,~~n o
IOwinContext~~p |
context	~~} „
)
~~„ …
{ 	
return
€€ 
new
€€ &
ApplicationSignInManager
€€ /
(
€€/ 0
context
€€0 7
.
€€7 8
GetUserManager
€€8 F
<
€€F G$
ApplicationUserManager
€€G ]
>
€€] ^
(
€€^ _
)
€€_ `
,
€€` a
context
€€b i
.
€€i j
Authentication
€€j x
)
€€x y
;
€€y z
}
 	
}
‚‚ 
}ƒƒ Ώ
9D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\App_Start\RouteConfig.cs
	namespace 	
EwoQ
 
{		 
public

 

class

 
RouteConfig

 
{ 
public 
static 
void 
RegisterRoutes )
() *
RouteCollection* 9
routes: @
)@ A
{ 	
routes 
. 
IgnoreRoute 
( 
$str ;
); <
;< =
routes 
. 
MapRoute 
( 
name 
: 
$str 
,  
url 
: 
$str 1
,1 2
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- 6
,6 7
action8 >
=? @
$strA H
,H I
idJ L
=M N
UrlParameterO [
.[ \
Optional\ d
}e f
) 
; 
} 	
} 
} Σ
:D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\App_Start\Startup.Auth.cs
	namespace

 	
EwoQ


 
{ 
public 

partial 
class 
Startup  
{ 
public 
void 
ConfigureAuth !
(! "
IAppBuilder" -
app. 1
)1 2
{ 	
app 
.  
CreatePerOwinContext $
($ % 
ApplicationDbContext% 9
.9 :
Create: @
)@ A
;A B
app 
.  
CreatePerOwinContext $
<$ %"
ApplicationUserManager% ;
>; <
(< ="
ApplicationUserManager= S
.S T
CreateT Z
)Z [
;[ \
app 
.  
CreatePerOwinContext $
<$ %$
ApplicationSignInManager% =
>= >
(> ?$
ApplicationSignInManager? W
.W X
CreateX ^
)^ _
;_ `
app 
. #
UseCookieAuthentication '
(' (
new( +'
CookieAuthenticationOptions, G
{ 
AuthenticationType "
=# $&
DefaultAuthenticationTypes% ?
.? @
ApplicationCookie@ Q
,Q R
	LoginPath 
= 
new 

PathString  *
(* +
$str+ ;
); <
,< =
Provider 
= 
new (
CookieAuthenticationProvider ;
{ 
OnValidateIdentity!! &
=!!' ("
SecurityStampValidator!!) ?
.!!? @
OnValidateIdentity!!@ R
<!!R S"
ApplicationUserManager!!S i
,!!i j
ApplicationUser!!k z
>!!z {
(!!{ |
validateInterval"" (
:""( )
TimeSpan""* 2
.""2 3
FromMinutes""3 >
(""> ?
$num""? A
)""A B
,""B C
regenerateIdentity## *
:##* +
(##, -
manager##- 4
,##4 5
user##6 :
)##: ;
=>##< >
user##? C
.##C D%
GenerateUserIdentityAsync##D ]
(##] ^
manager##^ e
)##e f
)##f g
}$$ 
}%% 
)%% 
;%% 
app&& 
.&& #
UseExternalSignInCookie&& '
(&&' (&
DefaultAuthenticationTypes&&( B
.&&B C
ExternalCookie&&C Q
)&&Q R
;&&R S
app)) 
.)) $
UseTwoFactorSignInCookie)) (
())( )&
DefaultAuthenticationTypes))) C
.))C D
TwoFactorCookie))D S
,))S T
TimeSpan))U ]
.))] ^
FromMinutes))^ i
())i j
$num))j k
)))k l
)))l m
;))m n
app.. 
... -
!UseTwoFactorRememberBrowserCookie.. 1
(..1 2&
DefaultAuthenticationTypes..2 L
...L M*
TwoFactorRememberBrowserCookie..M k
)..k l
;..l m
}BB 	
}CC 
}DD Λ
AD:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Controllers\AccountController.cs
	namespace 	
EwoQ
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
public 

class 
AccountController "
:# $

Controller% /
{ 
private $
ApplicationSignInManager (
_signInManager) 7
;7 8
private "
ApplicationUserManager &
_userManager' 3
;3 4
public 
AccountController  
(  !
)! "
{ 	
} 	
public 
AccountController  
(  !"
ApplicationUserManager! 7
userManager8 C
,C D$
ApplicationSignInManagerE ]
signInManager^ k
)l m
{ 	
UserManager 
= 
userManager %
;% &
SignInManager 
= 
signInManager )
;) *
} 	
public   $
ApplicationSignInManager   '
SignInManager  ( 5
{!! 	
get"" 
{## 
return$$ 
_signInManager$$ %
??$$& (
HttpContext$$) 4
.$$4 5
GetOwinContext$$5 C
($$C D
)$$D E
.$$E F
Get$$F I
<$$I J$
ApplicationSignInManager$$J b
>$$b c
($$c d
)$$d e
;$$e f
}%% 
private&& 
set&& 
{'' 
_signInManager(( 
=((  
value((! &
;((& '
})) 
}** 	
public,, "
ApplicationUserManager,, %
UserManager,,& 1
{-- 	
get.. 
{// 
return00 
_userManager00 #
??00$ &
HttpContext00' 2
.002 3
GetOwinContext003 A
(00A B
)00B C
.00C D
GetUserManager00D R
<00R S"
ApplicationUserManager00S i
>00i j
(00j k
)00k l
;00l m
}11 
private22 
set22 
{33 
_userManager44 
=44 
value44 $
;44$ %
}55 
}66 	
[:: 	
AllowAnonymous::	 
]:: 
public;; 
ActionResult;; 
Login;; !
(;;! "
string;;" (
	returnUrl;;) 2
);;2 3
{<< 	
ViewBag== 
.== 
	ReturnUrl== 
=== 
	returnUrl==  )
;==) *
returnEE 
ViewEE 
(EE 
)EE 
;EE 
}FF 	
[JJ 	
HttpPostJJ	 
]JJ 
[KK 	
AllowAnonymousKK	 
]KK 
[LL 	$
ValidateAntiForgeryTokenLL	 !
]LL! "
publicMM 
asyncMM 
TaskMM 
<MM 
ActionResultMM &
>MM& '
LoginMM( -
(MM- .
LoginViewModelMM. <
modelMM= B
,MMB C
stringMMD J
	returnUrlMMK T
)MMT U
{NN 	
ifOO 
(OO 
!OO 

ModelStateOO 
.OO 
IsValidOO #
)OO# $
{PP 
returnQQ 
ViewQQ 
(QQ 
modelQQ !
)QQ! "
;QQ" #
}RR 
varVV 
resultVV 
=VV 
awaitVV 
SignInManagerVV ,
.VV, -
PasswordSignInAsyncVV- @
(VV@ A
modelVVA F
.VVF G
EmailVVG L
,VVL M
modelVVN S
.VVS T
PasswordVVT \
,VV\ ]
modelVV^ c
.VVc d

RememberMeVVd n
,VVn o
shouldLockoutVVp }
:VV} ~
false	VV „
)
VV„ …
;
VV… †
switchXX 
(XX 
resultXX 
)XX 
{YY 
caseZZ 
SignInStatusZZ !
.ZZ! "
SuccessZZ" )
:ZZ) *
var]] 
user]] 
=]] 
DaoUsuarios]] *
.]]* +
DaoInstance]]+ 6
.]]6 7
GetUserByMail]]7 D
(]]D E
model]]E J
.]]J K
Email]]K P
)]]P Q
;]]Q R
if^^ 
(^^ 
user^^ 
!=^^ 
null^^  $
)^^$ %
{__ 
if`` 
(`` 
user``  
.``  !
EmailConfirmed``! /
)``/ 0
{aa 
returnbb "
RedirectToLocalbb# 2
(bb2 3
	returnUrlbb3 <
,bb< =
userbb= A
.bbA B
IdRolbbB G
)bbG H
;bbH I
}cc 
elsedd 
{ee !
AuthenticationManagerff 1
.ff1 2
SignOutff2 9
(ff9 :&
DefaultAuthenticationTypesff: T
.ffT U
ApplicationCookieffU f
)fff g
;ffg h

ModelStategg &
.gg& '
AddModelErrorgg' 4
(gg4 5
$strgg5 7
,gg7 8
$str	gg9 
)
gg  
;
gg  ΅
returnhh "
Viewhh# '
(hh' (
modelhh( -
)hh- .
;hh. /
}ii 
}jj 
elsekk 
{ll 
returnmm 
Viewmm #
(mm# $
modelmm$ )
)mm) *
;mm* +
}nn 
caseoo 
SignInStatusoo !
.oo! "
	LockedOutoo" +
:oo+ ,
returnpp 
Viewpp 
(pp  
$strpp  )
)pp) *
;pp* +
caseqq 
SignInStatusqq !
.qq! " 
RequiresVerificationqq" 6
:qq6 7
returnrr 
RedirectToActionrr +
(rr+ ,
$strrr, 6
,rr6 7
newrr8 ;
{rr< =
	ReturnUrlrr> G
=rrH I
	returnUrlrrJ S
,rrS T

RememberMerrU _
=rr` a
modelrrb g
.rrg h

RememberMerrh r
}rrs t
)rrt u
;rru v
casess 
SignInStatusss !
.ss! "
Failuress" )
:ss) *
defaulttt 
:tt 

ModelStateuu 
.uu 
AddModelErroruu ,
(uu, -
$struu- /
,uu/ 0
$struu1 Y
)uuY Z
;uuZ [
returnvv 
Viewvv 
(vv  
modelvv  %
)vv% &
;vv& '
}ww 
}xx 	
[|| 	
AllowAnonymous||	 
]|| 
public}} 
async}} 
Task}} 
<}} 
ActionResult}} &
>}}& '

VerifyCode}}( 2
(}}2 3
string}}3 9
provider}}: B
,}}B C
string}}D J
	returnUrl}}K T
,}}T U
bool}}V Z

rememberMe}}[ e
)}}e f
{~~ 	
if
€€ 
(
€€ 
!
€€ 
await
€€ 
SignInManager
€€ $
.
€€$ %"
HasBeenVerifiedAsync
€€% 9
(
€€9 :
)
€€: ;
)
€€; <
{
 
return
‚‚ 
View
‚‚ 
(
‚‚ 
$str
‚‚ #
)
‚‚# $
;
‚‚$ %
}
ƒƒ 
return
„„ 
View
„„ 
(
„„ 
new
„„ !
VerifyCodeViewModel
„„ /
{
„„0 1
Provider
„„2 :
=
„„; <
provider
„„= E
,
„„E F
	ReturnUrl
„„G P
=
„„Q R
	returnUrl
„„S \
,
„„\ ]

RememberMe
„„^ h
=
„„i j

rememberMe
„„k u
}
„„v w
)
„„w x
;
„„x y
}
…… 	
[
‰‰ 	
HttpPost
‰‰	 
]
‰‰ 
[
 	
AllowAnonymous
	 
]
 
[
‹‹ 	&
ValidateAntiForgeryToken
‹‹	 !
]
‹‹! "
public
 
async
 
Task
 
<
 
ActionResult
 &
>
& '

VerifyCode
( 2
(
2 3!
VerifyCodeViewModel
3 F
model
G L
)
L M
{
 	
if
 
(
 
!
 

ModelState
 
.
 
IsValid
 #
)
# $
{
 
return
 
View
 
(
 
model
 !
)
! "
;
" #
}
‘‘ 
var
—— 
result
—— 
=
—— 
await
—— 
SignInManager
—— ,
.
——, -"
TwoFactorSignInAsync
——- A
(
——A B
model
——B G
.
——G H
Provider
——H P
,
——P Q
model
——R W
.
——W X
Code
——X \
,
——\ ]
isPersistent
——^ j
:
——j k
model
——m r
.
——r s

RememberMe
——s }
,
——} ~
rememberBrowser—— 
:—— 
model—— •
.——• –
RememberBrowser——– ¥
)——¥ ¦
;——¦ §
switch
 
(
 
result
 
)
 
{
™™ 
case
 
SignInStatus
 !
.
! "
Success
" )
:
) *
return
›› 
RedirectToLocal
›› *
(
››* +
model
››+ 0
.
››0 1
	ReturnUrl
››1 :
,
››: ;
$str
››; A
)
››A B
;
››B C
case
 
SignInStatus
 !
.
! "
	LockedOut
" +
:
+ ,
return
 
View
 
(
  
$str
  )
)
) *
;
* +
case
 
SignInStatus
 !
.
! "
Failure
" )
:
) *
default
 
:
 

ModelState
   
.
   
AddModelError
   ,
(
  , -
$str
  - /
,
  / 0
$str
  1 D
)
  D E
;
  E F
return
΅΅ 
View
΅΅ 
(
΅΅  
model
΅΅  %
)
΅΅% &
;
΅΅& '
}
ΆΆ 
}
££ 	
[
§§ 	
AllowAnonymous
§§	 
]
§§ 
public
¨¨ 
ActionResult
¨¨ 
Register
¨¨ $
(
¨¨$ %
)
¨¨% &
{
©© 	
var
ªª 
	viewModel
ªª 
=
ªª 
new
ªª 
RegisterViewModel
ªª  1
(
ªª1 2
)
ªª2 3
;
ªª3 4
	viewModel
«« 
.
«« 
RoleList
«« 
=
««  
new
««! $
List
««% )
<
««) *
SelectListItem
««* 8
>
««8 9
(
««9 :
)
««: ;
;
««; <
	viewModel
­­ 
.
­­ 
RoleList
­­ 
=
­­  
GetRoles
­­! )
(
­­) *
)
­­* +
;
­­+ ,
return
―― 
View
―― 
(
―― 
	viewModel
―― !
)
――! "
;
――" #
}
°° 	
public
²² 
List
²² 
<
²² 
SelectListItem
²² "
>
²²" #
GetRoles
²²$ ,
(
²², -
)
²²- .
{
³³ 	
using
΄΄ 
(
΄΄ "
ApplicationDbContext
΄΄ '
db
΄΄( *
=
΄΄+ ,
new
΄΄- 0"
ApplicationDbContext
΄΄1 E
(
΄΄E F
)
΄΄F G
)
΄΄G H
{
µµ 
var
¶¶ 
RoleMan
¶¶ 
=
¶¶ 
new
¶¶ !
RoleManager
¶¶" -
<
¶¶- .
IdentityRole
¶¶. :
>
¶¶: ;
(
¶¶; <
new
¶¶< ?
	RoleStore
¶¶@ I
<
¶¶I J
IdentityRole
¶¶J V
>
¶¶V W
(
¶¶W X
db
¶¶X Z
)
¶¶Z [
)
¶¶[ \
;
¶¶\ ]
var
ΈΈ 
roles
ΈΈ 
=
ΈΈ 
RoleMan
ΈΈ #
.
ΈΈ# $
Roles
ΈΈ$ )
.
ΈΈ) *
Where
ΈΈ* /
(
ΈΈ/ 0
x
ΈΈ0 1
=>
ΈΈ2 4
!
ΈΈ5 6
x
ΈΈ6 7
.
ΈΈ7 8
Name
ΈΈ8 <
.
ΈΈ< =
Equals
ΈΈ= C
(
ΈΈC D
$str
ΈΈD K
)
ΈΈK L
)
ΈΈL M
.
ΈΈM N
ToList
ΈΈN T
(
ΈΈT U
)
ΈΈU V
;
ΈΈV W
var
ΊΊ 
RoleList
ΊΊ 
=
ΊΊ 
new
ΊΊ "
List
ΊΊ# '
<
ΊΊ' (
SelectListItem
ΊΊ( 6
>
ΊΊ6 7
(
ΊΊ7 8
)
ΊΊ8 9
;
ΊΊ9 :
RoleList
ΌΌ 
.
ΌΌ 
Add
ΌΌ 
(
ΌΌ 
new
ΌΌ  
SelectListItem
ΌΌ! /
(
ΌΌ/ 0
)
ΌΌ0 1
{
ΌΌ2 3
Text
ΌΌ4 8
=
ΌΌ9 :
$str
ΌΌ; Q
,
ΌΌQ R
Value
ΌΌS X
=
ΌΌY Z
string
ΌΌ[ a
.
ΌΌa b
Empty
ΌΌb g
}
ΌΌh i
)
ΌΌi j
;
ΌΌj k
foreach
ΎΎ 
(
ΎΎ 
var
ΎΎ 
item
ΎΎ !
in
ΎΎ" $
roles
ΎΎ% *
)
ΎΎ* +
{
ΏΏ 
RoleList
ΐΐ 
.
ΐΐ 
Add
ΐΐ  
(
ΐΐ  !
new
ΐΐ! $
SelectListItem
ΐΐ% 3
(
ΐΐ3 4
)
ΐΐ4 5
{
ΐΐ6 7
Text
ΐΐ8 <
=
ΐΐ= >
item
ΐΐ? C
.
ΐΐC D
Name
ΐΐD H
,
ΐΐH I
Value
ΐΐJ O
=
ΐΐP Q
item
ΐΐR V
.
ΐΐV W
Id
ΐΐW Y
}
ΐΐZ [
)
ΐΐ[ \
;
ΐΐ\ ]
}
ΑΑ 
return
ΓΓ 
RoleList
ΓΓ 
;
ΓΓ  
}
ΔΔ 
}
ΕΕ 	
[
ΙΙ 	
HttpPost
ΙΙ	 
]
ΙΙ 
[
ΚΚ 	
AllowAnonymous
ΚΚ	 
]
ΚΚ 
[
ΛΛ 	&
ValidateAntiForgeryToken
ΛΛ	 !
]
ΛΛ! "
public
ΜΜ 
async
ΜΜ 
Task
ΜΜ 
<
ΜΜ 
ActionResult
ΜΜ &
>
ΜΜ& '
Register
ΜΜ( 0
(
ΜΜ0 1
RegisterViewModel
ΜΜ1 B
model
ΜΜC H
)
ΜΜH I
{
ΝΝ 	
if
ΞΞ 
(
ΞΞ 

ModelState
ΞΞ 
.
ΞΞ 
IsValid
ΞΞ "
)
ΞΞ" #
{
ΟΟ 
var
ÒÒ 
user
ÒÒ 
=
ÒÒ 
new
ÒÒ 
ApplicationUser
ÒÒ .
{
ΣΣ 
UserName
ΤΤ 
=
ΤΤ 
model
ΤΤ $
.
ΤΤ$ %
Email
ΤΤ% *
,
ΤΤ* +
Email
ΥΥ 
=
ΥΥ 
model
ΥΥ !
.
ΥΥ! "
Email
ΥΥ" '
,
ΥΥ' (
Nombres
ΦΦ 
=
ΦΦ 
model
ΦΦ #
.
ΦΦ# $
Nombres
ΦΦ$ +
,
ΦΦ+ ,
	Apellidos
ΧΧ 
=
ΧΧ 
model
ΧΧ  %
.
ΧΧ% &
	Apellidos
ΧΧ& /
,
ΧΧ/ 0
IdRol
ΨΨ 
=
ΨΨ 
model
ΨΨ !
.
ΨΨ! "
Role
ΨΨ" &
,
ΨΨ& '

Registrado
ΩΩ 
=
ΩΩ  
DateTime
ΩΩ! )
.
ΩΩ) *
Now
ΩΩ* -
}
ΪΪ 
;
ΪΪ 
var
άά 
result
άά 
=
άά  
await
άά! &
UserManager
άά' 2
.
άά2 3
CreateAsync
άά3 >
(
άά> ?
user
άά? C
,
άάC D
model
άάE J
.
άάJ K
Password
άάK S
)
άάS T
;
άάT U
if
ήή 
(
ήή 
result
ήή 
.
ήή 
	Succeeded
ήή (
)
ήή( )
{
ίί 
await
ΰΰ 
SignInManager
ΰΰ +
.
ΰΰ+ ,
SignInAsync
ΰΰ, 7
(
ΰΰ7 8
user
ΰΰ8 <
,
ΰΰ< =
isPersistent
ΰΰ> J
:
ΰΰJ K
false
ΰΰL Q
,
ΰΰQ R
rememberBrowser
ΰΰS b
:
ΰΰb c
false
ΰΰd i
)
ΰΰi j
;
ΰΰj k
await
μμ 
Utils
μμ $
.
μμ$ %
SomeHelpers
μμ% 0
.
μμ0 1
SendGridAsync
μμ1 >
(
μμ> ?
$num
μμ? @
,
μμ@ A
model
μμA F
.
μμF G
Email
μμG L
,
μμL M
model
μμM R
.
μμR S
Nombres
μμS Z
+
μμZ [
$str
μμ[ ^
+
μμ^ _
model
μμ_ d
.
μμd e
	Apellidos
μμe n
)
μμn o
;
μμo p
return
ξξ 
RedirectToAction
ξξ /
(
ξξ/ 0
$str
ξξ0 @
,
ξξ@ A
$str
ξξB K
)
ξξK L
;
ξξL M
}
οο 
	AddErrors
ρρ 
(
ρρ 
result
ρρ $
)
ρρ$ %
;
ρρ% &
}
ύύ 
model
€€ 
.
€€ 
RoleList
€€ 
=
€€ 
GetRoles
€€ %
(
€€% &
)
€€& '
;
€€' (
return
 
View
 
(
 
model
 
)
 
;
 
}
‚‚ 	
[
†† 	
AllowAnonymous
††	 
]
†† 
public
‡‡ 
async
‡‡ 
Task
‡‡ 
<
‡‡ 
ActionResult
‡‡ &
>
‡‡& '
ConfirmEmail
‡‡( 4
(
‡‡4 5
string
‡‡5 ;
userId
‡‡< B
,
‡‡B C
string
‡‡D J
code
‡‡K O
)
‡‡O P
{
 	
if
‰‰ 
(
‰‰ 
userId
‰‰ 
==
‰‰ 
null
‰‰ 
||
‰‰ !
code
‰‰" &
==
‰‰' )
null
‰‰* .
)
‰‰. /
{
 
return
‹‹ 
View
‹‹ 
(
‹‹ 
$str
‹‹ #
)
‹‹# $
;
‹‹$ %
}
 
var
 
result
 
=
 
await
 
UserManager
 *
.
* +
ConfirmEmailAsync
+ <
(
< =
userId
= C
,
C D
code
E I
)
I J
;
J K
return
 
View
 
(
 
result
 
.
 
	Succeeded
 (
?
) *
$str
+ 9
:
: ;
$str
< C
)
C D
;
D E
}
 	
[
’’ 	
AllowAnonymous
’’	 
]
’’ 
public
““ 
ActionResult
““ 
AccountCreated
““ *
(
““* +
)
““+ ,
{
”” 	
return
•• 
View
•• 
(
•• 
)
•• 
;
•• 
}
–– 	
[
›› 	
AllowAnonymous
››	 
]
›› 
public
 
ActionResult
 
ForgotPassword
 *
(
* +
)
+ ,
{
 	
return
 
View
 
(
 
)
 
;
 
}
 	
[
££ 	
HttpPost
££	 
]
££ 
[
¤¤ 	
AllowAnonymous
¤¤	 
]
¤¤ 
[
¥¥ 	&
ValidateAntiForgeryToken
¥¥	 !
]
¥¥! "
public
¦¦ 
async
¦¦ 
Task
¦¦ 
<
¦¦ 
ActionResult
¦¦ &
>
¦¦& '
ForgotPassword
¦¦( 6
(
¦¦6 7%
ForgotPasswordViewModel
¦¦7 N
model
¦¦O T
)
¦¦T U
{
§§ 	
if
¨¨ 
(
¨¨ 

ModelState
¨¨ 
.
¨¨ 
IsValid
¨¨ "
)
¨¨" #
{
©© 
var
ªª 
user
ªª 
=
ªª 
await
ªª  
UserManager
ªª! ,
.
ªª, -
FindByNameAsync
ªª- <
(
ªª< =
model
ªª= B
.
ªªB C
Email
ªªC H
)
ªªH I
;
ªªI J
if
«« 
(
«« 
user
«« 
==
«« 
null
««  
||
««! #
!
««$ %
(
««% &
await
««& +
UserManager
««, 7
.
««7 8#
IsEmailConfirmedAsync
««8 M
(
««M N
user
««N R
.
««R S
Id
««S U
)
««U V
)
««V W
)
««W X
{
¬¬ 
return
®® 
View
®® 
(
®®  
$str
®®  <
)
®®< =
;
®®= >
}
―― 
}
·· 
return
ΊΊ 
View
ΊΊ 
(
ΊΊ 
model
ΊΊ 
)
ΊΊ 
;
ΊΊ 
}
»» 	
[
ΏΏ 	
AllowAnonymous
ΏΏ	 
]
ΏΏ 
public
ΐΐ 
ActionResult
ΐΐ (
ForgotPasswordConfirmation
ΐΐ 6
(
ΐΐ6 7
)
ΐΐ7 8
{
ΑΑ 	
return
ΒΒ 
View
ΒΒ 
(
ΒΒ 
)
ΒΒ 
;
ΒΒ 
}
ΓΓ 	
[
ΗΗ 	
AllowAnonymous
ΗΗ	 
]
ΗΗ 
public
ΘΘ 
ActionResult
ΘΘ 
ResetPassword
ΘΘ )
(
ΘΘ) *
string
ΘΘ* 0
code
ΘΘ1 5
)
ΘΘ5 6
{
ΙΙ 	
return
ΚΚ 
code
ΚΚ 
==
ΚΚ 
null
ΚΚ 
?
ΚΚ  !
View
ΚΚ" &
(
ΚΚ& '
$str
ΚΚ' .
)
ΚΚ. /
:
ΚΚ0 1
View
ΚΚ2 6
(
ΚΚ6 7
)
ΚΚ7 8
;
ΚΚ8 9
}
ΛΛ 	
[
ΟΟ 	
HttpPost
ΟΟ	 
]
ΟΟ 
[
ΠΠ 	
AllowAnonymous
ΠΠ	 
]
ΠΠ 
[
ΡΡ 	&
ValidateAntiForgeryToken
ΡΡ	 !
]
ΡΡ! "
public
ÒÒ 
async
ÒÒ 
Task
ÒÒ 
<
ÒÒ 
ActionResult
ÒÒ &
>
ÒÒ& '
ResetPassword
ÒÒ( 5
(
ÒÒ5 6$
ResetPasswordViewModel
ÒÒ6 L
model
ÒÒM R
)
ÒÒR S
{
ΣΣ 	
if
ΤΤ 
(
ΤΤ 
!
ΤΤ 

ModelState
ΤΤ 
.
ΤΤ 
IsValid
ΤΤ #
)
ΤΤ# $
{
ΥΥ 
return
ΦΦ 
View
ΦΦ 
(
ΦΦ 
model
ΦΦ !
)
ΦΦ! "
;
ΦΦ" #
}
ΧΧ 
var
ΨΨ 
user
ΨΨ 
=
ΨΨ 
await
ΨΨ 
UserManager
ΨΨ (
.
ΨΨ( )
FindByNameAsync
ΨΨ) 8
(
ΨΨ8 9
model
ΨΨ9 >
.
ΨΨ> ?
Email
ΨΨ? D
)
ΨΨD E
;
ΨΨE F
if
ΩΩ 
(
ΩΩ 
user
ΩΩ 
==
ΩΩ 
null
ΩΩ 
)
ΩΩ 
{
ΪΪ 
return
άά 
RedirectToAction
άά '
(
άά' (
$str
άά( C
,
άάC D
$str
άάE N
)
άάN O
;
άάO P
}
έέ 
var
ήή 
result
ήή 
=
ήή 
await
ήή 
UserManager
ήή *
.
ήή* + 
ResetPasswordAsync
ήή+ =
(
ήή= >
user
ήή> B
.
ήήB C
Id
ήήC E
,
ήήE F
model
ήήG L
.
ήήL M
Code
ήήM Q
,
ήήQ R
model
ήήS X
.
ήήX Y
Password
ήήY a
)
ήήa b
;
ήήb c
if
ίί 
(
ίί 
result
ίί 
.
ίί 
	Succeeded
ίί  
)
ίί  !
{
ΰΰ 
return
αα 
RedirectToAction
αα '
(
αα' (
$str
αα( C
,
ααC D
$str
ααE N
)
ααN O
;
ααO P
}
ββ 
	AddErrors
γγ 
(
γγ 
result
γγ 
)
γγ 
;
γγ 
return
δδ 
View
δδ 
(
δδ 
)
δδ 
;
δδ 
}
εε 	
[
ιι 	
AllowAnonymous
ιι	 
]
ιι 
public
κκ 
ActionResult
κκ '
ResetPasswordConfirmation
κκ 5
(
κκ5 6
)
κκ6 7
{
λλ 	
return
μμ 
View
μμ 
(
μμ 
)
μμ 
;
μμ 
}
νν 	
[
ρρ 	
HttpPost
ρρ	 
]
ρρ 
[
ςς 	
AllowAnonymous
ςς	 
]
ςς 
[
σσ 	&
ValidateAntiForgeryToken
σσ	 !
]
σσ! "
public
ττ 
ActionResult
ττ 
ExternalLogin
ττ )
(
ττ) *
string
ττ* 0
provider
ττ1 9
,
ττ9 :
string
ττ; A
	returnUrl
ττB K
)
ττK L
{
υυ 	
return
χχ 
new
χχ 
ChallengeResult
χχ &
(
χχ& '
provider
χχ' /
,
χχ/ 0
Url
χχ1 4
.
χχ4 5
Action
χχ5 ;
(
χχ; <
$str
χχ< S
,
χχS T
$str
χχU ^
,
χχ^ _
new
χχ` c
{
χχd e
	ReturnUrl
χχf o
=
χχp q
	returnUrl
χχr {
}
χχ| }
)
χχ} ~
)
χχ~ 
;χχ €
}
ψψ 	
[
όό 	
AllowAnonymous
όό	 
]
όό 
public
ύύ 
async
ύύ 
Task
ύύ 
<
ύύ 
ActionResult
ύύ &
>
ύύ& '
SendCode
ύύ( 0
(
ύύ0 1
string
ύύ1 7
	returnUrl
ύύ8 A
,
ύύA B
bool
ύύC G

rememberMe
ύύH R
)
ύύR S
{
ώώ 	
var
ÿÿ 
userId
ÿÿ 
=
ÿÿ 
await
ÿÿ 
SignInManager
ÿÿ ,
.
ÿÿ, -$
GetVerifiedUserIdAsync
ÿÿ- C
(
ÿÿC D
)
ÿÿD E
;
ÿÿE F
if
€€ 
(
€€ 
userId
€€ 
==
€€ 
null
€€ 
)
€€ 
{
 
return
‚‚ 
View
‚‚ 
(
‚‚ 
$str
‚‚ #
)
‚‚# $
;
‚‚$ %
}
ƒƒ 
var
„„ 
userFactors
„„ 
=
„„ 
await
„„ #
UserManager
„„$ /
.
„„/ 0-
GetValidTwoFactorProvidersAsync
„„0 O
(
„„O P
userId
„„P V
)
„„V W
;
„„W X
var
…… 
factorOptions
…… 
=
…… 
userFactors
……  +
.
……+ ,
Select
……, 2
(
……2 3
purpose
……3 :
=>
……; =
new
……> A
SelectListItem
……B P
{
……Q R
Text
……S W
=
……X Y
purpose
……Z a
,
……a b
Value
……c h
=
……i j
purpose
……k r
}
……s t
)
……t u
.
……u v
ToList
……v |
(
……| }
)
……} ~
;
……~ 
return
†† 
View
†† 
(
†† 
new
†† 
SendCodeViewModel
†† -
{
††. /
	Providers
††0 9
=
††: ;
factorOptions
††< I
,
††I J
	ReturnUrl
††K T
=
††U V
	returnUrl
††W `
,
††` a

RememberMe
††b l
=
††m n

rememberMe
††o y
}
††z {
)
††{ |
;
††| }
}
‡‡ 	
[
‹‹ 	
HttpPost
‹‹	 
]
‹‹ 
[
 	
AllowAnonymous
	 
]
 
[
 	&
ValidateAntiForgeryToken
	 !
]
! "
public
 
async
 
Task
 
<
 
ActionResult
 &
>
& '
SendCode
( 0
(
0 1
SendCodeViewModel
1 B
model
C H
)
H I
{
 	
if
 
(
 
!
 

ModelState
 
.
 
IsValid
 #
)
# $
{
‘‘ 
return
’’ 
View
’’ 
(
’’ 
)
’’ 
;
’’ 
}
““ 
if
–– 
(
–– 
!
–– 
await
–– 
SignInManager
–– $
.
––$ %$
SendTwoFactorCodeAsync
––% ;
(
––; <
model
––< A
.
––A B
SelectedProvider
––B R
)
––R S
)
––S T
{
—— 
return
 
View
 
(
 
$str
 #
)
# $
;
$ %
}
™™ 
return
 
RedirectToAction
 #
(
# $
$str
$ 0
,
0 1
new
2 5
{
6 7
Provider
8 @
=
A B
model
C H
.
H I
SelectedProvider
I Y
,
Y Z
	ReturnUrl
[ d
=
e f
model
g l
.
l m
	ReturnUrl
m v
,
v w

RememberMex ‚
=ƒ „
model… 
. ‹

RememberMe‹ •
}– —
)— 
; ™
}
›› 	
[
 	
AllowAnonymous
	 
]
 
public
   
async
   
Task
   
<
   
ActionResult
   &
>
  & '#
ExternalLoginCallback
  ( =
(
  = >
string
  > D
	returnUrl
  E N
)
  N O
{
΅΅ 	
var
ΆΆ 
	loginInfo
ΆΆ 
=
ΆΆ 
await
ΆΆ !#
AuthenticationManager
ΆΆ" 7
.
ΆΆ7 8'
GetExternalLoginInfoAsync
ΆΆ8 Q
(
ΆΆQ R
)
ΆΆR S
;
ΆΆS T
if
££ 
(
££ 
	loginInfo
££ 
==
££ 
null
££ !
)
££! "
{
¤¤ 
return
¥¥ 
RedirectToAction
¥¥ '
(
¥¥' (
$str
¥¥( /
)
¥¥/ 0
;
¥¥0 1
}
¦¦ 
var
©© 
result
©© 
=
©© 
await
©© 
SignInManager
©© ,
.
©©, -!
ExternalSignInAsync
©©- @
(
©©@ A
	loginInfo
©©A J
,
©©J K
isPersistent
©©L X
:
©©X Y
false
©©Z _
)
©©_ `
;
©©` a
switch
ªª 
(
ªª 
result
ªª 
)
ªª 
{
«« 
case
¬¬ 
SignInStatus
¬¬ !
.
¬¬! "
Success
¬¬" )
:
¬¬) *
return
­­ 
RedirectToLocal
­­ *
(
­­* +
	returnUrl
­­+ 4
,
­­4 5
$str
­­5 7
)
­­7 8
;
­­8 9
case
®® 
SignInStatus
®® !
.
®®! "
	LockedOut
®®" +
:
®®+ ,
return
―― 
View
―― 
(
――  
$str
――  )
)
――) *
;
――* +
case
°° 
SignInStatus
°° !
.
°°! ""
RequiresVerification
°°" 6
:
°°6 7
return
±± 
RedirectToAction
±± +
(
±±+ ,
$str
±±, 6
,
±±6 7
new
±±8 ;
{
±±< =
	ReturnUrl
±±> G
=
±±H I
	returnUrl
±±J S
,
±±S T

RememberMe
±±U _
=
±±` a
false
±±b g
}
±±h i
)
±±i j
;
±±j k
case
²² 
SignInStatus
²² !
.
²²! "
Failure
²²" )
:
²²) *
default
³³ 
:
³³ 
ViewBag
µµ 
.
µµ 
	ReturnUrl
µµ %
=
µµ& '
	returnUrl
µµ( 1
;
µµ1 2
ViewBag
¶¶ 
.
¶¶ 
LoginProvider
¶¶ )
=
¶¶* +
	loginInfo
¶¶, 5
.
¶¶5 6
Login
¶¶6 ;
.
¶¶; <
LoginProvider
¶¶< I
;
¶¶I J
return
·· 
View
·· 
(
··  
$str
··  ;
,
··; <
new
··= @0
"ExternalLoginConfirmationViewModel
··A c
{
··d e
Email
··f k
=
··l m
	loginInfo
··n w
.
··w x
Email
··x }
}
··~ 
)·· €
;··€ 
}
ΈΈ 
}
ΉΉ 	
[
½½ 	
HttpPost
½½	 
]
½½ 
[
ΎΎ 	
AllowAnonymous
ΎΎ	 
]
ΎΎ 
[
ΏΏ 	&
ValidateAntiForgeryToken
ΏΏ	 !
]
ΏΏ! "
public
ΐΐ 
async
ΐΐ 
Task
ΐΐ 
<
ΐΐ 
ActionResult
ΐΐ &
>
ΐΐ& ''
ExternalLoginConfirmation
ΐΐ( A
(
ΐΐA B0
"ExternalLoginConfirmationViewModel
ΐΐB d
model
ΐΐe j
,
ΐΐj k
string
ΐΐl r
	returnUrl
ΐΐs |
)
ΐΐ| }
{
ΑΑ 	
if
ΒΒ 
(
ΒΒ 
User
ΒΒ 
.
ΒΒ 
Identity
ΒΒ 
.
ΒΒ 
IsAuthenticated
ΒΒ -
)
ΒΒ- .
{
ΓΓ 
return
ΔΔ 
RedirectToAction
ΔΔ '
(
ΔΔ' (
$str
ΔΔ( /
,
ΔΔ/ 0
$str
ΔΔ1 9
)
ΔΔ9 :
;
ΔΔ: ;
}
ΕΕ 
if
ΗΗ 
(
ΗΗ 

ModelState
ΗΗ 
.
ΗΗ 
IsValid
ΗΗ "
)
ΗΗ" #
{
ΘΘ 
var
ΚΚ 
info
ΚΚ 
=
ΚΚ 
await
ΚΚ  #
AuthenticationManager
ΚΚ! 6
.
ΚΚ6 7'
GetExternalLoginInfoAsync
ΚΚ7 P
(
ΚΚP Q
)
ΚΚQ R
;
ΚΚR S
if
ΛΛ 
(
ΛΛ 
info
ΛΛ 
==
ΛΛ 
null
ΛΛ  
)
ΛΛ  !
{
ΜΜ 
return
ΝΝ 
View
ΝΝ 
(
ΝΝ  
$str
ΝΝ  6
)
ΝΝ6 7
;
ΝΝ7 8
}
ΞΞ 
var
ΟΟ 
user
ΟΟ 
=
ΟΟ 
new
ΟΟ 
ApplicationUser
ΟΟ .
{
ΟΟ/ 0
UserName
ΟΟ1 9
=
ΟΟ: ;
model
ΟΟ< A
.
ΟΟA B
Email
ΟΟB G
,
ΟΟG H
Email
ΟΟI N
=
ΟΟO P
model
ΟΟQ V
.
ΟΟV W
Email
ΟΟW \
}
ΟΟ] ^
;
ΟΟ^ _
var
ΠΠ 
result
ΠΠ 
=
ΠΠ 
await
ΠΠ "
UserManager
ΠΠ# .
.
ΠΠ. /
CreateAsync
ΠΠ/ :
(
ΠΠ: ;
user
ΠΠ; ?
)
ΠΠ? @
;
ΠΠ@ A
if
ΡΡ 
(
ΡΡ 
result
ΡΡ 
.
ΡΡ 
	Succeeded
ΡΡ $
)
ΡΡ$ %
{
ÒÒ 
result
ΣΣ 
=
ΣΣ 
await
ΣΣ "
UserManager
ΣΣ# .
.
ΣΣ. /
AddLoginAsync
ΣΣ/ <
(
ΣΣ< =
user
ΣΣ= A
.
ΣΣA B
Id
ΣΣB D
,
ΣΣD E
info
ΣΣF J
.
ΣΣJ K
Login
ΣΣK P
)
ΣΣP Q
;
ΣΣQ R
if
ΤΤ 
(
ΤΤ 
result
ΤΤ 
.
ΤΤ 
	Succeeded
ΤΤ (
)
ΤΤ( )
{
ΥΥ 
await
ΦΦ 
SignInManager
ΦΦ +
.
ΦΦ+ ,
SignInAsync
ΦΦ, 7
(
ΦΦ7 8
user
ΦΦ8 <
,
ΦΦ< =
isPersistent
ΦΦ> J
:
ΦΦJ K
false
ΦΦL Q
,
ΦΦQ R
rememberBrowser
ΦΦS b
:
ΦΦb c
false
ΦΦd i
)
ΦΦi j
;
ΦΦj k
return
ΧΧ 
RedirectToLocal
ΧΧ .
(
ΧΧ. /
	returnUrl
ΧΧ/ 8
,
ΧΧ8 9
$str
ΧΧ9 ;
)
ΧΧ; <
;
ΧΧ< =
}
ΨΨ 
}
ΩΩ 
	AddErrors
ΪΪ 
(
ΪΪ 
result
ΪΪ  
)
ΪΪ  !
;
ΪΪ! "
}
ΫΫ 
ViewBag
έέ 
.
έέ 
	ReturnUrl
έέ 
=
έέ 
	returnUrl
έέ  )
;
έέ) *
return
ήή 
View
ήή 
(
ήή 
model
ήή 
)
ήή 
;
ήή 
}
ίί 	
[
γγ 
HttpPost
γγ 
]
γγ 
[
δδ &
ValidateAntiForgeryToken
δδ  
]
δδ  !
public
εε 
ActionResult
εε 
LogOff
εε "
(
εε" #
)
εε# $
{
ζζ 	#
AuthenticationManager
ηη !
.
ηη! "
SignOut
ηη" )
(
ηη) *(
DefaultAuthenticationTypes
ηη* D
.
ηηD E
ApplicationCookie
ηηE V
)
ηηV W
;
ηηW X
return
θθ 
RedirectToAction
θθ #
(
θθ# $
$str
θθ$ +
,
θθ+ ,
$str
θθ- 6
)
θθ6 7
;
θθ7 8
}
ιι 	
[
νν 	
AllowAnonymous
νν	 
]
νν 
public
ξξ 
ActionResult
ξξ "
ExternalLoginFailure
ξξ 0
(
ξξ0 1
)
ξξ1 2
{
οο 	
return
ππ 
View
ππ 
(
ππ 
)
ππ 
;
ππ 
}
ρρ 	
	protected
σσ 
override
σσ 
void
σσ 
Dispose
σσ  '
(
σσ' (
bool
σσ( ,
	disposing
σσ- 6
)
σσ6 7
{
ττ 	
if
υυ 
(
υυ 
	disposing
υυ 
)
υυ 
{
φφ 
if
χχ 
(
χχ 
_userManager
χχ  
!=
χχ! #
null
χχ$ (
)
χχ( )
{
ψψ 
_userManager
ωω  
.
ωω  !
Dispose
ωω! (
(
ωω( )
)
ωω) *
;
ωω* +
_userManager
ϊϊ  
=
ϊϊ! "
null
ϊϊ# '
;
ϊϊ' (
}
ϋϋ 
if
ύύ 
(
ύύ 
_signInManager
ύύ "
!=
ύύ# %
null
ύύ& *
)
ύύ* +
{
ώώ 
_signInManager
ÿÿ "
.
ÿÿ" #
Dispose
ÿÿ# *
(
ÿÿ* +
)
ÿÿ+ ,
;
ÿÿ, -
_signInManager
€€ "
=
€€# $
null
€€% )
;
€€) *
}
 
}
‚‚ 
base
„„ 
.
„„ 
Dispose
„„ 
(
„„ 
	disposing
„„ "
)
„„" #
;
„„# $
}
…… 	
private
‰‰ 
const
‰‰ 
string
‰‰ 
XsrfKey
‰‰ $
=
‰‰% &
$str
‰‰' /
;
‰‰/ 0
private
‹‹ $
IAuthenticationManager
‹‹ &#
AuthenticationManager
‹‹' <
{
 	
get
 
{
 
return
 
HttpContext
 "
.
" #
GetOwinContext
# 1
(
1 2
)
2 3
.
3 4
Authentication
4 B
;
B C
}
 
}
‘‘ 	
private
““ 
void
““ 
	AddErrors
““ 
(
““ 
IdentityResult
““ -
result
““. 4
)
““4 5
{
”” 	
foreach
•• 
(
•• 
var
•• 
error
•• 
in
•• !
result
••" (
.
••( )
Errors
••) /
)
••/ 0
{
–– 

ModelState
—— 
.
—— 
AddModelError
—— (
(
——( )
$str
——) +
,
——+ ,
error
——- 2
)
——2 3
;
——3 4
}
 
}
™™ 	
private
›› 
ActionResult
›› 
RedirectToLocal
›› ,
(
››, -
string
››- 3
	returnUrl
››4 =
,
››= >
string
››? E
role
››F J
)
››J K
{
 	
if
 
(
 
Url
 
.
 

IsLocalUrl
 
(
 
	returnUrl
 (
)
( )
)
) *
{
 
return
 
Redirect
 
(
  
	returnUrl
  )
)
) *
;
* +
}
   
string
ΆΆ 
action
ΆΆ 
=
ΆΆ 
$str
ΆΆ 
;
ΆΆ 
if
¤¤ 
(
¤¤ 
role
¤¤ 
.
¤¤ 
Equals
¤¤ 
(
¤¤ 
$str
¤¤ B
)
¤¤B C
||
¥¥ 
role
¥¥ 
.
¥¥ 
Equals
¥¥ 
(
¥¥ 
$str
¥¥ E
)
¥¥E F
)
¥¥F G
{
¦¦ 
action
§§ 
=
§§ 
$str
§§ %
;
§§% &
}
¨¨ 
else
©© 
{
ªª 
action
«« 
=
«« 
$str
««  
;
««  !
}
¬¬ 
return
®® 
RedirectToAction
®® #
(
®®# $
action
®®$ *
,
®®* +
$str
®®, 2
)
®®2 3
;
®®3 4
}
―― 	
internal
±± 
class
±± 
ChallengeResult
±± &
:
±±' ($
HttpUnauthorizedResult
±±) ?
{
²² 	
public
³³ 
ChallengeResult
³³ "
(
³³" #
string
³³# )
provider
³³* 2
,
³³2 3
string
³³4 :
redirectUri
³³; F
)
³³F G
:
΄΄ 
this
΄΄ 
(
΄΄ 
provider
΄΄ 
,
΄΄  
redirectUri
΄΄! ,
,
΄΄, -
null
΄΄. 2
)
΄΄2 3
{
µµ 
}
¶¶ 
public
ΈΈ 
ChallengeResult
ΈΈ "
(
ΈΈ" #
string
ΈΈ# )
provider
ΈΈ* 2
,
ΈΈ2 3
string
ΈΈ4 :
redirectUri
ΈΈ; F
,
ΈΈF G
string
ΈΈH N
userId
ΈΈO U
)
ΈΈU V
{
ΉΉ 
LoginProvider
ΊΊ 
=
ΊΊ 
provider
ΊΊ  (
;
ΊΊ( )
RedirectUri
»» 
=
»» 
redirectUri
»» )
;
»») *
UserId
ΌΌ 
=
ΌΌ 
userId
ΌΌ 
;
ΌΌ  
}
½½ 
public
ΏΏ 
string
ΏΏ 
LoginProvider
ΏΏ '
{
ΏΏ( )
get
ΏΏ* -
;
ΏΏ- .
set
ΏΏ/ 2
;
ΏΏ2 3
}
ΏΏ4 5
public
ΐΐ 
string
ΐΐ 
RedirectUri
ΐΐ %
{
ΐΐ& '
get
ΐΐ( +
;
ΐΐ+ ,
set
ΐΐ- 0
;
ΐΐ0 1
}
ΐΐ2 3
public
ΑΑ 
string
ΑΑ 
UserId
ΑΑ  
{
ΑΑ! "
get
ΑΑ# &
;
ΑΑ& '
set
ΑΑ( +
;
ΑΑ+ ,
}
ΑΑ- .
public
ΓΓ 
override
ΓΓ 
void
ΓΓ  
ExecuteResult
ΓΓ! .
(
ΓΓ. /
ControllerContext
ΓΓ/ @
context
ΓΓA H
)
ΓΓH I
{
ΔΔ 
var
ΕΕ 

properties
ΕΕ 
=
ΕΕ  
new
ΕΕ! $&
AuthenticationProperties
ΕΕ% =
{
ΕΕ> ?
RedirectUri
ΕΕ@ K
=
ΕΕL M
RedirectUri
ΕΕN Y
}
ΕΕZ [
;
ΕΕ[ \
if
ΖΖ 
(
ΖΖ 
UserId
ΖΖ 
!=
ΖΖ 
null
ΖΖ "
)
ΖΖ" #
{
ΗΗ 

properties
ΘΘ 
.
ΘΘ 

Dictionary
ΘΘ )
[
ΘΘ) *
XsrfKey
ΘΘ* 1
]
ΘΘ1 2
=
ΘΘ3 4
UserId
ΘΘ5 ;
;
ΘΘ; <
}
ΙΙ 
context
ΚΚ 
.
ΚΚ 
HttpContext
ΚΚ #
.
ΚΚ# $
GetOwinContext
ΚΚ$ 2
(
ΚΚ2 3
)
ΚΚ3 4
.
ΚΚ4 5
Authentication
ΚΚ5 C
.
ΚΚC D
	Challenge
ΚΚD M
(
ΚΚM N

properties
ΚΚN X
,
ΚΚX Y
LoginProvider
ΚΚZ g
)
ΚΚg h
;
ΚΚh i
}
ΛΛ 
}
ΜΜ 	
}
ΞΞ 
}ΟΟ φ
CD:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Controllers\ErrorPageController.cs
	namespace

 	
EwoQ


 
.

 
Controllers

 
{ 
public 

class 
ErrorPageController $
:% &

Controller' 1
{ 
public 
ActionResult 
Error !
(! "
int" %

statusCode& 0
,0 1
	Exception2 ;
	exception< E
)E F
{ 	
Response 
. 

StatusCode 
=  !

statusCode" ,
;, -
ViewBag 
. 

StatusCode 
=  

statusCode! +
+, -
$str. 7
;7 8
ViewBag 
. 
Detail 
= 
	exception &
.& '
ToString' /
(/ 0
)0 1
;1 2
Task 
< 
int 
> 
task 
= 
Task !
.! "
Run" %
(% &
async& +
(, -
)- .
=>/ 1
await2 7
DaoExcepcion8 D
.D E
DaoInstanceE P
.P Q
AddExceptionAsyncQ b
(b c
new 
Database 
. 
excepciones (
(( )
)) *
{ 
codigo_error  
=! "

statusCode# -
,- .
codigo_usuario "
=# $
User% )
.) *
Identity* 2
.2 3
Name3 7
==8 :
null; ?
?@ A
$strB O
:P Q
UserR V
.V W
IdentityW _
._ `
Name` d
,d e
descripcion 
=  !
	exception" +
.+ ,
ToString, 4
(4 5
)5 6
,6 7
fecha 
= 
SomeHelpers '
.' (
GetCurrentTime( 6
(6 7
)7 8
} 
) 
) 
; 
return   
View   
(   
)   
;   
}!! 	
}"" 
}## ϋ3
>D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Controllers\HomeController.cs
	namespace 	
EwoQ
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
[ 
SessionState 
(  
SessionStateBehavior &
.& '
Default' .
). /
]/ 0
public 

class 
HomeController 
:  !

Controller" ,
{ 
IndexAdminViewModel 
ivm 
=  !
new" %
IndexAdminViewModel& 9
(9 :
): ;
;; <
public 
ActionResult 
Index !
(! "
)" #
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
HttpPost	 
] 
public 
void 
OnPost 
( 
int 
counter &
)& '
{ 	
ivm 
. 
Counter 
= 
counter !
;! "
Session 
[ 
$str "
]" #
=$ %
counter& -
;- .
}   	
public"" 
async"" 
Task"" 
<"" 
ActionResult"" &
>""& '

IndexAdmin""( 2
(""2 3
)""3 4
{## 	
ivm11 
=11 
await11 
DaoEwo11 
.11 
DaoInstance11 *
.11* +
GetIndexData11+ 7
(117 8
)118 9
;119 :
if22 
(22 
Session22 
[22 
$str22 &
]22& '
!=22( *
null22+ /
)22/ 0
{33 
string44 
	tempCount44  
=44! "
Session44# *
[44* +
$str44+ 9
]449 :
.44: ;
ToString44; C
(44C D
)44D E
;44E F
ivm55 
.55 
Counter55 
=55 
int55 !
.55! "
Parse55" '
(55' (
	tempCount55( 1
)551 2
;552 3
}66 
else77 
{88 
ivm99 
.99 
Counter99 
=99 
$num99 
;99  
}:: 
return<< 
View<< 
(<< 
ivm<< 
)<< 
;<< 
}== 	
[?? 	
HttpPost??	 
]?? 
public@@ 
async@@ 
Task@@ 
<@@ 

JsonResult@@ $
>@@$ %
GetDonutData@@& 2
(@@2 3
)@@3 4
{AA 	
ListBB 
<BB 
DonutViewModelBB 
>BB  
donutBB! &
=BB' (
nullBB) -
;BB- .
awaitDD 
TaskDD 
.DD 
RunDD 
(DD 
(DD 
)DD 
=>DD  
{EE 
donutFF 
=FF 
DaoEwoFF 
.FF 
DaoInstanceFF *
.FF* +
GetEwoPercentsFF+ 9
(FF9 :
)FF: ;
;FF; <
}GG 
)GG 
;GG 
returnII 
JsonII 
(II 
donutII 
)II 
;II 
}JJ 	
[LL 	
HttpPostLL	 
]LL 
publicMM 
asyncMM 
TaskMM 
<MM 

JsonResultMM $
>MM$ %
GetDonutData4MMM& 4
(MM4 5
)MM5 6
{NN 	
ListOO 
<OO 
DonutViewModelOO 
>OO  
donutOO! &
=OO' (
nullOO) -
;OO- .
awaitQQ 
TaskQQ 
.QQ 
RunQQ 
(QQ 
(QQ 
)QQ 
=>QQ  
{RR 
donutSS 
=SS 
DaoEwoSS 
.SS 
DaoInstanceSS *
.SS* +
GetEwoMPercentsSS+ :
(SS: ;
)SS; <
;SS< =
}TT 
)TT 
;TT 
returnVV 
JsonVV 
(VV 
donutVV 
)VV 
;VV 
}WW 	
[YY 	
HttpPostYY	 
]YY 
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 

JsonResultZZ $
>ZZ$ %
GetDonutDataTffzZZ& 6
(ZZ6 7
)ZZ7 8
{[[ 	
List\\ 
<\\ 
DonutViewModel\\ 
>\\  
donut\\! &
=\\' (
null\\) -
;\\- .
await^^ 
Task^^ 
.^^ 
Run^^ 
(^^ 
(^^ 
)^^ 
=>^^  
{__ 
donut`` 
=`` 
DaoEwo`` 
.`` 
DaoInstance`` *
.``* +
GetEwoTFFZPercents``+ =
(``= >
)``> ?
;``? @
}aa 
)aa 
;aa 
returncc 
Jsoncc 
(cc 
donutcc 
)cc 
;cc 
}dd 	
[ff 	
HttpPostff	 
]ff 
publicgg 
asyncgg 
Taskgg 
<gg 

JsonResultgg $
>gg$ %
GetDonutDataPlantsgg& 8
(gg8 9
)gg9 :
{hh 	
Listii 
<ii 
DonutViewModelii 
>ii  
donutii! &
=ii' (
nullii) -
;ii- .
awaitkk 
Taskkk 
.kk 
Runkk 
(kk 
(kk 
)kk 
=>kk  
{ll 
donutmm 
=mm 
DaoEwomm 
.mm 
DaoInstancemm *
.mm* + 
GetEwoPlantsPercentsmm+ ?
(mm? @
)mm@ A
;mmA B
}nn 
)nn 
;nn 
returnpp 
Jsonpp 
(pp 
donutpp 
)pp 
;pp 
}qq 	
publicss 
ActionResultss 
Aboutss !
(ss! "
)ss" #
{tt 	
ViewBaguu 
.uu 
Messageuu 
=uu 
$struu B
;uuB C
returnww 
Viewww 
(ww 
)ww 
;ww 
}xx 	
publiczz 
ActionResultzz 
Contactzz #
(zz# $
)zz$ %
{{{ 	
ViewBag|| 
.|| 
Message|| 
=|| 
$str|| 2
;||2 3
return~~ 
View~~ 
(~~ 
)~~ 
;~~ 
} 	
}
€€ 
} ί–
@D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Controllers\ManageController.cs
	namespace 	
EwoQ
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
public 

class 
ManageController !
:" #

Controller$ .
{ 
private $
ApplicationSignInManager (
_signInManager) 7
;7 8
private "
ApplicationUserManager &
_userManager' 3
;3 4
static 
string 
sing_images !
=" #
$str$ C
;C D
public 
ManageController 
(  
)  !
{ 	
} 	
public 
ManageController 
(  "
ApplicationUserManager  6
userManager7 B
,B C$
ApplicationSignInManagerD \
signInManager] j
)j k
{ 	
UserManager 
= 
userManager %
;% &
SignInManager 
= 
signInManager )
;) *
} 	
public $
ApplicationSignInManager '
SignInManager( 5
{ 	
get   
{!! 
return"" 
_signInManager"" %
??""& (
HttpContext"") 4
.""4 5
GetOwinContext""5 C
(""C D
)""D E
.""E F
Get""F I
<""I J$
ApplicationSignInManager""J b
>""b c
(""c d
)""d e
;""e f
}## 
private$$ 
set$$ 
{%% 
_signInManager&& 
=&&  
value&&! &
;&&& '
}'' 
}(( 	
public** "
ApplicationUserManager** %
UserManager**& 1
{++ 	
get,, 
{-- 
return.. 
_userManager.. #
??..$ &
HttpContext..' 2
...2 3
GetOwinContext..3 A
(..A B
)..B C
...C D
GetUserManager..D R
<..R S"
ApplicationUserManager..S i
>..i j
(..j k
)..k l
;..l m
}// 
private00 
set00 
{11 
_userManager22 
=22 
value22 $
;22$ %
}33 
}44 	
public88 
async88 
Task88 
<88 
ActionResult88 &
>88& '
Index88( -
(88- .
ManageMessageId88. =
?88= >
message88? F
)88F G
{99 	
ViewBag:: 
.:: 
StatusMessage:: !
=::" #
message;; 
==;; 
ManageMessageId;; *
.;;* +!
ChangePasswordSuccess;;+ @
?;;A B
$str;;C b
:<< 
message<< 
==<< 
ManageMessageId<< ,
.<<, -
SetPasswordSuccess<<- ?
?<<@ A
$str<<B d
:== 
message== 
==== 
ManageMessageId== ,
.==, -
SetTwoFactorSuccess==- @
?==A B
$str	==C …
:>> 
message>> 
==>> 
ManageMessageId>> ,
.>>, -
Error>>- 2
?>>3 4
$str>>5 P
:?? 
message?? 
==?? 
ManageMessageId?? ,
.??, -
AddPhoneSuccess??- <
???= >
$str??? f
:@@ 
message@@ 
==@@ 
ManageMessageId@@ ,
.@@, -
RemovePhoneSuccess@@- ?
?@@@ A
$str@@B h
:AA 
$strAA 
;AA 
varCC 
userIdCC 
=CC 
UserCC 
.CC 
IdentityCC &
.CC& '
	GetUserIdCC' 0
(CC0 1
)CC1 2
;CC2 3
varDD 
modelDD 
=DD 
newDD 
IndexViewModelDD *
{EE 
HasSignFF 
=FF 
HasSignFF !
(FF! "
)FF" #
,FF# $
HasPasswordGG 
=GG 
HasPasswordGG )
(GG) *
)GG* +
,GG+ ,
PhoneNumberHH 
=HH 
awaitHH #
UserManagerHH$ /
.HH/ 0
GetPhoneNumberAsyncHH0 C
(HHC D
userIdHHD J
)HHJ K
,HHK L
	TwoFactorII 
=II 
awaitII !
UserManagerII" -
.II- .$
GetTwoFactorEnabledAsyncII. F
(IIF G
userIdIIG M
)IIM N
,IIN O
LoginsJJ 
=JJ 
awaitJJ 
UserManagerJJ *
.JJ* +
GetLoginsAsyncJJ+ 9
(JJ9 :
userIdJJ: @
)JJ@ A
,JJA B
BrowserRememberedKK !
=KK" #
awaitKK$ )!
AuthenticationManagerKK* ?
.KK? @+
TwoFactorBrowserRememberedAsyncKK@ _
(KK_ `
userIdKK` f
)KKf g
}LL 
;LL 
returnMM 
ViewMM 
(MM 
modelMM 
)MM 
;MM 
}NN 	
[RR 	
HttpPostRR	 
]RR 
[SS 	$
ValidateAntiForgeryTokenSS	 !
]SS! "
publicTT 
asyncTT 
TaskTT 
<TT 
ActionResultTT &
>TT& '
RemoveLoginTT( 3
(TT3 4
stringTT4 :
loginProviderTT; H
,TTH I
stringTTJ P
providerKeyTTQ \
)TT\ ]
{UU 	
ManageMessageIdVV 
?VV 
messageVV $
;VV$ %
varWW 
resultWW 
=WW 
awaitWW 
UserManagerWW *
.WW* +
RemoveLoginAsyncWW+ ;
(WW; <
UserWW< @
.WW@ A
IdentityWWA I
.WWI J
	GetUserIdWWJ S
(WWS T
)WWT U
,WWU V
newWWW Z
UserLoginInfoWW[ h
(WWh i
loginProviderWWi v
,WWv w
providerKey	WWx ƒ
)
WWƒ „
)
WW„ …
;
WW… †
ifXX 
(XX 
resultXX 
.XX 
	SucceededXX  
)XX  !
{YY 
varZZ 
userZZ 
=ZZ 
awaitZZ  
UserManagerZZ! ,
.ZZ, -
FindByIdAsyncZZ- :
(ZZ: ;
UserZZ; ?
.ZZ? @
IdentityZZ@ H
.ZZH I
	GetUserIdZZI R
(ZZR S
)ZZS T
)ZZT U
;ZZU V
if[[ 
([[ 
user[[ 
!=[[ 
null[[  
)[[  !
{\\ 
await]] 
SignInManager]] '
.]]' (
SignInAsync]]( 3
(]]3 4
user]]4 8
,]]8 9
isPersistent]]: F
:]]F G
false]]H M
,]]M N
rememberBrowser]]O ^
:]]^ _
false]]` e
)]]e f
;]]f g
}^^ 
message__ 
=__ 
ManageMessageId__ )
.__) *
RemoveLoginSuccess__* <
;__< =
}`` 
elseaa 
{bb 
messagecc 
=cc 
ManageMessageIdcc )
.cc) *
Errorcc* /
;cc/ 0
}dd 
returnee 
RedirectToActionee #
(ee# $
$stree$ 2
,ee2 3
newee4 7
{ee8 9
Messageee: A
=eeB C
messageeeD K
}eeL M
)eeM N
;eeN O
}ff 	
publicjj 
ActionResultjj 
AddPhoneNumberjj *
(jj* +
)jj+ ,
{kk 	
returnll 
Viewll 
(ll 
)ll 
;ll 
}mm 	
[qq 	
HttpPostqq	 
]qq 
[rr 	$
ValidateAntiForgeryTokenrr	 !
]rr! "
publicss 
asyncss 
Taskss 
<ss 
ActionResultss &
>ss& '
AddPhoneNumberss( 6
(ss6 7#
AddPhoneNumberViewModelss7 N
modelssO T
)ssT U
{tt 	
ifuu 
(uu 
!uu 

ModelStateuu 
.uu 
IsValiduu #
)uu# $
{vv 
returnww 
Viewww 
(ww 
modelww !
)ww! "
;ww" #
}xx 
varzz 
codezz 
=zz 
awaitzz 
UserManagerzz (
.zz( )/
#GenerateChangePhoneNumberTokenAsynczz) L
(zzL M
UserzzM Q
.zzQ R
IdentityzzR Z
.zzZ [
	GetUserIdzz[ d
(zzd e
)zze f
,zzf g
modelzzh m
.zzm n
Numberzzn t
)zzt u
;zzu v
if{{ 
({{ 
UserManager{{ 
.{{ 

SmsService{{ &
!={{' )
null{{* .
){{. /
{|| 
var}} 
message}} 
=}} 
new}} !
IdentityMessage}}" 1
{~~ 
Destination 
=  !
model" '
.' (
Number( .
,. /
Body
€€ 
=
€€ 
$str
€€ 8
+
€€9 :
code
€€; ?
}
 
;
 
await
‚‚ 
UserManager
‚‚ !
.
‚‚! "

SmsService
‚‚" ,
.
‚‚, -
	SendAsync
‚‚- 6
(
‚‚6 7
message
‚‚7 >
)
‚‚> ?
;
‚‚? @
}
ƒƒ 
return
„„ 
RedirectToAction
„„ #
(
„„# $
$str
„„$ 7
,
„„7 8
new
„„9 <
{
„„= >
PhoneNumber
„„? J
=
„„K L
model
„„M R
.
„„R S
Number
„„S Y
}
„„Z [
)
„„[ \
;
„„\ ]
}
…… 	
[
‰‰ 	
HttpPost
‰‰	 
]
‰‰ 
[
 	&
ValidateAntiForgeryToken
	 !
]
! "
public
‹‹ 
async
‹‹ 
Task
‹‹ 
<
‹‹ 
ActionResult
‹‹ &
>
‹‹& '+
EnableTwoFactorAuthentication
‹‹( E
(
‹‹E F
)
‹‹F G
{
 	
await
 
UserManager
 
.
 &
SetTwoFactorEnabledAsync
 6
(
6 7
User
7 ;
.
; <
Identity
< D
.
D E
	GetUserId
E N
(
N O
)
O P
,
P Q
true
R V
)
V W
;
W X
var
 
user
 
=
 
await
 
UserManager
 (
.
( )
FindByIdAsync
) 6
(
6 7
User
7 ;
.
; <
Identity
< D
.
D E
	GetUserId
E N
(
N O
)
O P
)
P Q
;
Q R
if
 
(
 
user
 
!=
 
null
 
)
 
{
 
await
‘‘ 
SignInManager
‘‘ #
.
‘‘# $
SignInAsync
‘‘$ /
(
‘‘/ 0
user
‘‘0 4
,
‘‘4 5
isPersistent
‘‘6 B
:
‘‘B C
false
‘‘D I
,
‘‘I J
rememberBrowser
‘‘K Z
:
‘‘Z [
false
‘‘\ a
)
‘‘a b
;
‘‘b c
}
’’ 
return
““ 
RedirectToAction
““ #
(
““# $
$str
““$ +
,
““+ ,
$str
““- 5
)
““5 6
;
““6 7
}
”” 	
[
 	
HttpPost
	 
]
 
[
™™ 	&
ValidateAntiForgeryToken
™™	 !
]
™™! "
public
 
async
 
Task
 
<
 
ActionResult
 &
>
& ',
DisableTwoFactorAuthentication
( F
(
F G
)
G H
{
›› 	
await
 
UserManager
 
.
 &
SetTwoFactorEnabledAsync
 6
(
6 7
User
7 ;
.
; <
Identity
< D
.
D E
	GetUserId
E N
(
N O
)
O P
,
P Q
false
R W
)
W X
;
X Y
var
 
user
 
=
 
await
 
UserManager
 (
.
( )
FindByIdAsync
) 6
(
6 7
User
7 ;
.
; <
Identity
< D
.
D E
	GetUserId
E N
(
N O
)
O P
)
P Q
;
Q R
if
 
(
 
user
 
!=
 
null
 
)
 
{
 
await
   
SignInManager
   #
.
  # $
SignInAsync
  $ /
(
  / 0
user
  0 4
,
  4 5
isPersistent
  6 B
:
  B C
false
  D I
,
  I J
rememberBrowser
  K Z
:
  Z [
false
  \ a
)
  a b
;
  b c
}
΅΅ 
return
ΆΆ 
RedirectToAction
ΆΆ #
(
ΆΆ# $
$str
ΆΆ$ +
,
ΆΆ+ ,
$str
ΆΆ- 5
)
ΆΆ5 6
;
ΆΆ6 7
}
££ 	
public
§§ 
async
§§ 
Task
§§ 
<
§§ 
ActionResult
§§ &
>
§§& '
VerifyPhoneNumber
§§( 9
(
§§9 :
string
§§: @
phoneNumber
§§A L
)
§§L M
{
¨¨ 	
var
©© 
code
©© 
=
©© 
await
©© 
UserManager
©© (
.
©©( )1
#GenerateChangePhoneNumberTokenAsync
©©) L
(
©©L M
User
©©M Q
.
©©Q R
Identity
©©R Z
.
©©Z [
	GetUserId
©©[ d
(
©©d e
)
©©e f
,
©©f g
phoneNumber
©©h s
)
©©s t
;
©©t u
return
«« 
phoneNumber
«« 
==
«« !
null
««" &
?
««' (
View
««) -
(
««- .
$str
««. 5
)
««5 6
:
««7 8
View
««9 =
(
««= >
new
««> A(
VerifyPhoneNumberViewModel
««B \
{
««] ^
PhoneNumber
««_ j
=
««k l
phoneNumber
««m x
}
««y z
)
««z {
;
««{ |
}
¬¬ 	
[
°° 	
HttpPost
°°	 
]
°° 
[
±± 	&
ValidateAntiForgeryToken
±±	 !
]
±±! "
public
²² 
async
²² 
Task
²² 
<
²² 
ActionResult
²² &
>
²²& '
VerifyPhoneNumber
²²( 9
(
²²9 :(
VerifyPhoneNumberViewModel
²²: T
model
²²U Z
)
²²Z [
{
³³ 	
if
΄΄ 
(
΄΄ 
!
΄΄ 

ModelState
΄΄ 
.
΄΄ 
IsValid
΄΄ #
)
΄΄# $
{
µµ 
return
¶¶ 
View
¶¶ 
(
¶¶ 
model
¶¶ !
)
¶¶! "
;
¶¶" #
}
·· 
var
ΈΈ 
result
ΈΈ 
=
ΈΈ 
await
ΈΈ 
UserManager
ΈΈ *
.
ΈΈ* +$
ChangePhoneNumberAsync
ΈΈ+ A
(
ΈΈA B
User
ΈΈB F
.
ΈΈF G
Identity
ΈΈG O
.
ΈΈO P
	GetUserId
ΈΈP Y
(
ΈΈY Z
)
ΈΈZ [
,
ΈΈ[ \
model
ΈΈ] b
.
ΈΈb c
PhoneNumber
ΈΈc n
,
ΈΈn o
model
ΈΈp u
.
ΈΈu v
Code
ΈΈv z
)
ΈΈz {
;
ΈΈ{ |
if
ΉΉ 
(
ΉΉ 
result
ΉΉ 
.
ΉΉ 
	Succeeded
ΉΉ  
)
ΉΉ  !
{
ΊΊ 
var
»» 
user
»» 
=
»» 
await
»»  
UserManager
»»! ,
.
»», -
FindByIdAsync
»»- :
(
»»: ;
User
»»; ?
.
»»? @
Identity
»»@ H
.
»»H I
	GetUserId
»»I R
(
»»R S
)
»»S T
)
»»T U
;
»»U V
if
ΌΌ 
(
ΌΌ 
user
ΌΌ 
!=
ΌΌ 
null
ΌΌ  
)
ΌΌ  !
{
½½ 
await
ΎΎ 
SignInManager
ΎΎ '
.
ΎΎ' (
SignInAsync
ΎΎ( 3
(
ΎΎ3 4
user
ΎΎ4 8
,
ΎΎ8 9
isPersistent
ΎΎ: F
:
ΎΎF G
false
ΎΎH M
,
ΎΎM N
rememberBrowser
ΎΎO ^
:
ΎΎ^ _
false
ΎΎ` e
)
ΎΎe f
;
ΎΎf g
}
ΏΏ 
return
ΐΐ 
RedirectToAction
ΐΐ '
(
ΐΐ' (
$str
ΐΐ( /
,
ΐΐ/ 0
new
ΐΐ1 4
{
ΐΐ5 6
Message
ΐΐ7 >
=
ΐΐ? @
ManageMessageId
ΐΐA P
.
ΐΐP Q
AddPhoneSuccess
ΐΐQ `
}
ΐΐa b
)
ΐΐb c
;
ΐΐc d
}
ΑΑ 

ModelState
ΓΓ 
.
ΓΓ 
AddModelError
ΓΓ $
(
ΓΓ$ %
$str
ΓΓ% '
,
ΓΓ' (
$str
ΓΓ) P
)
ΓΓP Q
;
ΓΓQ R
return
ΔΔ 
View
ΔΔ 
(
ΔΔ 
model
ΔΔ 
)
ΔΔ 
;
ΔΔ 
}
ΕΕ 	
[
ΙΙ 	
HttpPost
ΙΙ	 
]
ΙΙ 
[
ΚΚ 	&
ValidateAntiForgeryToken
ΚΚ	 !
]
ΚΚ! "
public
ΛΛ 
async
ΛΛ 
Task
ΛΛ 
<
ΛΛ 
ActionResult
ΛΛ &
>
ΛΛ& '
RemovePhoneNumber
ΛΛ( 9
(
ΛΛ9 :
)
ΛΛ: ;
{
ΜΜ 	
var
ΝΝ 
result
ΝΝ 
=
ΝΝ 
await
ΝΝ 
UserManager
ΝΝ *
.
ΝΝ* +!
SetPhoneNumberAsync
ΝΝ+ >
(
ΝΝ> ?
User
ΝΝ? C
.
ΝΝC D
Identity
ΝΝD L
.
ΝΝL M
	GetUserId
ΝΝM V
(
ΝΝV W
)
ΝΝW X
,
ΝΝX Y
null
ΝΝZ ^
)
ΝΝ^ _
;
ΝΝ_ `
if
ΞΞ 
(
ΞΞ 
!
ΞΞ 
result
ΞΞ 
.
ΞΞ 
	Succeeded
ΞΞ !
)
ΞΞ! "
{
ΟΟ 
return
ΠΠ 
RedirectToAction
ΠΠ '
(
ΠΠ' (
$str
ΠΠ( /
,
ΠΠ/ 0
new
ΠΠ1 4
{
ΠΠ5 6
Message
ΠΠ7 >
=
ΠΠ? @
ManageMessageId
ΠΠA P
.
ΠΠP Q
Error
ΠΠQ V
}
ΠΠW X
)
ΠΠX Y
;
ΠΠY Z
}
ΡΡ 
var
ÒÒ 
user
ÒÒ 
=
ÒÒ 
await
ÒÒ 
UserManager
ÒÒ (
.
ÒÒ( )
FindByIdAsync
ÒÒ) 6
(
ÒÒ6 7
User
ÒÒ7 ;
.
ÒÒ; <
Identity
ÒÒ< D
.
ÒÒD E
	GetUserId
ÒÒE N
(
ÒÒN O
)
ÒÒO P
)
ÒÒP Q
;
ÒÒQ R
if
ΣΣ 
(
ΣΣ 
user
ΣΣ 
!=
ΣΣ 
null
ΣΣ 
)
ΣΣ 
{
ΤΤ 
await
ΥΥ 
SignInManager
ΥΥ #
.
ΥΥ# $
SignInAsync
ΥΥ$ /
(
ΥΥ/ 0
user
ΥΥ0 4
,
ΥΥ4 5
isPersistent
ΥΥ6 B
:
ΥΥB C
false
ΥΥD I
,
ΥΥI J
rememberBrowser
ΥΥK Z
:
ΥΥZ [
false
ΥΥ\ a
)
ΥΥa b
;
ΥΥb c
}
ΦΦ 
return
ΧΧ 
RedirectToAction
ΧΧ #
(
ΧΧ# $
$str
ΧΧ$ +
,
ΧΧ+ ,
new
ΧΧ- 0
{
ΧΧ1 2
Message
ΧΧ3 :
=
ΧΧ; <
ManageMessageId
ΧΧ= L
.
ΧΧL M 
RemovePhoneSuccess
ΧΧM _
}
ΧΧ` a
)
ΧΧa b
;
ΧΧb c
}
ΨΨ 	
public
άά 
ActionResult
άά 
ChangePassword
άά *
(
άά* +
)
άά+ ,
{
έέ 	
return
ήή 
View
ήή 
(
ήή 
)
ήή 
;
ήή 
}
ίί 	
[
γγ 	
HttpPost
γγ	 
]
γγ 
[
δδ 	&
ValidateAntiForgeryToken
δδ	 !
]
δδ! "
public
εε 
async
εε 
Task
εε 
<
εε 
ActionResult
εε &
>
εε& '
ChangePassword
εε( 6
(
εε6 7%
ChangePasswordViewModel
εε7 N
model
εεO T
)
εεT U
{
ζζ 	
if
ηη 
(
ηη 
!
ηη 

ModelState
ηη 
.
ηη 
IsValid
ηη #
)
ηη# $
{
θθ 
return
ιι 
View
ιι 
(
ιι 
model
ιι !
)
ιι! "
;
ιι" #
}
κκ 
var
λλ 
result
λλ 
=
λλ 
await
λλ 
UserManager
λλ *
.
λλ* +!
ChangePasswordAsync
λλ+ >
(
λλ> ?
User
λλ? C
.
λλC D
Identity
λλD L
.
λλL M
	GetUserId
λλM V
(
λλV W
)
λλW X
,
λλX Y
model
λλZ _
.
λλ_ `
OldPassword
λλ` k
,
λλk l
model
λλm r
.
λλr s
NewPassword
λλs ~
)
λλ~ 
;λλ €
if
μμ 
(
μμ 
result
μμ 
.
μμ 
	Succeeded
μμ  
)
μμ  !
{
νν 
var
ξξ 
user
ξξ 
=
ξξ 
await
ξξ  
UserManager
ξξ! ,
.
ξξ, -
FindByIdAsync
ξξ- :
(
ξξ: ;
User
ξξ; ?
.
ξξ? @
Identity
ξξ@ H
.
ξξH I
	GetUserId
ξξI R
(
ξξR S
)
ξξS T
)
ξξT U
;
ξξU V
if
οο 
(
οο 
user
οο 
!=
οο 
null
οο  
)
οο  !
{
ππ 
await
ρρ 
SignInManager
ρρ '
.
ρρ' (
SignInAsync
ρρ( 3
(
ρρ3 4
user
ρρ4 8
,
ρρ8 9
isPersistent
ρρ: F
:
ρρF G
false
ρρH M
,
ρρM N
rememberBrowser
ρρO ^
:
ρρ^ _
false
ρρ` e
)
ρρe f
;
ρρf g
}
ςς 
return
σσ 
RedirectToAction
σσ '
(
σσ' (
$str
σσ( /
,
σσ/ 0
new
σσ1 4
{
σσ5 6
Message
σσ7 >
=
σσ? @
ManageMessageId
σσA P
.
σσP Q#
ChangePasswordSuccess
σσQ f
}
σσg h
)
σσh i
;
σσi j
}
ττ 
	AddErrors
υυ 
(
υυ 
result
υυ 
)
υυ 
;
υυ 
return
φφ 
View
φφ 
(
φφ 
model
φφ 
)
φφ 
;
φφ 
}
χχ 	
public
ϋϋ 
ActionResult
ϋϋ 
SetPassword
ϋϋ '
(
ϋϋ' (
)
ϋϋ( )
{
όό 	
return
ύύ 
View
ύύ 
(
ύύ 
)
ύύ 
;
ύύ 
}
ώώ 	
[
‚‚ 	
HttpPost
‚‚	 
]
‚‚ 
[
ƒƒ 	&
ValidateAntiForgeryToken
ƒƒ	 !
]
ƒƒ! "
public
„„ 
async
„„ 
Task
„„ 
<
„„ 
ActionResult
„„ &
>
„„& '
SetPassword
„„( 3
(
„„3 4"
SetPasswordViewModel
„„4 H
model
„„I N
)
„„N O
{
…… 	
if
†† 
(
†† 

ModelState
†† 
.
†† 
IsValid
†† "
)
††" #
{
‡‡ 
var
 
result
 
=
 
await
 "
UserManager
# .
.
. /
AddPasswordAsync
/ ?
(
? @
User
@ D
.
D E
Identity
E M
.
M N
	GetUserId
N W
(
W X
)
X Y
,
Y Z
model
[ `
.
` a
NewPassword
a l
)
l m
;
m n
if
‰‰ 
(
‰‰ 
result
‰‰ 
.
‰‰ 
	Succeeded
‰‰ $
)
‰‰$ %
{
 
var
‹‹ 
user
‹‹ 
=
‹‹ 
await
‹‹ $
UserManager
‹‹% 0
.
‹‹0 1
FindByIdAsync
‹‹1 >
(
‹‹> ?
User
‹‹? C
.
‹‹C D
Identity
‹‹D L
.
‹‹L M
	GetUserId
‹‹M V
(
‹‹V W
)
‹‹W X
)
‹‹X Y
;
‹‹Y Z
if
 
(
 
user
 
!=
 
null
  $
)
$ %
{
 
await
 
SignInManager
 +
.
+ ,
SignInAsync
, 7
(
7 8
user
8 <
,
< =
isPersistent
> J
:
J K
false
L Q
,
Q R
rememberBrowser
S b
:
b c
false
d i
)
i j
;
j k
}
 
return
 
RedirectToAction
 +
(
+ ,
$str
, 3
,
3 4
new
5 8
{
9 :
Message
; B
=
C D
ManageMessageId
E T
.
T U 
SetPasswordSuccess
U g
}
h i
)
i j
;
j k
}
‘‘ 
	AddErrors
’’ 
(
’’ 
result
’’  
)
’’  !
;
’’! "
}
““ 
return
–– 
View
–– 
(
–– 
model
–– 
)
–– 
;
–– 
}
—— 	
public
›› 
async
›› 
Task
›› 
<
›› 
ActionResult
›› &
>
››& '
ManageLogins
››( 4
(
››4 5
ManageMessageId
››5 D
?
››D E
message
››F M
)
››M N
{
 	
ViewBag
 
.
 
StatusMessage
 !
=
" #
message
 
==
 
ManageMessageId
 *
.
* + 
RemoveLoginSuccess
+ =
?
> ?
$str
@ l
:
 
message
 
==
 
ManageMessageId
 ,
.
, -
Error
- 2
?
3 4
$str
5 P
:
   
$str
   
;
   
var
΅΅ 
user
΅΅ 
=
΅΅ 
await
΅΅ 
UserManager
΅΅ (
.
΅΅( )
FindByIdAsync
΅΅) 6
(
΅΅6 7
User
΅΅7 ;
.
΅΅; <
Identity
΅΅< D
.
΅΅D E
	GetUserId
΅΅E N
(
΅΅N O
)
΅΅O P
)
΅΅P Q
;
΅΅Q R
if
ΆΆ 
(
ΆΆ 
user
ΆΆ 
==
ΆΆ 
null
ΆΆ 
)
ΆΆ 
{
££ 
return
¤¤ 
View
¤¤ 
(
¤¤ 
$str
¤¤ #
)
¤¤# $
;
¤¤$ %
}
¥¥ 
var
¦¦ 

userLogins
¦¦ 
=
¦¦ 
await
¦¦ "
UserManager
¦¦# .
.
¦¦. /
GetLoginsAsync
¦¦/ =
(
¦¦= >
User
¦¦> B
.
¦¦B C
Identity
¦¦C K
.
¦¦K L
	GetUserId
¦¦L U
(
¦¦U V
)
¦¦V W
)
¦¦W X
;
¦¦X Y
var
§§ 
otherLogins
§§ 
=
§§ #
AuthenticationManager
§§ 3
.
§§3 4,
GetExternalAuthenticationTypes
§§4 R
(
§§R S
)
§§S T
.
§§T U
Where
§§U Z
(
§§Z [
auth
§§[ _
=>
§§` b

userLogins
§§c m
.
§§m n
All
§§n q
(
§§q r
ul
§§r t
=>
§§u w
auth
§§x |
.
§§| }!
AuthenticationType§§} 
!=§§ ’
ul§§“ •
.§§• –
LoginProvider§§– £
)§§£ ¤
)§§¤ ¥
.§§¥ ¦
ToList§§¦ ¬
(§§¬ ­
)§§­ ®
;§§® ―
ViewBag
¨¨ 
.
¨¨ 
ShowRemoveButton
¨¨ $
=
¨¨% &
user
¨¨' +
.
¨¨+ ,
PasswordHash
¨¨, 8
!=
¨¨9 ;
null
¨¨< @
||
¨¨A C

userLogins
¨¨D N
.
¨¨N O
Count
¨¨O T
>
¨¨U V
$num
¨¨W X
;
¨¨X Y
return
©© 
View
©© 
(
©© 
new
©© #
ManageLoginsViewModel
©© 1
{
ªª 
CurrentLogins
«« 
=
«« 

userLogins
««  *
,
««* +
OtherLogins
¬¬ 
=
¬¬ 
otherLogins
¬¬ )
}
­­ 
)
­­ 
;
­­ 
}
®® 	
[
²² 	
HttpPost
²²	 
]
²² 
[
³³ 	&
ValidateAntiForgeryToken
³³	 !
]
³³! "
public
΄΄ 
ActionResult
΄΄ 
	LinkLogin
΄΄ %
(
΄΄% &
string
΄΄& ,
provider
΄΄- 5
)
΄΄5 6
{
µµ 	
return
·· 
new
·· 
AccountController
·· (
.
··( )
ChallengeResult
··) 8
(
··8 9
provider
··9 A
,
··A B
Url
··C F
.
··F G
Action
··G M
(
··M N
$str
··N a
,
··a b
$str
··c k
)
··k l
,
··l m
User
··n r
.
··r s
Identity
··s {
.
··{ |
	GetUserId··| …
(··… †
)··† ‡
)··‡ 
;·· ‰
}
ΈΈ 	
public
ΌΌ 
async
ΌΌ 
Task
ΌΌ 
<
ΌΌ 
ActionResult
ΌΌ &
>
ΌΌ& '
LinkLoginCallback
ΌΌ( 9
(
ΌΌ9 :
)
ΌΌ: ;
{
½½ 	
var
ΎΎ 
	loginInfo
ΎΎ 
=
ΎΎ 
await
ΎΎ !#
AuthenticationManager
ΎΎ" 7
.
ΎΎ7 8'
GetExternalLoginInfoAsync
ΎΎ8 Q
(
ΎΎQ R
XsrfKey
ΎΎR Y
,
ΎΎY Z
User
ΎΎ[ _
.
ΎΎ_ `
Identity
ΎΎ` h
.
ΎΎh i
	GetUserId
ΎΎi r
(
ΎΎr s
)
ΎΎs t
)
ΎΎt u
;
ΎΎu v
if
ΏΏ 
(
ΏΏ 
	loginInfo
ΏΏ 
==
ΏΏ 
null
ΏΏ !
)
ΏΏ! "
{
ΐΐ 
return
ΑΑ 
RedirectToAction
ΑΑ '
(
ΑΑ' (
$str
ΑΑ( 6
,
ΑΑ6 7
new
ΑΑ8 ;
{
ΑΑ< =
Message
ΑΑ> E
=
ΑΑF G
ManageMessageId
ΑΑH W
.
ΑΑW X
Error
ΑΑX ]
}
ΑΑ^ _
)
ΑΑ_ `
;
ΑΑ` a
}
ΒΒ 
var
ΓΓ 
result
ΓΓ 
=
ΓΓ 
await
ΓΓ 
UserManager
ΓΓ *
.
ΓΓ* +
AddLoginAsync
ΓΓ+ 8
(
ΓΓ8 9
User
ΓΓ9 =
.
ΓΓ= >
Identity
ΓΓ> F
.
ΓΓF G
	GetUserId
ΓΓG P
(
ΓΓP Q
)
ΓΓQ R
,
ΓΓR S
	loginInfo
ΓΓT ]
.
ΓΓ] ^
Login
ΓΓ^ c
)
ΓΓc d
;
ΓΓd e
return
ΔΔ 
result
ΔΔ 
.
ΔΔ 
	Succeeded
ΔΔ #
?
ΔΔ$ %
RedirectToAction
ΔΔ& 6
(
ΔΔ6 7
$str
ΔΔ7 E
)
ΔΔE F
:
ΔΔG H
RedirectToAction
ΔΔI Y
(
ΔΔY Z
$str
ΔΔZ h
,
ΔΔh i
new
ΔΔj m
{
ΔΔn o
Message
ΔΔp w
=
ΔΔx y
ManageMessageIdΔΔz ‰
.ΔΔ‰ 
ErrorΔΔ 
}ΔΔ ‘
)ΔΔ‘ ’
;ΔΔ’ “
}
ΕΕ 	
	protected
ΗΗ 
override
ΗΗ 
void
ΗΗ 
Dispose
ΗΗ  '
(
ΗΗ' (
bool
ΗΗ( ,
	disposing
ΗΗ- 6
)
ΗΗ6 7
{
ΘΘ 	
if
ΙΙ 
(
ΙΙ 
	disposing
ΙΙ 
&&
ΙΙ 
_userManager
ΙΙ )
!=
ΙΙ* ,
null
ΙΙ- 1
)
ΙΙ1 2
{
ΚΚ 
_userManager
ΛΛ 
.
ΛΛ 
Dispose
ΛΛ $
(
ΛΛ$ %
)
ΛΛ% &
;
ΛΛ& '
_userManager
ΜΜ 
=
ΜΜ 
null
ΜΜ #
;
ΜΜ# $
}
ΝΝ 
base
ΟΟ 
.
ΟΟ 
Dispose
ΟΟ 
(
ΟΟ 
	disposing
ΟΟ "
)
ΟΟ" #
;
ΟΟ# $
}
ΠΠ 	
private
ΤΤ 
const
ΤΤ 
string
ΤΤ 
XsrfKey
ΤΤ $
=
ΤΤ% &
$str
ΤΤ' /
;
ΤΤ/ 0
private
ΦΦ $
IAuthenticationManager
ΦΦ &#
AuthenticationManager
ΦΦ' <
{
ΧΧ 	
get
ΨΨ 
{
ΩΩ 
return
ΪΪ 
HttpContext
ΪΪ "
.
ΪΪ" #
GetOwinContext
ΪΪ# 1
(
ΪΪ1 2
)
ΪΪ2 3
.
ΪΪ3 4
Authentication
ΪΪ4 B
;
ΪΪB C
}
ΫΫ 
}
άά 	
private
ήή 
void
ήή 
	AddErrors
ήή 
(
ήή 
IdentityResult
ήή -
result
ήή. 4
)
ήή4 5
{
ίί 	
foreach
ΰΰ 
(
ΰΰ 
var
ΰΰ 
error
ΰΰ 
in
ΰΰ !
result
ΰΰ" (
.
ΰΰ( )
Errors
ΰΰ) /
)
ΰΰ/ 0
{
αα 

ModelState
ββ 
.
ββ 
AddModelError
ββ (
(
ββ( )
$str
ββ) +
,
ββ+ ,
error
ββ- 2
)
ββ2 3
;
ββ3 4
}
γγ 
}
δδ 	
private
ζζ 
bool
ζζ 
HasPassword
ζζ  
(
ζζ  !
)
ζζ! "
{
ηη 	
var
θθ 
user
θθ 
=
θθ 
UserManager
θθ "
.
θθ" #
FindById
θθ# +
(
θθ+ ,
User
θθ, 0
.
θθ0 1
Identity
θθ1 9
.
θθ9 :
	GetUserId
θθ: C
(
θθC D
)
θθD E
)
θθE F
;
θθF G
if
ιι 
(
ιι 
user
ιι 
!=
ιι 
null
ιι 
)
ιι 
{
κκ 
return
λλ 
user
λλ 
.
λλ 
PasswordHash
λλ (
!=
λλ) +
null
λλ, 0
;
λλ0 1
}
μμ 
return
νν 
false
νν 
;
νν 
}
ξξ 	
private
ππ 
bool
ππ 
HasSign
ππ 
(
ππ 
)
ππ 
{
ρρ 	
var
ςς 
user
ςς 
=
ςς 
UserManager
ςς "
.
ςς" #
FindById
ςς# +
(
ςς+ ,
User
ςς, 0
.
ςς0 1
Identity
ςς1 9
.
ςς9 :
	GetUserId
ςς: C
(
ςςC D
)
ςςD E
)
ςςE F
;
ςςF G
if
σσ 
(
σσ 
user
σσ 
!=
σσ 
null
σσ 
)
σσ 
{
ττ 
return
υυ 
user
υυ 
.
υυ 
SingUrl
υυ #
!=
υυ$ &
null
υυ' +
;
υυ+ ,
}
φφ 
return
χχ 
false
χχ 
;
χχ 
}
ψψ 	
private
ϊϊ 
bool
ϊϊ 
HasPhoneNumber
ϊϊ #
(
ϊϊ# $
)
ϊϊ$ %
{
ϋϋ 	
var
όό 
user
όό 
=
όό 
UserManager
όό "
.
όό" #
FindById
όό# +
(
όό+ ,
User
όό, 0
.
όό0 1
Identity
όό1 9
.
όό9 :
	GetUserId
όό: C
(
όόC D
)
όόD E
)
όόE F
;
όόF G
if
ύύ 
(
ύύ 
user
ύύ 
!=
ύύ 
null
ύύ 
)
ύύ 
{
ώώ 
return
ÿÿ 
user
ÿÿ 
.
ÿÿ 
PhoneNumber
ÿÿ '
!=
ÿÿ( *
null
ÿÿ+ /
;
ÿÿ/ 0
}
€€ 
return
 
false
 
;
 
}
‚‚ 	
public
„„ 
enum
„„ 
ManageMessageId
„„ #
{
…… 	
AddPhoneSuccess
†† 
,
†† #
ChangePasswordSuccess
‡‡ !
,
‡‡! "!
SetTwoFactorSuccess
 
,
   
SetPasswordSuccess
‰‰ 
,
‰‰  
RemoveLoginSuccess
 
,
  
RemovePhoneSuccess
‹‹ 
,
‹‹ 
Error
 
}
 	
}
 
}‘‘ 
LD:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Controllers\ReportarIncidentesController.cs
	namespace 	
EwoQ
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
public 

class (
ReportarIncidentesController -
:. /

Controller0 :
{ 
private 
EwoQEntities 
db 
=  !
new" %
EwoQEntities& 2
(2 3
)3 4
;4 5
int 

AREASTYPES 
= 
$num 
; 
int 

LINESTYPES 
= 
$num 
; 
int 
INCIDENTSTYPES 
= 
$num 
;  
int 
FINALDISPOSITION 
= 
$num  
;  !
int   
UNIDADMEDIDA   
=   
$num   
;   
int!! 
TOPFIVEFORZERO!! 
=!! 
$num!! 
;!!  
string"" 
	ADMINROLE"" 
="" 
$str"" A
;""A B
string## 
OPERATINGROLE## 
=## 
$str## E
;##E F
static$$ 
string$$ 

ewo_images$$  
=$$! "
$str$$# A
;$$A B
['' 	
HttpPost''	 
]'' 
public(( 
async(( 
Task(( 
<(( 
ActionResult(( &
>((& '
LoadDataAsync((( 5
(((5 6
)((6 7
{)) 	
Task** 
<** 
List** 
<** &
ReporteIncidentesViewModel** 0
>**0 1
>**1 2
rivm**3 7
;**7 8
try,, 
{-- 
AspNetUsers.. 
aspNetUsers.. '
=..( )
DaoUsuarios..* 5
...5 6
DaoInstance..6 A
...A B
GetUser..B I
(..I J
User..J N
...N O
Identity..O W
...W X
	GetUserId..X a
(..a b
)..b c
)..c d
;..d e
int:: 
recordsTotal::  
=::! "
$num::# $
;::$ %
if<< 
(<< 
aspNetUsers<< 
.<<  
IdRol<<  %
.<<% &
Equals<<& ,
(<<, -
Utils<<- 2
.<<2 3
SomeHelpers<<3 >
.<<> ?
ROL_OPER<<? G
)<<G H
)<<H I
{== 
rivm>> 
=>> 
DaoEwo>> !
.>>! "
DaoInstance>>" -
.>>- .

GetEwoList>>. 8
(>>8 9
aspNetUsers>>9 D
.>>D E
Id>>E G
)>>G H
;>>H I
}?? 
else@@ 
{AA 
rivmBB 
=BB 
DaoEwoBB !
.BB! "
DaoInstanceBB" -
.BB- .

GetEwoListBB. 8
(BB8 9
)BB9 :
;BB: ;
}CC 
varEE 
data1EE 
=EE 
awaitEE !
rivmEE" &
;EE& '
recordsTotalTT 
=TT 
data1TT $
.TT$ %
CountTT% *
(TT* +
)TT+ ,
;TT, -
returnYY 
JsonYY 
(YY 
newYY 
{YY  !
recordsFilteredYY" 1
=YY2 3
recordsTotalYY4 @
,YY@ A
recordsTotalYYB N
=YYO P
recordsTotalYYQ ]
,YY] ^
dataYY_ c
=YYd e
data1YYf k
}YYl m
)YYm n
;YYn o
}ZZ 
catch[[ 
([[ 
	Exception[[ 
)[[ 
{\\ 
throw]] 
;]] 
}^^ 
}__ 	
publicdd 
asyncdd 
Taskdd 
<dd 
ActionResultdd &
>dd& '
Indexdd( -
(dd- .
)dd. /
{ee 	
returngg 
Viewgg 
(gg 
)gg 
;gg 
}hh 	
publicjj 
asyncjj 
Taskjj 
<jj 

JsonResultjj $
>jj$ %
GetAllUsersAsyncjj& 6
(jj6 7
)jj7 8
{kk 	

SelectListll 
Listll 
=ll 
nullll "
;ll" #
varoo 
listUoo 
=oo 
awaitoo 
DaoUsuariosoo )
.oo) *
DaoInstanceoo* 5
.oo5 6
GetAllUsersoo6 A
(ooA B
)ooB C
;ooC D
listUpp 
.pp 
Insertpp 
(pp 
$numpp 
,pp 
newpp 
UsersUIpp  '
(pp' (
)pp( )
{pp* +
Idpp, .
=pp/ 0
$strpp1 4
,pp4 5
NombresCommpletospp6 G
=ppH I
$strppJ a
}ppb c
)ppc d
;ppd e
Listqq 
=qq 
newqq 

SelectListqq !
(qq! "
listUqq" '
,qq' (
$strqq) -
,qq- .
$strqq/ B
)qqB C
;qqC D
returnss 
Jsonss 
(ss 
newss 

SelectListss &
(ss& '
Listss' +
,ss+ ,
$strss- 4
,ss4 5
$strss6 <
)ss< =
)ss= >
;ss> ?
}tt 	
[ww 	
HttpPostww	 
]ww 
publicxx 
asyncxx 
Taskxx 
<xx 

JsonResultxx $
>xx$ % 
GetAllUsersJsonAsyncxx& :
(xx: ;
)xx; <
{yy 	
varzz 
userszz 
=zz 
awaitzz 
DaoUsuarioszz )
.zz) *
DaoInstancezz* 5
.zz5 6
GetAllUserszz6 A
(zzA B
)zzB C
;zzC D
return{{ 
Json{{ 
({{ 
users{{ 
){{ 
;{{ 
}|| 	
[~~ 	
HttpPost~~	 
]~~ 
public 
async 
Task 
< 

JsonResult $
>$ % 
GetAllDispoJsonAsync& :
(: ;
); <
{
€€ 	
var
‚‚ 
listDF
‚‚ 
=
‚‚ 
await
‚‚ 
DaoTiposData
‚‚ +
.
‚‚+ ,
DaoInstance
‚‚, 7
.
‚‚7 8
GetTypesAsync
‚‚8 E
(
‚‚E F
FINALDISPOSITION
‚‚F V
)
‚‚V W
;
‚‚W X
listDF
ƒƒ 
.
ƒƒ 
Insert
ƒƒ 
(
ƒƒ 
$num
ƒƒ 
,
ƒƒ 
new
ƒƒ  
Database
ƒƒ! )
.
ƒƒ) *

tipos_data
ƒƒ* 4
(
ƒƒ4 5
)
ƒƒ5 6
{
ƒƒ7 8
id
ƒƒ9 ;
=
ƒƒ< =
$num
ƒƒ> ?
,
ƒƒ? @
descripcion
ƒƒA L
=
ƒƒM N
$str
ƒƒO j
}
ƒƒk l
)
ƒƒl m
;
ƒƒm n
var
„„ 
DisposicionFList
„„  
=
„„! "
new
„„# &

SelectList
„„' 1
(
„„1 2
listDF
„„2 8
,
„„8 9
$str
„„: >
,
„„> ?
$str
„„@ M
)
„„M N
;
„„N O
return
†† 
Json
†† 
(
†† 
DisposicionFList
†† (
)
††( )
;
††) *
}
‡‡ 	
public
‰‰ 
async
‰‰ 
Task
‰‰ 
<
‰‰ 

JsonResult
‰‰ $
>
‰‰$ %
GetAreasJsonAsync
‰‰& 7
(
‰‰7 8
)
‰‰8 9
{
 	
var
 
listA
 
=
 
await
 
DaoTiposData
 *
.
* +
DaoInstance
+ 6
.
6 7
GetTypesAsync
7 D
(
D E

AREASTYPES
E O
)
O P
;
P Q
listA
 
.
 
Insert
 
(
 
$num
 
,
 
new
 
Database
  (
.
( )

tipos_data
) 3
(
3 4
)
4 5
{
6 7
id
8 :
=
; <
$num
= >
,
> ?
descripcion
@ K
=
L M
$str
N b
}
c d
)
d e
;
e f
var
 
	AreasList
 
=
 
new
 

SelectList
  *
(
* +
listA
+ 0
,
0 1
$str
2 6
,
6 7
$str
8 E
)
E F
;
F G
return
 
Json
 
(
 
	AreasList
 !
)
! "
;
" #
}
‘‘ 	
[
–– 
HttpPost
–– 
]
–– 
public
—— 
async
—— 
Task
—— 
<
—— 

JsonResult
—— $
>
——$ %#
GetAllUniMedJsonAsync
——& ;
(
——; <
)
——< =
{
 	
var
 
listUM
 
=
 
await
 
DaoTiposData
 +
.
+ ,
DaoInstance
, 7
.
7 8
GetTypesAsync
8 E
(
E F
UNIDADMEDIDA
F R
)
R S
;
S T
listUM
›› 
.
›› 
Insert
›› 
(
›› 
$num
›› 
,
›› 
new
››  
Database
››! )
.
››) *

tipos_data
››* 4
(
››4 5
)
››5 6
{
››7 8
id
››9 ;
=
››< =
$num
››> ?
,
››? @
descripcion
››A L
=
››M N
$str
››O e
}
››f g
)
››g h
;
››h i
var
 

UniMedList
 
=
 
new
  

SelectList
! +
(
+ ,
listUM
, 2
,
2 3
$str
4 8
,
8 9
$str
: G
)
G H
;
H I
return
 
Json
 
(
 

UniMedList
 "
)
" #
;
# $
}
 	
[
΅΅ 	
HttpPost
΅΅	 
]
΅΅ 
public
ΆΆ 
async
ΆΆ 
Task
ΆΆ 
<
ΆΆ 

JsonResult
ΆΆ $
>
ΆΆ$ %"
Get4MQuestionsByType
ΆΆ& :
(
ΆΆ: ;
int
ΆΆ; >
id
ΆΆ? A
)
ΆΆA B
{
££ 	
var
¤¤ 
qstns
¤¤ 
=
¤¤ 
await
¤¤ 
Dao4M
¤¤ #
.
¤¤# $
DaoInstance
¤¤$ /
.
¤¤/ 0"
Get4mQuestionsByType
¤¤0 D
(
¤¤D E
id
¤¤E G
)
¤¤G H
;
¤¤H I
return
¥¥ 
Json
¥¥ 
(
¥¥ 
qstns
¥¥ 
)
¥¥ 
;
¥¥ 
}
¦¦ 	
public
¨¨ 
async
¨¨ 
Task
¨¨ 
<
¨¨ 

JsonResult
¨¨ $
>
¨¨$ %
GetAllUsers
¨¨& 1
(
¨¨1 2
)
¨¨2 3
{
©© 	
var
«« 
list
«« 
=
«« 
await
«« 
DaoUsuarios
«« (
.
««( )
DaoInstance
««) 4
.
««4 5
GetAllUsers
««5 @
(
««@ A
)
««A B
;
««B C
return
­­ 
Json
­­ 
(
­­ 
list
­­ 
,
­­ !
JsonRequestBehavior
­­ 1
.
­­1 2
AllowGet
­­2 :
)
­­: ;
;
­­; <
}
®® 	
public
±± 
async
±± 
Task
±± 
<
±± 
ActionResult
±± &
>
±±& '
Details
±±( /
(
±±/ 0
long
±±0 4
?
±±4 5
id
±±6 8
)
±±8 9
{
²² 	
if
³³ 
(
³³ 
id
³³ 
==
³³ 
null
³³ 
)
³³ 
{
΄΄ 
return
µµ 
new
µµ "
HttpStatusCodeResult
µµ /
(
µµ/ 0
HttpStatusCode
µµ0 >
.
µµ> ?

BadRequest
µµ? I
)
µµI J
;
µµJ K
}
¶¶ 
ewo
·· 
ewo
·· 
=
·· 
await
·· 
db
·· 
.
·· 
ewo
·· "
.
··" #
	FindAsync
··# ,
(
··, -
id
··- /
)
··/ 0
;
··0 1
if
ΈΈ 
(
ΈΈ 
ewo
ΈΈ 
==
ΈΈ 
null
ΈΈ 
)
ΈΈ 
{
ΉΉ 
return
ΊΊ 
HttpNotFound
ΊΊ #
(
ΊΊ# $
)
ΊΊ$ %
;
ΊΊ% &
}
»» 
return
ΌΌ 
View
ΌΌ 
(
ΌΌ 
ewo
ΌΌ 
)
ΌΌ 
;
ΌΌ 
}
½½ 	
public
ΐΐ 
async
ΐΐ 
Task
ΐΐ 
<
ΐΐ 
ActionResult
ΐΐ &
>
ΐΐ& '
Create
ΐΐ( .
(
ΐΐ. /
)
ΐΐ/ 0
{
ΑΑ 	
return
ΒΒ 
View
ΒΒ 
(
ΒΒ 
await
ΒΒ 

BuildModel
ΒΒ (
(
ΒΒ( )
$num
ΒΒ) *
)
ΒΒ* +
)
ΒΒ+ ,
;
ΒΒ, -
}
ΓΓ 	
[
ΙΙ 	
HttpPost
ΙΙ	 
]
ΙΙ 
[
ΚΚ 	&
ValidateAntiForgeryToken
ΚΚ	 !
]
ΚΚ! "
public
ΜΜ 
async
ΜΜ 
Task
ΜΜ 
<
ΜΜ 

JsonResult
ΜΜ $
>
ΜΜ$ %
CreateAsync
ΜΜ& 1
(
ΜΜ1 2(
ReporteIncidentesViewModel
ΜΜ2 L
ewr
ΜΜM P
)
ΜΜP Q
{
ΝΝ 	
RequestResponse
ΞΞ 
rr
ΞΞ 
=
ΞΞ  
null
ΞΞ! %
;
ΞΞ% &
try
ΠΠ 
{
ΡΡ 
rr
ÒÒ 
=
ÒÒ 
await
ÒÒ 
CreateEwoObject
ÒÒ *
(
ÒÒ* +
ewr
ÒÒ+ .
,
ÒÒ. /
true
ÒÒ/ 3
)
ÒÒ3 4
;
ÒÒ4 5
}
ΣΣ 
catch
ΤΤ 
(
ΤΤ 
	Exception
ΤΤ 
e
ΤΤ 
)
ΤΤ 
{
ΥΥ 
Debug
ΦΦ 
.
ΦΦ 
	WriteLine
ΦΦ 
(
ΦΦ  
$str
ΦΦ  7
+
ΦΦ7 8
e
ΦΦ8 9
.
ΦΦ9 :
ToString
ΦΦ: B
(
ΦΦB C
)
ΦΦC D
)
ΦΦD E
;
ΦΦE F
rr
ΧΧ 
.
ΧΧ 
Codigo
ΧΧ 
=
ΧΧ 
-
ΧΧ 
$num
ΧΧ 
;
ΧΧ 
}
ΨΨ 
return
ΫΫ 
Json
ΫΫ 
(
ΫΫ 
new
ΫΫ 
{
ΫΫ 
code
ΫΫ "
=
ΫΫ" #
rr
ΫΫ$ &
.
ΫΫ& '
Codigo
ΫΫ' -
}
ΫΫ. /
)
ΫΫ/ 0
;
ΫΫ0 1
}
άά 	
[
ήή 
HttpGet
ήή 
]
ήή 
public
ίί 
async
ίί 
Task
ίί 
<
ίί 
ActionResult
ίί %
>
ίί% &
ProcesarIncidente
ίί' 8
(
ίί8 9
int
ίί9 <
?
ίί< =
id
ίί> @
)
ίί@ A
{
ΰΰ 	
int
αα 
code
αα 
;
αα 
string
ββ 
message
ββ 
;
ββ 
try
δδ 
{
εε 
var
ζζ 
userRole
ζζ 
=
ζζ 
DaoUsuarios
ζζ *
.
ζζ* +
DaoInstance
ζζ+ 6
.
ζζ6 7
GetUser
ζζ7 >
(
ζζ> ?
User
ζζ? C
.
ζζC D
Identity
ζζD L
.
ζζL M
	GetUserId
ζζM V
(
ζζV W
)
ζζW X
)
ζζX Y
.
ζζY Z
IdRol
ζζZ _
;
ζζ_ `
if
θθ 
(
θθ 
SomeHelpers
θθ 
.
θθ  
ROL_OPER
θθ  (
.
θθ( )
Equals
θθ) /
(
θθ/ 0
userRole
θθ0 8
)
θθ8 9
)
θθ9 :
{
ιι 
return
κκ 
new
κκ  
HttpNotFoundResult
κκ 1
(
κκ1 2
$str
κκ2 b
)
κκb c
;
κκc d
}
λλ 
if
νν 
(
νν 
id
νν 
.
νν 
HasValue
νν 
)
νν  
{
ξξ 
var
οο 
rivm
οο 
=
οο 
await
οο $

BuildModel
οο% /
(
οο/ 0
id
οο0 2
.
οο2 3
Value
οο3 8
)
οο8 9
;
οο9 :
return
ππ 
View
ππ 
(
ππ  
rivm
ππ  $
)
ππ$ %
;
ππ% &
}
ρρ 
else
ςς 
{
σσ 
return
ττ 
Json
ττ 
(
ττ  
new
ττ  #
{
ττ$ %
code
ττ% )
=
ττ* +
-
ττ, -
$num
ττ- .
,
ττ. /
message
ττ0 7
=
ττ8 9
$str
ττ: W
}
ττX Y
,
ττY Z!
JsonRequestBehavior
ττZ m
.
ττm n
AllowGet
ττn v
)
ττv w
;
ττw x
}
υυ 
}
ψψ 
catch
ωω 
(
ωω 
	Exception
ωω 
ex
ωω 
)
ωω  
{
ϊϊ 
code
ϋϋ 
=
ϋϋ 
-
ϋϋ 
$num
ϋϋ 
;
ϋϋ 
message
όό 
=
όό 
$str
όό P
+
όόP Q
ex
όόR T
.
όόT U
Message
όόU \
;
όό\ ]
Trace
ύύ 
.
ύύ 
	WriteLine
ύύ 
(
ύύ  
message
ύύ  '
)
ύύ' (
;
ύύ( )
return
ώώ 
Json
ώώ 
(
ώώ 
new
ώώ 
{
ώώ  !
code
ώώ" &
,
ώώ& '
message
ώώ( /
}
ώώ0 1
)
ώώ1 2
;
ώώ2 3
}
ÿÿ 
}
€€ 	
[
‚‚ 	
HttpPost
‚‚	 
]
‚‚ 
[
ƒƒ 	&
ValidateAntiForgeryToken
ƒƒ	 !
]
ƒƒ! "
public
„„ 
async
„„ 
Task
„„ 
<
„„ 

JsonResult
„„ $
>
„„$ %#
ProcesarIncidentePost
„„& ;
(
„„; <(
ReporteIncidentesViewModel
„„< V
rivm
„„W [
)
„„[ \
{
…… 	
RequestResponse
‡‡ 
rr
‡‡ 
=
‡‡  
null
‡‡! %
;
‡‡% &
try
‰‰ 
{
 
rr
‹‹ 
=
‹‹ 
await
‹‹ 
CreateEwoObject
‹‹ *
(
‹‹* +
rivm
‹‹+ /
,
‹‹/ 0
false
‹‹1 6
)
‹‹6 7
;
‹‹7 8
}
 
catch
 
(
 
	Exception
 
ex
 
)
  
{
 
Trace
 
.
 
	WriteLine
 
(
  
$str
  >
+
? @
ex
A C
.
C D
ToString
D L
(
L M
)
M N
)
N O
;
O P
}
 
return
‘‘ 
Json
‘‘ 
(
‘‘ 
rr
‘‘ 
,
‘‘ !
JsonRequestBehavior
‘‘ /
.
‘‘/ 0
AllowGet
‘‘0 8
)
‘‘8 9
;
‘‘9 :
}
’’ 	
public
•• 
async
•• 
Task
•• 
<
•• 
ActionResult
•• &
>
••& '
Edit
••( ,
(
••, -
long
••- 1
?
••1 2
id
••3 5
)
••5 6
{
–– 	
if
—— 
(
—— 
id
—— 
==
—— 
null
—— 
)
—— 
{
 
return
™™ 
new
™™ "
HttpStatusCodeResult
™™ /
(
™™/ 0
HttpStatusCode
™™0 >
.
™™> ?

BadRequest
™™? I
)
™™I J
;
™™J K
}
 
ewo
›› 
ewo
›› 
=
›› 
await
›› 
db
›› 
.
›› 
ewo
›› "
.
››" #
	FindAsync
››# ,
(
››, -
id
››- /
)
››/ 0
;
››0 1
if
 
(
 
ewo
 
==
 
null
 
)
 
{
 
return
 
HttpNotFound
 #
(
# $
)
$ %
;
% &
}
 
ViewBag
   
.
   &
codigo_coordinador_turno
   ,
=
  - .
new
  / 2

SelectList
  3 =
(
  = >
db
  > @
.
  @ A
AspNetUsers
  A L
,
  L M
$str
  N R
,
  R S
$str
  T ]
,
  ] ^
ewo
  _ b
.
  b c&
codigo_coordinador_turno
  c {
)
  { |
;
  | }
ViewBag
΅΅ 
.
΅΅ (
codigo_lider_investigacion
΅΅ .
=
΅΅/ 0
new
΅΅1 4

SelectList
΅΅5 ?
(
΅΅? @
db
΅΅@ B
.
΅΅B C
AspNetUsers
΅΅C N
,
΅΅N O
$str
΅΅P T
,
΅΅T U
$str
΅΅V _
,
΅΅_ `
ewo
΅΅a d
.
΅΅d e(
codigo_lider_investigacion
΅΅e 
)΅΅ €
;΅΅€ 
ViewBag
ΆΆ 
.
ΆΆ )
codigo_operario_responsable
ΆΆ /
=
ΆΆ0 1
new
ΆΆ2 5

SelectList
ΆΆ6 @
(
ΆΆ@ A
db
ΆΆA C
.
ΆΆC D
AspNetUsers
ΆΆD O
,
ΆΆO P
$str
ΆΆQ U
,
ΆΆU V
$str
ΆΆW `
,
ΆΆ` a
ewo
ΆΆb e
.
ΆΆe f*
codigo_operario_responsableΆΆf 
)ΆΆ ‚
;ΆΆ‚ ƒ
ViewBag
££ 
.
££ (
pa_codigo_coordinador_prod
££ .
=
££/ 0
new
££1 4

SelectList
££5 ?
(
££? @
db
££@ B
.
££B C
AspNetUsers
££C N
,
££N O
$str
££P T
,
££T U
$str
££V _
,
££_ `
ewo
££a d
.
££d e(
pa_codigo_coordinador_prod
££e 
)££ €
;££€ 
ViewBag
¤¤ 
.
¤¤ $
pa_codigo_gerente_prod
¤¤ *
=
¤¤+ ,
new
¤¤- 0

SelectList
¤¤1 ;
(
¤¤; <
db
¤¤< >
.
¤¤> ?
AspNetUsers
¤¤? J
,
¤¤J K
$str
¤¤L P
,
¤¤P Q
$str
¤¤R [
,
¤¤[ \
ewo
¤¤] `
.
¤¤` a$
pa_codigo_gerente_prod
¤¤a w
)
¤¤w x
;
¤¤x y
ViewBag
¥¥ 
.
¥¥ '
pa_codigo_gerente_calidad
¥¥ -
=
¥¥. /
new
¥¥0 3

SelectList
¥¥4 >
(
¥¥> ?
db
¥¥? A
.
¥¥A B
AspNetUsers
¥¥B M
,
¥¥M N
$str
¥¥O S
,
¥¥S T
$str
¥¥U ^
,
¥¥^ _
ewo
¥¥` c
.
¥¥c d'
pa_codigo_gerente_calidad
¥¥d }
)
¥¥} ~
;
¥¥~ 
ViewBag
¦¦ 
.
¦¦ $
pa_codigo_jefe_calidad
¦¦ *
=
¦¦+ ,
new
¦¦- 0

SelectList
¦¦1 ;
(
¦¦; <
db
¦¦< >
.
¦¦> ?
AspNetUsers
¦¦? J
,
¦¦J K
$str
¦¦L P
,
¦¦P Q
$str
¦¦R [
,
¦¦[ \
ewo
¦¦] `
.
¦¦` a$
pa_codigo_jefe_calidad
¦¦a w
)
¦¦w x
;
¦¦x y
ViewBag
§§ 
.
§§ %
codigo_responsable_area
§§ +
=
§§, -
new
§§. 1

SelectList
§§2 <
(
§§< =
db
§§= ?
.
§§? @
AspNetUsers
§§@ K
,
§§K L
$str
§§M Q
,
§§Q R
$str
§§S \
,
§§\ ]
ewo
§§^ a
.
§§a b%
codigo_responsable_area
§§b y
)
§§y z
;
§§z {
ViewBag
¨¨ 
.
¨¨ 
codigo_producto
¨¨ #
=
¨¨$ %
new
¨¨& )

SelectList
¨¨* 4
(
¨¨4 5
db
¨¨5 7
.
¨¨7 8
	productos
¨¨8 A
,
¨¨A B
$str
¨¨C G
,
¨¨G H
$str
¨¨I Q
,
¨¨Q R
ewo
¨¨S V
.
¨¨V W
producto
¨¨W _
)
¨¨_ `
;
¨¨` a
ViewBag
©© 
.
©© +
codigo_disposicion_final_prod
©© 1
=
©©2 3
new
©©4 7

SelectList
©©8 B
(
©©B C
db
©©C E
.
©©E F

tipos_data
©©F P
,
©©P Q
$str
©©R V
,
©©V W
$str
©©X e
,
©©e f
ewo
©©g j
.
©©j k,
codigo_disposicion_final_prod©©k 
)©© ‰
;©©‰ 
ViewBag
ªª 
.
ªª 
codigo_estado
ªª !
=
ªª" #
new
ªª$ '

SelectList
ªª( 2
(
ªª2 3
db
ªª3 5
.
ªª5 6

tipos_data
ªª6 @
,
ªª@ A
$str
ªªB F
,
ªªF G
$str
ªªH U
,
ªªU V
ewo
ªªW Z
.
ªªZ [
codigo_estado
ªª[ h
)
ªªh i
;
ªªi j
ViewBag
«« 
.
«« 
codigo_linea
««  
=
««! "
new
««# &

SelectList
««' 1
(
««1 2
db
««2 4
.
««4 5

tipos_data
««5 ?
,
««? @
$str
««A E
,
««E F
$str
««G T
,
««T U
ewo
««V Y
.
««Y Z
codigo_linea
««Z f
)
««f g
;
««g h
return
®® 
View
®® 
(
®® 
ewo
®® 
)
®® 
;
®® 
}
―― 	
[
΄΄ 	
HttpPost
΄΄	 
]
΄΄ 
[
µµ 	&
ValidateAntiForgeryToken
µµ	 !
]
µµ! "
public
¶¶ 
async
¶¶ 
Task
¶¶ 
<
¶¶ 
ActionResult
¶¶ &
>
¶¶& '
Edit
¶¶( ,
(
¶¶, -
[
¶¶- .
Bind
¶¶. 2
(
¶¶2 3
Include
¶¶3 :
=
¶¶; <
$str¶¶= ·
)¶¶· Έ
]¶¶Έ Ή
ewo¶¶Ί ½
ewo¶¶Ύ Α
)¶¶Α Β
{
·· 	
if
ΈΈ 
(
ΈΈ 

ModelState
ΈΈ 
.
ΈΈ 
IsValid
ΈΈ "
)
ΈΈ" #
{
ΉΉ 
db
ΊΊ 
.
ΊΊ 
Entry
ΊΊ 
(
ΊΊ 
ewo
ΊΊ 
)
ΊΊ 
.
ΊΊ 
State
ΊΊ #
=
ΊΊ$ %
EntityState
ΊΊ& 1
.
ΊΊ1 2
Modified
ΊΊ2 :
;
ΊΊ: ;
await
»» 
db
»» 
.
»» 
SaveChangesAsync
»» )
(
»») *
)
»»* +
;
»»+ ,
return
ΌΌ 
RedirectToAction
ΌΌ '
(
ΌΌ' (
$str
ΌΌ( /
)
ΌΌ/ 0
;
ΌΌ0 1
}
½½ 
ViewBag
ΎΎ 
.
ΎΎ &
codigo_coordinador_turno
ΎΎ ,
=
ΎΎ- .
new
ΎΎ/ 2

SelectList
ΎΎ3 =
(
ΎΎ= >
db
ΎΎ> @
.
ΎΎ@ A
AspNetUsers
ΎΎA L
,
ΎΎL M
$str
ΎΎN R
,
ΎΎR S
$str
ΎΎT ]
,
ΎΎ] ^
ewo
ΎΎ_ b
.
ΎΎb c&
codigo_coordinador_turno
ΎΎc {
)
ΎΎ{ |
;
ΎΎ| }
ViewBag
ΏΏ 
.
ΏΏ (
codigo_lider_investigacion
ΏΏ .
=
ΏΏ/ 0
new
ΏΏ1 4

SelectList
ΏΏ5 ?
(
ΏΏ? @
db
ΏΏ@ B
.
ΏΏB C
AspNetUsers
ΏΏC N
,
ΏΏN O
$str
ΏΏP T
,
ΏΏT U
$str
ΏΏV _
,
ΏΏ_ `
ewo
ΏΏa d
.
ΏΏd e(
codigo_lider_investigacion
ΏΏe 
)ΏΏ €
;ΏΏ€ 
ViewBag
ΐΐ 
.
ΐΐ )
codigo_operario_responsable
ΐΐ /
=
ΐΐ0 1
new
ΐΐ2 5

SelectList
ΐΐ6 @
(
ΐΐ@ A
db
ΐΐA C
.
ΐΐC D
AspNetUsers
ΐΐD O
,
ΐΐO P
$str
ΐΐQ U
,
ΐΐU V
$str
ΐΐW `
,
ΐΐ` a
ewo
ΐΐb e
.
ΐΐe f*
codigo_operario_responsableΐΐf 
)ΐΐ ‚
;ΐΐ‚ ƒ
ViewBag
ΑΑ 
.
ΑΑ (
pa_codigo_coordinador_prod
ΑΑ .
=
ΑΑ/ 0
new
ΑΑ1 4

SelectList
ΑΑ5 ?
(
ΑΑ? @
db
ΑΑ@ B
.
ΑΑB C
AspNetUsers
ΑΑC N
,
ΑΑN O
$str
ΑΑP T
,
ΑΑT U
$str
ΑΑV _
,
ΑΑ_ `
ewo
ΑΑa d
.
ΑΑd e(
pa_codigo_coordinador_prod
ΑΑe 
)ΑΑ €
;ΑΑ€ 
ViewBag
ΒΒ 
.
ΒΒ $
pa_codigo_gerente_prod
ΒΒ *
=
ΒΒ+ ,
new
ΒΒ- 0

SelectList
ΒΒ1 ;
(
ΒΒ; <
db
ΒΒ< >
.
ΒΒ> ?
AspNetUsers
ΒΒ? J
,
ΒΒJ K
$str
ΒΒL P
,
ΒΒP Q
$str
ΒΒR [
,
ΒΒ[ \
ewo
ΒΒ] `
.
ΒΒ` a$
pa_codigo_gerente_prod
ΒΒa w
)
ΒΒw x
;
ΒΒx y
ViewBag
ΓΓ 
.
ΓΓ '
pa_codigo_gerente_calidad
ΓΓ -
=
ΓΓ. /
new
ΓΓ0 3

SelectList
ΓΓ4 >
(
ΓΓ> ?
db
ΓΓ? A
.
ΓΓA B
AspNetUsers
ΓΓB M
,
ΓΓM N
$str
ΓΓO S
,
ΓΓS T
$str
ΓΓU ^
,
ΓΓ^ _
ewo
ΓΓ` c
.
ΓΓc d'
pa_codigo_gerente_calidad
ΓΓd }
)
ΓΓ} ~
;
ΓΓ~ 
ViewBag
ΔΔ 
.
ΔΔ $
pa_codigo_jefe_calidad
ΔΔ *
=
ΔΔ+ ,
new
ΔΔ- 0

SelectList
ΔΔ1 ;
(
ΔΔ; <
db
ΔΔ< >
.
ΔΔ> ?
AspNetUsers
ΔΔ? J
,
ΔΔJ K
$str
ΔΔL P
,
ΔΔP Q
$str
ΔΔR [
,
ΔΔ[ \
ewo
ΔΔ] `
.
ΔΔ` a$
pa_codigo_jefe_calidad
ΔΔa w
)
ΔΔw x
;
ΔΔx y
ViewBag
ΕΕ 
.
ΕΕ %
codigo_responsable_area
ΕΕ +
=
ΕΕ, -
new
ΕΕ. 1

SelectList
ΕΕ2 <
(
ΕΕ< =
db
ΕΕ= ?
.
ΕΕ? @
AspNetUsers
ΕΕ@ K
,
ΕΕK L
$str
ΕΕM Q
,
ΕΕQ R
$str
ΕΕS \
,
ΕΕ\ ]
ewo
ΕΕ^ a
.
ΕΕa b%
codigo_responsable_area
ΕΕb y
)
ΕΕy z
;
ΕΕz {
ViewBag
ΖΖ 
.
ΖΖ 
codigo_producto
ΖΖ #
=
ΖΖ$ %
new
ΖΖ& )

SelectList
ΖΖ* 4
(
ΖΖ4 5
db
ΖΖ5 7
.
ΖΖ7 8
	productos
ΖΖ8 A
,
ΖΖA B
$str
ΖΖC G
,
ΖΖG H
$str
ΖΖI Q
,
ΖΖQ R
ewo
ΖΖS V
.
ΖΖV W
producto
ΖΖW _
)
ΖΖ_ `
;
ΖΖ` a
ViewBag
ΗΗ 
.
ΗΗ +
codigo_disposicion_final_prod
ΗΗ 1
=
ΗΗ2 3
new
ΗΗ4 7

SelectList
ΗΗ8 B
(
ΗΗB C
db
ΗΗC E
.
ΗΗE F

tipos_data
ΗΗF P
,
ΗΗP Q
$str
ΗΗR V
,
ΗΗV W
$str
ΗΗX e
,
ΗΗe f
ewo
ΗΗg j
.
ΗΗj k,
codigo_disposicion_final_prodΗΗk 
)ΗΗ ‰
;ΗΗ‰ 
ViewBag
ΘΘ 
.
ΘΘ 
codigo_estado
ΘΘ !
=
ΘΘ" #
new
ΘΘ$ '

SelectList
ΘΘ( 2
(
ΘΘ2 3
db
ΘΘ3 5
.
ΘΘ5 6

tipos_data
ΘΘ6 @
,
ΘΘ@ A
$str
ΘΘB F
,
ΘΘF G
$str
ΘΘH U
,
ΘΘU V
ewo
ΘΘW Z
.
ΘΘZ [
codigo_estado
ΘΘ[ h
)
ΘΘh i
;
ΘΘi j
ViewBag
ΙΙ 
.
ΙΙ 
codigo_linea
ΙΙ  
=
ΙΙ! "
new
ΙΙ# &

SelectList
ΙΙ' 1
(
ΙΙ1 2
db
ΙΙ2 4
.
ΙΙ4 5

tipos_data
ΙΙ5 ?
,
ΙΙ? @
$str
ΙΙA E
,
ΙΙE F
$str
ΙΙG T
,
ΙΙT U
ewo
ΙΙV Y
.
ΙΙY Z
codigo_linea
ΙΙZ f
)
ΙΙf g
;
ΙΙg h
return
ΛΛ 
View
ΛΛ 
(
ΛΛ 
ewo
ΛΛ 
)
ΛΛ 
;
ΛΛ 
}
ΜΜ 	
public
ΟΟ 
async
ΟΟ 
Task
ΟΟ 
<
ΟΟ 
ActionResult
ΟΟ &
>
ΟΟ& '
Delete
ΟΟ( .
(
ΟΟ. /
long
ΟΟ/ 3
?
ΟΟ3 4
id
ΟΟ5 7
)
ΟΟ7 8
{
ΠΠ 	
if
ΡΡ 
(
ΡΡ 
id
ΡΡ 
==
ΡΡ 
null
ΡΡ 
)
ΡΡ 
{
ÒÒ 
return
ΣΣ 
new
ΣΣ "
HttpStatusCodeResult
ΣΣ /
(
ΣΣ/ 0
HttpStatusCode
ΣΣ0 >
.
ΣΣ> ?

BadRequest
ΣΣ? I
)
ΣΣI J
;
ΣΣJ K
}
ΤΤ 
ewo
ΥΥ 
ewo
ΥΥ 
=
ΥΥ 
await
ΥΥ 
db
ΥΥ 
.
ΥΥ 
ewo
ΥΥ "
.
ΥΥ" #
	FindAsync
ΥΥ# ,
(
ΥΥ, -
id
ΥΥ- /
)
ΥΥ/ 0
;
ΥΥ0 1
if
ΦΦ 
(
ΦΦ 
ewo
ΦΦ 
==
ΦΦ 
null
ΦΦ 
)
ΦΦ 
{
ΧΧ 
return
ΨΨ 
HttpNotFound
ΨΨ #
(
ΨΨ# $
)
ΨΨ$ %
;
ΨΨ% &
}
ΩΩ 
return
ΪΪ 
View
ΪΪ 
(
ΪΪ 
ewo
ΪΪ 
)
ΪΪ 
;
ΪΪ 
}
ΫΫ 	
[
ήή 	
HttpPost
ήή	 
,
ήή 

ActionName
ήή 
(
ήή 
$str
ήή &
)
ήή& '
]
ήή' (
[
ίί 	&
ValidateAntiForgeryToken
ίί	 !
]
ίί! "
public
ΰΰ 
async
ΰΰ 
Task
ΰΰ 
<
ΰΰ 
ActionResult
ΰΰ &
>
ΰΰ& '
DeleteConfirmed
ΰΰ( 7
(
ΰΰ7 8
long
ΰΰ8 <
id
ΰΰ= ?
)
ΰΰ? @
{
αα 	
ewo
ββ 
ewo
ββ 
=
ββ 
await
ββ 
db
ββ 
.
ββ 
ewo
ββ "
.
ββ" #
	FindAsync
ββ# ,
(
ββ, -
id
ββ- /
)
ββ/ 0
;
ββ0 1
db
γγ 
.
γγ 
ewo
γγ 
.
γγ 
Remove
γγ 
(
γγ 
ewo
γγ 
)
γγ 
;
γγ 
await
δδ 
db
δδ 
.
δδ 
SaveChangesAsync
δδ %
(
δδ% &
)
δδ& '
;
δδ' (
return
εε 
RedirectToAction
εε #
(
εε# $
$str
εε$ +
)
εε+ ,
;
εε, -
}
ζζ 	
[
θθ 	
HttpGet
θθ	 
]
θθ 
public
ιι 
async
ιι 
Task
ιι 
<
ιι 

JsonResult
ιι $
>
ιι$ %
GetProducts
ιι& 1
(
ιι1 2
string
ιι2 8
term
ιι9 =
)
ιι= >
{
κκ 	
var
μμ 
list
μμ 
=
μμ 
await
μμ 
DaoProductos
μμ )
.
μμ) *
DaoInstance
μμ* 5
.
μμ5 6
GetProductsAsync
μμ6 F
(
μμF G
)
μμG H
;
μμH I
return
ξξ 
Json
ξξ 
(
ξξ 
list
ξξ 
.
ξξ 
Where
ξξ "
(
ξξ" #
x
ξξ# $
=>
ξξ% '
x
ξξ( )
.
ξξ) *

StartsWith
ξξ* 4
(
οο 
term
οο 
,
οο 
StringComparison
οο &
.
οο& '&
CurrentCultureIgnoreCase
οο' ?
)
οο? @
)
οο@ A
,
οοA B!
JsonRequestBehavior
ππ '
.
ππ' (
AllowGet
ππ( 0
)
ππ0 1
;
ππ1 2
}
ρρ 	
[
σσ 	
HttpPost
σσ	 
]
σσ 
public
ττ 
async
ττ 
Task
ττ 
<
ττ 

JsonResult
ττ $
>
ττ$ %
GetAcionsList
ττ& 3
(
ττ3 4
long
ττ4 8
id_ewo
ττ9 ?
)
ττ? @
{
υυ 	
var
φφ 
actList
φφ 
=
φφ 
await
φφ 
DaoAcciones
φφ  +
.
φφ+ ,
DaoInstance
φφ, 7
.
φφ7 8
GetActionsList
φφ8 F
(
φφF G
id_ewo
φφG M
)
φφM N
;
φφN O
List
χχ 
<
χχ 
CustomInmActions
χχ !
>
χχ! "
kla
χχ# &
=
χχ' (
new
χχ) ,
List
χχ- 1
<
χχ1 2
CustomInmActions
χχ2 B
>
χχB C
(
χχC D
)
χχD E
;
χχE F
actList
ψψ 
.
ψψ 
ForEach
ψψ 
(
ψψ 
x
ψψ 
=>
ψψ  
{
ωω 
kla
ϊϊ 
.
ϊϊ 
Add
ϊϊ 
(
ϊϊ 
new
ϊϊ 
CustomInmActions
ϊϊ ,
(
ϊϊ, -
)
ϊϊ- .
{
ϋϋ 

codigo_ewo
όό 
=
όό  
x
όό! "
.
όό" #

codigo_ewo
όό# -
,
όό- .
accion
ύύ 
=
ύύ 
x
ύύ 
.
ύύ 
accion
ύύ %
,
ύύ% &
fecha_compromiso
ώώ $
=
ώώ% &
x
ώώ' (
.
ώώ( )
fecha_compromiso
ώώ) 9
.
ώώ9 :
Value
ώώ: ?
.
ώώ? @
ToString
ώώ@ H
(
ώώH I
$str
ώώI U
)
ώώU V
,
ώώV W
id
ÿÿ 
=
ÿÿ 
x
ÿÿ 
.
ÿÿ 
id
ÿÿ 
,
ÿÿ  
codigo_responsable
€€ &
=
€€' (
x
€€) *
.
€€* + 
codigo_responsable
€€+ =
,
€€= >#
evidencia_efectividad
 )
=
* +
x
, -
.
- .#
evidencia_efectividad
. C
}
‚‚ 
)
‚‚ 
;
‚‚ 
}
ƒƒ 
)
ƒƒ 
;
ƒƒ 
return
…… 
Json
…… 
(
…… 
kla
…… 
)
…… 
;
…… 
}
†† 	
[
 	
HttpPost
	 
]
 
public
‰‰ 
async
‰‰ 
Task
‰‰ 
<
‰‰ 

JsonResult
‰‰ $
>
‰‰$ %
GetEwoAsync
‰‰& 1
(
‰‰1 2
int
‰‰2 5
id
‰‰6 8
)
‰‰8 9
{
 	
var
‹‹ 
ewo
‹‹ 
=
‹‹ 
await
‹‹ 
DaoEwo
‹‹ "
.
‹‹" #
DaoInstance
‹‹# .
.
‹‹. /

GetEwoDesc
‹‹/ 9
(
‹‹9 :
id
‹‹: <
)
‹‹< =
;
‹‹= >
return
 
Json
 
(
 
ewo
 
)
 
;
 
}
 	
[
 	
HttpPost
	 
]
 
public
 
async
 
Task
 
<
 

JsonResult
 $
>
$ %
GetZeroQuestions
& 6
(
6 7
int
7 :
id_tipom
; C
)
C D
{
‘‘ 	
var
““ 
res
““ 
=
““ 
await
““ 
DaoZero
““ #
.
““# $
DaoInstance
““$ /
.
““/ 0
GetZeroQuestions
““0 @
(
““@ A
id_tipom
““A I
)
““I J
;
““J K
return
”” 
Json
”” 
(
”” 
res
”” 
)
”” 
;
”” 
}
•• 	
public
—— 
async
—— 
Task
—— 
<
—— 

JsonResult
—— $
>
——$ %"
GetDropDownListAsync
——& :
(
——: ;
int
——; >
from
——? C
,
——C D
int
——E H
id
——I K
)
——K L
{
 	

SelectList
 
List
 
=
 
null
 "
;
" #
switch
 
(
 
from
 
)
 
{
 
case
   
$num
   
:
   
var
ΆΆ 
listA
ΆΆ 
=
ΆΆ 
await
ΆΆ  %
DaoAreas
ΆΆ& .
.
ΆΆ. /
DaoInstance
ΆΆ/ :
.
ΆΆ: ;
GetAreasAsync
ΆΆ; H
(
ΆΆH I
id
ΆΆI K
)
ΆΆK L
;
ΆΆL M
listA
££ 
.
££ 
Insert
££  
(
££  !
$num
££! "
,
££" #
new
££$ '
Database
££( 0
.
££0 1
areas_productivas
££1 B
(
££B C
)
££C D
{
££E F
id
££G I
=
££J K
$num
££L M
,
££M N
descripcion
££O Z
=
££[ \
$str
££] q
}
££r s
)
££s t
;
££t u
List
¤¤ 
=
¤¤ 
new
¤¤ 

SelectList
¤¤ )
(
¤¤) *
listA
¤¤* /
,
¤¤/ 0
$str
¤¤1 5
,
¤¤5 6
$str
¤¤7 D
)
¤¤D E
;
¤¤E F
break
¥¥ 
;
¥¥ 
case
¦¦ 
$num
¦¦ 
:
¦¦ 
var
¨¨ 
listL
¨¨ 
=
¨¨ 
await
¨¨  %
	DaoLineas
¨¨& /
.
¨¨/ 0
DaoInstance
¨¨0 ;
.
¨¨; <
GetLinesAsync
¨¨< I
(
¨¨I J
id
¨¨J L
)
¨¨L M
;
¨¨M N
listL
©© 
.
©© 
Insert
©©  
(
©©  !
$num
©©! "
,
©©" #
new
©©$ '
Database
©©( 0
.
©©0 1
lineas
©©1 7
(
©©7 8
)
©©8 9
{
©©: ;
id
©©< >
=
©©? @
$num
©©A B
,
©©B C
descripcion
©©D O
=
©©P Q
$str
©©R g
}
©©h i
)
©©i j
;
©©j k
List
ªª 
=
ªª 
new
ªª 

SelectList
ªª )
(
ªª) *
listL
ªª* /
,
ªª/ 0
$str
ªª1 5
,
ªª5 6
$str
ªª7 D
)
ªªD E
;
ªªE F
break
«« 
;
«« 
}
¬¬ 
return
­­ 
Json
­­ 
(
­­ 
new
­­ 

SelectList
­­ &
(
­­& '
List
­­' +
,
­­+ ,
$str
­­- 4
,
­­4 5
$str
­­6 <
)
­­< =
)
­­= >
;
­­> ?
}
®® 	
private
°° 
async
°° 
Task
°° 
<
°° (
ReporteIncidentesViewModel
°° 5
>
°°5 6

BuildModel
°°7 A
(
°°A B
long
°°B F
id
°°G I
)
°°I J
{
±± 	
var
²² 
	viewModel
²² 
=
²² 
new
²² (
ReporteIncidentesViewModel
²²  :
(
²²: ;
)
²²; <
;
²²< =
if
΄΄ 
(
΄΄ 
id
΄΄ 
>
΄΄ 
$num
΄΄ 
)
΄΄ 
{
µµ 
	viewModel
¶¶ 
=
¶¶ 
await
¶¶ !
DaoEwo
¶¶" (
.
¶¶( )
DaoInstance
¶¶) 4
.
¶¶4 5

GetEwoDesc
¶¶5 ?
(
¶¶? @
id
¶¶@ B
)
¶¶B C
;
¶¶C D
	viewModel
ΈΈ 
.
ΈΈ 
	FchCierre
ΈΈ #
=
ΈΈ$ %
DateTime
ΈΈ& .
.
ΈΈ. /
Now
ΈΈ/ 2
.
ΈΈ2 3
ToString
ΈΈ3 ;
(
ΈΈ; <
$str
ΈΈ< H
)
ΈΈH I
;
ΈΈI J
}
ΉΉ 
else
ΊΊ 
{
»» 
	viewModel
ΌΌ 
.
ΌΌ #
FchApertInvestigacion
ΌΌ /
=
ΌΌ0 1
DateTime
ΌΌ2 :
.
ΌΌ: ;
Now
ΌΌ; >
.
ΌΌ> ?
ToString
ΌΌ? G
(
ΌΌG H
$str
ΌΌH T
)
ΌΌT U
;
ΌΌU V
	viewModel
½½ 
.
½½ %
FchEntregaInvestigacion
½½ 1
=
½½2 3
DateTime
½½4 <
.
½½< =
Now
½½= @
.
½½@ A
ToString
½½A I
(
½½I J
$str
½½J V
)
½½V W
;
½½W X
	viewModel
ΎΎ 
.
ΎΎ 
Consecutivo
ΎΎ %
=
ΎΎ& '
$str
ΎΎ( ,
+
ΎΎ- .
await
ΎΎ/ 4
DaoEwo
ΎΎ5 ;
.
ΎΎ; <
DaoInstance
ΎΎ< G
.
ΎΎG H 
GetLastConsecutive
ΎΎH Z
(
ΎΎZ [
)
ΎΎ[ \
;
ΎΎ\ ]
}
ΏΏ 
var
ΔΔ 
listTI
ΔΔ 
=
ΔΔ 
await
ΔΔ 
DaoTiposData
ΔΔ +
.
ΔΔ+ ,
DaoInstance
ΔΔ, 7
.
ΔΔ7 8
GetTypesAsync
ΔΔ8 E
(
ΔΔE F
INCIDENTSTYPES
ΔΔF T
)
ΔΔT U
;
ΔΔU V
listTI
ΕΕ 
.
ΕΕ 
Insert
ΕΕ 
(
ΕΕ 
$num
ΕΕ 
,
ΕΕ 
new
ΕΕ  
Database
ΕΕ! )
.
ΕΕ) *

tipos_data
ΕΕ* 4
(
ΕΕ4 5
)
ΕΕ5 6
{
ΕΕ7 8
id
ΕΕ9 ;
=
ΕΕ< =
$num
ΕΕ> ?
,
ΕΕ? @
descripcion
ΕΕA L
=
ΕΕM N
$str
ΕΕO p
}
ΕΕq r
)
ΕΕr s
;
ΕΕs t
	viewModel
ΖΖ 
.
ΖΖ 
TipoIncidenteList
ΖΖ '
=
ΖΖ( )
new
ΖΖ* -

SelectList
ΖΖ. 8
(
ΖΖ8 9
listTI
ΖΖ9 ?
,
ΖΖ? @
$str
ΖΖA E
,
ΖΖE F
$str
ΖΖG T
)
ΖΖT U
;
ΖΖU V
var
ΙΙ 
listPlantas
ΙΙ 
=
ΙΙ 
await
ΙΙ #

DaoPlantas
ΙΙ$ .
.
ΙΙ. /
DaoInstance
ΙΙ/ :
.
ΙΙ: ;
GetPlantasAsync
ΙΙ; J
(
ΙΙJ K
)
ΙΙK L
;
ΙΙL M
listPlantas
ΚΚ 
.
ΚΚ 
Insert
ΚΚ 
(
ΚΚ 
$num
ΚΚ  
,
ΚΚ  !
new
ΚΚ" %
Database
ΚΚ& .
.
ΚΚ. /
plantas
ΚΚ/ 6
(
ΚΚ6 7
)
ΚΚ7 8
{
ΚΚ9 :
id
ΚΚ; =
=
ΚΚ> ?
$num
ΚΚ@ A
,
ΚΚA B
descripcion
ΚΚC N
=
ΚΚO P
$str
ΚΚQ g
}
ΚΚh i
)
ΚΚi j
;
ΚΚj k
	viewModel
ΛΛ 
.
ΛΛ 
PlantasList
ΛΛ !
=
ΛΛ" #
new
ΛΛ$ '

SelectList
ΛΛ( 2
(
ΛΛ2 3
listPlantas
ΛΛ3 >
,
ΛΛ> ?
$str
ΛΛ@ D
,
ΛΛD E
$str
ΛΛF S
)
ΛΛS T
;
ΛΛT U
var
ΞΞ 
listA
ΞΞ 
=
ΞΞ 
await
ΞΞ 
DaoTiposData
ΞΞ *
.
ΞΞ* +
DaoInstance
ΞΞ+ 6
.
ΞΞ6 7
GetTypesAsync
ΞΞ7 D
(
ΞΞD E

AREASTYPES
ΞΞE O
)
ΞΞO P
;
ΞΞP Q
listA
ΟΟ 
.
ΟΟ 
Insert
ΟΟ 
(
ΟΟ 
$num
ΟΟ 
,
ΟΟ 
new
ΟΟ 
Database
ΟΟ  (
.
ΟΟ( )

tipos_data
ΟΟ) 3
(
ΟΟ3 4
)
ΟΟ4 5
{
ΟΟ6 7
id
ΟΟ8 :
=
ΟΟ; <
$num
ΟΟ= >
,
ΟΟ> ?
descripcion
ΟΟ@ K
=
ΟΟL M
$str
ΟΟN b
}
ΟΟc d
)
ΟΟd e
;
ΟΟe f
	viewModel
ΠΠ 
.
ΠΠ 
	AreasList
ΠΠ 
=
ΠΠ  !
new
ΠΠ" %

SelectList
ΠΠ& 0
(
ΠΠ0 1
listA
ΠΠ1 6
,
ΠΠ6 7
$str
ΠΠ8 <
,
ΠΠ< =
$str
ΠΠ> K
)
ΠΠK L
;
ΠΠL M
var
ΣΣ 
listL
ΣΣ 
=
ΣΣ 
await
ΣΣ 
DaoTiposData
ΣΣ *
.
ΣΣ* +
DaoInstance
ΣΣ+ 6
.
ΣΣ6 7
GetTypesAsync
ΣΣ7 D
(
ΣΣD E

LINESTYPES
ΣΣE O
)
ΣΣO P
;
ΣΣP Q
listL
ΤΤ 
.
ΤΤ 
Insert
ΤΤ 
(
ΤΤ 
$num
ΤΤ 
,
ΤΤ 
new
ΤΤ 
Database
ΤΤ  (
.
ΤΤ( )

tipos_data
ΤΤ) 3
(
ΤΤ3 4
)
ΤΤ4 5
{
ΤΤ6 7
id
ΤΤ8 :
=
ΤΤ; <
$num
ΤΤ= >
,
ΤΤ> ?
descripcion
ΤΤ@ K
=
ΤΤL M
$str
ΤΤN c
}
ΤΤd e
)
ΤΤe f
;
ΤΤf g
	viewModel
ΥΥ 
.
ΥΥ 

LineasList
ΥΥ  
=
ΥΥ! "
new
ΥΥ# &

SelectList
ΥΥ' 1
(
ΥΥ1 2
listL
ΥΥ2 7
,
ΥΥ7 8
$str
ΥΥ9 =
,
ΥΥ= >
$str
ΥΥ? L
)
ΥΥL M
;
ΥΥM N
var
ΩΩ 
listUA
ΩΩ 
=
ΩΩ 
await
ΩΩ 
DaoUsuarios
ΩΩ *
.
ΩΩ* +
DaoInstance
ΩΩ+ 6
.
ΩΩ6 7
GetUsersByRole
ΩΩ7 E
(
ΩΩE F
	ADMINROLE
ΩΩF O
)
ΩΩO P
;
ΩΩP Q
listUA
ΪΪ 
.
ΪΪ 
Insert
ΪΪ 
(
ΪΪ 
$num
ΪΪ 
,
ΪΪ 
new
ΪΪ  
UsersUI
ΪΪ! (
(
ΪΪ( )
)
ΪΪ) *
{
ΪΪ+ ,
Id
ΪΪ- /
=
ΪΪ0 1
$str
ΪΪ2 5
,
ΪΪ5 6
NombresCommpletos
ΪΪ7 H
=
ΪΪI J
$str
ΪΪK b
}
ΪΪc d
)
ΪΪd e
;
ΪΪe f
	viewModel
ΫΫ 
.
ΫΫ 
AdminUsersList
ΫΫ $
=
ΫΫ% &
new
ΫΫ' *

SelectList
ΫΫ+ 5
(
ΫΫ5 6
listUA
ΫΫ6 <
,
ΫΫ< =
$str
ΫΫ> B
,
ΫΫB C
$str
ΫΫD W
)
ΫΫW X
;
ΫΫX Y
var
ήή 
listUO
ήή 
=
ήή 
await
ήή 
DaoUsuarios
ήή *
.
ήή* +
DaoInstance
ήή+ 6
.
ήή6 7
GetUsersByRole
ήή7 E
(
ήήE F
OPERATINGROLE
ήήF S
)
ήήS T
;
ήήT U
listUO
ίί 
.
ίί 
Insert
ίί 
(
ίί 
$num
ίί 
,
ίί 
new
ίί  
UsersUI
ίί! (
(
ίί( )
)
ίί) *
{
ίί+ ,
Id
ίί- /
=
ίί0 1
$str
ίί2 5
,
ίί5 6
NombresCommpletos
ίί7 H
=
ίίI J
$str
ίίK b
}
ίίc d
)
ίίd e
;
ίίe f
	viewModel
ΰΰ 
.
ΰΰ  
OperatingUsersList
ΰΰ (
=
ΰΰ) *
new
ΰΰ+ .

SelectList
ΰΰ/ 9
(
ΰΰ9 :
listUO
ΰΰ: @
,
ΰΰ@ A
$str
ΰΰB F
,
ΰΰF G
$str
ΰΰH [
)
ΰΰ[ \
;
ΰΰ\ ]
var
γγ 
listDF
γγ 
=
γγ 
await
γγ 
DaoTiposData
γγ +
.
γγ+ ,
DaoInstance
γγ, 7
.
γγ7 8
GetTypesAsync
γγ8 E
(
γγE F
FINALDISPOSITION
γγF V
)
γγV W
;
γγW X
listDF
δδ 
.
δδ 
Insert
δδ 
(
δδ 
$num
δδ 
,
δδ 
new
δδ  
Database
δδ! )
.
δδ) *

tipos_data
δδ* 4
(
δδ4 5
)
δδ5 6
{
δδ7 8
id
δδ9 ;
=
δδ< =
$num
δδ> ?
,
δδ? @
descripcion
δδA L
=
δδM N
$str
δδO j
}
δδk l
)
δδl m
;
δδm n
	viewModel
εε 
.
εε 
DisposicionFList
εε &
=
εε' (
new
εε) ,

SelectList
εε- 7
(
εε7 8
listDF
εε8 >
,
εε> ?
$str
εε@ D
,
εεD E
$str
εεF S
)
εεS T
;
εεT U
var
θθ 
listTF
θθ 
=
θθ 
await
θθ 
DaoTiposData
θθ +
.
θθ+ ,
DaoInstance
θθ, 7
.
θθ7 8
GetTypesAsync
θθ8 E
(
θθE F
TOPFIVEFORZERO
θθF T
)
θθT U
;
θθU V
	viewModel
ιι 
.
ιι  
TopFiveForZeroList
ιι (
=
ιι) *
listTF
ιι+ 1
;
ιι1 2
return
λλ 
	viewModel
λλ 
;
λλ 
}
μμ 	
private
ξξ 
async
ξξ 
Task
ξξ 
<
ξξ 
RequestResponse
ξξ *
>
ξξ* +
CreateEwoObject
ξξ, ;
(
ξξ; <(
ReporteIncidentesViewModel
ξξ< V
ewr
ξξW Z
,
ξξZ [
bool
ξξ\ `
bReporte
ξξa i
)
ξξi j
{
οο 	
RequestResponse
ππ 
rr
ππ 
=
ππ  
new
ππ! $
RequestResponse
ππ% 4
(
ππ4 5
)
ππ5 6
;
ππ6 7
ewo
ρρ 
ewo
ρρ 
=
ρρ 
new
ρρ 
ewo
ρρ 
(
ρρ 
)
ρρ 
;
ρρ  "
JavaScriptSerializer
σσ  
ser
σσ! $
=
σσ% &
new
σσ' *"
JavaScriptSerializer
σσ+ ?
(
σσ? @
)
σσ@ A
;
σσA B
List
ττ 
<
ττ !
acciones_inmediatas
ττ $
>
ττ$ %
accInm
ττ& ,
=
ττ- .
ser
ττ/ 2
.
ττ2 3
Deserialize
ττ3 >
<
ττ> ?
List
ττ? C
<
ττC D!
acciones_inmediatas
ττD W
>
ττW X
>
ττX Y
(
ττY Z
ewr
ττZ ]
.
ττ] ^
Cmd
ττ^ a
)
ττa b
;
ττb c
ewo
φφ 
.
φφ 
consecutivo
φφ 
=
φφ 
long
φφ "
.
φφ" #
Parse
φφ# (
(
φφ( )
ewr
φφ) ,
.
φφ, -
Consecutivo
φφ- 8
)
φφ8 9
;
φφ9 :
ewo
χχ 
.
χχ *
fecha_apertura_investigacion
χχ ,
=
χχ- .
ewr
χχ/ 2
.
χχ2 3#
FchApertInvestigacion
χχ3 H
==
χχI K
null
χχL P
?
χχQ R
DateTime
χχS [
.
χχ[ \
Now
χχ\ _
:
χχ` a
DateTime
ψψ 
.
ψψ 

ParseExact
ψψ #
(
ψψ# $
ewr
ψψ$ '
.
ψψ' (#
FchApertInvestigacion
ψψ( =
,
ψψ= >
$str
ψψ? K
,
ψψK L
CultureInfo
ψψM X
.
ψψX Y
InvariantCulture
ψψY i
)
ψψi j
;
ψψj k
ewo
ϊϊ 
.
ϊϊ 
hora_evento
ϊϊ 
=
ϊϊ 
TimeSpan
ϊϊ &
.
ϊϊ& '
Parse
ϊϊ' ,
(
ϊϊ, -
ewr
ϊϊ- 0
.
ϊϊ0 1
HrEvento
ϊϊ1 9
)
ϊϊ9 :
;
ϊϊ: ;
ewo
ϋϋ 
.
ϋϋ )
fecha_entrega_investigacion
ϋϋ +
=
ϋϋ, -
ewr
ϋϋ. 1
.
ϋϋ1 2%
FchEntregaInvestigacion
ϋϋ2 I
==
ϋϋJ L
null
ϋϋM Q
?
ϋϋR S
DateTime
ϋϋT \
.
ϋϋ\ ]
Now
ϋϋ] `
:
ϋϋa b
DateTime
όό 
.
όό 

ParseExact
όό #
(
όό# $
ewr
όό$ '
.
όό' (%
FchEntregaInvestigacion
όό( ?
,
όό? @
$str
όόA M
,
όόM N
CultureInfo
όόO Z
.
όόZ [
InvariantCulture
όό[ k
)
όόk l
;
όόl m
ewo
ώώ 
.
ώώ (
hora_entrega_investigacion
ώώ *
=
ώώ+ ,
TimeSpan
ώώ- 5
.
ώώ5 6
Parse
ώώ6 ;
(
ώώ; <
ewr
ώώ< ?
.
ώώ? @$
HrEntregaInvestigacion
ώώ@ V
)
ώώV W
;
ώώW X
ewo
ÿÿ 
.
ÿÿ 
codigo_linea
ÿÿ 
=
ÿÿ 
ewr
ÿÿ "
.
ÿÿ" #
IdLinea
ÿÿ# *
;
ÿÿ* +
ewo
€€ 
.
€€ 
etapa
€€ 
=
€€ 
ewr
€€ 
.
€€ 
EtapaProceso
€€ (
;
€€( )
ewo
 
.
 &
codigo_coordinador_turno
 (
=
) *
ewr
+ .
.
. /
	IdCoorSup
/ 8
;
8 9
ewo
‚‚ 
.
‚‚ %
codigo_responsable_area
‚‚ '
=
‚‚( )
ewr
‚‚* -
.
‚‚- .

IdRespArea
‚‚. 8
;
‚‚8 9
ewo
ƒƒ 
.
ƒƒ )
codigo_operario_responsable
ƒƒ +
=
ƒƒ, -
ewr
ƒƒ. 1
.
ƒƒ1 2
IdOpeRes
ƒƒ2 :
;
ƒƒ: ;
ewo
„„ 
.
„„ (
codigo_lider_investigacion
„„ *
=
„„+ ,
ewr
„„- 0
.
„„0 1
IdLidInv
„„1 9
;
„„9 :
ewo
…… 
.
…… 
producto
…… 
=
…… 
ewr
…… 
.
…… 
NombreProducto
…… -
;
……- .
ewo
†† 
.
†† !
codigo_sap_producto
†† #
=
††$ %
ewr
††& )
.
††) *
	CodigoSAP
††* 3
;
††3 4
ewo
‡‡ 
.
‡‡ 
lote_producto
‡‡ 
=
‡‡ 
ewr
‡‡  #
.
‡‡# $
Lote
‡‡$ (
;
‡‡( )
ewo
 
.
  
toneladas_producto
 "
=
# $
ewr
% (
.
( )
	Toneladas
) 2
;
2 3
ewo
‰‰ 
.
‰‰ 
numero_cajas
‰‰ 
=
‰‰ 
ewr
‰‰ "
.
‰‰" #
NumCajas
‰‰# +
;
‰‰+ ,
ewo
 
.
 
numero_pallet
 
=
 
ewr
  #
.
# $
	NumPallet
$ -
;
- .
ewo
‹‹ 
.
‹‹ 
unidades
‹‹ 
=
‹‹ 
ewr
‹‹ 
.
‹‹ 
Unidades
‹‹ '
;
‹‹' (
ewo
 
.
 
tamano_formato
 
=
  
ewr
! $
.
$ %
TamanoFormato
% 2
;
2 3
ewo
 
.
 !
tiempo_linea_parada
 #
=
$ %
ewr
& )
.
) *
TiempoLineaParada
* ;
;
; <
ewo
 
.
 *
descripcion_general_problema
 ,
=
- .
ewr
/ 2
.
2 3!
DescripcionProblema
3 F
;
F G
if
’’ 
(
’’ 
bReporte
’’ 
)
’’ 
{
““ 
ewo
”” 
.
”” 
codigo_estado
”” !
=
””" #
$num
””$ %
;
””% &
ewo
•• 
.
•• 
autor
•• 
=
•• 
User
••  
.
••  !
Identity
••! )
.
••) *
	GetUserId
••* 3
(
••3 4
)
••4 5
;
••5 6
long
—— 
reg
—— 
=
—— 
await
——  
DaoEwo
——! '
.
——' (
DaoInstance
——( 3
.
——3 4
AddEwo
——4 :
(
——: ;
ewo
——; >
)
——> ?
;
——? @
if
™™ 
(
™™ 
reg
™™ 
>
™™ 
$num
™™ 
)
™™ 
{
 
foreach
›› 
(
›› 
var
››  
item
››! %
in
››& (
accInm
››) /
)
››/ 0
{
 
item
 
.
 

codigo_ewo
 '
=
( )
reg
* -
;
- .
}
 
await
   
DaoAcciones
   %
.
  % &
DaoInstance
  & 1
.
  1 2
AddAcciones
  2 =
(
  = >
accInm
  > D
)
  D E
;
  E F
}
΅΅ 
}
ΆΆ 
else
££ 
{
¤¤ 
ewo
¥¥ 
.
¥¥ 
autor
¥¥ 
=
¥¥ 
(
¥¥ 
await
¥¥ "
DaoEwo
¥¥# )
.
¥¥) *
DaoInstance
¥¥* 5
.
¥¥5 6
GetAutorAsync
¥¥6 C
(
¥¥C D
ewr
¥¥D G
.
¥¥G H
Id
¥¥H J
)
¥¥J K
)
¥¥K L
;
¥¥L M
ewo
¦¦ 
.
¦¦ 
codigo_estado
¦¦ !
=
¦¦" #
$num
¦¦$ %
;
¦¦% &
ewo
§§ 
.
§§  
usuario_procesador
§§ &
=
§§' (
User
§§) -
.
§§- .
Identity
§§. 6
.
§§6 7
	GetUserId
§§7 @
(
§§@ A
)
§§A B
;
§§B C
ewo
©© 
.
©© 
id
©© 
=
©© 
ewr
©© 
.
©© 
Id
©© 
;
©©  
ewo
ªª 
.
ªª 

ap_nivel_1
ªª 
=
ªª  
ewr
ªª! $
.
ªª$ %
ArbPerd1
ªª% -
;
ªª- .
ewo
«« 
.
«« 

ap_nivel_2
«« 
=
««  
ewr
««! $
.
««$ %
ArbPerd2
««% -
;
««- .
ewo
¬¬ 
.
¬¬ 

ap_nivel_3
¬¬ 
=
¬¬  
ewr
¬¬! $
.
¬¬$ %
ArbPerd3
¬¬% -
;
¬¬- .
ewo
­­ 
.
­­ 

ap_nivel_4
­­ 
=
­­  
ewr
­­! $
.
­­$ %
ArbPerd4
­­% -
;
­­- .
ewo
®® 
.
®® 
ap_nivel_otro
®® !
=
®®" #
ewr
®®$ '
.
®®' (
ArbPerdO
®®( 0
;
®®0 1
ewo
°° 
.
°° 
tipo_incidente
°° "
=
°°# $
ewr
°°% (
.
°°( )
TipoIncidente
°°) 6
;
°°6 7
ewo
±± 
.
±± 

recurrente
±± 
=
±±  
ewr
±±! $
.
±±$ %

Recurrente
±±% /
!=
±±0 2
null
±±3 7
?
±±8 9
true
±±: >
:
±±? @
false
±±A F
;
±±F G
ewo
³³ 
.
³³ 
numero_airsweb
³³ "
=
³³# $
ewr
³³% (
.
³³( )

NumAirsweb
³³) 3
;
³³3 4
ewo
΄΄ 
.
΄΄ &
tiempo_ingresado_airsweb
΄΄ ,
=
΄΄- .
ewr
΄΄/ 2
.
΄΄2 3
TiempoAirsWeb
΄΄3 @
;
΄΄@ A
ewo
µµ 
.
µµ 
tiempo_inspeccion
µµ %
=
µµ& '
ewr
µµ( +
.
µµ+ ,
TiempoInpeccion
µµ, ;
;
µµ; <
ewo
¶¶ 
.
¶¶ 
costo_incidente
¶¶ #
=
¶¶$ %
Convert
¶¶& -
.
¶¶- .
	ToDecimal
¶¶. 7
(
¶¶7 8
ewr
¶¶8 ;
.
¶¶; <
CostoIncidente
¶¶< J
)
¶¶J K
;
¶¶K L
ewo
·· 
.
·· #
costo_incidente_euros
·· )
=
··* +
Convert
··, 3
.
··3 4
	ToDecimal
··4 =
(
··= >
ewr
··> A
.
··A B!
CostoIncidenteEuros
··B U
)
··U V
;
··V W
ewo
ΈΈ 
.
ΈΈ +
codigo_disposicion_final_prod
ΈΈ 1
=
ΈΈ2 3
ewr
ΈΈ4 7
.
ΈΈ7 8
IdDisposicionF
ΈΈ8 F
;
ΈΈF G
ewo
ΉΉ 
.
ΉΉ  
cantidad_toneladas
ΉΉ &
=
ΉΉ' (
ewr
ΉΉ) ,
.
ΉΉ, -
DFToneladas
ΉΉ- 8
;
ΉΉ8 9
ewo
»» 
.
»» 
gemba
»» 
=
»» 
ewr
»» 
.
»»  
GembaOk
»»  '
!=
»»( *
null
»»+ /
?
»»0 1
true
»»2 6
:
»»7 8
false
»»9 >
;
»»> ?
ewo
ΌΌ 
.
ΌΌ 
gembutsu
ΌΌ 
=
ΌΌ 
ewr
ΌΌ "
.
ΌΌ" #

GembutsuOk
ΌΌ# -
!=
ΌΌ. 0
null
ΌΌ1 5
?
ΌΌ6 7
true
ΌΌ8 <
:
ΌΌ= >
false
ΌΌ? D
;
ΌΌD E
ewo
½½ 
.
½½ 
genjitsu
½½ 
=
½½ 
ewr
½½ "
.
½½" #

GenjitsuOk
½½# -
!=
½½. 0
null
½½1 5
?
½½6 7
true
½½8 <
:
½½= >
false
½½? D
;
½½D E
ewo
ΑΑ 
.
ΑΑ 
five_g_image
ΑΑ  
=
ΑΑ! "
ewr
ΑΑ# &
.
ΑΑ& '
ImageGs
ΑΑ' .
!=
ΑΑ/ 1
null
ΑΑ2 6
?
ΑΑ7 8
ewr
ΑΑ9 <
.
ΑΑ< =
ImageGs
ΑΑ= D
.
ΑΑD E
FileName
ΑΑE M
:
ΑΑN O
$str
ΑΑP R
;
ΑΑR S
ewo
ΒΒ 
.
ΒΒ 
images_path
ΒΒ 
=
ΒΒ  !
ewr
ΒΒ" %
.
ΒΒ% &
ImageFen
ΒΒ& .
!=
ΒΒ/ 1
null
ΒΒ2 6
?
ΒΒ7 8
ewr
ΒΒ9 <
.
ΒΒ< =
ImageFen
ΒΒ= E
.
ΒΒE F
FileName
ΒΒF N
:
ΒΒO P
$str
ΒΒQ S
;
ΒΒS T 
SaveImageEwoServer
ΔΔ "
(
ΔΔ" #
ewr
ΔΔ# &
.
ΔΔ& '
ImageGs
ΔΔ' .
)
ΔΔ. /
;
ΔΔ/ 0 
SaveImageEwoServer
ΕΕ "
(
ΕΕ" #
ewr
ΕΕ# &
.
ΕΕ& '
ImageFen
ΕΕ' /
)
ΕΕ/ 0
;
ΕΕ0 1
ewo
ΗΗ 
.
ΗΗ 
que
ΗΗ 
=
ΗΗ 
ewr
ΗΗ 
.
ΗΗ 
QueDesc
ΗΗ %
;
ΗΗ% &
ewo
ΘΘ 
.
ΘΘ 
donde
ΘΘ 
=
ΘΘ 
ewr
ΘΘ 
.
ΘΘ  
	DondeDesc
ΘΘ  )
;
ΘΘ) *
ewo
ΙΙ 
.
ΙΙ 
cuando
ΙΙ 
=
ΙΙ 
ewr
ΙΙ  
.
ΙΙ  !

CuandoDesc
ΙΙ! +
;
ΙΙ+ ,
ewo
ΚΚ 
.
ΚΚ 
quien
ΚΚ 
=
ΚΚ 
ewr
ΚΚ 
.
ΚΚ  
	QuienDesc
ΚΚ  )
;
ΚΚ) *
ewo
ΛΛ 
.
ΛΛ 
cual
ΛΛ 
=
ΛΛ 
ewr
ΛΛ 
.
ΛΛ 
CualDesc
ΛΛ '
;
ΛΛ' (
ewo
ΜΜ 
.
ΜΜ 
como
ΜΜ 
=
ΜΜ 
ewr
ΜΜ 
.
ΜΜ 
ComoDesc
ΜΜ '
;
ΜΜ' (
ewo
ΝΝ 
.
ΝΝ "
descripcion_fenomeno
ΝΝ (
=
ΝΝ) *
ewr
ΝΝ+ .
.
ΝΝ. /
FenomenoDesc
ΝΝ/ ;
;
ΝΝ; <
ewo
ΠΠ 
.
ΠΠ 
maquina4m_desc
ΠΠ "
=
ΠΠ# $
ewr
ΠΠ% (
.
ΠΠ( )
Maquina4MDesc
ΠΠ) 6
;
ΠΠ6 7
ewo
ΡΡ 
.
ΡΡ 
metodo4m_desc
ΡΡ !
=
ΡΡ" #
ewr
ΡΡ$ '
.
ΡΡ' (
Metodo4MDesc
ΡΡ( 4
;
ΡΡ4 5
ewo
ÒÒ 
.
ÒÒ 
manoobra4m_desc
ÒÒ #
=
ÒÒ$ %
ewr
ÒÒ& )
.
ÒÒ) *
ManoObra4MDesc
ÒÒ* 8
;
ÒÒ8 9
ewo
ΣΣ 
.
ΣΣ 
material4m_desc
ΣΣ #
=
ΣΣ$ %
ewr
ΣΣ& )
.
ΣΣ) *
Material4MDesc
ΣΣ* 8
;
ΣΣ8 9
decimal
ΥΥ 
maq4m
ΥΥ 
=
ΥΥ 
decimal
ΥΥ  '
.
ΥΥ' (
Parse
ΥΥ( -
(
ΥΥ- .
ewr
ΥΥ. 1
.
ΥΥ1 2
Maquina4MTotal
ΥΥ2 @
.
ΥΥ@ A
Replace
ΥΥA H
(
ΥΥH I
$str
ΥΥI L
,
ΥΥL M
$str
ΥΥN P
)
ΥΥP Q
)
ΥΥQ R
;
ΥΥR S
decimal
ΦΦ 
met4m
ΦΦ 
=
ΦΦ 
decimal
ΦΦ  '
.
ΦΦ' (
Parse
ΦΦ( -
(
ΦΦ- .
ewr
ΦΦ. 1
.
ΦΦ1 2
Metodo4MTotal
ΦΦ2 ?
.
ΦΦ? @
Replace
ΦΦ@ G
(
ΦΦG H
$str
ΦΦH K
,
ΦΦK L
$str
ΦΦM O
)
ΦΦO P
)
ΦΦP Q
;
ΦΦQ R
decimal
ΧΧ 
man4m
ΧΧ 
=
ΧΧ 
decimal
ΧΧ  '
.
ΧΧ' (
Parse
ΧΧ( -
(
ΧΧ- .
ewr
ΧΧ. 1
.
ΧΧ1 2
ManoObra4MTotal
ΧΧ2 A
.
ΧΧA B
Replace
ΧΧB I
(
ΧΧI J
$str
ΧΧJ M
,
ΧΧM N
$str
ΧΧO Q
)
ΧΧQ R
)
ΧΧR S
;
ΧΧS T
decimal
ΨΨ 
mat4m
ΨΨ 
=
ΨΨ 
decimal
ΨΨ  '
.
ΨΨ' (
Parse
ΨΨ( -
(
ΨΨ- .
ewr
ΨΨ. 1
.
ΨΨ1 2
Material4MTotal
ΨΨ2 A
.
ΨΨA B
Replace
ΨΨB I
(
ΨΨI J
$str
ΨΨJ M
,
ΨΨM N
$str
ΨΨO Q
)
ΨΨQ R
)
ΨΨR S
;
ΨΨS T
ewo
ΪΪ 
.
ΪΪ 
	maquina4m
ΪΪ 
=
ΪΪ 
maq4m
ΪΪ  %
;
ΪΪ% &
ewo
ΫΫ 
.
ΫΫ 
metodo4m
ΫΫ 
=
ΫΫ 
met4m
ΫΫ $
;
ΫΫ$ %
ewo
άά 
.
άά 

manoobra4m
άά 
=
άά  
man4m
άά! &
;
άά& '
ewo
έέ 
.
έέ 

material4m
έέ 
=
έέ  
mat4m
έέ! &
;
έέ& '
ewo
ΰΰ 
.
ΰΰ 
before
ΰΰ 
=
ΰΰ 
decimal
ΰΰ $
.
ΰΰ$ %
Parse
ΰΰ% *
(
ΰΰ* +
ewr
ΰΰ+ .
.
ΰΰ. /
	BeforePct
ΰΰ/ 8
)
ΰΰ8 9
;
ΰΰ9 :
ewo
αα 
.
αα 
after
αα 
=
αα 
decimal
αα #
.
αα# $
Parse
αα$ )
(
αα) *
ewr
αα* -
.
αα- .
AfterPct
αα. 6
)
αα6 7
;
αα7 8
ewo
γγ 
.
γγ #
codigo_top_five_fzero
γγ )
=
γγ* +
ewr
γγ, /
.
γγ/ 0
IdTopFFZ
γγ0 8
.
γγ8 9
Split
γγ9 >
(
γγ> ?
$char
γγ? B
)
γγB C
.
γγC D
Length
γγD J
>
γγK L
$num
γγM N
?
γγO P
Int64
γγQ V
.
γγV W
Parse
γγW \
(
γγ\ ]
ewr
γγ^ a
.
γγa b
IdTopFFZ
γγb j
.
γγj k
Split
γγk p
(
γγp q
$char
γγq t
)
γγt u
[
γγu v
$num
γγv w
]
γγw x
)
γγx y
:
γγz {
$num
γγ| }
;
γγ} ~
ewo
εε 
.
εε &
comentarios_resoluciones
εε ,
=
εε- .
ewr
εε/ 2
.
εε2 3%
ComentariosResoluciones
εε3 J
;
εεJ K
ewo
ζζ 
.
ζζ (
pa_codigo_coordinador_prod
ζζ .
=
ζζ/ 0
ewr
ζζ1 4
.
ζζ4 5

IdCoorProd
ζζ5 ?
;
ζζ? @
ewo
ηη 
.
ηη $
pa_codigo_jefe_calidad
ηη *
=
ηη+ ,
ewr
ηη- 0
.
ηη0 1
IdJefCal
ηη1 9
;
ηη9 :
ewo
θθ 
.
θθ $
pa_codigo_gerente_prod
θθ *
=
θθ+ ,
ewr
θθ- 0
.
θθ0 1
	IdGerProd
θθ1 :
;
θθ: ;
ewo
ιι 
.
ιι '
pa_codigo_gerente_calidad
ιι -
=
ιι. /
ewr
ιι0 3
.
ιι3 4
IdGerCal
ιι4 <
;
ιι< =
ewo
λλ 
.
λλ 
fecha_cierre
λλ  
=
λλ! "
ewr
λλ# &
.
λλ& '
	FchCierre
λλ' 0
==
λλ1 3
null
λλ4 8
?
λλ9 :
DateTime
λλ; C
.
λλC D
Now
λλD G
:
λλH I
DateTime
μμ 
.
μμ 

ParseExact
μμ #
(
μμ# $
ewr
μμ$ '
.
μμ' (
	FchCierre
μμ( 1
,
μμ1 2
$str
μμ3 ?
,
μμ? @
CultureInfo
μμA L
.
μμL M
InvariantCulture
μμM ]
)
μμ] ^
;
μμ^ _
ewo
ξξ 
.
ξξ 
codigo_m
ξξ 
=
ξξ 
ewr
ξξ "
.
ξξ" #
MaxMId
ξξ# )
;
ξξ) *
long
ρρ 
id
ρρ 
=
ρρ 
await
ρρ 
DaoEwo
ρρ  &
.
ρρ& '
DaoInstance
ρρ' 2
.
ρρ2 3$
ProcesarIncidenteAsync
ρρ3 I
(
ρρI J
ewo
ρρJ M
)
ρρM N
;
ρρN O
foreach
ττ 
(
ττ 
var
ττ 
item
ττ !
in
ττ" $
accInm
ττ% +
)
ττ+ ,
{
υυ 
item
φφ 
.
φφ 

codigo_ewo
φφ #
=
φφ$ %
id
φφ& (
;
φφ( )
}
χχ 
await
ωω 
DaoAcciones
ωω !
.
ωω! "
DaoInstance
ωω" -
.
ωω- . 
AddAccionesProcess
ωω. @
(
ωω@ A
accInm
ωωA G
,
ωωG H
id
ωωH J
)
ωωJ K
;
ωωK L
var
όό 
eqTrab
όό 
=
όό 
ewr
όό  
.
όό  !
EquipoTrabajo
όό! .
;
όό. /
string
ύύ 
[
ύύ 
]
ύύ 
integrantes
ύύ $
=
ύύ% &
eqTrab
ύύ' -
.
ύύ- .
Split
ύύ. 3
(
ύύ3 4
$char
ύύ4 7
)
ύύ7 8
;
ύύ8 9
List
ώώ 
<
ώώ 
equipo_trabajo
ώώ #
>
ώώ# $
listET
ώώ% +
=
ώώ, -
new
ώώ. 1
List
ώώ2 6
<
ώώ6 7
equipo_trabajo
ώώ7 E
>
ώώE F
(
ώώF G
)
ώώG H
;
ώώH I
foreach
€€ 
(
€€ 
var
€€ 

integrante
€€ '
in
€€( *
integrantes
€€+ 6
)
€€6 7
{
 
listET
‚‚ 
.
‚‚ 
Add
‚‚ 
(
‚‚ 
new
‚‚ "
equipo_trabajo
‚‚# 1
(
‚‚1 2
)
‚‚2 3
{
ƒƒ 

codigo_ewo
„„ "
=
„„# $
id
„„% '
,
„„' (
codigo_usuario
…… &
=
……' (

integrante
……) 3
}
†† 
)
†† 
;
†† 
}
‡‡ 
await
 
DaoEwo
 
.
 
DaoInstance
 (
.
( )
AddEquipoTrabjo
) 8
(
8 9
listET
9 ?
)
? @
;
@ A
List
 
<
 
fiveg_resultados
 %
>
% &
listGenjitsu
' 3
=
4 5
ser
6 9
.
9 :
Deserialize
: E
<
E F
List
F J
<
J K
fiveg_resultados
K [
>
[ \
>
\ ]
(
] ^
ewr
^ a
.
a b
ListGenj
b j
)
j k
;
k l
foreach
 
(
 
var
 
item
 !
in
" $
listGenjitsu
% 1
)
1 2
{
 
item
 
.
 
codigo_5fv_opcion
 *
=
+ ,
$num
- /
;
/ 0
}
‘‘ 
List
““ 
<
““ 
fiveg_resultados
““ %
>
““% &
	listGenri
““' 0
=
““1 2
ser
““3 6
.
““6 7
Deserialize
““7 B
<
““B C
List
““C G
<
““G H
fiveg_resultados
““H X
>
““X Y
>
““Y Z
(
““Z [
ewr
““[ ^
.
““^ _
ListGenr
““_ g
)
““g h
;
““h i
foreach
”” 
(
”” 
var
”” 
item
”” !
in
””" $
	listGenri
””% .
)
””. /
{
•• 
item
–– 
.
–– 
codigo_5fv_opcion
–– *
=
––+ ,
$num
––- /
;
––/ 0
}
—— 
List
™™ 
<
™™ 
fiveg_resultados
™™ %
>
™™% &
listGensoku
™™' 2
=
™™3 4
ser
™™5 8
.
™™8 9
Deserialize
™™9 D
<
™™D E
List
™™E I
<
™™I J
fiveg_resultados
™™J Z
>
™™Z [
>
™™[ \
(
™™\ ]
ewr
™™] `
.
™™` a
ListGens
™™a i
)
™™i j
;
™™j k
foreach
 
(
 
var
 
item
 !
in
" $
listGensoku
% 0
)
0 1
{
›› 
item
 
.
 
codigo_5fv_opcion
 *
=
+ ,
$num
- /
;
/ 0
}
 
List
   
<
   
fiveg_resultados
   %
>
  % &
listGs
  ' -
=
  . /
listGenjitsu
  0 <
.
  < =
Union
  = B
(
  B C
	listGenri
  C L
)
  L M
.
  M N
Union
  N S
(
  S T
listGensoku
  T _
)
  _ `
.
  ` a
ToList
  a g
(
  g h
)
  h i
;
  i j
foreach
ΆΆ 
(
ΆΆ 
var
ΆΆ 
item
ΆΆ !
in
ΆΆ" $
listGs
ΆΆ% +
)
ΆΆ+ ,
{
££ 
item
¤¤ 
.
¤¤ 

codigo_ewo
¤¤ #
=
¤¤$ %
id
¤¤& (
;
¤¤( )
}
¥¥ 
await
¨¨ 
Dao5GResultados
¨¨ %
.
¨¨% &
DaoInstance
¨¨& 1
.
¨¨1 2"
Add5GResultadosAsync
¨¨2 F
(
¨¨F G
listGs
¨¨G M
)
¨¨M N
;
¨¨N O
List
«« 
<
«« 
porque_porque
«« "
>
««" #

listPorque
««$ .
=
««/ 0
ser
««1 4
.
««4 5
Deserialize
««5 @
<
««@ A
List
««A E
<
««E F
porque_porque
««F S
>
««S T
>
««T U
(
««U V
ewr
««V Y
.
««Y Z
ListPorq
««Z b
)
««b c
;
««c d
foreach
¬¬ 
(
¬¬ 
var
¬¬ 
item
¬¬ !
in
¬¬" $

listPorque
¬¬% /
)
¬¬/ 0
{
­­ 
item
®® 
.
®® 

codigo_ewo
®® #
=
®®$ %
id
®®& (
;
®®( )
}
―― 
await
²² 
	DaoPorque
²² 
.
²²  
DaoInstance
²²  +
.
²²+ ,
AddPorqueAsync
²², :
(
²²: ;

listPorque
²²; E
)
²²E F
;
²²F G
List
µµ 
<
µµ 
Preguntas4MModel
µµ %
>
µµ% &
list4M
µµ' -
=
µµ. /
ser
µµ0 3
.
µµ3 4
Deserialize
µµ4 ?
<
µµ? @
List
µµ@ D
<
µµD E
Preguntas4MModel
µµE U
>
µµU V
>
µµV W
(
µµW X
ewr
µµX [
.
µµ[ \
List4M
µµ\ b
)
µµb c
;
µµc d
List
¶¶ 
<
¶¶ 
respuestas4m
¶¶ !
>
¶¶! "
listDB4M
¶¶# +
=
¶¶, -
new
¶¶. 1
List
¶¶2 6
<
¶¶6 7
respuestas4m
¶¶7 C
>
¶¶C D
(
¶¶D E
)
¶¶E F
;
¶¶F G
foreach
·· 
(
·· 
var
·· 
item
·· !
in
··" $
list4M
··% +
)
··+ ,
{
ΈΈ 
listDB4M
ΉΉ 
.
ΉΉ 
Add
ΉΉ  
(
ΉΉ  !
new
ΉΉ! $
respuestas4m
ΉΉ% 1
(
ΉΉ1 2
)
ΉΉ2 3
{
ΊΊ 

codigo_ewo
»» "
=
»»# $
id
»»% '
,
»»' (
codigo_pregunta
ΌΌ '
=
ΌΌ( )
item
ΌΌ* .
.
ΌΌ. /
id
ΌΌ/ 1
,
ΌΌ1 2

verificado
½½ "
=
½½# $
item
½½% )
.
½½) *
option
½½* 0
==
½½1 3
$str
½½4 7
?
½½8 9
$str
½½: ?
:
½½@ A
(
½½B C
item
½½C G
.
½½G H
option
½½H N
==
½½O Q
$str
½½R U
?
½½V W
$str
½½X \
:
½½] ^
$str
½½^ b
)
½½b c
}
ΎΎ 
)
ΎΎ 
;
ΎΎ 
}
ΏΏ 
await
ΒΒ 
Dao4M
ΒΒ 
.
ΒΒ 
DaoInstance
ΒΒ '
.
ΒΒ' ( 
AddRespuestasAsync
ΒΒ( :
(
ΒΒ: ;
listDB4M
ΒΒ; C
)
ΒΒC D
;
ΒΒD E
List
ΕΕ 
<
ΕΕ 
ZeroResponses
ΕΕ "
>
ΕΕ" #
listZRB
ΕΕ$ +
=
ΕΕ, -
ser
ΕΕ. 1
.
ΕΕ1 2
Deserialize
ΕΕ2 =
<
ΕΕ= >
List
ΕΕ> B
<
ΕΕB C
ZeroResponses
ΕΕC P
>
ΕΕP Q
>
ΕΕQ R
(
ΕΕR S
ewr
ΕΕS V
.
ΕΕV W
ListBefo
ΕΕW _
)
ΕΕ_ `
;
ΕΕ` a
List
ΖΖ 
<
ΖΖ 
ZeroResponses
ΖΖ "
>
ΖΖ" #
listZRA
ΖΖ$ +
=
ΖΖ, -
ser
ΖΖ. 1
.
ΖΖ1 2
Deserialize
ΖΖ2 =
<
ΖΖ= >
List
ΖΖ> B
<
ΖΖB C
ZeroResponses
ΖΖC P
>
ΖΖP Q
>
ΖΖQ R
(
ΖΖR S
ewr
ΖΖS V
.
ΖΖV W
ListAfte
ΖΖW _
)
ΖΖ_ `
;
ΖΖ` a
List
ΘΘ 
<
ΘΘ 
zero_ewo
ΘΘ 
>
ΘΘ 
listZE
ΘΘ %
=
ΘΘ& '
new
ΘΘ( +
List
ΘΘ, 0
<
ΘΘ0 1
zero_ewo
ΘΘ1 9
>
ΘΘ9 :
(
ΘΘ: ;
)
ΘΘ; <
;
ΘΘ< =
foreach
ΚΚ 
(
ΚΚ 
var
ΚΚ 
item
ΚΚ !
in
ΚΚ" $
listZRB
ΚΚ% ,
)
ΚΚ, -
{
ΛΛ 
listZE
ΜΜ 
.
ΜΜ 
Add
ΜΜ 
(
ΜΜ 
new
ΜΜ "
zero_ewo
ΜΜ# +
(
ΜΜ+ ,
)
ΜΜ, -
{
ΝΝ 

codigo_ewo
ΞΞ "
=
ΞΞ# $
$num
ΞΞ% &
,
ΞΞ& '
before
ΟΟ 
=
ΟΟ  
item
ΟΟ! %
.
ΟΟ% &
Puntaje
ΟΟ& -
,
ΟΟ- .
codigo_response
ΠΠ '
=
ΠΠ( )
item
ΠΠ* .
.
ΠΠ. /
Puntaje
ΠΠ/ 6
==
ΠΠ7 9
$num
ΠΠ: ;
?
ΠΠ< =
$num
ΠΠ> ?
:
ΠΠ@ A
(
ΠΠB C
await
ΠΠC H
DaoZero
ΠΠI P
.
ΠΠP Q
DaoInstance
ΠΠQ \
.
ΠΠ\ ]
GetZeroResponse
ΠΠ] l
(
ΠΠl m
item
ΠΠm q
.
ΠΠq r
Id
ΠΠr t
,
ΠΠt u
item
ΠΠv z
.
ΠΠz {
PuntajeΠΠ{ ‚
)ΠΠ‚ ƒ
)ΠΠƒ „
.ΠΠ„ …
IdΠΠ… ‡
}
ΡΡ 
)
ΡΡ 
;
ΡΡ 
}
ÒÒ 
foreach
ΤΤ 
(
ΤΤ 
var
ΤΤ 
item
ΤΤ !
in
ΤΤ" $
listZRA
ΤΤ% ,
)
ΤΤ, -
{
ΥΥ 
listZE
ΦΦ 
.
ΦΦ 
Add
ΦΦ 
(
ΦΦ 
new
ΦΦ "
zero_ewo
ΦΦ# +
(
ΦΦ+ ,
)
ΦΦ, -
{
ΧΧ 

codigo_ewo
ΨΨ "
=
ΨΨ# $
$num
ΨΨ% &
,
ΨΨ& '
after
ΩΩ 
=
ΩΩ 
item
ΩΩ  $
.
ΩΩ$ %
Puntaje
ΩΩ% ,
,
ΩΩ, -
codigo_response
ΪΪ '
=
ΪΪ( )
item
ΪΪ* .
.
ΪΪ. /
Puntaje
ΪΪ/ 6
==
ΪΪ7 9
$num
ΪΪ: ;
?
ΪΪ< =
$num
ΪΪ> ?
:
ΪΪ@ A
(
ΪΪB C
await
ΪΪC H
DaoZero
ΪΪI P
.
ΪΪP Q
DaoInstance
ΪΪQ \
.
ΪΪ\ ]
GetZeroResponse
ΪΪ] l
(
ΪΪl m
item
ΪΪm q
.
ΪΪq r
Id
ΪΪr t
,
ΪΪt u
item
ΪΪv z
.
ΪΪz {
PuntajeΪΪ{ ‚
)ΪΪ‚ ƒ
)ΪΪƒ „
.ΪΪ„ …
IdΪΪ… ‡
}
ΫΫ 
)
ΫΫ 
;
ΫΫ 
}
άά 
await
ίί 
DaoZero
ίί 
.
ίί 
DaoInstance
ίί )
.
ίί) *
AddZeroEwoAsync
ίί* 9
(
ίί9 :
listZE
ίί: @
)
ίί@ A
;
ίίA B
List
ββ 
<
ββ 
plan_accion
ββ  
>
ββ  !
listPA
ββ" (
=
ββ) *
ser
ββ+ .
.
ββ. /
Deserialize
ββ/ :
<
ββ: ;
List
ββ; ?
<
ββ? @
plan_accion
ββ@ K
>
ββK L
>
ββL M
(
ββM N
ewr
ββN Q
.
ββQ R
ListPlan
ββR Z
)
ββZ [
;
ββ[ \
foreach
γγ 
(
γγ 
var
γγ 
item
γγ !
in
γγ" $
listPA
γγ% +
)
γγ+ ,
{
δδ 
item
εε 
.
εε 

codigo_ewo
εε #
=
εε$ %
id
εε& (
;
εε( )
}
ζζ 
await
ιι 
DaoPlanAccion
ιι #
.
ιι# $
DaoInstance
ιι$ /
.
ιι/ 0 
AddPlanAccionAsync
ιι0 B
(
ιιB C
listPA
ιιC I
)
ιιI J
;
ιιJ K
}
λλ 
rr
νν 
.
νν 
Codigo
νν 
=
νν 
$num
νν 
;
νν 
rr
ξξ 
.
ξξ 
	Resultado
ξξ 
=
ξξ 
ewo
ξξ 
;
ξξ 
return
οο 
rr
οο 
;
οο 
}
ππ 	
private
ςς 
void
ςς  
SaveImageEwoServer
ςς '
(
ςς' ( 
HttpPostedFileBase
ςς( :
file
ςς; ?
)
ςς? @
{
σσ 	
if
ττ 
(
ττ 
file
ττ 
!=
ττ 
null
ττ 
)
ττ 
{
υυ 
string
φφ 
nameAndLocation
φφ &
=
φφ' (

ewo_images
φφ) 3
+
φφ4 5
file
φφ6 :
.
φφ: ;
FileName
φφ; C
;
φφC D
file
χχ 
.
χχ 
SaveAs
χχ 
(
χχ 
Server
χχ "
.
χχ" #
MapPath
χχ# *
(
χχ* +
nameAndLocation
χχ+ :
)
χχ: ;
)
χχ; <
;
χχ< =
}
ψψ 
}
ωω 	
	protected
ϋϋ 
override
ϋϋ 
void
ϋϋ 
Dispose
ϋϋ  '
(
ϋϋ' (
bool
ϋϋ( ,
	disposing
ϋϋ- 6
)
ϋϋ6 7
{
όό 	
if
ύύ 
(
ύύ 
	disposing
ύύ 
)
ύύ 
{
ώώ 
db
ÿÿ 
.
ÿÿ 
Dispose
ÿÿ 
(
ÿÿ 
)
ÿÿ 
;
ÿÿ 
}
€€ 
base
 
.
 
Dispose
 
(
 
	disposing
 "
)
" #
;
# $
}
‚‚ 	
}
ƒƒ 
}„„ Ίx
?D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Controllers\UsersController.cs
	namespace 	
EwoQ
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
public 

class 
UsersController  
:! "

Controller# -
{ 
private 
EwoQEntities 
db 
=  !
new" %
EwoQEntities& 2
(2 3
)3 4
;4 5
public 
ActionResult 
Index !
(! "
)" #
{ 	
return 
View 
( 
$str 
)  
;  !
} 	
public 
async 
Task 
< 
ActionResult &
>& '
LoadDataAsync( 5
(5 6
)6 7
{ 	
try 
{   
var!! 
draw!! 
=!! 
HttpContext!! &
.!!& '
Request!!' .
.!!. /
Form!!/ 3
[!!3 4
$str!!4 :
]!!: ;
;!!; <
var## 
start## 
=## 
Request## #
.### $
Form##$ (
[##( )
$str##) 0
]##0 1
;##1 2
var%% 
length%% 
=%% 
Request%% $
.%%$ %
Form%%% )
[%%) *
$str%%* 2
]%%2 3
;%%3 4
var'' 

sortColumn'' 
=''  
Request''! (
.''( )
Form'') -
[''- .
$str''. 8
+''9 :
Request''; B
.''B C
Form''C G
[''G H
$str''H Z
]''Z [
+''\ ]
$str''^ g
]''g h
;''h i
var)) 
sortColumnDirection)) '
=))( )
Request))* 1
.))1 2
Form))2 6
[))6 7
$str))7 F
]))F G
;))G H
var++ 
searchValue++ 
=++  !
Request++" )
.++) *
Form++* .
[++. /
$str++/ >
]++> ?
;++? @
int.. 
pageSize.. 
=.. 
length.. %
...% &
ToString..& .
(... /
)../ 0
!=..1 3
null..4 8
?..9 :
Convert..; B
...B C
ToInt32..C J
(..J K
length..K Q
)..Q R
:..S T
$num..U V
;..V W
int// 
skip// 
=// 
start//  
.//  !
ToString//! )
(//) *
)//* +
!=//, .
null/// 3
?//4 5
Convert//6 =
.//= >
ToInt32//> E
(//E F
start//F K
)//K L
://M N
$num//O P
;//P Q
int00 
recordsTotal00  
=00! "
$num00# $
;00$ %
var33 
userData33 
=33 
DaoUsuarios33 *
.33* +
DaoInstance33+ 6
.336 7
GetUserWOApprv337 E
(33E F
)33F G
;33G H
var55 
data155 
=55 
await55 !
userData55" *
;55* +
if88 
(88 
!88 
(88 
string88 
.88 
IsNullOrEmpty88 *
(88* +

sortColumn88+ 5
)885 6
&&887 9
string88: @
.88@ A
IsNullOrEmpty88A N
(88N O
sortColumnDirection88O b
)88b c
)88c d
)88d e
{99 
data1:: 
=:: 
data1:: !
.::! "
OrderBy::" )
(::) *

sortColumn::* 4
+::5 6
$str::7 :
+::; <
sortColumnDirection::= P
)::P Q
.::Q R
ToList::R X
(::X Y
)::Y Z
;::Z [
};; 
if>> 
(>> 
!>> 
string>> 
.>> 
IsNullOrEmpty>> )
(>>) *
searchValue>>* 5
)>>5 6
)>>6 7
{?? 
data1@@ 
=@@ 
data1@@ !
.@@! "
Where@@" '
(@@' (
m@@( )
=>@@* ,
m@@- .
.@@. /
Nombres@@/ 6
.@@6 7
Contains@@7 ?
(@@? @
searchValue@@@ K
)@@K L
||@@M O
m@@P Q
.@@Q R
	Apellidos@@R [
.@@[ \
Contains@@\ d
(@@d e
searchValue@@e p
)@@p q
)@@q r
.@@r s
ToList@@s y
(@@y z
)@@z {
;@@{ |
}AA 
recordsTotalDD 
=DD 
data1DD $
.DD$ %
CountDD% *
(DD* +
)DD+ ,
;DD, -
varFF 
dataFF 
=FF 
data1FF  
.FF  !
SkipFF! %
(FF% &
skipFF& *
)FF* +
.FF+ ,
TakeFF, 0
(FF0 1
pageSizeFF1 9
)FF9 :
.FF: ;
ToListFF; A
(FFA B
)FFB C
;FFC D
returnHH 
JsonHH 
(HH 
newHH 
{HH  !
drawHH! %
=HH& '
drawHH( ,
,HH, -
recordsFilteredHH. =
=HH> ?
recordsTotalHH@ L
,HHL M
recordsTotalHHN Z
=HH[ \
recordsTotalHH] i
,HHi j
dataHHk o
=HHp q
dataHHr v
}HHw x
)HHx y
;HHy z
}II 
catchJJ 
(JJ 
	ExceptionJJ 
)JJ 
{KK 
throwLL 
;LL 
}MM 
}NN 	
[PP 	
HttpPostPP	 
]PP 
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
ActionResultQQ &
>QQ& '
ApproveQQ( /
(QQ/ 0
stringQQ0 6
idQQ7 9
)QQ9 :
{RR 	
trySS 
{TT 
ifUU 
(UU 
stringUU 
.UU 
IsNullOrEmptyUU (
(UU( )
idUU) +
)UU+ ,
)UU, -
{VV 
returnWW 
RedirectToActionWW +
(WW+ ,
$strWW, 3
,WW3 4
$strWW5 <
)WW< =
;WW= >
}XX 
intZZ 
resultZZ 
=ZZ 
awaitZZ "
DaoUsuariosZZ# .
.ZZ. /
DaoInstanceZZ/ :
.ZZ: ;
ApproveUserZZ; F
(ZZF G
idZZG I
)ZZI J
;ZZJ K
if\\ 
(\\ 
result\\ 
>\\ 
$num\\ 
)\\ 
{]] 
var__ 
user__ 
=__ 
DaoUsuarios__ *
.__* +
DaoInstance__+ 6
.__6 7
GetUser__7 >
(__> ?
id__? A
)__A B
;__B C
await`` 
Utils`` 
.``  
SomeHelpers``  +
.``+ ,
SendGridAsync``, 9
(``9 :
$num``: ;
,``; <
user``= A
.``A B
Email``B G
,``G H
user``I M
.``M N
Nombres``N U
+``V W
$str``X [
+``\ ]
user``^ b
.``b c
	Apellidos``c l
)``l m
;``m n
returnaa 
Jsonaa 
(aa  
dataaa  $
:aa$ %
trueaa& *
)aa* +
;aa+ ,
}bb 
elsecc 
{dd 
returnee 
Jsonee 
(ee  
dataee  $
:ee$ %
falseee& +
)ee+ ,
;ee, -
}ff 
}gg 
catchhh 
(hh 
	Exceptionhh 
)hh 
{ii 
throwjj 
;jj 
}kk 
}ll 	
publicoo 
ActionResultoo 
Detailsoo #
(oo# $
stringoo$ *
idoo+ -
)oo- .
{pp 	
ifqq 
(qq 
idqq 
==qq 
nullqq 
)qq 
{rr 
returnss 
newss  
HttpStatusCodeResultss /
(ss/ 0
HttpStatusCodess0 >
.ss> ?

BadRequestss? I
)ssI J
;ssJ K
}tt 
AspNetUsersuu 
aspNetUsersuu #
=uu$ %
dbuu& (
.uu( )
AspNetUsersuu) 4
.uu4 5
Finduu5 9
(uu9 :
iduu: <
)uu< =
;uu= >
ifvv 
(vv 
aspNetUsersvv 
==vv 
nullvv #
)vv# $
{ww 
returnxx 
HttpNotFoundxx #
(xx# $
)xx$ %
;xx% &
}yy 
returnzz 
Viewzz 
(zz 
aspNetUserszz #
)zz# $
;zz$ %
}{{ 	
public~~ 
ActionResult~~ 
Create~~ "
(~~" #
)~~# $
{ 	
return
€€ 
View
€€ 
(
€€ 
)
€€ 
;
€€ 
}
 	
[
†† 	
HttpPost
††	 
]
†† 
[
‡‡ 	&
ValidateAntiForgeryToken
‡‡	 !
]
‡‡! "
public
 
ActionResult
 
Create
 "
(
" #
[
# $
Bind
$ (
(
( )
Include
) 0
=
1 2
$str3 ν
)ν ξ
]ξ ο
AspNetUsersπ ϋ
aspNetUsersό ‡
)‡ 
{
‰‰ 	
if
 
(
 

ModelState
 
.
 
IsValid
 "
)
" #
{
‹‹ 
db
 
.
 
AspNetUsers
 
.
 
Add
 "
(
" #
aspNetUsers
# .
)
. /
;
/ 0
db
 
.
 
SaveChanges
 
(
 
)
  
;
  !
return
 
RedirectToAction
 '
(
' (
$str
( /
)
/ 0
;
0 1
}
 
return
‘‘ 
View
‘‘ 
(
‘‘ 
aspNetUsers
‘‘ #
)
‘‘# $
;
‘‘$ %
}
’’ 	
public
•• 
ActionResult
•• 
Edit
••  
(
••  !
string
••! '
id
••( *
)
••* +
{
–– 	
if
—— 
(
—— 
id
—— 
==
—— 
null
—— 
)
—— 
{
 
return
™™ 
new
™™ "
HttpStatusCodeResult
™™ /
(
™™/ 0
HttpStatusCode
™™0 >
.
™™> ?

BadRequest
™™? I
)
™™I J
;
™™J K
}
 
AspNetUsers
›› 
aspNetUsers
›› #
=
››$ %
db
››& (
.
››( )
AspNetUsers
››) 4
.
››4 5
Find
››5 9
(
››9 :
id
››: <
)
››< =
;
››= >
if
 
(
 
aspNetUsers
 
==
 
null
 #
)
# $
{
 
return
 
HttpNotFound
 #
(
# $
)
$ %
;
% &
}
 
return
   
View
   
(
   
aspNetUsers
   #
)
  # $
;
  $ %
}
΅΅ 	
[
¦¦ 	
HttpPost
¦¦	 
]
¦¦ 
[
§§ 	&
ValidateAntiForgeryToken
§§	 !
]
§§! "
public
¨¨ 
ActionResult
¨¨ 
Edit
¨¨  
(
¨¨  !
[
¨¨! "
Bind
¨¨" &
(
¨¨& '
Include
¨¨' .
=
¨¨/ 0
$str¨¨1 λ
)¨¨λ μ
]¨¨μ ν
AspNetUsers¨¨ξ ω
aspNetUsers¨¨ϊ …
)¨¨… †
{
©© 	
if
ªª 
(
ªª 

ModelState
ªª 
.
ªª 
IsValid
ªª "
)
ªª" #
{
«« 
db
¬¬ 
.
¬¬ 
Entry
¬¬ 
(
¬¬ 
aspNetUsers
¬¬ $
)
¬¬$ %
.
¬¬% &
State
¬¬& +
=
¬¬, -
EntityState
¬¬. 9
.
¬¬9 :
Modified
¬¬: B
;
¬¬B C
db
­­ 
.
­­ 
SaveChanges
­­ 
(
­­ 
)
­­  
;
­­  !
return
®® 
RedirectToAction
®® '
(
®®' (
$str
®®( /
)
®®/ 0
;
®®0 1
}
―― 
return
°° 
View
°° 
(
°° 
aspNetUsers
°° #
)
°°# $
;
°°$ %
}
±± 	
public
΄΄ 
ActionResult
΄΄ 
Delete
΄΄ "
(
΄΄" #
string
΄΄# )
id
΄΄* ,
)
΄΄, -
{
µµ 	
if
¶¶ 
(
¶¶ 
id
¶¶ 
==
¶¶ 
null
¶¶ 
)
¶¶ 
{
·· 
return
ΈΈ 
new
ΈΈ "
HttpStatusCodeResult
ΈΈ /
(
ΈΈ/ 0
HttpStatusCode
ΈΈ0 >
.
ΈΈ> ?

BadRequest
ΈΈ? I
)
ΈΈI J
;
ΈΈJ K
}
ΉΉ 
AspNetUsers
ΊΊ 
aspNetUsers
ΊΊ #
=
ΊΊ$ %
db
ΊΊ& (
.
ΊΊ( )
AspNetUsers
ΊΊ) 4
.
ΊΊ4 5
Find
ΊΊ5 9
(
ΊΊ9 :
id
ΊΊ: <
)
ΊΊ< =
;
ΊΊ= >
if
»» 
(
»» 
aspNetUsers
»» 
==
»» 
null
»» #
)
»»# $
{
ΌΌ 
return
½½ 
HttpNotFound
½½ #
(
½½# $
)
½½$ %
;
½½% &
}
ΎΎ 
return
ΏΏ 
View
ΏΏ 
(
ΏΏ 
aspNetUsers
ΏΏ #
)
ΏΏ# $
;
ΏΏ$ %
}
ΐΐ 	
[
ΓΓ 	
HttpPost
ΓΓ	 
,
ΓΓ 

ActionName
ΓΓ 
(
ΓΓ 
$str
ΓΓ &
)
ΓΓ& '
]
ΓΓ' (
[
ΔΔ 	&
ValidateAntiForgeryToken
ΔΔ	 !
]
ΔΔ! "
public
ΕΕ 
ActionResult
ΕΕ 
DeleteConfirmed
ΕΕ +
(
ΕΕ+ ,
string
ΕΕ, 2
id
ΕΕ3 5
)
ΕΕ5 6
{
ΖΖ 	
AspNetUsers
ΗΗ 
aspNetUsers
ΗΗ #
=
ΗΗ$ %
db
ΗΗ& (
.
ΗΗ( )
AspNetUsers
ΗΗ) 4
.
ΗΗ4 5
Find
ΗΗ5 9
(
ΗΗ9 :
id
ΗΗ: <
)
ΗΗ< =
;
ΗΗ= >
db
ΘΘ 
.
ΘΘ 
AspNetUsers
ΘΘ 
.
ΘΘ 
Remove
ΘΘ !
(
ΘΘ! "
aspNetUsers
ΘΘ" -
)
ΘΘ- .
;
ΘΘ. /
db
ΙΙ 
.
ΙΙ 
SaveChanges
ΙΙ 
(
ΙΙ 
)
ΙΙ 
;
ΙΙ 
return
ΚΚ 
RedirectToAction
ΚΚ #
(
ΚΚ# $
$str
ΚΚ$ +
)
ΚΚ+ ,
;
ΚΚ, -
}
ΛΛ 	
	protected
ΝΝ 
override
ΝΝ 
void
ΝΝ 
Dispose
ΝΝ  '
(
ΝΝ' (
bool
ΝΝ( ,
	disposing
ΝΝ- 6
)
ΝΝ6 7
{
ΞΞ 	
if
ΟΟ 
(
ΟΟ 
	disposing
ΟΟ 
)
ΟΟ 
{
ΠΠ 
db
ΡΡ 
.
ΡΡ 
Dispose
ΡΡ 
(
ΡΡ 
)
ΡΡ 
;
ΡΡ 
}
ÒÒ 
base
ΣΣ 
.
ΣΣ 
Dispose
ΣΣ 
(
ΣΣ 
	disposing
ΣΣ "
)
ΣΣ" #
;
ΣΣ# $
}
ΤΤ 	
}
ΥΥ 
}ΦΦ Ω#
-D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Dao\Dao4M.cs
	namespace

 	
EwoQ


 
.

 
Dao

 
{ 
public 

class 
Dao4M 
{ 
private 
static 
Dao4M 
daoInstance (
=) *
null+ /
;/ 0
public 
static 
Dao4M 
DaoInstance '
{ 	
get 
{ 
if 
( 
daoInstance 
==  "
null# '
)' (
{ 
daoInstance 
=  !
new" %
Dao4M& +
(+ ,
), -
;- .
} 
return 
daoInstance "
;" #
} 
} 	
public 
async 
Task 
< 
List 
< 
preguntas_4m +
>+ ,
>, - 
Get4mQuestionsByType. B
(B C
longC G
idH J
)J K
{ 	
List 
< 
preguntas_4m 
> 
p4m "
=# $
new% (
List) -
<- .
preguntas_4m. :
>: ;
(; <
)< =
;= >
try   
{!! 
using"" 
("" 
var"" 
context"" "
=""# $
new""% (
EwoQEntities"") 5
(""5 6
)""6 7
)""7 8
{## 
var$$ 
query$$ 
=$$ 
from$$  $
p$$% &
in$$' )
context$$* 1
.$$1 2
preguntas_4m$$2 >
where%%  %
p%%& '
.%%' (
codigo_tipo4m%%( 5
==%%6 8
id%%9 ;
select&&  &
p&&' (
;&&( )
var(( 
p4(( 
=(( 
await(( "
query((# (
.((( )
ToListAsync(() 4
(((4 5
)((5 6
;((6 7
foreach** 
(** 
var**  
item**! %
in**& (
p4**) +
)**+ ,
{++ 
p4m,, 
.,, 
Add,, 
(,,  
new,,  #
preguntas_4m,,$ 0
(,,0 1
),,1 2
{-- 
id.. 
=..  
item..! %
...% &
id..& (
,..( )
codigo_tipo4m// )
=//* +
item//, 0
.//0 1
codigo_tipo4m//1 >
,//> ?
descripcion00 '
=00( )
item00* .
.00. /
descripcion00/ :
}11 
)11 
;11 
}22 
}44 
}55 
catch66 
(66 
	Exception66 
e66 
)66 
{77 
Trace88 
.88 
	WriteLine88 
(88  
$str88  B
+88C D
e88E F
.88F G
ToString88G O
(88O P
)88P Q
)88Q R
;88R S
}99 
return;; 
p4m;; 
;;; 
}<< 	
public>> 
async>> 
Task>> 
<>> 
int>> 
>>> 
AddRespuestasAsync>> 1
(>>1 2
List>>2 6
<>>6 7
respuestas4m>>7 C
>>>C D
r4>>E G
)>>G H
{?? 	
int@@ 
regs@@ 
=@@ 
$num@@ 
;@@ 
tryBB 
{CC 
usingDD 
(DD 
varDD 
contextDD "
=DD# $
newDD% (
EwoQEntitiesDD) 5
(DD5 6
)DD6 7
)DD7 8
{EE 
contextFF 
.FF 
respuestas4mFF (
.FF( )
AddRangeFF) 1
(FF1 2
r4FF2 4
)FF4 5
;FF5 6
regsGG 
=GG 
awaitGG  
contextGG! (
.GG( )
SaveChangesAsyncGG) 9
(GG9 :
)GG: ;
;GG; <
}HH 
}II 
catchJJ 
(JJ 
	ExceptionJJ 
eJJ 
)JJ 
{KK 
DebugLL 
.LL 
	WriteLineLL 
(LL  
$strLL  A
+LLB C
eLLD E
.LLE F
ToStringLLF N
(LLN O
)LLO P
)LLP Q
;LLQ R
regsMM 
=MM 
-MM 
$numMM 
;MM 
}NN 
returnPP 
regsPP 
;PP 
}QQ 	
}RR 
}SS 
7D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Dao\Dao5GResultados.cs
	namespace		 	
EwoQ		
 
.		 
Dao		 
{

 
public 

class 
Dao5GResultados  
{ 
private 
static 
Dao5GResultados &
daoInstance' 2
=3 4
null5 9
;9 :
public 
static 
Dao5GResultados %
DaoInstance& 1
{ 	
get 
{ 
if 
( 
daoInstance 
==  "
null# '
)' (
{ 
daoInstance 
=  !
new" %
Dao5GResultados& 5
(5 6
)6 7
;7 8
} 
return 
daoInstance "
;" #
} 
} 	
public 
async 
Task 
< 
int 
>  
Add5GResultadosAsync 3
(3 4
List4 8
<8 9
fiveg_resultados9 I
>I J
frK M
)M N
{ 	
int 
regs 
= 
$num 
; 
try   
{!! 
using"" 
("" 
var"" 
context"" "
=""# $
new""% (
EwoQEntities"") 5
(""5 6
)""6 7
)""7 8
{## 
context$$ 
.$$ 
fiveg_resultados$$ ,
.$$, -
AddRange$$- 5
($$5 6
fr$$6 8
)$$8 9
;$$9 :
regs%% 
=%% 
await%%  
context%%! (
.%%( )
SaveChangesAsync%%) 9
(%%9 :
)%%: ;
;%%; <
}&& 
}'' 
catch(( 
((( 
	Exception(( 
e(( 
)(( 
{)) 
Debug** 
.** 
	WriteLine** 
(**  
$str**  A
+**B C
e**D E
.**E F
ToString**F N
(**N O
)**O P
)**P Q
;**Q R
regs++ 
=++ 
-++ 
$num++ 
;++ 
},, 
return.. 
regs.. 
;.. 
}// 	
}00 
}11 α-
3D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Dao\DaoAcciones.cs
	namespace

 	
EwoQ


 
.

 
Dao

 
{ 
public 

class 
DaoAcciones 
{ 
private 
static 
DaoAcciones "
daoInstance# .
=/ 0
null1 5
;5 6
public 
static 
DaoAcciones !
DaoInstance" -
{ 	
get 
{ 
if 
( 
daoInstance 
==  "
null# '
)' (
{ 
daoInstance 
=  !
new" %
DaoAcciones& 1
(1 2
)2 3
;3 4
} 
return 
daoInstance "
;" #
} 
} 	
public 
async 
Task 
< 
int 
> 
AddAcciones *
(* +
List+ /
</ 0
acciones_inmediatas0 C
>C D
aiE G
)G H
{ 	
int 
regs 
= 
$num 
; 
try!! 
{"" 
using## 
(## 
var## 
context## "
=### $
new##% (
EwoQEntities##) 5
(##5 6
)##6 7
)##7 8
{$$ 
context%% 
.%% 
acciones_inmediatas%% /
.%%/ 0
AddRange%%0 8
(%%8 9
ai%%9 ;
)%%; <
;%%< =
regs&& 
=&& 
await&&  
context&&! (
.&&( )
SaveChangesAsync&&) 9
(&&9 :
)&&: ;
;&&; <
}'' 
}(( 
catch)) 
()) 
	Exception)) 
e)) 
))) 
{** 
Debug++ 
.++ 
	WriteLine++ 
(++  
$str++  E
+++F G
e++H I
.++I J
ToString++J R
(++R S
)++S T
)++T U
;++U V
regs,, 
=,, 
-,, 
$num,, 
;,, 
}-- 
return// 
regs// 
;// 
}00 	
public22 
async22 
Task22 
<22 
int22 
>22 
AddAccionesProcess22 1
(221 2
List222 6
<226 7
acciones_inmediatas227 J
>22J K
ai22L N
,22N O
long22P T
cod_ewo22U \
)22\ ]
{33 	
int44 
regs44 
=44 
$num44 
;44 
try66 
{77 
using88 
(88 
var88 
context88 "
=88# $
new88% (
EwoQEntities88) 5
(885 6
)886 7
)887 8
{99 
context:: 
.:: 
acciones_inmediatas:: /
.::/ 0
RemoveRange::0 ;
(::; <
context::< C
.::C D
acciones_inmediatas::D W
.::W X
Where::X ]
(::] ^
x::^ _
=>::` b
x::c d
.::d e

codigo_ewo::e o
==::p r
cod_ewo::s z
)::z {
)::{ |
;::| }
context;; 
.;; 
acciones_inmediatas;; /
.;;/ 0
AddRange;;0 8
(;;8 9
ai;;9 ;
);;; <
;;;< =
regs<< 
=<< 
await<<  
context<<! (
.<<( )
SaveChangesAsync<<) 9
(<<9 :
)<<: ;
;<<; <
}== 
}>> 
catch?? 
(?? 
	Exception?? 
e?? 
)?? 
{@@ 
DebugAA 
.AA 
	WriteLineAA 
(AA  
$strAA  E
+AAF G
eAAH I
.AAI J
ToStringAAJ R
(AAR S
)AAS T
)AAT U
;AAU V
regsBB 
=BB 
-BB 
$numBB 
;BB 
}CC 
returnEE 
regsEE 
;EE 
}FF 	
publicHH 
asyncHH 
TaskHH 
<HH 
ListHH 
<HH 
acciones_inmediatasHH 2
>HH2 3
>HH3 4
GetActionsListHH5 C
(HHC D
longHHD H
id_ewoHHI O
)HHO P
{II 	
ListJJ 
<JJ 
acciones_inmediatasJJ $
>JJ$ %
listJJ& *
=JJ+ ,
newJJ- 0
ListJJ1 5
<JJ5 6
acciones_inmediatasJJ6 I
>JJI J
(JJJ K
)JJK L
;JJL M
tryLL 
{MM 
usingNN 
(NN 
varNN 
contextNN "
=NN# $
newNN% (
EwoQEntitiesNN) 5
(NN5 6
)NN6 7
)NN7 8
{OO 
varPP 
queryPP 
=PP 
fromPP  $
ruPP% '
inPP( *
contextPP+ 2
.PP2 3
acciones_inmediatasPP3 F
whereQQ  %
ruQQ& (
.QQ( )

codigo_ewoQQ) 3
==QQ4 6
id_ewoQQ7 =
selectRR  &
ruRR' )
;RR) *
listTT 
=TT 
awaitTT  
queryTT! &
.TT& '
ToListAsyncTT' 2
(TT2 3
)TT3 4
;TT4 5
}UU 
}VV 
catchWW 
(WW 
	ExceptionWW 
eWW 
)WW 
{XX 
DebugYY 
.YY 
	WriteLineYY 
(YY  
$strYY  Y
+YYZ [
eYY\ ]
.YY] ^
ToStringYY^ f
(YYf g
)YYg h
)YYh i
;YYi j
}ZZ 
return\\ 
list\\ 
;\\ 
}]] 	
}^^ 
}__ Ρ
0D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Dao\DaoAreas.cs
	namespace

 	
EwoQ


 
.

 
Dao

 
{ 
public 

class 
DaoAreas 
{ 
private 
static 
DaoAreas 
daoInstance  +
=, -
null. 2
;2 3
public 
static 
DaoAreas 
DaoInstance *
{ 	
get 
{ 
if 
( 
daoInstance 
==  "
null# '
)' (
{ 
daoInstance 
=  !
new" %
DaoAreas& .
(. /
)/ 0
;0 1
} 
return 
daoInstance "
;" #
} 
} 	
public 
async 
Task 
< 
List 
< 
areas_productivas 0
>0 1
>1 2
GetAreasAsync3 @
(@ A
intA D
idE G
)G H
{ 	
List   
<   
areas_productivas   "
>  " #
areas  $ )
=  * +
new  , /
List  0 4
<  4 5
areas_productivas  5 F
>  F G
(  G H
)  H I
;  I J
try"" 
{## 
using$$ 
($$ 
var$$ 
context$$ "
=$$# $
new$$% (
EwoQEntities$$) 5
($$5 6
)$$6 7
)$$7 8
{%% 
var&& 
query&& 
=&& 
from&&  $
td&&% '
in&&( *
context&&+ 2
.&&2 3
areas_productivas&&3 D
where''  %
td''& (
.''( )
codigo_planta'') 6
==''7 9
id'': <
select((  &
td((' )
;(() *
areas)) 
=)) 
await)) !
query))" '
.))' (
OrderBy))( /
())/ 0
x))0 1
=>))2 4
x))5 6
.))6 7
descripcion))7 B
)))B C
.))C D
ToListAsync))D O
())O P
)))P Q
;))Q R
}** 
}++ 
catch,, 
(,, 
	Exception,, 
e,, 
),, 
{-- 
Debug.. 
... 
	WriteLine.. 
(..  
e..  !
...! "
ToString.." *
(..* +
)..+ ,
).., -
;..- .
}// 
return11 
areas11 
;11 
}22 	
}33 
}44 θέ
.D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Dao\DaoEwo.cs
	namespace 	
EwoQ
 
. 
Dao 
{ 
public 

class 
DaoEwo 
{ 
private 
static 
DaoEwo 
daoInstance )
=* +
null, 0
;0 1
public 
static 
DaoEwo 
DaoInstance (
{ 	
get 
{ 
if 
( 
daoInstance 
==  "
null# '
)' (
{ 
daoInstance 
=  !
new" %
DaoEwo& ,
(, -
)- .
;. /
} 
return 
daoInstance "
;" #
} 
} 	
public   
async   
Task   
<   
int   
>   
GetLastConsecutive   1
(  1 2
)  2 3
{!! 	
int"" 
max"" 
="" 
$num"" 
;"" 
try$$ 
{%% 
using&& 
(&& 
var&& 
context&& "
=&&# $
new&&% (
EwoQEntities&&) 5
(&&5 6
)&&6 7
)&&7 8
{'' 
var(( 
maxv(( 
=(( 
await(( $
context((% ,
.((, -
ewo((- 0
.((0 1
OrderByDescending((1 B
(((B C
u((C D
=>((E G
u((H I
.((I J
id((J L
)((L M
.((M N
FirstOrDefaultAsync((N a
(((a b
)((b c
;((c d
if)) 
()) 
maxv)) 
!=)) 
null))  $
)))$ %
{** 
max++ 
=++ 
(++ 
int++ "
)++" #
maxv++# '
.++' (
consecutivo++( 3
+++4 5
$num++6 7
;++7 8
},, 
else-- 
{.. 
max// 
=// 
$num// 
;//  
}00 
}22 
}33 
catch44 
(44 
	Exception44 
e44 
)44 
{55 
Debug66 
.66 
	WriteLine66 
(66  
$str66  K
+66L M
e66N O
.66O P
ToString66P X
(66X Y
)66Y Z
)66Z [
;66[ \
max77 
=77 
-77 
$num77 
;77 
}88 
return:: 
max:: 
;:: 
};; 	
public== 
async== 
Task== 
<== 
string==  
>==  !
GetConsecutiveAsync==" 5
(==5 6
int==6 9
id==: <
)==< =
{>> 	
string?? 
max?? 
=?? 
$str?? 
;?? 
tryAA 
{BB 
awaitCC 
TaskCC 
.CC 
RunCC 
(CC 
(CC  
)CC  !
=>CC" $
{DD 
usingEE 
(EE 
varEE 
contextEE &
=EE' (
newEE) ,
EwoQEntitiesEE- 9
(EE9 :
)EE: ;
)EE; <
{FF 
varGG 
maxvGG  
=GG! "
contextGG# *
.GG* +
ewoGG+ .
.GG. /
WhereGG/ 4
(GG4 5
xGG5 6
=>GG7 9
xGG: ;
.GG; <
idGG< >
==GG? A
idGGB D
)GGD E
.HH 
FirstOrDefaultHH +
(HH+ ,
)HH, -
.HH- .
consecutivoHH. 9
;HH9 :
ifII 
(II 
maxvII  
!=II! #
nullII$ (
)II( )
{JJ 
maxKK 
=KK  !
maxvKK" &
.KK& '
ValueKK' ,
.KK, -
ToStringKK- 5
(KK5 6
)KK6 7
;KK7 8
}LL 
elseMM 
{NN 
maxOO 
=OO  !
$strOO" %
;OO% &
}PP 
}QQ 
}RR 
)RR 
;RR 
}TT 
catchUU 
(UU 
	ExceptionUU 
eUU 
)UU 
{VV 
DebugWW 
.WW 
	WriteLineWW 
(WW  
$strWW  I
+WWJ K
eWWL M
.WWM N
ToStringWWN V
(WWV W
)WWW X
)WWX Y
;WWY Z
maxXX 
=XX 
$strXX 
;XX 
}YY 
return[[ 
max[[ 
;[[ 
}\\ 	
public^^ 
async^^ 
Task^^ 
<^^ 
string^^  
>^^  !
GetAutorAsync^^" /
(^^/ 0
long^^0 4
id^^5 7
)^^7 8
{__ 	
string`` 
auth`` 
=`` 
$str`` 
;`` 
trybb 
{cc 
awaitdd 
Taskdd 
.dd 
Rundd 
(dd 
(dd  
)dd  !
=>dd" $
{ee 
usingff 
(ff 
varff 
contextff &
=ff' (
newff) ,
EwoQEntitiesff- 9
(ff9 :
)ff: ;
)ff; <
{gg 
varhh 
authvhh !
=hh" #
contexthh$ +
.hh+ ,
ewohh, /
.hh/ 0
Wherehh0 5
(hh5 6
xhh6 7
=>hh8 :
xhh; <
.hh< =
idhh= ?
==hh@ B
idhhC E
)hhE F
.ii 
FirstOrDefaultii +
(ii+ ,
)ii, -
.ii- .
autorii. 3
;ii3 4
ifjj 
(jj 
authvjj !
!=jj" $
nulljj% )
)jj) *
{kk 
authll  
=ll! "
authvll# (
;ll( )
}mm 
}nn 
}oo 
)oo 
;oo 
}qq 
catchrr 
(rr 
	Exceptionrr 
err 
)rr 
{ss 
Debugtt 
.tt 
	WriteLinett 
(tt  
$strtt  C
+ttD E
ettF G
.ttG H
ToStringttH P
(ttP Q
)ttQ R
)ttR S
;ttS T
authuu 
=uu 
$struu 
;uu 
}vv 
returnxx 
authxx 
;xx 
}yy 	
publiczz 
intzz 
GetCountzz 
(zz 
)zz 
{{{ 	
int|| 
max|| 
=|| 
$num|| 
;|| 
try~~ 
{ 
using
€€ 
(
€€ 
var
€€ 
context
€€ "
=
€€# $
new
€€% (
EwoQEntities
€€) 5
(
€€5 6
)
€€6 7
)
€€7 8
{
 
var
‚‚ 
maxv
‚‚ 
=
‚‚ 
context
‚‚ &
.
‚‚& '
ewo
‚‚' *
.
‚‚* +
Count
‚‚+ 0
(
‚‚0 1
)
‚‚1 2
;
‚‚2 3
max
„„ 
=
„„ 
maxv
„„ 
;
„„ 
}
…… 
}
†† 
catch
‡‡ 
(
‡‡ 
	Exception
‡‡ 
e
‡‡ 
)
‡‡ 
{
 
Debug
‰‰ 
.
‰‰ 
	WriteLine
‰‰ 
(
‰‰  
$str
‰‰  G
+
‰‰H I
e
‰‰J K
.
‰‰K L
ToString
‰‰L T
(
‰‰T U
)
‰‰U V
)
‰‰V W
;
‰‰W X
max
 
=
 
-
 
$num
 
;
 
}
‹‹ 
return
 
max
 
;
 
}
 	
public
 
int
 
GetCountClosed
 !
(
! "
)
" #
{
‘‘ 	
int
’’ 
max
’’ 
=
’’ 
$num
’’ 
;
’’ 
try
”” 
{
•• 
using
–– 
(
–– 
var
–– 
context
–– "
=
––# $
new
––% (
EwoQEntities
––) 5
(
––5 6
)
––6 7
)
––7 8
{
—— 
var
 
maxv
 
=
 
context
 &
.
& '
ewo
' *
.
* +
Where
+ 0
(
0 1
x
1 2
=>
2 4
x
5 6
.
6 7
codigo_estado
7 D
==
E G
$num
H I
)
I J
.
J K
Count
K P
(
P Q
)
Q R
;
R S
max
 
=
 
maxv
 
;
 
}
›› 
}
 
catch
 
(
 
	Exception
 
e
 
)
 
{
 
Debug
 
.
 
	WriteLine
 
(
  
$str
  P
+
Q R
e
S T
.
T U
ToString
U ]
(
] ^
)
^ _
)
_ `
;
` a
max
   
=
   
-
   
$num
   
;
   
}
΅΅ 
return
££ 
max
££ 
;
££ 
}
¤¤ 	
public
¦¦ 
async
¦¦ 
Task
¦¦ 
<
¦¦ 
long
¦¦ 
>
¦¦ 
AddEwo
¦¦  &
(
¦¦& '
ewo
¦¦' *
ewo
¦¦+ .
)
¦¦. /
{
§§ 	
long
¨¨ 
regs
¨¨ 
=
¨¨ 
$num
¨¨ 
;
¨¨ 
try
ªª 
{
«« 
using
¬¬ 
(
¬¬ 
var
¬¬ 
context
¬¬ "
=
¬¬# $
new
¬¬% (
EwoQEntities
¬¬) 5
(
¬¬5 6
)
¬¬6 7
)
¬¬7 8
{
­­ 
context
®® 
.
®® 
ewo
®® 
.
®®  
Add
®®  #
(
®®# $
ewo
®®$ '
)
®®' (
;
®®( )
await
―― 
context
―― !
.
――! "
SaveChangesAsync
――" 2
(
――2 3
)
――3 4
;
――4 5
regs
°° 
=
°° 
ewo
°° 
.
°° 
id
°° !
;
°°! "
}
±± 
}
²² 
catch
³³ 
(
³³ 
	Exception
³³ 
e
³³ 
)
³³ 
{
΄΄ 
Debug
µµ 
.
µµ 
	WriteLine
µµ 
(
µµ  
$str
µµ  8
+
µµ8 9
e
µµ9 :
.
µµ: ;
ToString
µµ; C
(
µµC D
)
µµD E
)
µµE F
;
µµF G
regs
¶¶ 
=
¶¶ 
-
¶¶ 
$num
¶¶ 
;
¶¶ 
}
·· 
return
ΈΈ 
regs
ΈΈ 
;
ΈΈ 
}
ΉΉ 	
public
»» 
List
»» 
<
»» 
DonutViewModel
»» "
>
»»" #
GetEwoPercents
»»$ 2
(
»»2 3
)
»»3 4
{
ΌΌ 	
List
½½ 
<
½½ 
DonutViewModel
½½ 
>
½½  
list
½½! %
=
½½& '
new
½½( +
List
½½, 0
<
½½0 1
DonutViewModel
½½1 ?
>
½½? @
(
½½@ A
)
½½A B
;
½½B C
try
ΏΏ 
{
ΐΐ 
using
ΑΑ 
(
ΑΑ 
var
ΑΑ 
context
ΑΑ "
=
ΑΑ# $
new
ΑΑ% (
EwoQEntities
ΑΑ) 5
(
ΑΑ5 6
)
ΑΑ6 7
)
ΑΑ7 8
{
ΒΒ 
var
ΔΔ 
query
ΔΔ 
=
ΔΔ 
(
ΔΔ  !
from
ΔΔ! %
e
ΔΔ& '
in
ΔΔ( *
context
ΔΔ+ 2
.
ΔΔ2 3
ewo
ΔΔ3 6
join
ΕΕ! %
td
ΕΕ& (
in
ΕΕ) +
context
ΕΕ, 3
.
ΕΕ3 4

tipos_data
ΕΕ4 >
on
ΖΖ! #
e
ΖΖ$ %
.
ΖΖ% &
tipo_incidente
ΖΖ& 4
equals
ΖΖ5 ;
td
ΖΖ< >
.
ΖΖ> ?
id
ΖΖ? A
group
ΗΗ! &
e
ΗΗ' (
by
ΗΗ) +
new
ΗΗ, /
{
ΗΗ0 1
e
ΗΗ2 3
.
ΗΗ3 4
tipo_incidente
ΗΗ4 B
,
ΗΗB C
td
ΗΗC E
.
ΗΗE F
descripcion
ΗΗF Q
}
ΗΗR S
into
ΗΗT X
g
ΗΗY Z
select
ΘΘ! '
new
ΘΘ( +
{
ΙΙ! "
g
ΚΚ% &
.
ΚΚ& '
Key
ΚΚ' *
.
ΚΚ* +
descripcion
ΚΚ+ 6
,
ΚΚ6 7
Count
ΛΛ% *
=
ΛΛ+ ,
g
ΛΛ- .
.
ΛΛ. /
Count
ΛΛ/ 4
(
ΛΛ4 5
)
ΛΛ5 6
}
ΜΜ! "
)
ΜΜ" #
.
ΜΜ# $
AsEnumerable
ΜΜ$ 0
(
ΜΜ0 1
)
ΜΜ1 2
.
ΝΝ  !
Select
ΝΝ! '
(
ΝΝ' (
g
ΝΝ( )
=>
ΝΝ* ,
new
ΝΝ- 0
{
ΞΞ  !
g
ΟΟ$ %
.
ΟΟ% &
descripcion
ΟΟ& 1
,
ΟΟ1 2
g
ΠΠ$ %
.
ΠΠ% &
Count
ΠΠ& +
}
ΡΡ  !
)
ΡΡ! "
;
ΡΡ" #
if
ΣΣ 
(
ΣΣ 
query
ΣΣ 
!=
ΣΣ  
null
ΣΣ! %
)
ΣΣ% &
{
ΤΤ 
foreach
ΥΥ 
(
ΥΥ  !
var
ΥΥ! $
item
ΥΥ% )
in
ΥΥ* ,
query
ΥΥ- 2
)
ΥΥ2 3
{
ΦΦ 
list
ΧΧ  
.
ΧΧ  !
Add
ΧΧ! $
(
ΧΧ$ %
new
ΧΧ% (
DonutViewModel
ΧΧ) 7
(
ΧΧ7 8
)
ΧΧ8 9
{
ΨΨ 
label
ΩΩ  %
=
ΩΩ& '
item
ΩΩ( ,
.
ΩΩ, -
descripcion
ΩΩ- 8
+
ΩΩ9 :
$str
ΩΩ; ?
+
ΩΩ? @
item
ΩΩ@ D
.
ΩΩD E
Count
ΩΩE J
+
ΩΩJ K
$str
ΩΩK N
,
ΩΩN O
value
ΪΪ  %
=
ΪΪ& '
(
ΪΪ( )
(
ΪΪ) *
double
ΪΪ* 0
)
ΪΪ0 1
item
ΪΪ1 5
.
ΪΪ5 6
Count
ΪΪ6 ;
/
ΪΪ< =
GetCountClosed
ΪΪ> L
(
ΪΪL M
)
ΪΪM N
*
ΪΪO P
$num
ΪΪQ T
)
ΪΪT U
.
ΪΪU V
ToString
ΪΪV ^
(
ΪΪ^ _
$str
ΪΪ_ c
)
ΪΪc d
}
ΫΫ 
)
ΫΫ 
;
ΫΫ 
}
άά 
}
έέ 
}
ήή 
}
ίί 
catch
ΰΰ 
(
ΰΰ 
	Exception
ΰΰ 
e
ΰΰ 
)
ΰΰ 
{
αα 
Debug
ββ 
.
ββ 
	WriteLine
ββ 
(
ββ  
$str
ββ  Y
+
ββZ [
e
ββ\ ]
.
ββ] ^
ToString
ββ^ f
(
ββf g
)
ββg h
)
ββh i
;
ββi j
}
γγ 
return
εε 
list
εε 
;
εε 
}
ζζ 	
public
θθ 
List
θθ 
<
θθ 
DonutViewModel
θθ "
>
θθ" #
GetEwoMPercents
θθ$ 3
(
θθ3 4
)
θθ4 5
{
ιι 	
List
κκ 
<
κκ 
DonutViewModel
κκ 
>
κκ  
list
κκ! %
=
κκ& '
new
κκ( +
List
κκ, 0
<
κκ0 1
DonutViewModel
κκ1 ?
>
κκ? @
(
κκ@ A
)
κκA B
;
κκB C
try
μμ 
{
νν 
using
ξξ 
(
ξξ 
var
ξξ 
context
ξξ "
=
ξξ# $
new
ξξ% (
EwoQEntities
ξξ) 5
(
ξξ5 6
)
ξξ6 7
)
ξξ7 8
{
οο 
var
ρρ 
query
ρρ 
=
ρρ 
(
ρρ  !
from
ρρ! %
e
ρρ& '
in
ρρ( *
context
ρρ+ 2
.
ρρ2 3
ewo
ρρ3 6
join
ςς! %
td
ςς& (
in
ςς) +
context
ςς, 3
.
ςς3 4

tipos_data
ςς4 >
on
σσ! #
e
σσ$ %
.
σσ% &
codigo_m
σσ& .
equals
σσ/ 5
td
σσ6 8
.
σσ8 9
id
σσ9 ;
group
ττ! &
e
ττ' (
by
ττ) +
new
ττ, /
{
ττ0 1
e
ττ2 3
.
ττ3 4
codigo_m
ττ4 <
,
ττ< =
td
ττ> @
.
ττ@ A
descripcion
ττA L
}
ττM N
into
ττO S
g
ττT U
select
υυ! '
new
υυ( +
{
φφ! "
g
χχ% &
.
χχ& '
Key
χχ' *
.
χχ* +
descripcion
χχ+ 6
,
χχ6 7
Count
ψψ% *
=
ψψ+ ,
g
ψψ- .
.
ψψ. /
Count
ψψ/ 4
(
ψψ4 5
)
ψψ5 6
}
ωω! "
)
ωω" #
.
ωω# $
AsEnumerable
ωω$ 0
(
ωω0 1
)
ωω1 2
.
ϊϊ  !
Select
ϊϊ! '
(
ϊϊ' (
g
ϊϊ( )
=>
ϊϊ* ,
new
ϊϊ- 0
{
ϋϋ  !
g
όό$ %
.
όό% &
descripcion
όό& 1
,
όό1 2
g
ύύ$ %
.
ύύ% &
Count
ύύ& +
}
ώώ  !
)
ώώ! "
;
ώώ" #
if
€€ 
(
€€ 
query
€€ 
!=
€€  
null
€€! %
)
€€% &
{
 
foreach
‚‚ 
(
‚‚  !
var
‚‚! $
item
‚‚% )
in
‚‚* ,
query
‚‚- 2
)
‚‚2 3
{
ƒƒ 
list
„„  
.
„„  !
Add
„„! $
(
„„$ %
new
„„% (
DonutViewModel
„„) 7
(
„„7 8
)
„„8 9
{
…… 
label
††  %
=
††& '
item
††( ,
.
††, -
descripcion
††- 8
+
††9 :
$str
††; ?
+
††@ A
item
††B F
.
††F G
Count
††G L
+
††M N
$str
††O R
,
††R S
value
‡‡  %
=
‡‡& '
(
‡‡( )
(
‡‡) *
double
‡‡* 0
)
‡‡0 1
item
‡‡1 5
.
‡‡5 6
Count
‡‡6 ;
/
‡‡< =
GetCountClosed
‡‡> L
(
‡‡L M
)
‡‡M N
*
‡‡O P
$num
‡‡Q T
)
‡‡T U
.
‡‡U V
ToString
‡‡V ^
(
‡‡^ _
$str
‡‡_ c
)
‡‡c d
}
 
)
 
;
 
}
‰‰ 
}
 
}
‹‹ 
}
 
catch
 
(
 
	Exception
 
e
 
)
 
{
 
Debug
 
.
 
	WriteLine
 
(
  
$str
  N
+
O P
e
Q R
.
R S
ToString
S [
(
[ \
)
\ ]
)
] ^
;
^ _
}
 
return
’’ 
list
’’ 
;
’’ 
}
““ 	
public
•• 
List
•• 
<
•• 
DonutViewModel
•• "
>
••" # 
GetEwoTFFZPercents
••$ 6
(
••6 7
)
••7 8
{
–– 	
List
—— 
<
—— 
DonutViewModel
—— 
>
——  
list
——! %
=
——& '
new
——( +
List
——, 0
<
——0 1
DonutViewModel
——1 ?
>
——? @
(
——@ A
)
——A B
;
——B C
try
™™ 
{
 
using
›› 
(
›› 
var
›› 
context
›› "
=
››# $
new
››% (
EwoQEntities
››) 5
(
››5 6
)
››6 7
)
››7 8
{
 
var
 
query
 
=
 
(
  !
from
! %
e
& '
in
( *
context
+ 2
.
2 3
ewo
3 6
join
! %
td
& (
in
) +
context
, 3
.
3 4

tipos_data
4 >
on
  ! #
e
  $ %
.
  % &#
codigo_top_five_fzero
  & ;
equals
  < B
td
  C E
.
  E F
id
  F H
group
΅΅! &
e
΅΅' (
by
΅΅) +
new
΅΅, /
{
΅΅0 1
e
΅΅2 3
.
΅΅3 4#
codigo_top_five_fzero
΅΅4 I
,
΅΅I J
td
΅΅K M
.
΅΅M N
descripcion
΅΅N Y
}
΅΅Z [
into
΅΅\ `
g
΅΅a b
select
ΆΆ! '
new
ΆΆ( +
{
££! "
g
¤¤% &
.
¤¤& '
Key
¤¤' *
.
¤¤* +
descripcion
¤¤+ 6
,
¤¤6 7
Count
¥¥% *
=
¥¥+ ,
g
¥¥- .
.
¥¥. /
Count
¥¥/ 4
(
¥¥4 5
)
¥¥5 6
}
¦¦! "
)
¦¦" #
.
¦¦# $
AsEnumerable
¦¦$ 0
(
¦¦0 1
)
¦¦1 2
.
§§  !
Select
§§! '
(
§§' (
g
§§( )
=>
§§* ,
new
§§- 0
{
¨¨  !
g
©©$ %
.
©©% &
descripcion
©©& 1
,
©©1 2
g
ªª$ %
.
ªª% &
Count
ªª& +
}
««  !
)
««! "
;
««" #
if
­­ 
(
­­ 
query
­­ 
!=
­­  
null
­­! %
)
­­% &
{
®® 
foreach
―― 
(
――  !
var
――! $
item
――% )
in
――* ,
query
――- 2
)
――2 3
{
°° 
list
±±  
.
±±  !
Add
±±! $
(
±±$ %
new
±±% (
DonutViewModel
±±) 7
(
±±7 8
)
±±8 9
{
²² 
label
³³  %
=
³³& '
item
³³( ,
.
³³, -
descripcion
³³- 8
+
³³9 :
$str
³³; ?
+
³³@ A
item
³³B F
.
³³F G
Count
³³G L
+
³³M N
$str
³³O R
,
³³R S
value
΄΄  %
=
΄΄& '
(
΄΄( )
(
΄΄) *
double
΄΄* 0
)
΄΄0 1
item
΄΄1 5
.
΄΄5 6
Count
΄΄6 ;
/
΄΄< =
GetCountClosed
΄΄> L
(
΄΄L M
)
΄΄M N
*
΄΄O P
$num
΄΄Q T
)
΄΄T U
.
΄΄U V
ToString
΄΄V ^
(
΄΄^ _
$str
΄΄_ c
)
΄΄c d
}
µµ 
)
µµ 
;
µµ 
}
¶¶ 
}
·· 
}
ΈΈ 
}
ΉΉ 
catch
ΊΊ 
(
ΊΊ 
	Exception
ΊΊ 
e
ΊΊ 
)
ΊΊ 
{
»» 
Debug
ΌΌ 
.
ΌΌ 
	WriteLine
ΌΌ 
(
ΌΌ  
$str
ΌΌ  W
+
ΌΌX Y
e
ΌΌZ [
.
ΌΌ[ \
ToString
ΌΌ\ d
(
ΌΌd e
)
ΌΌe f
)
ΌΌf g
;
ΌΌg h
}
½½ 
return
ΏΏ 
list
ΏΏ 
;
ΏΏ 
}
ΐΐ 	
public
ΒΒ 
List
ΒΒ 
<
ΒΒ 
DonutViewModel
ΒΒ "
>
ΒΒ" #"
GetEwoPlantsPercents
ΒΒ$ 8
(
ΒΒ8 9
)
ΒΒ9 :
{
ΓΓ 	
List
ΔΔ 
<
ΔΔ 
DonutViewModel
ΔΔ 
>
ΔΔ  
list
ΔΔ! %
=
ΔΔ& '
new
ΔΔ( +
List
ΔΔ, 0
<
ΔΔ0 1
DonutViewModel
ΔΔ1 ?
>
ΔΔ? @
(
ΔΔ@ A
)
ΔΔA B
;
ΔΔB C
try
ΖΖ 
{
ΗΗ 
using
ΘΘ 
(
ΘΘ 
var
ΘΘ 
context
ΘΘ "
=
ΘΘ# $
new
ΘΘ% (
EwoQEntities
ΘΘ) 5
(
ΘΘ5 6
)
ΘΘ6 7
)
ΘΘ7 8
{
ΙΙ 
var
ΛΛ 
query
ΛΛ 
=
ΛΛ 
(
ΛΛ  !
from
ΛΛ! %
e
ΛΛ& '
in
ΛΛ( *
context
ΛΛ+ 2
.
ΛΛ2 3
ewo
ΛΛ3 6
join
ΜΜ! %
l
ΜΜ& '
in
ΜΜ( *
context
ΜΜ+ 2
.
ΜΜ2 3
lineas
ΜΜ3 9
on
ΝΝ! #
e
ΝΝ$ %
.
ΝΝ% &
codigo_linea
ΝΝ& 2
equals
ΝΝ3 9
l
ΝΝ: ;
.
ΝΝ; <
id
ΝΝ< >
join
ΞΞ! %
a
ΞΞ& '
in
ΞΞ( *
context
ΞΞ+ 2
.
ΞΞ2 3
areas_productivas
ΞΞ3 D
on
ΟΟ! #
l
ΟΟ$ %
.
ΟΟ% &
codigo_area
ΟΟ& 1
equals
ΟΟ2 8
a
ΟΟ9 :
.
ΟΟ: ;
id
ΟΟ; =
join
ΠΠ! %
p
ΠΠ& '
in
ΠΠ( *
context
ΠΠ+ 2
.
ΠΠ2 3
plantas
ΠΠ3 :
on
ΡΡ! #
a
ΡΡ$ %
.
ΡΡ% &
codigo_planta
ΡΡ& 3
equals
ΡΡ4 :
p
ΡΡ; <
.
ΡΡ< =
id
ΡΡ= ?
group
ÒÒ! &
e
ÒÒ' (
by
ÒÒ) +
new
ÒÒ, /
{
ÒÒ0 1
p
ÒÒ2 3
.
ÒÒ3 4
id
ÒÒ4 6
,
ÒÒ6 7
p
ÒÒ8 9
.
ÒÒ9 :
descripcion
ÒÒ: E
}
ÒÒF G
into
ÒÒH L
g
ÒÒM N
select
ΣΣ! '
new
ΣΣ( +
{
ΤΤ! "
g
ΥΥ% &
.
ΥΥ& '
Key
ΥΥ' *
.
ΥΥ* +
descripcion
ΥΥ+ 6
,
ΥΥ6 7
Count
ΦΦ% *
=
ΦΦ+ ,
g
ΦΦ- .
.
ΦΦ. /
Count
ΦΦ/ 4
(
ΦΦ4 5
)
ΦΦ5 6
}
ΧΧ! "
)
ΧΧ" #
.
ΧΧ# $
AsEnumerable
ΧΧ$ 0
(
ΧΧ0 1
)
ΧΧ1 2
.
ΨΨ  !
Select
ΨΨ! '
(
ΨΨ' (
g
ΨΨ( )
=>
ΨΨ* ,
new
ΨΨ- 0
{
ΩΩ  !
g
ΪΪ$ %
.
ΪΪ% &
descripcion
ΪΪ& 1
,
ΪΪ1 2
g
ΫΫ$ %
.
ΫΫ% &
Count
ΫΫ& +
}
άά  !
)
άά! "
;
άά" #
if
ήή 
(
ήή 
query
ήή 
!=
ήή  
null
ήή! %
)
ήή% &
{
ίί 
foreach
ΰΰ 
(
ΰΰ  !
var
ΰΰ! $
item
ΰΰ% )
in
ΰΰ* ,
query
ΰΰ- 2
)
ΰΰ2 3
{
αα 
list
ββ  
.
ββ  !
Add
ββ! $
(
ββ$ %
new
ββ% (
DonutViewModel
ββ) 7
(
ββ7 8
)
ββ8 9
{
γγ 
label
δδ  %
=
δδ& '
item
δδ( ,
.
δδ, -
descripcion
δδ- 8
+
δδ9 :
$str
δδ; ?
+
δδ@ A
item
δδB F
.
δδF G
Count
δδG L
+
δδM N
$str
δδO R
,
δδR S
value
εε  %
=
εε& '
(
εε( )
(
εε) *
double
εε* 0
)
εε0 1
item
εε1 5
.
εε5 6
Count
εε6 ;
/
εε< =
GetCount
εε> F
(
εεF G
)
εεG H
*
εεI J
$num
εεK N
)
εεN O
.
εεO P
ToString
εεP X
(
εεX Y
$str
εεY ]
)
εε] ^
}
ζζ 
)
ζζ 
;
ζζ 
}
ηη 
}
θθ 
}
ιι 
}
κκ 
catch
λλ 
(
λλ 
	Exception
λλ 
e
λλ 
)
λλ 
{
μμ 
Debug
νν 
.
νν 
	WriteLine
νν 
(
νν  
$str
νν  M
+
ννN O
e
ννP Q
.
ννQ R
ToString
ννR Z
(
ννZ [
)
νν[ \
)
νν\ ]
;
νν] ^
}
ξξ 
return
ππ 
list
ππ 
;
ππ 
}
ρρ 	
public
σσ 
async
σσ 
Task
σσ 
<
σσ !
IndexAdminViewModel
σσ -
>
σσ- .
GetIndexData
σσ/ ;
(
σσ; <
)
σσ< =
{
ττ 	!
IndexAdminViewModel
υυ 
iavm
υυ  $
=
υυ% &
new
υυ' *!
IndexAdminViewModel
υυ+ >
(
υυ> ?
)
υυ? @
;
υυ@ A
try
χχ 
{
ψψ 
using
ϊϊ 
(
ϊϊ 
var
ϊϊ 
context
ϊϊ "
=
ϊϊ# $
new
ϊϊ% (
EwoQEntities
ϊϊ) 5
(
ϊϊ5 6
)
ϊϊ6 7
)
ϊϊ7 8
{
ϋϋ 
await
όό 
Task
όό 
.
όό 
Run
όό "
(
όό" #
(
όό# $
)
όό$ %
=>
όό& (
{
ύύ 
iavm
ώώ 
.
ώώ "
IncidentesReportados
ώώ 1
=
ώώ2 3
(
ώώ4 5
from
ώώ5 9
e
ώώ: ;
in
ώώ< >
context
ώώ? F
.
ώώF G
ewo
ώώG J
select
ώώK Q
e
ώώR S
)
ώώS T
.
ώώT U
Count
ώώU Z
(
ώώZ [
)
ώώ[ \
;
ώώ\ ]
iavm
ÿÿ 
.
ÿÿ  
IncidentespProceso
ÿÿ /
=
ÿÿ0 1
(
ÿÿ2 3
from
ÿÿ3 7
e
ÿÿ8 9
in
ÿÿ: <
context
ÿÿ= D
.
ÿÿD E
ewo
ÿÿE H
join
€€3 7
td
€€8 :
in
€€; =
context
€€> E
.
€€E F

tipos_data
€€F P
on
3 5
e
6 7
.
7 8
codigo_estado
8 E
equals
F L
td
M O
.
O P
id
P R
where
‚‚3 8
e
‚‚9 :
.
‚‚: ;
codigo_estado
‚‚; H
==
‚‚I K
$num
‚‚L M
||
ƒƒ3 5
e
ƒƒ6 7
.
ƒƒ7 8
codigo_estado
ƒƒ8 E
==
ƒƒF H
$num
ƒƒI J
select
„„3 9
e
„„: ;
)
„„; <
.
„„< =
Count
„„= B
(
„„B C
)
„„C D
;
„„D E
iavm
…… 
.
……  
IncidentesCerrados
…… /
=
……0 1
(
……2 3
from
……3 7
e
……8 9
in
……: <
context
……= D
.
……D E
ewo
……E H
join
††3 7
td
††8 :
in
††; =
context
††> E
.
††E F

tipos_data
††F P
on
‡‡3 5
e
‡‡6 7
.
‡‡7 8
codigo_estado
‡‡8 E
equals
‡‡F L
td
‡‡M O
.
‡‡O P
id
‡‡P R
where
3 8
e
9 :
.
: ;
codigo_estado
; H
==
I K
$num
L M
select
‰‰3 9
e
‰‰: ;
)
‰‰; <
.
‰‰< =
Count
‰‰= B
(
‰‰B C
)
‰‰C D
;
‰‰D E
iavm
 
.
 
TiempoLinParada
 ,
=
- .
(
/ 0
from
0 4
e
5 6
in
7 9
context
: A
.
A B
ewo
B E
select
‹‹3 9
e
‹‹: ;
)
‹‹; <
.
‹‹< =
Sum
‹‹= @
(
‹‹@ A
x
‹‹A B
=>
‹‹C E
x
‹‹F G
.
‹‹G H!
tiempo_linea_parada
‹‹H [
.
‹‹[ \
HasValue
‹‹\ d
?
‹‹e f
(
‹‹g h
int
‹‹h k
?
‹‹k l
)
‹‹l m
x
‹‹m n
.
‹‹n o"
tiempo_linea_parada‹‹o ‚
.‹‹‚ ƒ
Value‹‹ƒ 
:‹‹ ‹
$num‹‹ 
)‹‹ 
??‹‹ ‘
$num‹‹’ “
;‹‹“ ”
iavm
 
.
 
UnidadesAfectadas
 .
=
/ 0
(
1 2
from
2 6
e
7 8
in
9 ;
context
< C
.
C D
ewo
D G
select
0 6
e
7 8
)
8 9
.
9 :
Sum
: =
(
= >
x
> ?
=>
@ B
x
C D
.
D E
unidades
E M
.
M N
HasValue
N V
?
W X
(
Y Z
int
Z ]
?
] ^
)
^ _
x
_ `
.
` a
unidades
a i
.
i j
Value
j o
:
p q
$num
r s
)
s t
??
u w
$num
x y
;
y z
iavm
 
.
 
CostosTotales
 *
=
+ ,
(
- .
from
. 2
e
3 4
in
5 7
context
8 ?
.
? @
ewo
@ C
select
‘‘2 8
e
‘‘9 :
)
‘‘: ;
.
‘‘; <
Sum
‘‘< ?
(
‘‘? @
x
‘‘@ A
=>
‘‘B D
x
‘‘E F
.
‘‘F G
costo_incidente
‘‘G V
.
‘‘V W
HasValue
‘‘W _
?
‘‘` a
(
‘‘b c
int
‘‘c f
?
‘‘f g
)
‘‘g h
x
‘‘h i
.
‘‘i j
costo_incidente
‘‘j y
.
‘‘y z
Value
‘‘z 
:‘‘€ 
$num‘‘‚ ƒ
)‘‘ƒ „
??‘‘… ‡
$num‘‘ ‰
;‘‘‰ 
iavm
““ 
.
““ !
UsuariosRegistrados
““ 0
=
““1 2
(
““3 4
from
““4 8
e
““9 :
in
““; =
context
““> E
.
““E F
AspNetUsers
““F Q
select
””3 9
e
””: ;
)
””; <
.
””< =
Count
””= B
(
””B C
)
””C D
;
””D E
}
–– 
)
–– 
;
–– 
}
—— 
}
 
catch
™™ 
(
™™ 
	Exception
™™ 
e
™™ 
)
™™ 
{
 
Debug
›› 
.
›› 
	WriteLine
›› 
(
››  
$str
››  Y
+
››Z [
e
››\ ]
.
››] ^
ToString
››^ f
(
››f g
)
››g h
)
››h i
;
››i j
}
 
return
 
iavm
 
;
 
}
 	
public
΅΅ 
async
΅΅ 
Task
΅΅ 
<
΅΅ 
List
΅΅ 
<
΅΅ (
ReporteIncidentesViewModel
΅΅ 9
>
΅΅9 :
>
΅΅: ;

GetEwoList
΅΅< F
(
΅΅F G
string
΅΅G M
id_autor
΅΅N V
)
΅΅V W
{
ΆΆ 	
List
££ 
<
££ (
ReporteIncidentesViewModel
££ +
>
££+ ,
list
££- 1
=
££2 3
new
££4 7
List
££8 <
<
££< =(
ReporteIncidentesViewModel
££= W
>
££W X
(
££X Y
)
££Y Z
;
££Z [
try
¥¥ 
{
¦¦ 
using
§§ 
(
§§ 
var
§§ 
context
§§ "
=
§§# $
new
§§% (
EwoQEntities
§§) 5
(
§§5 6
)
§§6 7
)
§§7 8
{
¨¨ 
var
©© 
query
©© 
=
©© 
from
©©  $
e
©©% &
in
©©' )
context
©©* 1
.
©©1 2
ewo
©©2 5
join
ªª  $
l
ªª% &
in
ªª' )
context
ªª* 1
.
ªª1 2

tipos_data
ªª2 <
on
««  "
e
««# $
.
««$ %
codigo_linea
««% 1
equals
««2 8
l
««9 :
.
««: ;
id
««; =
join
¬¬  $
ti
¬¬% '
in
¬¬( *
context
¬¬+ 2
.
¬¬2 3

tipos_data
¬¬3 =
on
­­  "
e
­­# $
.
­­$ %
tipo_incidente
­­% 3
equals
­­4 :
ti
­­; =
.
­­= >
id
­­> @
join
®®  $
es
®®% '
in
®®( *
context
®®+ 2
.
®®2 3

tipos_data
®®3 =
on
――  "
e
――# $
.
――$ %
codigo_estado
――% 2
equals
――3 9
es
――: <
.
――< =
id
――= ?
join
°°  $
t
°°% &
in
°°' )
context
°°* 1
.
°°1 2
AspNetUsers
°°2 =
on
±±  "
e
±±# $
.
±±$ %
autor
±±% *
equals
±±+ 1
t
±±2 3
.
±±3 4
Id
±±4 6
where
²²  %
e
²²& '
.
²²' (
autor
²²( -
==
²². 0
id_autor
²²1 9
select
³³  &
new
³³' *
{
³³+ ,
e
³³- .
,
³³. /
l
³³0 1
,
³³1 2
t
³³3 4
,
³³4 5
ti
³³6 8
,
³³8 9
es
³³9 ;
}
³³< =
;
³³= >
var
µµ 
data
µµ 
=
µµ 
await
µµ $
query
µµ% *
.
µµ* +
ToListAsync
µµ+ 6
(
µµ6 7
)
µµ7 8
;
µµ8 9
foreach
·· 
(
·· 
var
··  
item
··! %
in
··& (
data
··) -
.
··- .
ToList
··. 4
(
··4 5
)
··5 6
)
··6 7
{
ΈΈ 
list
ΉΉ 
.
ΉΉ 
Add
ΉΉ  
(
ΉΉ  !
new
ΉΉ! $(
ReporteIncidentesViewModel
ΉΉ% ?
(
ΉΉ? @
)
ΉΉ@ A
{
ΊΊ 
Id
»» 
=
»»  
item
»»! %
.
»»% &
e
»»& '
.
»»' (
id
»»( *
,
»»* +
	LineaDesc
ΌΌ %
=
ΌΌ& '
item
ΌΌ( ,
.
ΌΌ, -
l
ΌΌ- .
.
ΌΌ. /
descripcion
ΌΌ/ :
,
ΌΌ: ;
Autor
½½ !
=
½½" #
item
½½$ (
.
½½( )
t
½½) *
.
½½* +
Id
½½+ -
,
½½- .
	AutorDesc
ΎΎ %
=
ΎΎ& '
item
ΎΎ( ,
.
ΎΎ, -
t
ΎΎ- .
.
ΎΎ. /
Nombres
ΎΎ/ 6
+
ΎΎ7 8
$str
ΎΎ9 <
+
ΎΎ= >
item
ΎΎ? C
.
ΎΎC D
t
ΎΎD E
.
ΎΎE F
	Apellidos
ΎΎF O
,
ΎΎO P
TipoIncidente
ΏΏ )
=
ΏΏ* +
item
ΏΏ, 0
.
ΏΏ0 1
e
ΏΏ1 2
.
ΏΏ2 3
tipo_incidente
ΏΏ3 A
.
ΏΏA B
Value
ΏΏB G
,
ΏΏG H
TipoIncidenteDesc
ΐΐ -
=
ΐΐ. /
item
ΐΐ0 4
.
ΐΐ4 5
ti
ΐΐ5 7
.
ΐΐ7 8
descripcion
ΐΐ8 C
,
ΐΐC D!
DescripcionProblema
ΑΑ /
=
ΑΑ0 1
item
ΑΑ2 6
.
ΑΑ6 7
e
ΑΑ7 8
.
ΑΑ8 9*
descripcion_general_problema
ΑΑ9 U
,
ΑΑU V
TiempoLineaParada
ΒΒ -
=
ΒΒ. /
item
ΒΒ0 4
.
ΒΒ4 5
e
ΒΒ5 6
.
ΒΒ6 7!
tiempo_linea_parada
ΒΒ7 J
.
ΒΒJ K
Value
ΒΒK P
,
ΒΒP Q
Fecha
ΓΓ !
=
ΓΓ" #
item
ΓΓ$ (
.
ΓΓ( )
e
ΓΓ) *
.
ΓΓ* +*
fecha_apertura_investigacion
ΓΓ+ G
.
ΓΓG H
Value
ΓΓH M
,
ΓΓM N
Estado
ΔΔ "
=
ΔΔ# $
item
ΔΔ% )
.
ΔΔ) *
e
ΔΔ* +
.
ΔΔ+ ,
codigo_estado
ΔΔ, 9
.
ΔΔ9 :
Value
ΔΔ: ?
,
ΔΔ? @

EstadoDesc
ΕΕ &
=
ΕΕ' (
item
ΕΕ) -
.
ΕΕ- .
es
ΕΕ. 0
.
ΕΕ0 1
descripcion
ΕΕ1 <
,
ΕΕ< =

NumAirsweb
ΖΖ &
=
ΖΖ' (
item
ΖΖ) -
.
ΖΖ- .
e
ΖΖ. /
.
ΖΖ/ 0
numero_airsweb
ΖΖ0 >
.
ΖΖ> ?
HasValue
ΖΖ? G
?
ΖΖH I
item
ΖΖJ N
.
ΖΖN O
e
ΖΖO P
.
ΖΖP Q
numero_airsweb
ΖΖQ _
.
ΖΖ_ `
Value
ΖΖ` e
:
ΖΖf g
$num
ΖΖh i
}
ΗΗ 
)
ΗΗ 
;
ΗΗ 
}
ΘΘ 
}
ΙΙ 
}
ΚΚ 
catch
ΛΛ 
(
ΛΛ 
	Exception
ΛΛ 
e
ΛΛ 
)
ΛΛ 
{
ΜΜ 
Debug
ΝΝ 
.
ΝΝ 
	WriteLine
ΝΝ 
(
ΝΝ  
$str
ΝΝ  i
+
ΝΝj k
e
ΝΝl m
.
ΝΝm n
ToString
ΝΝn v
(
ΝΝv w
)
ΝΝw x
)
ΝΝx y
;
ΝΝy z
}
ΞΞ 
return
ΠΠ 
list
ΠΠ 
;
ΠΠ 
}
ΡΡ 	
public
ΣΣ 
async
ΣΣ 
Task
ΣΣ 
<
ΣΣ 
List
ΣΣ 
<
ΣΣ (
ReporteIncidentesViewModel
ΣΣ 9
>
ΣΣ9 :
>
ΣΣ: ;

GetEwoList
ΣΣ< F
(
ΣΣF G
)
ΣΣG H
{
ΤΤ 	
List
ΥΥ 
<
ΥΥ (
ReporteIncidentesViewModel
ΥΥ +
>
ΥΥ+ ,
list
ΥΥ- 1
=
ΥΥ2 3
new
ΥΥ4 7
List
ΥΥ8 <
<
ΥΥ< =(
ReporteIncidentesViewModel
ΥΥ= W
>
ΥΥW X
(
ΥΥX Y
)
ΥΥY Z
;
ΥΥZ [
try
ΧΧ 
{
ΨΨ 
using
ΩΩ 
(
ΩΩ 
var
ΩΩ 
context
ΩΩ "
=
ΩΩ# $
new
ΩΩ% (
EwoQEntities
ΩΩ) 5
(
ΩΩ5 6
)
ΩΩ6 7
)
ΩΩ7 8
{
ΪΪ 
var
ΫΫ 
query
ΫΫ 
=
ΫΫ 
from
ΫΫ  $
e
ΫΫ% &
in
ΫΫ' )
context
ΫΫ* 1
.
ΫΫ1 2
ewo
ΫΫ2 5
join
άά  $
l
άά% &
in
άά' )
context
άά* 1
.
άά1 2
lineas
άά2 8
on
έέ  "
e
έέ# $
.
έέ$ %
codigo_linea
έέ% 1
equals
έέ2 8
l
έέ9 :
.
έέ: ;
id
έέ; =
join
ήή  $
a
ήή% &
in
ήή' )
context
ήή* 1
.
ήή1 2
areas_productivas
ήή2 C
on
ίί  "
l
ίί# $
.
ίί$ %
codigo_area
ίί% 0
equals
ίί1 7
a
ίί8 9
.
ίί9 :
id
ίί: <
join
ΰΰ  $
ti
ΰΰ% '
in
ΰΰ( *
context
ΰΰ+ 2
.
ΰΰ2 3

tipos_data
ΰΰ3 =
on
αα  "
e
αα# $
.
αα$ %
tipo_incidente
αα% 3
equals
αα4 :
ti
αα; =
.
αα= >
id
αα> @
join
ββ  $
es
ββ% '
in
ββ( *
context
ββ+ 2
.
ββ2 3

tipos_data
ββ3 =
on
γγ  "
e
γγ# $
.
γγ$ %
codigo_estado
γγ% 2
equals
γγ3 9
es
γγ: <
.
γγ< =
id
γγ= ?
join
δδ  $
t
δδ% &
in
δδ' )
context
δδ* 1
.
δδ1 2
AspNetUsers
δδ2 =
on
εε  "
e
εε# $
.
εε$ %
autor
εε% *
equals
εε+ 1
t
εε2 3
.
εε3 4
Id
εε4 6
select
ζζ  &
new
ζζ' *
{
ζζ+ ,
e
ζζ- .
,
ζζ. /
l
ζζ0 1
,
ζζ1 2
t
ζζ3 4
,
ζζ4 5
ti
ζζ6 8
,
ζζ8 9
es
ζζ: <
,
ζζ< =
a
ζζ> ?
}
ζζA B
;
ζζB C
var
θθ 
data
θθ 
=
θθ 
await
θθ $
query
θθ% *
.
θθ* +
ToListAsync
θθ+ 6
(
θθ6 7
)
θθ7 8
;
θθ8 9
foreach
κκ 
(
κκ 
var
κκ  
item
κκ! %
in
κκ& (
data
κκ) -
.
κκ- .
ToList
κκ. 4
(
κκ4 5
)
κκ5 6
)
κκ6 7
{
λλ 
list
μμ 
.
μμ 
Add
μμ  
(
μμ  !
new
μμ! $(
ReporteIncidentesViewModel
μμ% ?
(
μμ? @
)
μμ@ A
{
νν 
Id
ξξ 
=
ξξ  
item
ξξ! %
.
ξξ% &
e
ξξ& '
.
ξξ' (
id
ξξ( *
,
ξξ* +
	LineaDesc
οο %
=
οο& '
item
οο( ,
.
οο, -
l
οο- .
.
οο. /
descripcion
οο/ :
,
οο: ;
AreaDesc
ππ $
=
ππ% &
item
ππ' +
.
ππ+ ,
a
ππ, -
.
ππ- .
descripcion
ππ. 9
,
ππ9 :
Autor
ρρ !
=
ρρ" #
item
ρρ$ (
.
ρρ( )
t
ρρ) *
.
ρρ* +
Id
ρρ+ -
,
ρρ- .
	AutorDesc
ςς %
=
ςς& '
item
ςς( ,
.
ςς, -
t
ςς- .
.
ςς. /
Nombres
ςς/ 6
+
ςς7 8
$str
ςς9 <
+
ςς= >
item
ςς? C
.
ςςC D
t
ςςD E
.
ςςE F
	Apellidos
ςςF O
,
ςςO P
TipoIncidente
σσ )
=
σσ* +
item
σσ, 0
.
σσ0 1
e
σσ1 2
.
σσ2 3
tipo_incidente
σσ3 A
.
σσA B
Value
σσB G
,
σσG H
TipoIncidenteDesc
ττ -
=
ττ. /
item
ττ0 4
.
ττ4 5
ti
ττ5 7
.
ττ7 8
descripcion
ττ8 C
,
ττC D!
DescripcionProblema
υυ /
=
υυ0 1
item
υυ2 6
.
υυ6 7
e
υυ7 8
.
υυ8 9*
descripcion_general_problema
υυ9 U
,
υυU V
TiempoLineaParada
φφ -
=
φφ. /
item
φφ0 4
.
φφ4 5
e
φφ5 6
.
φφ6 7!
tiempo_linea_parada
φφ7 J
.
φφJ K
Value
φφK P
,
φφP Q
Fecha
χχ !
=
χχ" #
item
χχ$ (
.
χχ( )
e
χχ) *
.
χχ* +*
fecha_apertura_investigacion
χχ+ G
.
χχG H
Value
χχH M
,
χχM N
Estado
ψψ "
=
ψψ# $
item
ψψ% )
.
ψψ) *
e
ψψ* +
.
ψψ+ ,
codigo_estado
ψψ, 9
.
ψψ9 :
Value
ψψ: ?
,
ψψ? @

EstadoDesc
ωω &
=
ωω' (
item
ωω) -
.
ωω- .
es
ωω. 0
.
ωω0 1
descripcion
ωω1 <
,
ωω< =

NumAirsweb
ϊϊ &
=
ϊϊ' (
item
ϊϊ) -
.
ϊϊ- .
e
ϊϊ. /
.
ϊϊ/ 0
numero_airsweb
ϊϊ0 >
.
ϊϊ> ?
HasValue
ϊϊ? G
?
ϊϊH I
item
ϊϊJ N
.
ϊϊN O
e
ϊϊO P
.
ϊϊP Q
numero_airsweb
ϊϊQ _
.
ϊϊ_ `
Value
ϊϊ` e
:
ϊϊf g
$num
ϊϊh i
,
ϊϊi j
Consecutivo
ϋϋ '
=
ϋϋ( )
item
ϋϋ* .
.
ϋϋ. /
e
ϋϋ/ 0
.
ϋϋ0 1
consecutivo
ϋϋ1 <
.
ϋϋ< =
ToString
ϋϋ= E
(
ϋϋE F
)
ϋϋF G
}
όό 
)
όό 
;
όό 
}
ύύ 
}
ώώ 
}
ÿÿ 
catch
€€ 
(
€€ 
	Exception
€€ 
e
€€ 
)
€€ 
{
 
Debug
‚‚ 
.
‚‚ 
	WriteLine
‚‚ 
(
‚‚  
$str
‚‚  i
+
‚‚j k
e
‚‚l m
.
‚‚m n
ToString
‚‚n v
(
‚‚v w
)
‚‚w x
)
‚‚x y
;
‚‚y z
}
ƒƒ 
return
…… 
list
…… 
;
…… 
}
†† 	
public
 
async
 
Task
 
<
 (
ReporteIncidentesViewModel
 4
>
4 5

GetEwoDesc
6 @
(
@ A
long
A E
id
F H
)
H I
{
‰‰ 	(
ReporteIncidentesViewModel
 &
lDecs
' ,
=
- .
null
/ 3
;
3 4
try
 
{
 
using
 
(
 
var
 
context
 "
=
# $
new
% (
EwoQEntities
) 5
(
5 6
)
6 7
)
7 8
{
 
var
 
query
 
=
 
from
  $
e
% &
in
' )
context
* 1
.
1 2
ewo
2 5
join
‘‘  $
l
‘‘% &
in
‘‘' )
context
‘‘* 1
.
‘‘1 2
lineas
‘‘2 8
on
’’  "
e
’’# $
.
’’$ %
codigo_linea
’’% 1
equals
’’2 8
l
’’9 :
.
’’: ;
id
’’; =
join
““  $
a
““% &
in
““' )
context
““* 1
.
““1 2
areas_productivas
““2 C
on
””  "
l
””# $
.
””$ %
codigo_area
””% 0
equals
””1 7
a
””8 9
.
””9 :
id
””: <
join
••  $
p
••% &
in
••' )
context
••* 1
.
••1 2
plantas
••2 9
on
––  "
a
––# $
.
––$ %
codigo_planta
––% 2
equals
––3 9
p
––: ;
.
––; <
id
––< >
join
——  $
es
——% '
in
——( *
context
——+ 2
.
——2 3

tipos_data
——3 =
on
  "
e
# $
.
$ %
codigo_estado
% 2
equals
3 9
es
: <
.
< =
id
= ?
join
™™  $
t
™™% &
in
™™' )
context
™™* 1
.
™™1 2
AspNetUsers
™™2 =
on
  "
e
# $
.
$ %
autor
% *
equals
+ 1
t
2 3
.
3 4
Id
4 6
join
››  $
ti
››% '
in
››( *
context
››+ 2
.
››2 3

tipos_data
››3 =
on
  "
e
# $
.
$ %
tipo_incidente
% 3
equals
4 :
ti
; =
.
= >
id
> @
where
  %
e
& '
.
' (
id
( *
==
+ -
id
. 0
select
  &
new
' *
{
+ ,
e
- .
,
. /
l
0 1
,
1 2
t
3 4
,
4 5
ti
6 8
,
8 9
es
9 ;
,
; <
a
= >
,
> ?
p
@ A
}
B C
;
C D
var
   
data
   
=
   
await
   $
query
  % *
.
  * +
ToListAsync
  + 6
(
  6 7
)
  7 8
;
  8 9
foreach
ΆΆ 
(
ΆΆ 
var
ΆΆ  
i
ΆΆ! "
in
ΆΆ# %
data
ΆΆ& *
.
ΆΆ* +
ToList
ΆΆ+ 1
(
ΆΆ1 2
)
ΆΆ2 3
)
ΆΆ3 4
{
££ 
lDecs
¤¤ 
=
¤¤ 
new
¤¤  #(
ReporteIncidentesViewModel
¤¤$ >
(
¤¤> ?
)
¤¤? @
{
¥¥ 
Id
¦¦ 
=
¦¦  
i
¦¦! "
.
¦¦" #
e
¦¦# $
.
¦¦$ %
id
¦¦% '
,
¦¦' (
	LineaDesc
§§ %
=
§§& '
i
§§( )
.
§§) *
l
§§* +
.
§§+ ,
descripcion
§§, 7
,
§§7 8
IdLinea
¨¨ #
=
¨¨$ %
i
¨¨& '
.
¨¨' (
e
¨¨( )
.
¨¨) *
codigo_linea
¨¨* 6
.
¨¨6 7
Value
¨¨7 <
,
¨¨< =
IdPlanta
©© $
=
©©% &
i
©©' (
.
©©( )
p
©©) *
.
©©* +
id
©©+ -
,
©©- .
IdArea
ªª "
=
ªª# $
i
ªª% &
.
ªª& '
a
ªª' (
.
ªª( )
id
ªª) +
,
ªª+ ,
Autor
«« !
=
««" #
i
««$ %
.
««% &
t
««& '
.
««' (
Nombres
««( /
+
««0 1
$str
««2 5
+
««6 7
i
««8 9
.
««9 :
t
««: ;
.
««; <
	Apellidos
««< E
,
««E F
TipoIncidente
¬¬ )
=
¬¬* +
i
¬¬, -
.
¬¬- .
e
¬¬. /
.
¬¬/ 0
tipo_incidente
¬¬0 >
.
¬¬> ?
Value
¬¬? D
,
¬¬D E
TipoIncidenteDesc
­­ -
=
­­. /
i
­­0 1
.
­­1 2
ti
­­2 4
.
­­4 5
descripcion
­­5 @
,
­­@ A
Consecutivo
®® '
=
®®( )
i
®®* +
.
®®+ ,
e
®®, -
.
®®- .
consecutivo
®®. 9
.
®®9 :
Value
®®: ?
.
®®? @
ToString
®®@ H
(
®®H I
)
®®I J
,
®®J K
Fecha
―― !
=
――" #
i
――$ %
.
――% &
e
――& '
.
――' (*
fecha_apertura_investigacion
――( D
.
――D E
Value
――E J
,
――J K#
FchApertInvestigacion
°° 1
=
°°2 3
i
°°4 5
.
°°5 6
e
°°6 7
.
°°7 8*
fecha_apertura_investigacion
°°8 T
.
°°T U
Value
°°U Z
.
°°Z [
ToString
°°[ c
(
°°c d
$str
°°d p
)
°°p q
,
°°q r

EstadoDesc
±± &
=
±±' (
i
±±) *
.
±±* +
es
±±+ -
.
±±- .
descripcion
±±. 9
,
±±9 :

HrEventoTS
²² &
=
²²' (
i
²²) *
.
²²* +
e
²²+ ,
.
²², -
hora_evento
²²- 8
.
²²8 9
Value
²²9 >
,
²²> ?
HrEvento
³³ $
=
³³% &
i
³³' (
.
³³( )
e
³³) *
.
³³* +
hora_evento
³³+ 6
.
³³6 7
Value
³³7 <
.
³³< =
ToString
³³= E
(
³³E F
$str
³³F O
)
³³O P
,
³³P Q%
FchEntregaInvestigacion
΄΄ 3
=
΄΄4 5
i
΄΄6 7
.
΄΄7 8
e
΄΄8 9
.
΄΄9 :)
fecha_entrega_investigacion
΄΄: U
.
΄΄U V
Value
΄΄V [
.
΄΄[ \
ToString
΄΄\ d
(
΄΄d e
$str
΄΄e q
)
΄΄q r
,
΄΄r s$
HrEntregaInvestigacion
µµ 2
=
µµ3 4
i
µµ5 6
.
µµ6 7
e
µµ7 8
.
µµ8 9(
hora_entrega_investigacion
µµ9 S
.
µµS T
Value
µµT Y
.
µµY Z
ToString
µµZ b
(
µµb c
$str
µµc l
)
µµl m
,
µµm n&
HrEntregaInvestigacionTS
¶¶ 4
=
¶¶5 6
i
¶¶7 8
.
¶¶8 9
e
¶¶9 :
.
¶¶: ;(
hora_entrega_investigacion
¶¶; U
.
¶¶U V
Value
¶¶V [
,
¶¶[ \
RecurrenteB
·· '
=
··( )
i
··* +
.
··+ ,
e
··, -
.
··- .

recurrente
··. 8
,
··8 9
EtapaProceso
ΈΈ (
=
ΈΈ) *
i
ΈΈ+ ,
.
ΈΈ, -
e
ΈΈ- .
.
ΈΈ. /
etapa
ΈΈ/ 4
,
ΈΈ4 5
	IdCoorSup
ΉΉ %
=
ΉΉ& '
i
ΉΉ( )
.
ΉΉ) *
e
ΉΉ* +
.
ΉΉ+ ,&
codigo_coordinador_turno
ΉΉ, D
,
ΉΉD E

IdRespArea
ΊΊ &
=
ΊΊ' (
i
ΊΊ) *
.
ΊΊ* +
e
ΊΊ+ ,
.
ΊΊ, -%
codigo_responsable_area
ΊΊ- D
,
ΊΊD E
IdOpeRes
»» $
=
»»% &
i
»»' (
.
»»( )
e
»») *
.
»»* +)
codigo_operario_responsable
»»+ F
,
»»F G
IdLidInv
ΌΌ $
=
ΌΌ% &
i
ΌΌ' (
.
ΌΌ( )
e
ΌΌ) *
.
ΌΌ* +(
codigo_lider_investigacion
ΌΌ+ E
,
ΌΌE F
NombreProducto
½½ *
=
½½+ ,
i
½½- .
.
½½. /
e
½½/ 0
.
½½0 1
producto
½½1 9
,
½½9 :
	CodigoSAP
ΎΎ %
=
ΎΎ& '
i
ΎΎ( )
.
ΎΎ) *
e
ΎΎ* +
.
ΎΎ+ ,!
codigo_sap_producto
ΎΎ, ?
,
ΎΎ? @
Lote
ΏΏ  
=
ΏΏ! "
i
ΏΏ# $
.
ΏΏ$ %
e
ΏΏ% &
.
ΏΏ& '
lote_producto
ΏΏ' 4
,
ΏΏ4 5
	Toneladas
ΐΐ %
=
ΐΐ& '
i
ΐΐ( )
.
ΐΐ) *
e
ΐΐ* +
.
ΐΐ+ , 
toneladas_producto
ΐΐ, >
.
ΐΐ> ?
Value
ΐΐ? D
,
ΐΐD E
NumCajas
ΑΑ $
=
ΑΑ% &
i
ΑΑ' (
.
ΑΑ( )
e
ΑΑ) *
.
ΑΑ* +
numero_cajas
ΑΑ+ 7
.
ΑΑ7 8
Value
ΑΑ8 =
,
ΑΑ= >
	NumPallet
ΒΒ %
=
ΒΒ& '
i
ΒΒ( )
.
ΒΒ) *
e
ΒΒ* +
.
ΒΒ+ ,
numero_pallet
ΒΒ, 9
,
ΒΒ9 :
Unidades
ΓΓ $
=
ΓΓ% &
i
ΓΓ' (
.
ΓΓ( )
e
ΓΓ) *
.
ΓΓ* +
unidades
ΓΓ+ 3
.
ΓΓ3 4
Value
ΓΓ4 9
,
ΓΓ9 :
TamanoFormato
ΔΔ )
=
ΔΔ* +
i
ΔΔ, -
.
ΔΔ- .
e
ΔΔ. /
.
ΔΔ/ 0
tamano_formato
ΔΔ0 >
,
ΔΔ> ?
TiempoLineaParada
ΕΕ -
=
ΕΕ. /
i
ΕΕ0 1
.
ΕΕ1 2
e
ΕΕ2 3
.
ΕΕ3 4!
tiempo_linea_parada
ΕΕ4 G
.
ΕΕG H
Value
ΕΕH M
,
ΕΕM N!
DescripcionProblema
ΖΖ /
=
ΖΖ0 1
i
ΖΖ2 3
.
ΖΖ3 4
e
ΖΖ4 5
.
ΖΖ5 6*
descripcion_general_problema
ΖΖ6 R
}
ΗΗ 
;
ΗΗ 
}
ΘΘ 
}
ΙΙ 
}
ΚΚ 
catch
ΛΛ 
(
ΛΛ 
	Exception
ΛΛ 
e
ΛΛ 
)
ΛΛ 
{
ΜΜ 
Trace
ΝΝ 
.
ΝΝ 
	WriteLine
ΝΝ 
(
ΝΝ  
$str
ΝΝ  Z
+
ΝΝ[ \
e
ΝΝ] ^
.
ΝΝ^ _
ToString
ΝΝ_ g
(
ΝΝg h
)
ΝΝh i
)
ΝΝi j
;
ΝΝj k
}
ΞΞ 
return
ΠΠ 
lDecs
ΠΠ 
;
ΠΠ 
}
ΡΡ 	
public
ΣΣ 
async
ΣΣ 
Task
ΣΣ 
<
ΣΣ 
long
ΣΣ 
>
ΣΣ $
ProcesarIncidenteAsync
ΣΣ  6
(
ΣΣ6 7
ewo
ΣΣ7 :
ewo
ΣΣ; >
)
ΣΣ> ?
{
ΤΤ 	
ewo
ΥΥ 
ed
ΥΥ 
;
ΥΥ 
long
ΧΧ 
regs
ΧΧ 
=
ΧΧ 
$num
ΧΧ 
;
ΧΧ 
try
ΩΩ 
{
ΪΪ 
using
άά 
(
άά 
var
άά 
context
άά "
=
άά# $
new
άά% (
EwoQEntities
άά) 5
(
άά5 6
)
άά6 7
)
άά7 8
{
έέ 
ed
ήή 
=
ήή 
context
ήή  
.
ήή  !
ewo
ήή! $
.
ήή$ %
Where
ήή% *
(
ήή* +
s
ήή+ ,
=>
ήή- /
s
ήή0 1
.
ήή1 2
id
ήή2 4
==
ήή5 7
ewo
ήή8 ;
.
ήή; <
id
ήή< >
)
ήή> ?
.
ήή? @
FirstOrDefault
ήή@ N
(
ήήN O
)
ήήO P
;
ήήP Q
}
ίί 
if
ββ 
(
ββ 
ed
ββ 
!=
ββ 
null
ββ 
)
ββ 
{
γγ 
ed
δδ 
=
δδ 
ewo
δδ 
;
δδ 
}
εε 
using
θθ 
(
θθ 
var
θθ 
context
θθ "
=
θθ# $
new
θθ% (
EwoQEntities
θθ) 5
(
θθ5 6
)
θθ6 7
)
θθ7 8
{
ιι 
context
λλ 
.
λλ 
Entry
λλ !
(
λλ! "
ed
λλ" $
)
λλ$ %
.
λλ% &
State
λλ& +
=
λλ, -
EntityState
λλ. 9
.
λλ9 :
Modified
λλ: B
;
λλB C
await
ξξ 
context
ξξ !
.
ξξ! "
SaveChangesAsync
ξξ" 2
(
ξξ2 3
)
ξξ3 4
;
ξξ4 5
regs
οο 
=
οο 
ed
οο 
.
οο 
id
οο  
;
οο  !
}
ππ 
}
ςς 
catch
σσ 
(
σσ 
	Exception
σσ 
e
σσ 
)
σσ 
{
ττ 
string
υυ 
err
υυ 
=
υυ 
$str
υυ 8
+
υυ9 :
e
υυ; <
.
υυ< =
ToString
υυ= E
(
υυE F
)
υυF G
;
υυG H
Trace
φφ 
.
φφ 
	WriteLine
φφ 
(
φφ  
err
φφ  #
)
φφ# $
;
φφ$ %
await
ψψ 
DaoExcepcion
ψψ "
.
ψψ" #
DaoInstance
ψψ# .
.
ψψ. /
AddExceptionAsync
ψψ/ @
(
ψψ@ A
new
ωω 
excepciones
ωω #
(
ωω# $
)
ωω$ %
{
ϊϊ 
codigo_error
ϋϋ $
=
ϋϋ% &
-
ϋϋ' (
$num
ϋϋ( )
,
ϋϋ) *
codigo_usuario
όό &
=
όό' (
HttpContext
όό) 4
.
όό4 5
Current
όό5 <
.
όό< =
User
όό= A
.
όόA B
Identity
όόB J
.
όόJ K
	GetUserId
όόK T
(
όόT U
)
όόU V
??
όόW Y
$str
όόZ g
,
όόg h
descripcion
ύύ #
=
ύύ$ %
err
ύύ& )
,
ύύ) *
fecha
ώώ 
=
ώώ 
SomeHelpers
ώώ  +
.
ώώ+ ,
GetCurrentTime
ώώ, :
(
ώώ: ;
)
ώώ; <
}
ÿÿ 
)
ÿÿ 
;
ÿÿ 
}
€€ 
return
‚‚ 
regs
‚‚ 
;
‚‚ 
}
ƒƒ 	
public
…… 
async
…… 
Task
…… 
<
…… 
int
…… 
>
…… 
AddEquipoTrabjo
…… .
(
……. /
List
……/ 3
<
……3 4
equipo_trabajo
……4 B
>
……B C
et
……D F
)
……F G
{
†† 	
int
‡‡ 
regs
‡‡ 
=
‡‡ 
$num
‡‡ 
;
‡‡ 
try
‰‰ 
{
 
using
‹‹ 
(
‹‹ 
var
‹‹ 
context
‹‹ "
=
‹‹# $
new
‹‹% (
EwoQEntities
‹‹) 5
(
‹‹5 6
)
‹‹6 7
)
‹‹7 8
{
 
context
 
.
 
equipo_trabajo
 *
.
* +
AddRange
+ 3
(
3 4
et
4 6
)
6 7
;
7 8
regs
 
=
 
await
  
context
! (
.
( )
SaveChangesAsync
) 9
(
9 :
)
: ;
;
; <
}
 
}
‘‘ 
catch
’’ 
(
’’ 
	Exception
’’ 
e
’’ 
)
’’ 
{
““ 
Debug
”” 
.
”” 
	WriteLine
”” 
(
””  
$str
””  E
+
””F G
e
””H I
.
””I J
ToString
””J R
(
””R S
)
””S T
)
””T U
;
””U V
regs
•• 
=
•• 
-
•• 
$num
•• 
;
•• 
}
–– 
return
 
regs
 
;
 
}
™™ 	
}
 
}›› Φ
4D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Dao\DaoExcepcion.cs
	namespace 	
EwoQ
 
. 
Dao 
{ 
public		 

class		 
DaoExcepcion		 
{

 
private 
static 
DaoExcepcion #
daoInstance$ /
=0 1
null2 6
;6 7
public 
static 
DaoExcepcion "
DaoInstance# .
{ 	
get 
{ 
if 
( 
daoInstance 
==  "
null# '
)' (
{ 
daoInstance 
=  !
new" %
DaoExcepcion& 2
(2 3
)3 4
;4 5
} 
return 
daoInstance "
;" #
} 
} 	
public 
async 
System 
. 
	Threading %
.% &
Tasks& +
.+ ,
Task, 0
<0 1
int1 4
>4 5
AddExceptionAsync6 G
(G H
excepcionesH S
exT V
)V W
{ 	
int 
regs 
= 
$num 
; 
using 
( 
var 
context 
=  
new! $
EwoQEntities% 1
(1 2
)2 3
)3 4
{   
context!! 
.!! 
excepciones!! #
.!!# $
Add!!$ '
(!!' (
ex!!( *
)!!* +
;!!+ ,
regs"" 
="" 
await"" 
context"" $
.""$ %
SaveChangesAsync""% 5
(""5 6
)""6 7
;""7 8
}## 
return(( 
regs(( 
;(( 
})) 	
}++ 
},, «
1D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Dao\DaoLineas.cs
	namespace

 	
EwoQ


 
.

 
Dao

 
{ 
public 

class 
	DaoLineas 
{ 
private 
static 
	DaoLineas  
daoInstance! ,
=- .
null/ 3
;3 4
public 
static 
	DaoLineas 
DaoInstance  +
{ 	
get 
{ 
if 
( 
daoInstance 
==  "
null# '
)' (
{ 
daoInstance 
=  !
new" %
	DaoLineas& /
(/ 0
)0 1
;1 2
} 
return 
daoInstance "
;" #
} 
} 	
public 
async 
Task 
< 
List 
< 
lineas %
>% &
>& '
GetLinesAsync( 5
(5 6
int6 9
id: <
)< =
{ 	
List 
< 
lineas 
> 
lineas 
=  !
new" %
List& *
<* +
lineas+ 1
>1 2
(2 3
)3 4
;4 5
try!! 
{"" 
using## 
(## 
var## 
context## "
=### $
new##% (
EwoQEntities##) 5
(##5 6
)##6 7
)##7 8
{$$ 
var%% 
query%% 
=%% 
from%%  $
td%%% '
in%%( *
context%%+ 2
.%%2 3
lineas%%3 9
where&&  %
td&&& (
.&&( )
codigo_area&&) 4
==&&5 7
id&&8 :
select''  &
td''' )
;'') *
lineas(( 
=(( 
await(( "
query((# (
.((( )
OrderBy(() 0
(((0 1
x((1 2
=>((3 5
x((6 7
.((7 8
descripcion((8 C
)((C D
.((D E
ToListAsync((E P
(((P Q
)((Q R
;((R S
})) 
}** 
catch++ 
(++ 
	Exception++ 
e++ 
)++ 
{,, 
Debug-- 
.-- 
	WriteLine-- 
(--  
e--  !
.--! "
ToString--" *
(--* +
)--+ ,
)--, -
;--- .
}.. 
return00 
lineas00 
;00 
}11 	
}22 
}33 τ
5D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Dao\DaoPlanAccion.cs
	namespace		 	
EwoQ		
 
.		 
Dao		 
{

 
public 

class 
DaoPlanAccion 
{ 
private 
static 
DaoPlanAccion $
daoInstance% 0
=1 2
null3 7
;7 8
public 
static 
DaoPlanAccion #
DaoInstance$ /
{ 	
get 
{ 
if 
( 
daoInstance 
==  "
null# '
)' (
{ 
daoInstance 
=  !
new" %
DaoPlanAccion& 3
(3 4
)4 5
;5 6
} 
return 
daoInstance "
;" #
} 
} 	
public 
async 
Task 
< 
int 
> 
AddPlanAccionAsync 1
(1 2
List2 6
<6 7
plan_accion7 B
>B C
paD F
)F G
{ 	
int 
regs 
= 
$num 
; 
try   
{!! 
using"" 
("" 
var"" 
context"" "
=""# $
new""% (
EwoQEntities"") 5
(""5 6
)""6 7
)""7 8
{## 
context$$ 
.$$ 
plan_accion$$ '
.$$' (
AddRange$$( 0
($$0 1
pa$$1 3
)$$3 4
;$$4 5
regs%% 
=%% 
await%%  
context%%! (
.%%( )
SaveChangesAsync%%) 9
(%%9 :
)%%: ;
;%%; <
}&& 
}'' 
catch(( 
((( 
	Exception(( 
e(( 
)(( 
{)) 
Debug** 
.** 
	WriteLine** 
(**  
$str**  B
+**C D
e**E F
.**F G
ToString**G O
(**O P
)**P Q
)**Q R
;**R S
regs++ 
=++ 
-++ 
$num++ 
;++ 
},, 
return.. 
regs.. 
;.. 
}// 	
}00 
}11 ­
2D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Dao\DaoPlantas.cs
	namespace

 	
EwoQ


 
.

 
Dao

 
{ 
public 

class 

DaoPlantas 
{ 
private 
static 

DaoPlantas !
daoInstance" -
=. /
null0 4
;4 5
public 
static 

DaoPlantas  
DaoInstance! ,
{ 	
get 
{ 
if 
( 
daoInstance 
==  "
null# '
)' (
{ 
daoInstance 
=  !
new" %

DaoPlantas& 0
(0 1
)1 2
;2 3
} 
return 
daoInstance "
;" #
} 
} 	
public 
async 
Task 
< 
List 
< 
plantas &
>& '
>' (
GetPlantasAsync) 8
(8 9
)9 :
{ 	
List 
< 
plantas 
> 
plantas !
=" #
new$ '
List( ,
<, -
plantas- 4
>4 5
(5 6
)6 7
;7 8
try   
{!! 
using"" 
("" 
var"" 
context"" "
=""# $
new""% (
EwoQEntities"") 5
(""5 6
)""6 7
)""7 8
{## 
var$$ 
query$$ 
=$$ 
from$$  $
td$$% '
in$$( *
context$$+ 2
.$$2 3
plantas$$3 :
select%%  &
td%%' )
;%%) *
plantas&& 
=&& 
await&& #
query&&$ )
.&&) *
OrderBy&&* 1
(&&1 2
x&&2 3
=>&&3 5
x&&6 7
.&&7 8
descripcion&&8 C
)&&C D
.&&D E
ToListAsync&&E P
(&&P Q
)&&Q R
;&&R S
}'' 
}(( 
catch)) 
()) 
	Exception)) 
e)) 
))) 
{** 
Debug++ 
.++ 
	WriteLine++ 
(++  
e++  !
.++! "
ToString++" *
(++* +
)+++ ,
)++, -
;++- .
},, 
return.. 
plantas.. 
;.. 
}// 	
}00 
}11 ΰ
1D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Dao\DaoPorque.cs
	namespace		 	
EwoQ		
 
.		 
Dao		 
{

 
public 

class 
	DaoPorque 
{ 
private 
static 
	DaoPorque  
daoInstance! ,
=- .
null/ 3
;3 4
public 
static 
	DaoPorque 
DaoInstance  +
{ 	
get 
{ 
if 
( 
daoInstance 
==  "
null# '
)' (
{ 
daoInstance 
=  !
new" %
	DaoPorque& /
(/ 0
)0 1
;1 2
} 
return 
daoInstance "
;" #
} 
} 	
public 
async 
Task 
< 
int 
> 
AddPorqueAsync -
(- .
List. 2
<2 3
porque_porque3 @
>@ A
pqB D
)D E
{ 	
int 
regs 
= 
$num 
; 
try   
{!! 
using"" 
("" 
var"" 
context"" "
=""# $
new""% (
EwoQEntities"") 5
(""5 6
)""6 7
)""7 8
{## 
context$$ 
.$$ 
porque_porque$$ )
.$$) *
AddRange$$* 2
($$2 3
pq$$3 5
)$$5 6
;$$6 7
regs%% 
=%% 
await%%  
context%%! (
.%%( )
SaveChangesAsync%%) 9
(%%9 :
)%%: ;
;%%; <
}&& 
}'' 
catch(( 
((( 
	Exception(( 
e(( 
)(( 
{)) 
Debug** 
.** 
	WriteLine** 
(**  
$str**  <
+**= >
e**? @
.**@ A
ToString**A I
(**I J
)**J K
)**K L
;**L M
regs++ 
=++ 
-++ 
$num++ 
;++ 
},, 
return.. 
regs.. 
;.. 
}// 	
}00 
}11 Β
4D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Dao\DaoProductos.cs
	namespace

 	
EwoQ


 
.

 
Dao

 
{ 
public 

class 
DaoProductos 
{ 
private 
static 
DaoProductos #
daoInstance$ /
=0 1
null2 6
;6 7
public 
static 
DaoProductos "
DaoInstance# .
{ 	
get 
{ 
if 
( 
daoInstance 
==  "
null# '
)' (
{ 
daoInstance 
=  !
new" %
DaoProductos& 2
(2 3
)3 4
;4 5
} 
return 
daoInstance "
;" #
} 
} 	
public 
async 
Task 
< 
List 
< 
string %
>% &
>& '
GetProductsAsync( 8
(8 9
)9 :
{ 	
List 
< 
string 
> 
listPro  
=! "
new# &
List' +
<+ ,
string, 2
>2 3
(3 4
)4 5
;5 6
try   
{!! 
using"" 
("" 
var"" 
context"" "
=""# $
new""% (
EwoQEntities"") 5
(""5 6
)""6 7
)""7 8
{## 
var$$ 
query$$ 
=$$ 
from$$  $
td$$% '
in$$( *
context$$+ 2
.$$2 3
	productos$$3 <
select%%  &
td%%' )
.%%) *
nombre%%* 0
;%%0 1
listPro'' 
='' 
await'' #
query''$ )
.'') *
ToListAsync''* 5
(''5 6
)''6 7
;''7 8
}(( 
})) 
catch** 
(** 
	Exception** 
e** 
)** 
{++ 
Debug,, 
.,, 
	WriteLine,, 
(,,  
e,,  !
.,,! "
ToString,," *
(,,* +
),,+ ,
),,, -
;,,- .
}-- 
return// 
listPro// 
;// 
}00 	
}11 
}22 ξ
0D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Dao\DaoRoles.cs
	namespace 	
EwoQ
 
. 
Dao 
{ 
public 
class 
DaoRoles 
{		 
} 
} Ι 
4D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Dao\DaoTiposData.cs
	namespace

 	
EwoQ


 
.

 
Dao

 
{ 
public 

class 
DaoTiposData 
{ 
private 
static 
DaoTiposData #
daoInstance$ /
=0 1
null2 6
;6 7
public 
static 
DaoTiposData "
DaoInstance# .
{ 	
get 
{ 
if 
( 
daoInstance 
==  "
null# '
)' (
{ 
daoInstance 
=  !
new" %
DaoTiposData& 2
(2 3
)3 4
;4 5
} 
return 
daoInstance "
;" #
} 
} 	
public 
async 
Task 
< 
List 
< 

tipos_data )
>) *
>* +
GetTypesAsync, 9
(9 :
int: =
type> B
)B C
{ 	
List 
< 

tipos_data 
> 
	tiposData &
=' (
new) ,
List- 1
<1 2

tipos_data2 <
>< =
(= >
)> ?
;? @
try!! 
{"" 
using## 
(## 
var## 
context## "
=### $
new##% (
EwoQEntities##) 5
(##5 6
)##6 7
)##7 8
{$$ 
var%% 
query%% 
=%% 
from%%  $
td%%% '
in%%( *
context%%+ 2
.%%2 3

tipos_data%%3 =
where&&  %
td&&& (
.&&( )
codigo_tipo&&) 4
==&&5 7
type&&8 <
select''  &
td''' )
;'') *
	tiposData(( 
=(( 
await((  %
query((& +
.((+ ,
OrderBy((, 3
(((3 4
x((4 5
=>((6 8
x((9 :
.((: ;
descripcion((; F
)((F G
.((G H
ToListAsync((H S
(((S T
)((T U
;((U V
})) 
}** 
catch++ 
(++ 
	Exception++ 
e++ 
)++ 
{,, 
Debug-- 
.-- 
	WriteLine-- 
(--  
e--  !
.--! "
ToString--" *
(--* +
)--+ ,
)--, -
;--- .
}.. 
return00 
	tiposData00 
;00 
}11 	
public33 
List33 
<33 

tipos_data33 
>33 
GetTypes33  (
(33( )
int33) ,
type33- 1
)331 2
{44 	
List55 
<55 

tipos_data55 
>55 
	tiposData55 &
=55' (
new55) ,
List55- 1
<551 2

tipos_data552 <
>55< =
(55= >
)55> ?
;55? @
try77 
{88 
using99 
(99 
var99 
context99 "
=99# $
new99% (
EwoQEntities99) 5
(995 6
)996 7
)997 8
{:: 
var;; 
query;; 
=;; 
from;;  $
td;;% '
in;;( *
context;;+ 2
.;;2 3

tipos_data;;3 =
where<<  %
td<<& (
.<<( )
codigo_tipo<<) 4
==<<5 7
type<<8 <
select==  &
td==' )
;==) *
	tiposData?? 
=?? 
query??  %
.??% &
ToList??& ,
(??, -
)??- .
;??. /
}@@ 
}AA 
catchBB 
(BB 
	ExceptionBB 
eBB 
)BB 
{CC 
DebugDD 
.DD 
	WriteLineDD 
(DD  
eDD  !
.DD! "
ToStringDD" *
(DD* +
)DD+ ,
)DD, -
;DD- .
}EE 
returnGG 
	tiposDataGG 
;GG 
}HH 	
}II 
}JJ  
3D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Dao\DaoUsuarios.cs
	namespace 	
EwoQ
 
. 
Dao 
{ 
public 

class 
DaoUsuarios 
{ 
private 
static 
DaoUsuarios "
daoInstance# .
=/ 0
null1 5
;5 6
public 
static 
DaoUsuarios !
DaoInstance" -
{. /
get 
{ 
if 
( 
daoInstance 
==  "
null# '
)' (
{ 
daoInstance 
=  !
new" %
DaoUsuarios& 1
(1 2
)2 3
;3 4
} 
return 
daoInstance "
;" #
} 
} 	
public 
AspNetUsers 
GetUser "
(" #
string# )
id* ,
), -
{ 	
AspNetUsers 
user 
= 
new "
AspNetUsers# .
(. /
)/ 0
;0 1
try!! 
{"" 
using## 
(## 
var## 
context## "
=### $
new##% (
EwoQEntities##) 5
(##5 6
)##6 7
)##7 8
{$$ 
var%% 
query%% 
=%% 
(%%  !
from%%! %
u%%& '
in%%( *
context%%+ 2
.%%2 3
AspNetUsers%%3 >
where&&! &
u&&' (
.&&( )
Id&&) +
.&&+ ,
Equals&&, 2
(&&2 3
id&&3 5
)&&5 6
select''! '
u''( )
)'') *
.''* +
FirstOrDefault''+ 9
(''9 :
)'': ;
;''; <
user)) 
=)) 
query))  
;))  !
}** 
}++ 
catch,, 
(,, 
	Exception,, 
e,, 
),, 
{-- 
Debug.. 
... 
	WriteLine.. 
(..  
e..  !
...! "
ToString.." *
(..* +
)..+ ,
).., -
;..- .
}// 
return11 
user11 
;11 
}22 	
public44 
AspNetUsers44 
GetUserByMail44 (
(44( )
string44) /
email440 5
)445 6
{55 	
AspNetUsers66 
user66 
=66 
new66 "
AspNetUsers66# .
(66. /
)66/ 0
;660 1
try88 
{99 
using:: 
(:: 
var:: 
context:: "
=::# $
new::% (
EwoQEntities::) 5
(::5 6
)::6 7
)::7 8
{;; 
var<< 
query<< 
=<< 
(<<  !
from<<! %
u<<& '
in<<( *
context<<+ 2
.<<2 3
AspNetUsers<<3 >
where==! &
u==' (
.==( )
Email==) .
.==. /
Equals==/ 5
(==5 6
email==6 ;
)==; <
select>>! '
u>>( )
)>>) *
.>>* +
FirstOrDefault>>+ 9
(>>9 :
)>>: ;
;>>; <
user@@ 
=@@ 
query@@  
;@@  !
}AA 
}BB 
catchCC 
(CC 
	ExceptionCC 
eCC 
)CC 
{DD 
DebugEE 
.EE 
	WriteLineEE 
(EE  
eEE  !
.EE! "
ToStringEE" *
(EE* +
)EE+ ,
)EE, -
;EE- .
}FF 
returnHH 
userHH 
;HH 
}II 	
publicKK 
ListKK 
<KK 
AspNetUsersKK 
>KK  
GetUserByRoleKK! .
(KK. /
stringKK/ 5
id_rolKK6 <
)KK< =
{LL 	
ListMM 
<MM 
AspNetUsersMM 
>MM 
listMM "
=MM# $
newMM% (
ListMM) -
<MM- .
AspNetUsersMM. 9
>MM9 :
(MM: ;
)MM; <
;MM< =
tryOO 
{PP 
usingQQ 
(QQ 
varQQ 
contextQQ "
=QQ# $
newQQ% (
EwoQEntitiesQQ) 5
(QQ5 6
)QQ6 7
)QQ7 8
{RR 
varTT 
alsTT 
=TT 
fromTT "
bTT# $
inTT% '
contextTT( /
.TT/ 0
AspNetUsersTT0 ;
whereUU #
bUU$ %
.UU% &
IdRolUU& +
==UU, .
id_rolUU/ 5
selectVV $
bVV% &
;VV& '
listXX 
=XX 
alsXX 
.XX 
ToListXX %
(XX% &
)XX& '
;XX' (
}YY 
}ZZ 
catch[[ 
([[ 
	Exception[[ 
e[[ 
)[[ 
{\\ 
System]] 
.]] 
Diagnostics]] "
.]]" #
Debug]]# (
.]]( )
	WriteLine]]) 2
(]]2 3
$str]]3 [
+]][ \
e]]\ ]
.]]] ^
ToString]]^ f
(]]f g
)]]g h
)]]h i
;]]i j
}^^ 
return`` 
list`` 
;`` 
}aa 	
publiccc 
asynccc 
Taskcc 
<cc 
Listcc 
<cc 
UserToApprovecc ,
>cc, -
>cc- .
GetUserWOApprvcc/ =
(cc= >
)cc> ?
{dd 	
Listee 
<ee 
UserToApproveee 
>ee 
listee  $
=ee% &
newee' *
Listee+ /
<ee/ 0
UserToApproveee0 =
>ee= >
(ee> ?
)ee? @
;ee@ A
trygg 
{hh 
usingii 
(ii 
varii 
contextii "
=ii# $
newii% (
EwoQEntitiesii) 5
(ii5 6
)ii6 7
)ii7 8
{jj 
varll 
alsll 
=ll 
fromll "
bll# $
inll% '
contextll( /
.ll/ 0
AspNetUsersll0 ;
joinmm "
rmm# $
inmm% '
contextmm( /
.mm/ 0
AspNetRolesmm0 ;
onnn  
bnn! "
.nn" #
IdRolnn# (
equalsnn) /
rnn0 1
.nn1 2
Idnn2 4
whereoo #
boo$ %
.oo% &
EmailConfirmedoo& 4
==oo5 7
falseoo8 =
selectpp $
newpp% (
{pp) *
bpp* +
,pp+ ,
rpp, -
}pp. /
;pp/ 0
varrr 
listarr 
=rr 
alsrr  #
.rr# $
ToListrr$ *
(rr* +
)rr+ ,
;rr, -
awaittt 
Tasktt 
.tt 
Runtt "
(tt" #
(tt# $
)tt$ %
=>tt& (
Paralleltt) 1
.tt1 2
ForEachtt2 9
(tt9 :
listatt: ?
,tt? @
sttA B
=>ttC E
{uu 
listvv 
.vv 
Addvv  
(vv  !
newvv! $
UserToApprovevv% 2
(vv2 3
)vv3 4
{ww 
Idxx 
=xx  
sxx! "
.xx" #
bxx# $
.xx$ %
Idxx% '
,xx' (
Nombresyy #
=yy$ %
syy& '
.yy' (
byy( )
.yy) *
Nombresyy* 1
,yy1 2
	Apellidoszz %
=zz& '
szz( )
.zz) *
bzz* +
.zz+ ,
	Apellidoszz, 5
,zz5 6
Email{{ !
={{" #
s{{$ %
.{{% &
b{{& '
.{{' (
Email{{( -
,{{- .
Usuario|| #
=||$ %
s||& '
.||' (
b||( )
.||) *
UserName||* 2
,||2 3
Registro}} $
=}}% &
(}}' (
DateTime}}( 0
)}}0 1
s}}1 2
.}}2 3
b}}3 4
.}}4 5

Registrado}}5 ?
,}}? @
IdRol~~ !
=~~" #
s~~$ %
.~~% &
r~~& '
.~~' (
Id~~( *
,~~* +
DesRol "
=# $
s% &
.& '
r' (
.( )
Name) -
}
€€ 
)
€€ 
;
€€ 
}
‚‚ 
)
‚‚ 
)
‚‚ 
;
‚‚ 
}
ƒƒ 
}
„„ 
catch
…… 
(
…… 
	Exception
…… 
e
…… 
)
…… 
{
†† 
System
‡‡ 
.
‡‡ 
Diagnostics
‡‡ "
.
‡‡" #
Debug
‡‡# (
.
‡‡( )
	WriteLine
‡‡) 2
(
‡‡2 3
$str
‡‡3 _
+
‡‡` a
e
‡‡b c
.
‡‡c d
ToString
‡‡d l
(
‡‡l m
)
‡‡m n
)
‡‡n o
;
‡‡o p
}
 
return
 
list
 
;
 
}
‹‹ 	
public
 
async
 
Task
 
<
 
List
 
<
 
UsersUI
 &
>
& '
>
' (
GetUsersByRole
) 7
(
7 8
string
8 >
role
? C
)
C D
{
 	
List
 
<
 
UsersUI
 
>
 
list
 
=
  
new
! $
List
% )
<
) *
UsersUI
* 1
>
1 2
(
2 3
)
3 4
;
4 5
try
‘‘ 
{
’’ 
using
““ 
(
““ 
var
““ 
context
““ "
=
““# $
new
““% (
EwoQEntities
““) 5
(
““5 6
)
““6 7
)
““7 8
{
”” 
var
–– 
als
–– 
=
–– 
from
–– "
b
––# $
in
––% '
context
––( /
.
––/ 0
AspNetUsers
––0 ;
where
—— #
b
——$ %
.
——% &
EmailConfirmed
——& 4
==
——5 7
true
——8 <
&&
  
b
! "
.
" #
IdRol
# (
.
( )
Equals
) /
(
/ 0
role
0 4
)
4 5
select
™™ $
b
™™% &
;
™™& '
var
›› 
listT
›› 
=
›› 
await
››  %
als
››& )
.
››) *
ToListAsync
››* 5
(
››5 6
)
››6 7
;
››7 8
await
 
Task
 
.
 
Run
 "
(
" #
(
# $
)
$ %
=>
& (
Parallel
) 1
.
1 2
ForEach
2 9
(
9 :
listT
: ?
,
? @
s
A B
=>
C E
{
 
list
 
.
 
Add
  
(
  !
new
! $
UsersUI
% ,
(
, -
)
- .
{
   
Id
΅΅ 
=
΅΅  
s
΅΅! "
.
΅΅" #
Id
΅΅# %
,
΅΅% &
Nombres
ΆΆ #
=
ΆΆ$ %
s
ΆΆ& '
.
ΆΆ' (
Nombres
ΆΆ( /
,
ΆΆ/ 0
	Apellidos
££ %
=
££& '
s
££( )
.
££) *
	Apellidos
££* 3
,
££3 4
Email
¤¤ !
=
¤¤" #
s
¤¤$ %
.
¤¤% &
Email
¤¤& +
,
¤¤+ ,
Usuario
¥¥ #
=
¥¥$ %
s
¥¥& '
.
¥¥' (
UserName
¥¥( 0
,
¥¥0 1
IdRol
¦¦ !
=
¦¦" #
s
¦¦$ %
.
¦¦% &
IdRol
¦¦& +
,
¦¦+ ,
NombresCommpletos
§§ -
=
§§. /
s
§§0 1
.
§§1 2
Nombres
§§2 9
+
§§: ;
$str
§§< ?
+
§§@ A
s
§§B C
.
§§C D
	Apellidos
§§D M
}
¨¨ 
)
¨¨ 
;
¨¨ 
}
ªª 
)
ªª 
)
ªª 
;
ªª 
}
«« 
}
¬¬ 
catch
­­ 
(
­­ 
	Exception
­­ 
e
­­ 
)
­­ 
{
®® 
System
―― 
.
―― 
Diagnostics
―― "
.
――" #
Debug
――# (
.
――( )
	WriteLine
――) 2
(
――2 3
$str
――3 [
+
――\ ]
e
――^ _
.
――_ `
ToString
――` h
(
――h i
)
――i j
)
――j k
;
――k l
}
°° 
return
²² 
list
²² 
;
²² 
}
³³ 	
public
µµ 
async
µµ 
Task
µµ 
<
µµ 
int
µµ 
>
µµ 
ApproveUser
µµ *
(
µµ* +
string
µµ+ 1
id
µµ2 4
)
µµ4 5
{
¶¶ 	
AspNetUsers
·· 
usere
·· 
;
·· 
Task
ΈΈ 
<
ΈΈ 
int
ΈΈ 
>
ΈΈ 
regs
ΈΈ 
=
ΈΈ 
Task
ΈΈ !
<
ΈΈ! "
int
ΈΈ" %
>
ΈΈ% &
.
ΈΈ& '
Factory
ΈΈ' .
.
ΈΈ. /
StartNew
ΈΈ/ 7
(
ΈΈ7 8
(
ΈΈ8 9
)
ΈΈ9 :
=>
ΈΈ; =
$num
ΈΈ> ?
)
ΈΈ? @
;
ΈΈ@ A
try
ΊΊ 
{
»» 
using
½½ 
(
½½ 
var
½½ 
context
½½ "
=
½½# $
new
½½% (
EwoQEntities
½½) 5
(
½½5 6
)
½½6 7
)
½½7 8
{
ΎΎ 
usere
ΏΏ 
=
ΏΏ 
context
ΏΏ #
.
ΏΏ# $
AspNetUsers
ΏΏ$ /
.
ΏΏ/ 0
Where
ΏΏ0 5
(
ΏΏ5 6
s
ΏΏ6 7
=>
ΏΏ8 :
s
ΏΏ; <
.
ΏΏ< =
Id
ΏΏ= ?
==
ΏΏ@ B
id
ΏΏC E
)
ΏΏE F
.
ΏΏF G
FirstOrDefault
ΏΏG U
(
ΏΏU V
)
ΏΏV W
;
ΏΏW X
}
ΐΐ 
if
ΓΓ 
(
ΓΓ 
usere
ΓΓ 
!=
ΓΓ 
null
ΓΓ !
)
ΓΓ! "
{
ΔΔ 
usere
ΕΕ 
.
ΕΕ 
EmailConfirmed
ΕΕ (
=
ΕΕ) *
true
ΕΕ+ /
;
ΕΕ/ 0
}
ΖΖ 
using
ΙΙ 
(
ΙΙ 
var
ΙΙ 
context
ΙΙ "
=
ΙΙ# $
new
ΙΙ% (
EwoQEntities
ΙΙ) 5
(
ΙΙ5 6
)
ΙΙ6 7
)
ΙΙ7 8
{
ΚΚ 
context
ΜΜ 
.
ΜΜ 
Entry
ΜΜ !
(
ΜΜ! "
usere
ΜΜ" '
)
ΜΜ' (
.
ΜΜ( )
State
ΜΜ) .
=
ΜΜ/ 0
EntityState
ΜΜ1 <
.
ΜΜ< =
Modified
ΜΜ= E
;
ΜΜE F
regs
ΟΟ 
=
ΟΟ 
context
ΟΟ "
.
ΟΟ" #
SaveChangesAsync
ΟΟ# 3
(
ΟΟ3 4
)
ΟΟ4 5
;
ΟΟ5 6
return
ΡΡ 
await
ΡΡ  
regs
ΡΡ! %
;
ΡΡ% &
}
ÒÒ 
}
ΣΣ 
catch
ΤΤ 
(
ΤΤ 
	Exception
ΤΤ 
e
ΤΤ 
)
ΤΤ 
{
ΥΥ 
Debug
ΦΦ 
.
ΦΦ 
	WriteLine
ΦΦ 
(
ΦΦ 
$str
ΦΦ ?
+
ΦΦ@ A
e
ΦΦB C
.
ΦΦC D
ToString
ΦΦD L
(
ΦΦL M
)
ΦΦM N
)
ΦΦN O
;
ΦΦO P
}
ΧΧ 
return
ΩΩ 
$num
ΩΩ 
;
ΩΩ 
}
ΪΪ 	
public
άά 
async
άά 
Task
άά 
<
άά 
List
άά 
<
άά 
UsersUI
άά &
>
άά& '
>
άά' (
GetAllUsers
άά) 4
(
άά4 5
)
άά5 6
{
έέ 	
List
ήή 
<
ήή 
UsersUI
ήή 
>
ήή 
	listUsers
ήή #
=
ήή$ %
new
ήή& )
List
ήή* .
<
ήή. /
UsersUI
ήή/ 6
>
ήή6 7
(
ήή7 8
)
ήή8 9
;
ήή9 :
try
ΰΰ 
{
αα 
using
ββ 
(
ββ 
var
ββ 
context
ββ "
=
ββ# $
new
ββ% (
EwoQEntities
ββ) 5
(
ββ5 6
)
ββ6 7
)
ββ7 8
{
γγ 
var
δδ 
query
δδ 
=
δδ 
from
δδ  $
td
δδ% '
in
δδ( *
context
δδ+ 2
.
δδ2 3
AspNetUsers
δδ3 >
select
εε  &
td
εε' )
;
εε) *
var
ηη 
listT
ηη 
=
ηη 
await
ηη  %
query
ηη& +
.
ηη+ ,
ToListAsync
ηη, 7
(
ηη7 8
)
ηη8 9
;
ηη9 :
foreach
ιι 
(
ιι 
var
ιι  
s
ιι! "
in
ιι# %
listT
ιι& +
)
ιι+ ,
{
κκ 
	listUsers
λλ !
.
λλ! "
Add
λλ" %
(
λλ% &
new
λλ& )
UsersUI
λλ* 1
(
λλ1 2
)
λλ2 3
{
μμ 
Id
νν 
=
νν  
s
νν! "
.
νν" #
Id
νν# %
,
νν% &
Nombres
ξξ #
=
ξξ$ %
s
ξξ& '
.
ξξ' (
Nombres
ξξ( /
,
ξξ/ 0
	Apellidos
οο %
=
οο& '
s
οο( )
.
οο) *
	Apellidos
οο* 3
,
οο3 4
Email
ππ !
=
ππ" #
s
ππ$ %
.
ππ% &
Email
ππ& +
,
ππ+ ,
Usuario
ρρ #
=
ρρ$ %
s
ρρ& '
.
ρρ' (
UserName
ρρ( 0
,
ρρ0 1
IdRol
ςς !
=
ςς" #
s
ςς$ %
.
ςς% &
IdRol
ςς& +
,
ςς+ ,
NombresCommpletos
σσ -
=
σσ. /
s
σσ0 1
.
σσ1 2
Nombres
σσ2 9
+
σσ: ;
$str
σσ< ?
+
σσ@ A
s
σσB C
.
σσC D
	Apellidos
σσD M
}
ττ 
)
ττ 
;
ττ 
}
υυ 
}
φφ 
}
χχ 
catch
ψψ 
(
ψψ 
	Exception
ψψ 
e
ψψ 
)
ψψ 
{
ωω 
Debug
ϊϊ 
.
ϊϊ 
	WriteLine
ϊϊ 
(
ϊϊ  
e
ϊϊ  !
.
ϊϊ! "
ToString
ϊϊ" *
(
ϊϊ* +
)
ϊϊ+ ,
)
ϊϊ, -
;
ϊϊ- .
}
ϋϋ 
return
ύύ 
	listUsers
ύύ 
;
ύύ 
}
ώώ 	
public
€€ 
async
€€ 
Task
€€ 
<
€€ 
List
€€ 
<
€€ 
string
€€ %
>
€€% &
>
€€& '
GetAllUsersNames
€€( 8
(
€€8 9
)
€€9 :
{
 	
List
‚‚ 
<
‚‚ 
string
‚‚ 
>
‚‚ 
	listUsers
‚‚ "
=
‚‚# $
new
‚‚% (
List
‚‚) -
<
‚‚- .
string
‚‚. 4
>
‚‚4 5
(
‚‚5 6
)
‚‚6 7
;
‚‚7 8
try
„„ 
{
…… 
using
†† 
(
†† 
var
†† 
context
†† "
=
††# $
new
††% (
EwoQEntities
††) 5
(
††5 6
)
††6 7
)
††7 8
{
‡‡ 
var
 
query
 
=
 
from
  $
td
% '
in
( *
context
+ 2
.
2 3
AspNetUsers
3 >
select
‰‰  &
td
‰‰' )
;
‰‰) *
var
‹‹ 
listT
‹‹ 
=
‹‹ 
await
‹‹  %
query
‹‹& +
.
‹‹+ ,
ToListAsync
‹‹, 7
(
‹‹7 8
)
‹‹8 9
;
‹‹9 :
foreach
 
(
 
var
  
s
! "
in
# %
listT
& +
)
+ ,
{
 
	listUsers
 !
.
! "
Add
" %
(
% &
s
& '
.
' (
Nombres
( /
+
0 1
$str
2 5
+
6 7
s
8 9
.
9 :
	Apellidos
: C
)
C D
;
D E
}
 
}
‘‘ 
}
’’ 
catch
““ 
(
““ 
	Exception
““ 
e
““ 
)
““ 
{
”” 
Debug
•• 
.
•• 
	WriteLine
•• 
(
••  
e
••  !
.
••! "
ToString
••" *
(
••* +
)
••+ ,
)
••, -
;
••- .
}
–– 
return
 
	listUsers
 
;
 
}
™™ 	
}
 
}›› υO
/D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Dao\DaoZero.cs
	namespace 	
EwoQ
 
. 
Dao 
{ 
public 

class 
DaoZero 
{ 
private 
static 
DaoZero 
daoInstance *
=+ ,
null- 1
;1 2
public 
static 
DaoZero 
DaoInstance )
{ 	
get 
{ 
if 
( 
daoInstance 
==  "
null# '
)' (
{ 
daoInstance 
=  !
new" %
DaoZero& -
(- .
). /
;/ 0
} 
return 
daoInstance "
;" #
} 
} 	
public 
async 
Task 
< 
List 
< 
ZeroViewModel ,
>, -
>- .
GetZeroQuestions/ ?
(? @
int@ C
tipo_mD J
)J K
{ 	
List   
<   
ZeroViewModel   
>   
list    $
=  % &
new  ' *
List  + /
<  / 0
ZeroViewModel  0 =
>  = >
(  > ?
)  ? @
;  @ A
try"" 
{## 
using$$ 
($$ 
var$$ 
context$$ "
=$$# $
new$$% (
EwoQEntities$$) 5
($$5 6
)$$6 7
)$$7 8
{%% 
var&& 
query&& 
=&& 
await&&  %
context&&& -
.&&- .
zero_questions&&. <
.'' 
Where'' 
('' 
z''  
=>''  "
z''" #
.''# $
codigo_tipom''$ 0
==''1 3
tipo_m''4 :
)'': ;
.(( 
Include(( $
((($ %
z((% &
=>((' )
z((* +
.((+ ,
zero_responses((, :
)((: ;
.((; <
ToListAsync((< G
(((G H
)((H I
;((I J
var** 
i** 
=** 
query** !
.**! "
Count**" '
;**' (
foreach,, 
(,, 
var,,  
item,,! %
in,,& (
query,,) .
.,,. /
ToList,,/ 5
(,,5 6
),,6 7
),,7 8
{-- 
list.. 
... 
Add..  
(..  !
new..! $
ZeroViewModel..% 2
(..2 3
)..3 4
{// 
Id00 
=00  
item00! %
.00% &
id00& (
,00( )
IdTipoM11 #
=11$ %
item11& *
.11* +
codigo_tipom11+ 7
.117 8
Value118 =
,11= >
	DescTipoM22 %
=22& '
item22( ,
.22, -

tipos_data22- 7
.227 8
descripcion228 C
,22C D
Pregunta33 $
=33% &
item33' +
.33+ ,
pregunta33, 4
,334 5
	Responses44 %
=44& '
await44( -
GetZeroResponses44. >
(44> ?
item44? C
.44C D
id44D F
)44F G
}55 
)55 
;55 
}66 
}77 
}88 
catch99 
(99 
	Exception99 
e99 
)99 
{:: 
Trace;; 
.;; 
	WriteLine;; 
(;;  
$str;;  R
+;;S T
e;;U V
.;;V W
ToString;;W _
(;;_ `
);;` a
);;a b
;;;b c
}<< 
return>> 
list>> 
;>> 
}?? 	
publicAA 
asyncAA 
TaskAA 
<AA 
ListAA 
<AA 
ZeroResponsesAA ,
>AA, -
>AA- .
GetZeroResponsesAA/ ?
(AA? @
longAA@ D

idPreguntaAAE O
)AAO P
{BB 	
ListCC 
<CC 
ZeroResponsesCC 
>CC 
listCC  $
=CC% &
newCC' *
ListCC+ /
<CC/ 0
ZeroResponsesCC0 =
>CC= >
(CC> ?
)CC? @
;CC@ A
tryEE 
{FF 
usingGG 
(GG 
varGG 
contextGG "
=GG# $
newGG% (
EwoQEntitiesGG) 5
(GG5 6
)GG6 7
)GG7 8
{HH 
varII 
queryII 
=II 
fromII  $
qII% &
inII' )
contextII* 1
.II1 2
zero_questionsII2 @
joinJJ  $
rJJ% &
inJJ' )
contextJJ* 1
.JJ1 2
zero_responsesJJ2 @
onKK  "
qKK# $
.KK$ %
idKK% '
equalsKK( .
rKK/ 0
.KK0 1
codigo_preguntaKK1 @
whereLL  %
rLL& '
.LL' (
codigo_preguntaLL( 7
==LL8 :

idPreguntaLL; E
selectMM  &
newMM' *
ZeroResponsesMM+ 8
(MM8 9
)MM9 :
{NN  !
IdOO$ &
=OO' (
rOO) *
.OO* +
idOO+ -
,OO- .

IdPreguntaPP$ .
=PP/ 0
rPP1 2
.PP2 3
codigo_preguntaPP3 B
.PPB C
ValuePPC H
,PPH I
	RespuestaQQ$ -
=QQ. /
rQQ0 1
.QQ1 2
	respuestaQQ2 ;
,QQ; <
PuntajeRR$ +
=RR, -
rRR. /
.RR/ 0
puntajeRR0 7
.RR7 8
ValueRR8 =
}SS  !
;SS! "
listUU 
=UU 
awaitUU  
queryUU! &
.UU& '
ToListAsyncUU' 2
(UU2 3
)UU3 4
;UU4 5
}VV 
}WW 
catchXX 
(XX 
	ExceptionXX 
eXX 
)XX 
{YY 
TraceZZ 
.ZZ 
	WriteLineZZ 
(ZZ  
$strZZ  I
+ZZJ K
eZZL M
.ZZM N
ToStringZZN V
(ZZV W
)ZZW X
)ZZX Y
;ZZY Z
}[[ 
return]] 
list]] 
;]] 
}^^ 	
public`` 
async`` 
Task`` 
<`` 
ZeroResponses`` '
>``' (
GetZeroResponse``) 8
(``8 9
long``9 =

idPregunta``> H
,``H I
int``J M
puntaje``N U
)``U V
{aa 	
ZeroResponsesbb 
objbb 
=bb 
newbb  #
ZeroResponsesbb$ 1
(bb1 2
)bb2 3
;bb3 4
trydd 
{ee 
usingff 
(ff 
varff 
contextff "
=ff# $
newff% (
EwoQEntitiesff) 5
(ff5 6
)ff6 7
)ff7 8
{gg 
objhh 
=hh 
awaithh 
(hh  
fromhh  $
qhh% &
inhh' )
contexthh* 1
.hh1 2
zero_questionshh2 @
joinii  $
rii% &
inii' )
contextii* 1
.ii1 2
zero_responsesii2 @
onjj  "
qjj# $
.jj$ %
idjj% '
equalsjj( .
rjj/ 0
.jj0 1
codigo_preguntajj1 @
wherekk  %
rkk& '
.kk' (
codigo_preguntakk( 7
==kk8 :

idPreguntakk; E
&&ll  "
rll# $
.ll$ %
puntajell% ,
==ll- /
puntajell0 7
selectmm  &
newmm' *
ZeroResponsesmm+ 8
(mm8 9
)mm9 :
{nn  !
Idoo$ &
=oo' (
roo) *
.oo* +
idoo+ -
,oo- .

IdPreguntapp$ .
=pp/ 0
rpp1 2
.pp2 3
codigo_preguntapp3 B
.ppB C
ValueppC H
,ppH I
	Respuestaqq$ -
=qq. /
rqq0 1
.qq1 2
	respuestaqq2 ;
,qq; <
Puntajerr$ +
=rr, -
rrr. /
.rr/ 0
puntajerr0 7
.rr7 8
Valuerr8 =
}ss  !
)ss! "
.ss" #
FirstOrDefaultAsyncss# 6
(ss6 7
)ss7 8
;ss8 9
}tt 
}uu 
catchvv 
(vv 
	Exceptionvv 
evv 
)vv 
{ww 
Tracexx 
.xx 
	WriteLinexx 
(xx  
$strxx  H
+xxI J
exxK L
.xxL M
ToStringxxM U
(xxU V
)xxV W
)xxW X
;xxX Y
}yy 
return{{ 
obj{{ 
;{{ 
}|| 	
public~~ 
async~~ 
Task~~ 
<~~ 
int~~ 
>~~ 
AddZeroEwoAsync~~ .
(~~. /
List~~/ 3
<~~3 4
zero_ewo~~4 <
>~~< =
zr~~> @
)~~@ A
{ 	
int
€€ 
regs
€€ 
=
€€ 
$num
€€ 
;
€€ 
try
‚‚ 
{
ƒƒ 
using
„„ 
(
„„ 
var
„„ 
context
„„ "
=
„„# $
new
„„% (
EwoQEntities
„„) 5
(
„„5 6
)
„„6 7
)
„„7 8
{
…… 
context
†† 
.
†† 
zero_ewo
†† $
.
††$ %
AddRange
††% -
(
††- .
zr
††. 0
)
††0 1
;
††1 2
regs
‡‡ 
=
‡‡ 
await
‡‡  
context
‡‡! (
.
‡‡( )
SaveChangesAsync
‡‡) 9
(
‡‡9 :
)
‡‡: ;
;
‡‡; <
}
 
}
‰‰ 
catch
 
(
 
	Exception
 
e
 
)
 
{
‹‹ 
Debug
 
.
 
	WriteLine
 
(
  
$str
  <
+
= >
e
? @
.
@ A
ToString
A I
(
I J
)
J K
)
K L
;
L M
regs
 
=
 
-
 
$num
 
;
 
}
 
return
 
regs
 
;
 
}
‘‘ 	
}
’’ 
}““ ÿ
/D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Global.asax.cs
	namespace

 	
EwoQ


 
{ 
public 

class 
MvcApplication 
:  !
System" (
.( )
Web) ,
., -
HttpApplication- <
{ 
	protected 
void 
Application_Start (
(( )
)) *
{ 	
AreaRegistration 
. 
RegisterAllAreas -
(- .
). /
;/ 0
FilterConfig 
. !
RegisterGlobalFilters .
(. /
GlobalFilters/ <
.< =
Filters= D
)D E
;E F
RouteConfig 
. 
RegisterRoutes &
(& '

RouteTable' 1
.1 2
Routes2 8
)8 9
;9 :
BundleConfig 
. 
RegisterBundles (
(( )
BundleTable) 4
.4 5
Bundles5 <
)< =
;= >
} 	
public 
void 
Application_Error %
(% &
Object& ,
sender- 3
,3 4
	EventArgs5 >
e? @
)@ A
{ 	
	Exception 
	exception 
=  !
Server" (
.( )
GetLastError) 5
(5 6
)6 7
;7 8
Server 
. 

ClearError 
( 
) 
;  
var 
	routeData 
= 
new 
	RouteData  )
() *
)* +
;+ ,
	routeData 
. 
Values 
. 
Add  
(  !
$str! -
,- .
$str/ :
): ;
;; <
	routeData 
. 
Values 
. 
Add  
(  !
$str! )
,) *
$str+ 2
)2 3
;3 4
	routeData 
. 
Values 
. 
Add  
(  !
$str! ,
,, -
	exception. 7
)7 8
;8 9
if   
(   
	exception   
.   
GetType   !
(  ! "
)  " #
==  $ &
typeof  ' -
(  - .
HttpException  . ;
)  ; <
)  < =
{!! 
	routeData"" 
."" 
Values""  
.""  !
Add""! $
(""$ %
$str""% 1
,""1 2
(""3 4
(""4 5
HttpException""5 B
)""B C
	exception""C L
)""L M
.""M N
GetHttpCode""N Y
(""Y Z
)""Z [
)""[ \
;""\ ]
}## 
else$$ 
{%% 
	routeData&& 
.&& 
Values&&  
.&&  !
Add&&! $
(&&$ %
$str&&% 1
,&&1 2
$num&&3 6
)&&6 7
;&&7 8
}'' 
Response)) 
.)) "
TrySkipIisCustomErrors)) +
=)), -
true)). 2
;))2 3
IController** 

controller** "
=**# $
new**% (
ErrorPageController**) <
(**< =
)**= >
;**> ?

controller++ 
.++ 
Execute++ 
(++ 
new++ "
RequestContext++# 1
(++1 2
new++2 5
HttpContextWrapper++6 H
(++H I
Context++I P
)++P Q
,++Q R
	routeData++S \
)++\ ]
)++] ^
;++^ _
Response,, 
.,, 
End,, 
(,, 
),, 
;,, 
}-- 	
}.. 
}// τ<
;D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\HtmlHelpers\HtmlHelpers.cs
	namespace		 	
EwoQ		
 
.		 
HtmlHelpers		 
{

 
public 

static 
class 
HtmlHelpers #
{ 
public 
static 
MvcHtmlString #
LiActionLink$ 0
(0 1
this1 5

HtmlHelper6 @
htmlA E
,E F
stringG M
textN R
,R S
stringT Z
action[ a
,a b
stringc i

controllerj t
)t u
{ 	
var 
context 
= 
html 
. 
ViewContext *
;* +
if 
( 
context 
. 

Controller "
." #
ControllerContext# 4
.4 5
IsChildAction5 B
)B C
context 
= 
html 
. 
ViewContext *
.* +#
ParentActionViewContext+ B
;B C
var 
routeValues 
= 
context %
.% &
	RouteData& /
./ 0
Values0 6
;6 7
var 
currentAction 
= 
routeValues  +
[+ ,
$str, 4
]4 5
.5 6
ToString6 >
(> ?
)? @
;@ A
var 
currentController !
=" #
routeValues$ /
[/ 0
$str0 <
]< =
.= >
ToString> F
(F G
)G H
;H I
var 
str 
= 
String 
. 
Format #
(# $
$str$ K
,K L
currentAction 
. 
Equals $
($ %
action% +
,+ ,
StringComparison- =
.= >
InvariantCulture> N
)N O
&&P R
currentController !
.! "
Equals" (
(( )

controller) 3
,3 4
StringComparison5 E
.E F
InvariantCultureF V
)V W
?X Y
$str #
:$ %
String 
. 
Empty 
, 
html "
." #

ActionLink# -
(- .
text. 2
,2 3
action4 :
,: ;

controller< F
)F G
.G H
ToHtmlStringH T
(T U
)U V
) 
; 
return 
new 
MvcHtmlString $
($ %
str% (
)( )
;) *
} 	
public 
static 
MvcHtmlString #
MenuItem$ ,
(, -
this- 1

HtmlHelper2 <

htmlHelper= G
,G H
stringI O
textP T
,T U
stringV \
action] c
,c d
stringe k

controllerl v
,v w
stringx ~
num	 ‚
,
‚ ƒ
string
„ 
icon
‹ 
)
 
{   	
var!! 
	routeData!! 
=!! 

htmlHelper!! &
.!!& '
ViewContext!!' 2
.!!2 3
	RouteData!!3 <
;!!< =
var"" 
currentAction"" 
="" 
	routeData""  )
."") *
GetRequiredString""* ;
(""; <
$str""< D
)""D E
;""E F
var## 
currentController## !
=##" #
	routeData##$ -
.##- .
GetRequiredString##. ?
(##? @
$str##@ L
)##L M
;##M N
bool$$ 
	isCurrent$$ 
=$$ 
string$$ #
.$$# $
Equals$$$ *
($$* +
currentAction$$+ 8
,$$8 9
action$$: @
,$$@ A
StringComparison$$B R
.$$R S
OrdinalIgnoreCase$$S d
)$$d e
&&$$f h
string$$i o
.$$o p
Equals$$p v
($$v w
currentController	$$w 
,
$$ ‰

controller
$$ ”
,
$$” •
StringComparison
$$– ¦
.
$$¦ §
OrdinalIgnoreCase
$$§ Έ
)
$$Έ Ή
;
$$Ή Ί
	UrlHelper%% 
	urlHelper%% 
=%%  !
new%%" %
	UrlHelper%%& /
(%%/ 0

htmlHelper%%0 :
.%%: ;
ViewContext%%; F
.%%F G
RequestContext%%G U
)%%U V
;%%V W
string&& 
url&& 
=&& 
	urlHelper&& "
.&&" #
Action&&# )
(&&) *
action&&* 0
,&&0 1

controller&&2 <
)&&< =
;&&= >
StringBuilder'' 
html'' 
=''  
new''! $
StringBuilder''% 2
(''2 3
)''3 4
;''4 5

TagBuilder(( 
span(( 
=(( 
new(( !

TagBuilder((" ,
(((, -
$str((- 3
)((3 4
;((4 5
span)) 
.)) 
AddCssClass)) 
()) 
$str)) /
)))/ 0
;))0 1
span** 
.** 
	InnerHtml** 
=** 
num**  
;**  !
html++ 
.++ 
Append++ 
(++ 
span++ 
)++ 
;++ 

TagBuilder,, 
i,, 
=,, 
new,, 

TagBuilder,, )
(,,) *
$str,,* -
),,- .
;,,. /
i-- 
.-- 
AddCssClass-- 
(-- 
icon-- 
)-- 
;--  
html.. 
... 
Append.. 
(.. 
i.. 
).. 
;.. 
span// 
=// 
new// 

TagBuilder// !
(//! "
$str//" (
)//( )
;//) *
span00 
.00 
	InnerHtml00 
=00 
text00 !
;00! "
html11 
.11 
Append11 
(11 
span11 
)11 
;11 

TagBuilder22 
a22 
=22 
new22 

TagBuilder22 )
(22) *
$str22* -
)22- .
;22. /
a33 
.33 
MergeAttribute33 
(33 
$str33 #
,33# $
url33% (
)33( )
;33) *
if44 
(44 
	isCurrent44 
)44 
{55 
a66 
.66 
AddCssClass66 
(66 
$str66 '
)66' (
;66( )
}77 
a88 
.88 
	InnerHtml88 
=88 
html88 
.88 
ToString88 '
(88' (
)88( )
;88) *

TagBuilder99 
li99 
=99 
new99 

TagBuilder99  *
(99* +
$str99+ /
)99/ 0
;990 1
if:: 
(:: 
	isCurrent:: 
):: 
{;; 
li<< 
.<< 
AddCssClass<< 
(<< 
$str<< (
)<<( )
;<<) *
}== 
li>> 
.>> 
	InnerHtml>> 
=>> 
a>> 
.>> 
ToString>> %
(>>% &
)>>& '
;>>' (
return?? 
MvcHtmlString??  
.??  !
Create??! '
(??' (
li??( *
.??* +
ToString??+ 3
(??3 4
)??4 5
)??5 6
;??6 7
}@@ 	
}AA 
}BB Β`
^D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Migrations\201808082138562_campos_complementarios_usuarios.cs
	namespace 	
EwoQ
 
. 

Migrations 
{ 
public 

partial 
class +
campos_complementarios_usuarios 8
:9 :
DbMigration; F
{ 
public 
override 
void 
Up 
(  
)  !
{		 	
CreateTable

 
(

 
$str !
,! "
c 
=> 
new 
{ 
Id 
= 
c 
. 
String %
(% &
nullable& .
:. /
false0 5
,5 6
	maxLength7 @
:@ A
$numB E
)E F
,F G
Name 
= 
c  
.  !
String! '
(' (
nullable( 0
:0 1
false2 7
,7 8
	maxLength9 B
:B C
$numD G
)G H
,H I
} 
) 
. 

PrimaryKey 
( 
t 
=>  
t! "
." #
Id# %
)% &
. 
Index 
( 
t 
=> 
t 
. 
Name "
," #
unique$ *
:* +
true, 0
,0 1
name2 6
:6 7
$str8 G
)G H
;H I
CreateTable 
( 
$str %
,% &
c 
=> 
new 
{ 
UserId 
=  
c! "
." #
String# )
() *
nullable* 2
:2 3
false4 9
,9 :
	maxLength; D
:D E
$numF I
)I J
,J K
RoleId 
=  
c! "
." #
String# )
() *
nullable* 2
:2 3
false4 9
,9 :
	maxLength; D
:D E
$numF I
)I J
,J K
} 
) 
. 

PrimaryKey 
( 
t 
=>  
new! $
{% &
t' (
.( )
UserId) /
,/ 0
t1 2
.2 3
RoleId3 9
}: ;
); <
. 

ForeignKey 
( 
$str -
,- .
t/ 0
=>1 3
t4 5
.5 6
RoleId6 <
,< =
cascadeDelete> K
:K L
trueM Q
)Q R
. 

ForeignKey 
( 
$str -
,- .
t/ 0
=>1 3
t4 5
.5 6
UserId6 <
,< =
cascadeDelete> K
:K L
trueM Q
)Q R
. 
Index 
( 
t 
=> 
t 
. 
UserId $
)$ %
. 
Index 
( 
t 
=> 
t 
. 
RoleId $
)$ %
;% &
CreateTable!! 
(!! 
$str"" !
,""! "
c## 
=>## 
new## 
{$$ 
Id%% 
=%% 
c%% 
.%% 
String%% %
(%%% &
nullable%%& .
:%%. /
false%%0 5
,%%5 6
	maxLength%%7 @
:%%@ A
$num%%B E
)%%E F
,%%F G
Nombres&& 
=&&  !
c&&" #
.&&# $
String&&$ *
(&&* +
nullable&&+ 3
:&&3 4
false&&5 :
,&&: ;
	maxLength&&< E
:&&E F
$num&&G J
)&&J K
,&&K L
	Apellidos'' !
=''" #
c''$ %
.''% &
String''& ,
('', -
nullable''- 5
:''5 6
false''7 <
,''< =
	maxLength''> G
:''G H
$num''I L
)''L M
,''M N
IdRol(( 
=(( 
c((  !
.((! "
String((" (
(((( )
nullable(() 1
:((1 2
false((3 8
)((8 9
,((9 :
Email)) 
=)) 
c))  !
.))! "
String))" (
())( )
	maxLength))) 2
:))2 3
$num))4 7
)))7 8
,))8 9
EmailConfirmed** &
=**' (
c**) *
.*** +
Boolean**+ 2
(**2 3
nullable**3 ;
:**; <
false**= B
)**B C
,**C D
PasswordHash++ $
=++% &
c++' (
.++( )
String++) /
(++/ 0
)++0 1
,++1 2
SecurityStamp,, %
=,,& '
c,,( )
.,,) *
String,,* 0
(,,0 1
),,1 2
,,,2 3
PhoneNumber-- #
=--$ %
c--& '
.--' (
String--( .
(--. /
)--/ 0
,--0 1 
PhoneNumberConfirmed.. ,
=..- .
c../ 0
...0 1
Boolean..1 8
(..8 9
nullable..9 A
:..A B
false..C H
)..H I
,..I J
TwoFactorEnabled// (
=//) *
c//+ ,
.//, -
Boolean//- 4
(//4 5
nullable//5 =
://= >
false//? D
)//D E
,//E F
LockoutEndDateUtc00 )
=00* +
c00, -
.00- .
DateTime00. 6
(006 7
)007 8
,008 9
LockoutEnabled11 &
=11' (
c11) *
.11* +
Boolean11+ 2
(112 3
nullable113 ;
:11; <
false11= B
)11B C
,11C D
AccessFailedCount22 )
=22* +
c22, -
.22- .
Int22. 1
(221 2
nullable222 :
:22: ;
false22< A
)22A B
,22B C
UserName33  
=33! "
c33# $
.33$ %
String33% +
(33+ ,
nullable33, 4
:334 5
false336 ;
,33; <
	maxLength33= F
:33F G
$num33H K
)33K L
,33L M
}44 
)44 
.55 

PrimaryKey55 
(55 
t55 
=>55  
t55! "
.55" #
Id55# %
)55% &
.66 
Index66 
(66 
t66 
=>66 
t66 
.66 
UserName66 &
,66& '
unique66( .
:66. /
true660 4
,664 5
name666 :
:66: ;
$str66< K
)66K L
;66L M
CreateTable88 
(88 
$str99 &
,99& '
c:: 
=>:: 
new:: 
{;; 
Id<< 
=<< 
c<< 
.<< 
Int<< "
(<<" #
nullable<<# +
:<<+ ,
false<<- 2
,<<2 3
identity<<4 <
:<<< =
true<<> B
)<<B C
,<<C D
UserId== 
===  
c==! "
.==" #
String==# )
(==) *
nullable==* 2
:==2 3
false==4 9
,==9 :
	maxLength==; D
:==D E
$num==F I
)==I J
,==J K
	ClaimType>> !
=>>" #
c>>$ %
.>>% &
String>>& ,
(>>, -
)>>- .
,>>. /

ClaimValue?? "
=??# $
c??% &
.??& '
String??' -
(??- .
)??. /
,??/ 0
}@@ 
)@@ 
.AA 

PrimaryKeyAA 
(AA 
tAA 
=>AA  
tAA! "
.AA" #
IdAA# %
)AA% &
.BB 

ForeignKeyBB 
(BB 
$strBB -
,BB- .
tBB/ 0
=>BB1 3
tBB4 5
.BB5 6
UserIdBB6 <
,BB< =
cascadeDeleteBB> K
:BBK L
trueBBM Q
)BBQ R
.CC 
IndexCC 
(CC 
tCC 
=>CC 
tCC 
.CC 
UserIdCC $
)CC$ %
;CC% &
CreateTableEE 
(EE 
$strFF &
,FF& '
cGG 
=>GG 
newGG 
{HH 
LoginProviderII %
=II& '
cII( )
.II) *
StringII* 0
(II0 1
nullableII1 9
:II9 :
falseII; @
,II@ A
	maxLengthIIB K
:IIK L
$numIIM P
)IIP Q
,IIQ R
ProviderKeyJJ #
=JJ$ %
cJJ& '
.JJ' (
StringJJ( .
(JJ. /
nullableJJ/ 7
:JJ7 8
falseJJ9 >
,JJ> ?
	maxLengthJJ@ I
:JJI J
$numJJK N
)JJN O
,JJO P
UserIdKK 
=KK  
cKK! "
.KK" #
StringKK# )
(KK) *
nullableKK* 2
:KK2 3
falseKK4 9
,KK9 :
	maxLengthKK; D
:KKD E
$numKKF I
)KKI J
,KKJ K
}LL 
)LL 
.MM 

PrimaryKeyMM 
(MM 
tMM 
=>MM  
newMM! $
{MM% &
tMM' (
.MM( )
LoginProviderMM) 6
,MM6 7
tMM8 9
.MM9 :
ProviderKeyMM: E
,MME F
tMMG H
.MMH I
UserIdMMI O
}MMP Q
)MMQ R
.NN 

ForeignKeyNN 
(NN 
$strNN -
,NN- .
tNN/ 0
=>NN1 3
tNN4 5
.NN5 6
UserIdNN6 <
,NN< =
cascadeDeleteNN> K
:NNK L
trueNNM Q
)NNQ R
.OO 
IndexOO 
(OO 
tOO 
=>OO 
tOO 
.OO 
UserIdOO $
)OO$ %
;OO% &
}QQ 	
publicSS 
overrideSS 
voidSS 
DownSS !
(SS! "
)SS" #
{TT 	
DropForeignKeyUU 
(UU 
$strUU 0
,UU0 1
$strUU2 :
,UU: ;
$strUU< M
)UUM N
;UUN O
DropForeignKeyVV 
(VV 
$strVV 1
,VV1 2
$strVV3 ;
,VV; <
$strVV= N
)VVN O
;VVO P
DropForeignKeyWW 
(WW 
$strWW 1
,WW1 2
$strWW3 ;
,WW; <
$strWW= N
)WWN O
;WWO P
DropForeignKeyXX 
(XX 
$strXX 0
,XX0 1
$strXX2 :
,XX: ;
$strXX< M
)XXM N
;XXN O
	DropIndexYY 
(YY 
$strYY ,
,YY, -
newYY. 1
[YY1 2
]YY2 3
{YY4 5
$strYY6 >
}YY? @
)YY@ A
;YYA B
	DropIndexZZ 
(ZZ 
$strZZ ,
,ZZ, -
newZZ. 1
[ZZ1 2
]ZZ2 3
{ZZ4 5
$strZZ6 >
}ZZ? @
)ZZ@ A
;ZZA B
	DropIndex[[ 
([[ 
$str[[ '
,[[' (
$str[[) 8
)[[8 9
;[[9 :
	DropIndex\\ 
(\\ 
$str\\ +
,\\+ ,
new\\- 0
[\\0 1
]\\1 2
{\\3 4
$str\\5 =
}\\> ?
)\\? @
;\\@ A
	DropIndex]] 
(]] 
$str]] +
,]]+ ,
new]]- 0
[]]0 1
]]]1 2
{]]3 4
$str]]5 =
}]]> ?
)]]? @
;]]@ A
	DropIndex^^ 
(^^ 
$str^^ '
,^^' (
$str^^) 8
)^^8 9
;^^9 :
	DropTable__ 
(__ 
$str__ ,
)__, -
;__- .
	DropTable`` 
(`` 
$str`` ,
)``, -
;``- .
	DropTableaa 
(aa 
$straa '
)aa' (
;aa( )
	DropTablebb 
(bb 
$strbb +
)bb+ ,
;bb, -
	DropTablecc 
(cc 
$strcc '
)cc' (
;cc( )
}dd 	
}ee 
}ff Ά
<D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Migrations\Configuration.cs
	namespace 	
EwoQ
 
. 

Migrations 
{ 
internal 
sealed 
class 
Configuration '
:( )%
DbMigrationsConfiguration* C
<C D
EwoQD H
.H I
ModelsI O
.O P 
ApplicationDbContextP d
>d e
{		 
public

 
Configuration

 
(

 
)

 
{ 	&
AutomaticMigrationsEnabled &
=' (
false) .
;. /
} 	
	protected 
override 
void 
Seed  $
($ %
EwoQ% )
.) *
Models* 0
.0 1 
ApplicationDbContext1 E
contextF M
)M N
{ 	
} 	
} 
} ΰk
<D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Models\AccountViewModels.cs
	namespace 	
EwoQ
 
. 
Models 
{ 
public		 

class		 .
"ExternalLoginConfirmationViewModel		 3
{

 
[ 	
Required	 
] 
[ 	
Display	 
( 
Name 
= 
$str ,
), -
]- .
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
} 
public 

class &
ExternalLoginListViewModel +
{ 
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
} 
public 

class 
SendCodeViewModel "
{ 
public 
string 
SelectedProvider &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
ICollection 
< 
System !
.! "
Web" %
.% &
Mvc& )
.) *
SelectListItem* 8
>8 9
	Providers: C
{D E
getF I
;I J
setK N
;N O
}P Q
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 

RememberMe 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
public 

class 
VerifyCodeViewModel $
{ 
[ 	
Required	 
] 
public   
string   
Provider   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
["" 	
Required""	 
]"" 
[## 	
Display##	 
(## 
Name## 
=## 
$str##  
)##  !
]##! "
public$$ 
string$$ 
Code$$ 
{$$ 
get$$  
;$$  !
set$$" %
;$$% &
}$$' (
public%% 
string%% 
	ReturnUrl%% 
{%%  !
get%%" %
;%%% &
set%%' *
;%%* +
}%%, -
['' 	
Display''	 
('' 
Name'' 
='' 
$str'' 4
)''4 5
]''5 6
public(( 
bool(( 
RememberBrowser(( #
{(($ %
get((& )
;(() *
set((+ .
;((. /
}((0 1
public** 
bool** 

RememberMe** 
{**  
get**! $
;**$ %
set**& )
;**) *
}**+ ,
}++ 
public-- 

class-- 
ForgotViewModel--  
{.. 
[// 	
Required//	 
]// 
[00 	
Display00	 
(00 
Name00 
=00 
$str00 ,
)00, -
]00- .
public11 
string11 
Email11 
{11 
get11 !
;11! "
set11# &
;11& '
}11( )
}22 
public44 

class44 
LoginViewModel44 
{55 
[66 	
Required66	 
]66 
[77 	
Display77	 
(77 
Name77 
=77 
$str77 ,
)77, -
]77- .
[88 	
EmailAddress88	 
]88 
public99 
string99 
Email99 
{99 
get99 !
;99! "
set99# &
;99& '
}99( )
[;; 	
Required;;	 
];; 
[<< 	
DataType<<	 
(<< 
DataType<< 
.<< 
Password<< #
)<<# $
]<<$ %
[== 	
Display==	 
(== 
Name== 
=== 
$str== $
)==$ %
]==% &
public>> 
string>> 
Password>> 
{>>  
get>>! $
;>>$ %
set>>& )
;>>) *
}>>+ ,
[@@ 	
Display@@	 
(@@ 
Name@@ 
=@@ 
$str@@ +
)@@+ ,
]@@, -
publicAA 
boolAA 

RememberMeAA 
{AA  
getAA! $
;AA$ %
setAA& )
;AA) *
}AA+ ,
}BB 
publicDD 

classDD 
UserToApproveDD 
{EE 
[FF 	
KeyFF	 
]FF 
publicGG 
stringGG 
IdGG 
{GG 
getGG 
;GG 
setGG  #
;GG# $
}GG% &
publicHH 
stringHH 
NombresHH 
{HH 
getHH  #
;HH# $
setHH% (
;HH( )
}HH* +
publicII 
stringII 
	ApellidosII 
{II  !
getII" %
;II% &
setII' *
;II* +
}II, -
publicJJ 
stringJJ 
EmailJJ 
{JJ 
getJJ !
;JJ! "
setJJ# &
;JJ& '
}JJ( )
publicKK 
stringKK 
UsuarioKK 
{KK 
getKK  #
;KK# $
setKK% (
;KK( )
}KK* +
publicLL 
DateTimeLL 
RegistroLL !
{LL" #
getLL$ '
;LL' (
setLL) ,
;LL, -
}LL. /
publicMM 
stringMM 
IdRolMM 
{MM 
getMM !
;MM! "
setMM# &
;MM& '
}MM( )
publicNN 
stringNN 
DesRolNN 
{NN 
getNN "
;NN" #
setNN$ '
;NN' (
}NN) *
publicOO 
stringOO 
FormattedDateOO #
=>OO$ &
RegistroOO' /
.OO/ 0
ToShortDateStringOO0 A
(OOA B
)OOB C
;OOC D
}PP 
publicRR 

classRR 
UsersUIRR 
{SS 
[TT 	
KeyTT	 
]TT 
publicUU 
stringUU 
IdUU 
{UU 
getUU 
;UU 
setUU  #
;UU# $
}UU% &
publicVV 
stringVV 
NombresVV 
{VV 
getVV  #
;VV# $
setVV% (
;VV( )
}VV* +
publicWW 
stringWW 
	ApellidosWW 
{WW  !
getWW" %
;WW% &
setWW' *
;WW* +
}WW, -
publicXX 
stringXX 
NombresCommpletosXX '
{XX( )
getXX* -
;XX- .
setXX/ 2
;XX2 3
}XX4 5
publicYY 
stringYY 
EmailYY 
{YY 
getYY !
;YY! "
setYY# &
;YY& '
}YY( )
publicZZ 
stringZZ 
UsuarioZZ 
{ZZ 
getZZ  #
;ZZ# $
setZZ% (
;ZZ( )
}ZZ* +
public[[ 
string[[ 
IdRol[[ 
{[[ 
get[[ !
;[[! "
set[[# &
;[[& '
}[[( )
}\\ 
public^^ 

class^^ 
RegisterViewModel^^ "
{__ 
[`` 	
Required``	 
]`` 
[aa 	
Displayaa	 
(aa 
Nameaa 
=aa 
$straa !
)aa! "
]aa" #
publicbb 
stringbb 
Nombresbb 
{bb 
getbb  #
;bb# $
setbb% (
;bb( )
}bb* +
[dd 	
Requireddd	 
]dd 
[ee 	
Displayee	 
(ee 
Nameee 
=ee 
$stree #
)ee# $
]ee$ %
publicff 
stringff 
	Apellidosff 
{ff  !
getff" %
;ff% &
setff' *
;ff* +
}ff, -
[hh 	
Requiredhh	 
(hh 
ErrorMessagehh 
=hh  
$strhh  <
,hh< =
AllowEmptyStringshh= N
=hhO P
falsehhP U
)hhU V
]hhV W
[ii 	
Displayii	 
(ii 
Nameii 
=ii 
$strii (
)ii( )
]ii) *
publicjj 
stringjj 
Rolejj 
{jj 
getjj  
;jj  !
setjj" %
;jj% &
}jj' (
publickk 
Listkk 
<kk 
SelectListItemkk "
>kk" #
RoleListkk$ ,
{kk- .
getkk/ 2
;kk2 3
setkk4 7
;kk7 8
}kk9 :
[mm 	
Requiredmm	 
]mm 
[nn 	
EmailAddressnn	 
]nn 
[oo 	
Displayoo	 
(oo 
Nameoo 
=oo 
$stroo ,
)oo, -
]oo- .
publicpp 
stringpp 
Emailpp 
{pp 
getpp !
;pp! "
setpp# &
;pp& '
}pp( )
[rr 	
Requiredrr	 
]rr 
[ss 	
StringLengthss	 
(ss 
$numss 
,ss 
ErrorMessagess '
=ss( )
$strss* a
,ssa b
MinimumLengthssc p
=ssq r
$numsss t
)sst u
]ssu v
[tt 	
DataTypett	 
(tt 
DataTypett 
.tt 
Passwordtt #
)tt# $
]tt$ %
[uu 	
Displayuu	 
(uu 
Nameuu 
=uu 
$struu $
)uu$ %
]uu% &
publicvv 
stringvv 
Passwordvv 
{vv  
getvv! $
;vv$ %
setvv& )
;vv) *
}vv+ ,
[xx 	
DataTypexx	 
(xx 
DataTypexx 
.xx 
Passwordxx #
)xx# $
]xx$ %
[yy 	
Displayyy	 
(yy 
Nameyy 
=yy 
$stryy .
)yy. /
]yy/ 0
[zz 	
Systemzz	 
.zz 
ComponentModelzz 
.zz 
DataAnnotationszz .
.zz. /
Comparezz/ 6
(zz6 7
$strzz7 A
,zzA B
ErrorMessagezzC O
=zzP Q
$str	zzR 
)
zz 
]
zz ‘
public{{ 
string{{ 
ConfirmPassword{{ %
{{{& '
get{{( +
;{{+ ,
set{{- 0
;{{0 1
}{{2 3
}|| 
public~~ 

class~~ "
ResetPasswordViewModel~~ '
{ 
[
€€ 	
Required
€€	 
]
€€ 
[
 	
EmailAddress
	 
]
 
[
‚‚ 	
Display
‚‚	 
(
‚‚ 
Name
‚‚ 
=
‚‚ 
$str
‚‚ ,
)
‚‚, -
]
‚‚- .
public
ƒƒ 
string
ƒƒ 
Email
ƒƒ 
{
ƒƒ 
get
ƒƒ !
;
ƒƒ! "
set
ƒƒ# &
;
ƒƒ& '
}
ƒƒ( )
[
…… 	
Required
……	 
]
…… 
[
†† 	
StringLength
††	 
(
†† 
$num
†† 
,
†† 
ErrorMessage
†† '
=
††( )
$str
††* a
,
††a b
MinimumLength
††c p
=
††q r
$num
††s t
)
††t u
]
††u v
[
‡‡ 	
DataType
‡‡	 
(
‡‡ 
DataType
‡‡ 
.
‡‡ 
Password
‡‡ #
)
‡‡# $
]
‡‡$ %
[
 	
Display
	 
(
 
Name
 
=
 
$str
 $
)
$ %
]
% &
public
‰‰ 
string
‰‰ 
Password
‰‰ 
{
‰‰  
get
‰‰! $
;
‰‰$ %
set
‰‰& )
;
‰‰) *
}
‰‰+ ,
[
‹‹ 	
DataType
‹‹	 
(
‹‹ 
DataType
‹‹ 
.
‹‹ 
Password
‹‹ #
)
‹‹# $
]
‹‹$ %
[
 	
Display
	 
(
 
Name
 
=
 
$str
 .
)
. /
]
/ 0
[
 	
System
	 
.
 
ComponentModel
 
.
 
DataAnnotations
 .
.
. /
Compare
/ 6
(
6 7
$str
7 A
,
A B
ErrorMessage
C O
=
P Q
$strR 
) 
] ‘
public
 
string
 
ConfirmPassword
 %
{
& '
get
( +
;
+ ,
set
- 0
;
0 1
}
2 3
public
 
string
 
Code
 
{
 
get
  
;
  !
set
" %
;
% &
}
' (
}
‘‘ 
public
““ 

class
““ %
ForgotPasswordViewModel
““ (
{
”” 
[
•• 	
Required
••	 
]
•• 
[
–– 	
EmailAddress
––	 
]
–– 
[
—— 	
Display
——	 
(
—— 
Name
—— 
=
—— 
$str
—— ,
)
——, -
]
——- .
public
 
string
 
Email
 
{
 
get
 !
;
! "
set
# &
;
& '
}
( )
}
™™ 
} ¦

;D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Models\CustomInmActions.cs
	namespace 	
EwoQ
 
. 
Models 
{ 
public 

class 
CustomInmActions !
{		 
public 
long 
id 
{ 
get 
; 
set !
;! "
}# $
public 
Nullable 
< 
long 
> 

codigo_ewo (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
accion 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
codigo_responsable (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
fecha_compromiso &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
Nullable 
< 
int 
> !
evidencia_efectividad 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
} 
} ²
9D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Models\DonutViewModel.cs
	namespace 	
EwoQ
 
. 
Models 
{ 
public 

class 
DonutViewModel 
{		 
public

 
string

 
label

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
string 
value 
{ 
get !
;! "
set# &
;& '
}( )
} 
} Π
;D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Models\Preguntas4MModel.cs
	namespace 	
EwoQ
 
. 
Models 
{ 
public 

class 
Preguntas4MModel !
{		 
public

 
int

 
id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
string 
descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
option 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ™Ο
ED:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Models\ReporteIncidentesViewModel.cs
	namespace

 	
EwoQ


 
.

 
Models

 
{ 
public 

class &
ReporteIncidentesViewModel +
{ 
public 
string 
Consecutivo !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Autor 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	AutorDesc 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
Fecha 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
Estado 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 

EstadoDesc  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
FormattedDate #
=>$ &
Fecha' ,
., -
ToShortDateString- >
(> ?
)? @
;@ A
[ 	
DisplayName	 
( 
$str <
)< =
]= >
public 
string !
FchApertInvestigacion +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public   
TimeSpan   "
HrApertInvestigacionTS   .
{  / 0
get  1 4
;  4 5
set  6 9
;  9 :
}  ; <
["" 	
DisplayName""	 
("" 
$str"" &
)""& '
]""' (
public## 
string## 
HrEvento## 
{##  
get##! $
;##$ %
set##& )
;##) *
}##+ ,
public$$ 
TimeSpan$$ 

HrEventoTS$$ "
{$$# $
get$$% (
;$$( )
set$$* -
;$$- .
}$$/ 0
[&& 	
DisplayName&&	 
(&& 
$str&& *
)&&* +
]&&+ ,
public'' 
string'' #
FchEntregaInvestigacion'' -
{''. /
get''0 3
;''3 4
set''5 8
;''8 9
}'': ;
[)) 	
DisplayName))	 
()) 
$str)) )
)))) *
]))* +
public** 
string** "
HrEntregaInvestigacion** ,
{**- .
get**/ 2
;**2 3
set**4 7
;**7 8
}**9 :
public++ 
TimeSpan++ $
HrEntregaInvestigacionTS++ 0
{++1 2
get++3 6
;++6 7
set++8 ;
;++; <
}++= >
[-- 	
Display--	 
(-- 
Name-- 
=-- 
$str-- >
)--> ?
]--? @
public.. 
long.. 
TipoIncidente.. !
{.." #
get..$ '
;..' (
set..) ,
;.., -
}... /
public// 
string// 
TipoIncidenteDesc// '
{//( )
get//* -
;//- .
set/// 2
;//2 3
}//4 5
public00 

SelectList00 
TipoIncidenteList00 +
{00, -
get00. 1
;001 2
set003 6
;006 7
}008 9
[33 	
DisplayName33	 
(33 
$str33 !
)33! "
]33" #
public44 
string44 

Recurrente44  
{44! "
get44# &
;44& '
set44( +
;44+ ,
}44- .
public55 
bool55 
RecurrenteB55 
{55  !
get55" %
;55% &
set55' *
;55* +
}55, -
[88 	
Display88	 
(88 
Name88 
=88 
$str88  
)88  !
]88! "
public99 
long99 
IdPlanta99 
{99 
get99 "
;99" #
set99$ '
;99' (
}99) *
public:: 
string:: 

PlantaDesc::  
{::! "
get::# &
;::& '
set::( +
;::+ ,
}::- .
public;; 

SelectList;; 
PlantasList;; %
{;;& '
get;;( +
;;;+ ,
set;;- 0
;;;0 1
};;2 3
[>> 	
Display>>	 
(>> 
Name>> 
=>> 
$str>> 6
)>>6 7
]>>7 8
public?? 
long?? 
IdArea?? 
{?? 
get??  
;??  !
set??" %
;??% &
}??' (
public@@ 
string@@ 
AreaDesc@@ 
{@@  
get@@! $
;@@$ %
set@@& )
;@@) *
}@@+ ,
publicAA 

SelectListAA 
	AreasListAA #
{AA$ %
getAA& )
;AA) *
setAA+ .
;AA. /
}AA0 1
[DD 	
DisplayDD	 
(DD 
NameDD 
=DD 
$strDD 
)DD  
]DD  !
publicEE 
longEE 
IdLineaEE 
{EE 
getEE !
;EE! "
setEE# &
;EE& '
}EE( )
publicFF 
stringFF 
	LineaDescFF 
{FF  !
getFF" %
;FF% &
setFF' *
;FF* +
}FF, -
publicGG 

SelectListGG 

LineasListGG $
{GG% &
getGG' *
;GG* +
setGG, /
;GG/ 0
}GG1 2
[II 	
DisplayII	 
(II 
NameII 
=II 
$strII +
)II+ ,
]II, -
publicJJ 
stringJJ 
EtapaProcesoJJ "
{JJ# $
getJJ% (
;JJ( )
setJJ* -
;JJ- .
}JJ/ 0
[LL 	
DisplayLL	 
(LL 
NameLL 
=LL 
$strLL ;
)LL; <
]LL< =
publicMM 
stringMM 
	IdCoorSupMM 
{MM  !
getMM" %
;MM% &
setMM' *
;MM* +
}MM, -
[PP 	
DisplayPP	 
(PP 
NamePP 
=PP 
$strPP .
)PP. /
]PP/ 0
publicQQ 
stringQQ 

IdRespAreaQQ  
{QQ! "
getQQ# &
;QQ& '
setQQ( +
;QQ+ ,
}QQ- .
[SS 	
DisplaySS	 
(SS 
NameSS 
=SS 
$strSS .
)SS. /
]SS/ 0
publicTT 
stringTT 
IdOpeResTT 
{TT  
getTT! $
;TT$ %
setTT& )
;TT) *
}TT+ ,
[VV 	
DisplayVV	 
(VV 
NameVV 
=VV 
$strVV B
)VVB C
]VVC D
publicWW 
stringWW 
IdLidInvWW 
{WW  
getWW! $
;WW$ %
setWW& )
;WW) *
}WW+ ,
publicYY 

SelectListYY 
AdminUsersListYY (
{YY) *
getYY+ .
;YY. /
setYY0 3
;YY3 4
}YY5 6
publicZZ 

SelectListZZ 
OperatingUsersListZZ ,
{ZZ- .
getZZ/ 2
;ZZ2 3
setZZ4 7
;ZZ7 8
}ZZ9 :
[\\ 	
Display\\	 
(\\ 
Name\\ 
=\\ 
$str\\ +
)\\+ ,
]\\, -
public]] 
string]] 
EquipoTrabajo]] #
{]]$ %
get]]& )
;]]) *
set]]+ .
;]]. /
}]]0 1
[cc 	
Displaycc	 
(cc 
Namecc 
=cc 
$strcc 3
)cc3 4
]cc4 5
publicdd 
stringdd 
NombreProductodd $
{dd% &
getdd' *
;dd* +
setdd, /
;dd/ 0
}dd1 2
[ff 	
Displayff	 
(ff 
Nameff 
=ff 
$strff '
)ff' (
]ff( )
publicgg 
stringgg 
	CodigoSAPgg 
{gg  !
getgg" %
;gg% &
setgg' *
;gg* +
}gg, -
[ii 	
Displayii	 
(ii 
Nameii 
=ii 
$strii 
)ii 
]ii  
publicjj 
stringjj 
Lotejj 
{jj 
getjj  
;jj  !
setjj" %
;jj% &
}jj' (
[ll 	
Displayll	 
(ll 
Namell 
=ll 
$strll #
)ll# $
]ll$ %
publicmm 
intmm 
	Toneladasmm 
{mm 
getmm "
;mm" #
setmm$ '
;mm' (
}mm) *
[oo 	
Displayoo	 
(oo 
Nameoo 
=oo 
$stroo "
)oo" #
]oo# $
publicpp 
intpp 
NumCajaspp 
{pp 
getpp !
;pp! "
setpp# &
;pp& '
}pp( )
[rr 	
Displayrr	 
(rr 
Namerr 
=rr 
$strrr #
)rr# $
]rr$ %
publicss 
stringss 
	NumPalletss 
{ss  !
getss" %
;ss% &
setss' *
;ss* +
}ss, -
[uu 	
Displayuu	 
(uu 
Nameuu 
=uu 
$struu "
)uu" #
]uu# $
publicvv 
intvv 
Unidadesvv 
{vv 
getvv !
;vv! "
setvv# &
;vv& '
}vv( )
[xx 	
Displayxx	 
(xx 
Namexx 
=xx 
$strxx *
)xx* +
]xx+ ,
publicyy 
stringyy 
TamanoFormatoyy #
{yy$ %
getyy& )
;yy) *
setyy+ .
;yy. /
}yy0 1
[{{ 	
Display{{	 
({{ 
Name{{ 
={{ 
$str{{ /
){{/ 0
]{{0 1
public|| 
double|| 
CostoIncidente|| $
{||% &
get||' *
;||* +
set||, /
;||/ 0
}||1 2
[~~ 	
Display~~	 
(~~ 
Name~~ 
=~~ 
$str~~ /
)~~/ 0
]~~0 1
public 
double 
CostoIncidenteEuros )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
[
 	
Display
	 
(
 
Name
 
=
 
$str
 3
)
3 4
]
4 5
public
‚‚ 
int
‚‚ 
TiempoLineaParada
‚‚ $
{
‚‚% &
get
‚‚' *
;
‚‚* +
set
‚‚, /
;
‚‚/ 0
}
‚‚1 2
[
„„ 	
Display
„„	 
(
„„ 
Name
„„ 
=
„„ 
$str
„„ :
)
„„: ;
]
„„; <
public
…… 
string
…… !
DescripcionProblema
…… )
{
……* +
get
……, /
;
……/ 0
set
……1 4
;
……4 5
}
……6 7
[
‡‡ 	
Display
‡‡	 
(
‡‡ 
Name
‡‡ 
=
‡‡ 
$str
‡‡ M
)
‡‡M N
]
‡‡N O
public
 
	ArrayList
 
AccionesList
 %
{
& '
get
( +
;
+ ,
set
- 0
;
0 1
}
2 3
[
 	
Display
	 
(
 
Name
 
=
 
$str
 8
)
8 9
]
9 :
public
‹‹ 
	ArrayList
‹‹ 
DisposicionesList
‹‹ *
{
‹‹+ ,
get
‹‹- 0
;
‹‹0 1
set
‹‹2 5
;
‹‹5 6
}
‹‹7 8
public
 
string
 
Cmd
 
{
 
get
 
;
  
set
! $
;
$ %
}
& '
[
 	
Display
	 
(
 
Name
 
=
 
$str
 7
)
7 8
]
8 9
public
 
string
 
ArbPerd1
 
{
  
get
! $
;
$ %
set
& )
;
) *
}
+ ,
public
‘‘ 
string
‘‘ 
ArbPerd2
‘‘ 
{
‘‘  
get
‘‘! $
;
‘‘$ %
set
‘‘& )
;
‘‘) *
}
‘‘+ ,
public
’’ 
string
’’ 
ArbPerd3
’’ 
{
’’  
get
’’! $
;
’’$ %
set
’’& )
;
’’) *
}
’’+ ,
public
““ 
string
““ 
ArbPerd4
““ 
{
““  
get
““! $
;
““$ %
set
““& )
;
““) *
}
““+ ,
public
”” 
string
”” 
ArbPerdO
”” 
{
””  
get
””! $
;
””$ %
set
””& )
;
””) *
}
””+ ,
[
–– 	
Display
––	 
(
–– 
Name
–– 
=
–– 
$str
–– $
)
––$ %
]
––% &
public
—— 
int
—— 

NumAirsweb
—— 
{
—— 
get
——  #
;
——# $
set
——% (
;
——( )
}
——* +
[
™™ 	
Display
™™	 
(
™™ 
Name
™™ 
=
™™ 
$str
™™ 0
)
™™0 1
]
™™1 2
public
 
int
 
TiempoAirsWeb
  
{
! "
get
# &
;
& '
set
( +
;
+ ,
}
- .
[
 	
Display
	 
(
 
Name
 
=
 
$str
 1
)
1 2
]
2 3
public
 
int
 
TiempoInpeccion
 "
{
# $
get
% (
;
( )
set
* -
;
- .
}
/ 0
[
   	
Display
  	 
(
   
Name
   
=
   
$str
   8
)
  8 9
]
  9 :
public
΅΅ 
long
΅΅ 
IdDisposicionF
΅΅ "
{
΅΅# $
get
΅΅% (
;
΅΅( )
set
΅΅* -
;
΅΅- .
}
΅΅/ 0
public
ΆΆ 
string
ΆΆ 
DisposicionFDesc
ΆΆ &
{
ΆΆ' (
get
ΆΆ) ,
;
ΆΆ, -
set
ΆΆ. 1
;
ΆΆ1 2
}
ΆΆ3 4
public
££ 

SelectList
££ 
DisposicionFList
££ *
{
££+ ,
get
££- 0
;
££0 1
set
££2 5
;
££5 6
}
££7 8
[
¥¥ 	
Display
¥¥	 
(
¥¥ 
Name
¥¥ 
=
¥¥ 
$str
¥¥ .
)
¥¥. /
]
¥¥/ 0
public
¦¦ 
int
¦¦ 
DFToneladas
¦¦ 
{
¦¦  
get
¦¦! $
;
¦¦$ %
set
¦¦& )
;
¦¦) *
}
¦¦+ ,
public
ªª 
string
ªª 
	GembaDesc
ªª 
{
ªª  !
get
ªª" %
;
ªª% &
set
ªª' *
;
ªª* +
}
ªª, -
public
«« 
string
«« 
GembutsuDesc
«« "
{
««# $
get
««% (
;
««( )
set
««* -
;
««- .
}
««/ 0
public
¬¬ 
string
¬¬ 
GenjitsuDesc
¬¬ "
{
¬¬# $
get
¬¬% (
;
¬¬( )
set
¬¬* -
;
¬¬- .
}
¬¬/ 0
public
­­ 
string
­­ 
	GenriDesc
­­ 
{
­­  !
get
­­" %
;
­­% &
set
­­' *
;
­­* +
}
­­, -
public
®® 
string
®® 
GensokuDesc
®® !
{
®®" #
get
®®$ '
;
®®' (
set
®®) ,
;
®®, -
}
®®. /
public
°° 
string
°° 
GembaOk
°° 
{
°° 
get
°°  #
;
°°# $
set
°°% (
;
°°( )
}
°°* +
public
±± 
string
±± 

GembutsuOk
±±  
{
±±! "
get
±±# &
;
±±& '
set
±±( +
;
±±+ ,
}
±±- .
public
²² 
string
²² 

GenjitsuOk
²²  
{
²²! "
get
²²# &
;
²²& '
set
²²( +
;
²²+ ,
}
²²- .
public
΄΄ 
string
΄΄ 
PathImageGs
΄΄ !
{
΄΄" #
get
΄΄$ '
;
΄΄' (
set
΄΄) ,
;
΄΄, -
}
΄΄. /
public
µµ 
string
µµ 
	DescImgGs
µµ 
{
µµ  !
get
µµ" %
;
µµ% &
set
µµ' *
;
µµ* +
}
µµ, -
public
¶¶  
HttpPostedFileBase
¶¶ !
ImageGs
¶¶" )
{
¶¶* +
get
¶¶, /
;
¶¶/ 0
set
¶¶1 4
;
¶¶4 5
}
¶¶6 7
public
ΈΈ 
string
ΈΈ 
QueDesc
ΈΈ 
{
ΈΈ 
get
ΈΈ  #
;
ΈΈ# $
set
ΈΈ% (
;
ΈΈ( )
}
ΈΈ* +
public
ΉΉ 
string
ΉΉ 
	DondeDesc
ΉΉ 
{
ΉΉ  !
get
ΉΉ" %
;
ΉΉ% &
set
ΉΉ' *
;
ΉΉ* +
}
ΉΉ, -
public
ΊΊ 
string
ΊΊ 

CuandoDesc
ΊΊ  
{
ΊΊ! "
get
ΊΊ# &
;
ΊΊ& '
set
ΊΊ( +
;
ΊΊ+ ,
}
ΊΊ- .
public
»» 
string
»» 
	QuienDesc
»» 
{
»»  !
get
»»" %
;
»»% &
set
»»' *
;
»»* +
}
»», -
public
ΌΌ 
string
ΌΌ 
CualDesc
ΌΌ 
{
ΌΌ  
get
ΌΌ! $
;
ΌΌ$ %
set
ΌΌ& )
;
ΌΌ) *
}
ΌΌ+ ,
public
½½ 
string
½½ 
ComoDesc
½½ 
{
½½  
get
½½! $
;
½½$ %
set
½½& )
;
½½) *
}
½½+ ,
public
ΎΎ 
string
ΎΎ 
FenomenoDesc
ΎΎ "
{
ΎΎ# $
get
ΎΎ% (
;
ΎΎ( )
set
ΎΎ* -
;
ΎΎ- .
}
ΎΎ/ 0
public
ΏΏ 
string
ΏΏ 
FenomenoDescT
ΏΏ #
{
ΏΏ$ %
get
ΏΏ& )
;
ΏΏ) *
set
ΏΏ+ .
;
ΏΏ. /
}
ΏΏ0 1
public
ΑΑ 
string
ΑΑ 
PathImageFen
ΑΑ "
{
ΑΑ# $
get
ΑΑ% (
;
ΑΑ( )
set
ΑΑ* -
;
ΑΑ- .
}
ΑΑ/ 0
public
ΒΒ 
string
ΒΒ 

DescImgFen
ΒΒ  
{
ΒΒ! "
get
ΒΒ# &
;
ΒΒ& '
set
ΒΒ( +
;
ΒΒ+ ,
}
ΒΒ- .
public
ΓΓ  
HttpPostedFileBase
ΓΓ !
ImageFen
ΓΓ" *
{
ΓΓ+ ,
get
ΓΓ- 0
;
ΓΓ0 1
set
ΓΓ2 5
;
ΓΓ5 6
}
ΓΓ7 8
public
ΕΕ 
string
ΕΕ 

ManoObra4M
ΕΕ  
{
ΕΕ! "
get
ΕΕ# &
;
ΕΕ& '
set
ΕΕ( +
;
ΕΕ+ ,
}
ΕΕ- .
=
ΕΕ/ 0
$str
ΕΕ1 6
;
ΕΕ6 7
public
ΖΖ 
string
ΖΖ 

Material4M
ΖΖ  
{
ΖΖ! "
get
ΖΖ# &
;
ΖΖ& '
set
ΖΖ( +
;
ΖΖ+ ,
}
ΖΖ- .
=
ΖΖ/ 0
$str
ΖΖ1 6
;
ΖΖ6 7
public
ΗΗ 
string
ΗΗ 
	Maquina4M
ΗΗ 
{
ΗΗ  !
get
ΗΗ" %
;
ΗΗ% &
set
ΗΗ' *
;
ΗΗ* +
}
ΗΗ, -
=
ΗΗ. /
$str
ΗΗ0 5
;
ΗΗ5 6
public
ΘΘ 
string
ΘΘ 
Metodo4M
ΘΘ 
{
ΘΘ  
get
ΘΘ! $
;
ΘΘ$ %
set
ΘΘ& )
;
ΘΘ) *
}
ΘΘ+ ,
=
ΘΘ- .
$str
ΘΘ/ 4
;
ΘΘ4 5
public
ΚΚ 
string
ΚΚ 
ManoObra4MTotal
ΚΚ %
{
ΚΚ& '
get
ΚΚ( +
;
ΚΚ+ ,
set
ΚΚ- 0
;
ΚΚ0 1
}
ΚΚ2 3
=
ΚΚ4 5
$str
ΚΚ6 ;
;
ΚΚ; <
public
ΛΛ 
string
ΛΛ 
Material4MTotal
ΛΛ %
{
ΛΛ& '
get
ΛΛ( +
;
ΛΛ+ ,
set
ΛΛ- 0
;
ΛΛ0 1
}
ΛΛ2 3
=
ΛΛ4 5
$str
ΛΛ6 ;
;
ΛΛ; <
public
ΜΜ 
string
ΜΜ 
Maquina4MTotal
ΜΜ $
{
ΜΜ% &
get
ΜΜ' *
;
ΜΜ* +
set
ΜΜ, /
;
ΜΜ/ 0
}
ΜΜ1 2
=
ΜΜ3 4
$str
ΜΜ5 :
;
ΜΜ: ;
public
ΝΝ 
string
ΝΝ 
Metodo4MTotal
ΝΝ #
{
ΝΝ$ %
get
ΝΝ& )
;
ΝΝ) *
set
ΝΝ+ .
;
ΝΝ. /
}
ΝΝ0 1
=
ΝΝ2 3
$str
ΝΝ4 9
;
ΝΝ9 :
public
ΠΠ 
string
ΠΠ 
ManoObra4MDesc
ΠΠ $
{
ΠΠ% &
get
ΠΠ' *
;
ΠΠ* +
set
ΠΠ, /
;
ΠΠ/ 0
}
ΠΠ1 2
public
ΡΡ 
string
ΡΡ 
Material4MDesc
ΡΡ $
{
ΡΡ% &
get
ΡΡ' *
;
ΡΡ* +
set
ΡΡ, /
;
ΡΡ/ 0
}
ΡΡ1 2
public
ÒÒ 
string
ÒÒ 
Maquina4MDesc
ÒÒ #
{
ÒÒ$ %
get
ÒÒ& )
;
ÒÒ) *
set
ÒÒ+ .
;
ÒÒ. /
}
ÒÒ0 1
public
ΣΣ 
string
ΣΣ 
Metodo4MDesc
ΣΣ "
{
ΣΣ# $
get
ΣΣ% (
;
ΣΣ( )
set
ΣΣ* -
;
ΣΣ- .
}
ΣΣ/ 0
public
ΥΥ 
string
ΥΥ 
IdTopFFZ
ΥΥ 
{
ΥΥ  
get
ΥΥ! $
;
ΥΥ$ %
set
ΥΥ& )
;
ΥΥ) *
}
ΥΥ+ ,
public
ΦΦ 
string
ΦΦ 
GrpTFFZ
ΦΦ 
{
ΦΦ 
get
ΦΦ  #
;
ΦΦ# $
set
ΦΦ% (
;
ΦΦ( )
}
ΦΦ* +
public
ΧΧ 
List
ΧΧ 
<
ΧΧ 

tipos_data
ΧΧ 
>
ΧΧ  
TopFiveForZeroList
ΧΧ  2
{
ΧΧ3 4
get
ΧΧ5 8
;
ΧΧ8 9
set
ΧΧ: =
;
ΧΧ= >
}
ΧΧ? @
[
ΫΫ 	
Display
ΫΫ	 
(
ΫΫ 
Name
ΫΫ 
=
ΫΫ 
$str
ΫΫ 4
)
ΫΫ4 5
]
ΫΫ5 6
public
άά 
string
άά %
ComentariosResoluciones
άά -
{
άά. /
get
άά0 3
;
άά3 4
set
άά5 8
;
άά8 9
}
άά: ;
[
ήή 	
Display
ήή	 
(
ήή 
Name
ήή 
=
ήή 
$str
ήή 4
)
ήή4 5
]
ήή5 6
public
ίί 
string
ίί 

IdCoorProd
ίί  
{
ίί! "
get
ίί# &
;
ίί& '
set
ίί( +
;
ίί+ ,
}
ίί- .
[
αα 	
Display
αα	 
(
αα 
Name
αα 
=
αα 
$str
αα 2
)
αα2 3
]
αα3 4
public
ββ 
string
ββ 
	IdGerProd
ββ 
{
ββ  !
get
ββ" %
;
ββ% &
set
ββ' *
;
ββ* +
}
ββ, -
[
δδ 	
Display
δδ	 
(
δδ 
Name
δδ 
=
δδ 
$str
δδ 1
)
δδ1 2
]
δδ2 3
public
εε 
string
εε 
IdJefCal
εε 
{
εε  
get
εε! $
;
εε$ %
set
εε& )
;
εε) *
}
εε+ ,
[
ηη 	
Display
ηη	 
(
ηη 
Name
ηη 
=
ηη 
$str
ηη .
)
ηη. /
]
ηη/ 0
public
θθ 
string
θθ 
IdGerCal
θθ 
{
θθ  
get
θθ! $
;
θθ$ %
set
θθ& )
;
θθ) *
}
θθ+ ,
[
κκ 	
DisplayName
κκ	 
(
κκ 
$str
κκ 7
)
κκ7 8
]
κκ8 9
public
λλ 
string
λλ 
	FchCierre
λλ 
{
λλ  !
get
λλ" %
;
λλ% &
set
λλ' *
;
λλ* +
}
λλ, -
public
οο 
string
οο 
	BeforePct
οο 
{
οο  !
get
οο" %
;
οο% &
set
οο' *
;
οο* +
}
οο, -
public
ππ 
string
ππ 
AfterPct
ππ 
{
ππ  
get
ππ! $
;
ππ$ %
set
ππ& )
;
ππ) *
}
ππ+ ,
public
ρρ 
string
ρρ 

ListAccInm
ρρ  
{
ρρ! "
get
ρρ# &
;
ρρ& '
set
ρρ( +
;
ρρ+ ,
}
ρρ- .
public
ςς 
string
ςς 
ListGenj
ςς 
{
ςς  
get
ςς! $
;
ςς$ %
set
ςς& )
;
ςς) *
}
ςς+ ,
public
σσ 
string
σσ 
ListGenr
σσ 
{
σσ  
get
σσ! $
;
σσ$ %
set
σσ& )
;
σσ) *
}
σσ+ ,
public
ττ 
string
ττ 
ListGens
ττ 
{
ττ  
get
ττ! $
;
ττ$ %
set
ττ& )
;
ττ) *
}
ττ+ ,
public
υυ 
string
υυ 
ListPorq
υυ 
{
υυ  
get
υυ! $
;
υυ$ %
set
υυ& )
;
υυ) *
}
υυ+ ,
public
φφ 
string
φφ 
ListBefo
φφ 
{
φφ  
get
φφ! $
;
φφ$ %
set
φφ& )
;
φφ) *
}
φφ+ ,
public
χχ 
string
χχ 
ListAfte
χχ 
{
χχ  
get
χχ! $
;
χχ$ %
set
χχ& )
;
χχ) *
}
χχ+ ,
public
ψψ 
string
ψψ 
ListPlan
ψψ 
{
ψψ  
get
ψψ! $
;
ψψ$ %
set
ψψ& )
;
ψψ) *
}
ψψ+ ,
public
ωω 
string
ωω 
List4M
ωω 
{
ωω 
get
ωω "
;
ωω" #
set
ωω$ '
;
ωω' (
}
ωω) *
public
ϊϊ 
int
ϊϊ 
MaxMId
ϊϊ 
{
ϊϊ 
get
ϊϊ 
;
ϊϊ  
set
ϊϊ! $
;
ϊϊ$ %
}
ϊϊ& '
}
ύύ 
}ώώ Γ
9D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Models\IdentityModels.cs
	namespace		 	
EwoQ		
 
.		 
Models		 
{

 
public 

class 
ApplicationUser  
:! "
IdentityUser# /
{ 
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
) 
] 
public 
string 
Nombres 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
) 
] 
public 
string 
	Apellidos 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
public 
string 
IdRol 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 

Registrado "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
SingUrl 
{ 
get  #
;# $
set% (
;( )
}* +
public 
async 
Task 
< 
ClaimsIdentity (
>( )%
GenerateUserIdentityAsync* C
(C D
UserManagerD O
<O P
ApplicationUserP _
>_ `
managera h
)h i
{ 	
var 
userIdentity 
= 
await $
manager% ,
., -
CreateIdentityAsync- @
(@ A
thisA E
,E F&
DefaultAuthenticationTypesG a
.a b
ApplicationCookieb s
)s t
;t u
return 
userIdentity 
;  
} 	
}   
public"" 

class""  
ApplicationDbContext"" %
:""& '
IdentityDbContext""( 9
<""9 :
ApplicationUser"": I
>""I J
{## 
public$$  
ApplicationDbContext$$ #
($$# $
)$$$ %
:%% 
base%% 
(%% 
$str%% &
,%%& '
throwIfV1Schema%%( 7
:%%7 8
false%%9 >
)%%> ?
{&& 	
}'' 	
public)) 
static))  
ApplicationDbContext)) *
Create))+ 1
())1 2
)))2 3
{** 	
return++ 
new++  
ApplicationDbContext++ +
(+++ ,
)++, -
;++- .
},, 	
}-- 
}.. •
>D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Models\IndexAdminViewModel.cs
	namespace 	
EwoQ
 
. 
Models 
{ 
public 

class 
IndexAdminViewModel $
{		 
public

 
int

  
IncidentesReportados

 '
{

( )
get

* -
;

- .
set

/ 2
;

2 3
}

4 5
public 
int 
IncidentespProceso %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
int 
IncidentesCerrados %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
int 
UsuariosRegistrados &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
int 
TiempoLinParada "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
UnidadesAfectadas $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
decimal 
CostosTotales $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
Counter 
{ 
get  
;  !
set" %
;% &
}' (
} 
} Δ9
;D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Models\ManageViewModels.cs
	namespace 	
EwoQ
 
. 
Models 
{ 
public 

class 
IndexViewModel 
{		 
public

 
bool

 
HasSign

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
bool 
HasPassword 
{  !
get" %
;% &
set' *
;* +
}, -
public 
IList 
< 
UserLoginInfo "
>" #
Logins$ *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
	TwoFactor 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
BrowserRemembered %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
public 

class !
ManageLoginsViewModel &
{ 
public 
IList 
< 
UserLoginInfo "
>" #
CurrentLogins$ 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
IList 
< %
AuthenticationDescription .
>. /
OtherLogins0 ;
{< =
get> A
;A B
setC F
;F G
}H I
} 
public 

class 
FactorViewModel  
{ 
public 
string 
Purpose 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class  
SetPasswordViewModel %
{ 
[ 	
Required	 
] 
[   	
StringLength  	 
(   
$num   
,   
ErrorMessage   '
=  ( )
$str  * _
,  _ `
MinimumLength  a n
=  o p
$num  q r
)  r s
]  s t
[!! 	
DataType!!	 
(!! 
DataType!! 
.!! 
Password!! #
)!!# $
]!!$ %
["" 	
Display""	 
("" 
Name"" 
="" 
$str"" *
)""* +
]""+ ,
public## 
string## 
NewPassword## !
{##" #
get##$ '
;##' (
set##) ,
;##, -
}##. /
[%% 	
DataType%%	 
(%% 
DataType%% 
.%% 
Password%% #
)%%# $
]%%$ %
[&& 	
Display&&	 
(&& 
Name&& 
=&& 
$str&& 6
)&&6 7
]&&7 8
['' 	
Compare''	 
('' 
$str'' 
,'' 
ErrorMessage''  ,
=''- .
$str''/ r
)''r s
]''s t
public(( 
string(( 
ConfirmPassword(( %
{((& '
get((( +
;((+ ,
set((- 0
;((0 1
}((2 3
})) 
public++ 

class++ #
ChangePasswordViewModel++ (
{,, 
[-- 	
Required--	 
]-- 
[.. 	
DataType..	 
(.. 
DataType.. 
... 
Password.. #
)..# $
]..$ %
[// 	
Display//	 
(// 
Name// 
=// 
$str// +
)//+ ,
]//, -
public00 
string00 
OldPassword00 !
{00" #
get00$ '
;00' (
set00) ,
;00, -
}00. /
[22 	
Required22	 
]22 
[33 	
StringLength33	 
(33 
$num33 
,33 
ErrorMessage33 '
=33( )
$str33* _
,33_ `
MinimumLength33a n
=33o p
$num33q r
)33r s
]33s t
[44 	
DataType44	 
(44 
DataType44 
.44 
Password44 #
)44# $
]44$ %
[55 	
Display55	 
(55 
Name55 
=55 
$str55 *
)55* +
]55+ ,
public66 
string66 
NewPassword66 !
{66" #
get66$ '
;66' (
set66) ,
;66, -
}66. /
[88 	
DataType88	 
(88 
DataType88 
.88 
Password88 #
)88# $
]88$ %
[99 	
Display99	 
(99 
Name99 
=99 
$str99 6
)996 7
]997 8
[:: 	
Compare::	 
(:: 
$str:: 
,:: 
ErrorMessage::  ,
=::- .
$str::/ r
)::r s
]::s t
public;; 
string;; 
ConfirmPassword;; %
{;;& '
get;;( +
;;;+ ,
set;;- 0
;;;0 1
};;2 3
}<< 
public>> 

class>> #
AddPhoneNumberViewModel>> (
{?? 
[@@ 	
Required@@	 
]@@ 
[AA 	
PhoneAA	 
]AA 
[BB 	
DisplayBB	 
(BB 
NameBB 
=BB 
$strBB ,
)BB, -
]BB- .
publicCC 
stringCC 
NumberCC 
{CC 
getCC "
;CC" #
setCC$ '
;CC' (
}CC) *
}DD 
publicFF 

classFF &
VerifyPhoneNumberViewModelFF +
{GG 
[HH 	
RequiredHH	 
]HH 
[II 	
DisplayII	 
(II 
NameII 
=II 
$strII  
)II  !
]II! "
publicJJ 
stringJJ 
CodeJJ 
{JJ 
getJJ  
;JJ  !
setJJ" %
;JJ% &
}JJ' (
[LL 	
RequiredLL	 
]LL 
[MM 	
PhoneMM	 
]MM 
[NN 	
DisplayNN	 
(NN 
NameNN 
=NN 
$strNN ,
)NN, -
]NN- .
publicOO 
stringOO 
PhoneNumberOO !
{OO" #
getOO$ '
;OO' (
setOO) ,
;OO, -
}OO. /
}PP 
publicRR 

classRR '
ConfigureTwoFactorViewModelRR ,
{SS 
publicTT 
stringTT 
SelectedProviderTT &
{TT' (
getTT) ,
;TT, -
setTT. 1
;TT1 2
}TT3 4
publicUU 
ICollectionUU 
<UU 
SystemUU !
.UU! "
WebUU" %
.UU% &
MvcUU& )
.UU) *
SelectListItemUU* 8
>UU8 9
	ProvidersUU: C
{UUD E
getUUF I
;UUI J
setUUK N
;UUN O
}UUP Q
}VV 
}WW Ρ
:D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Models\RequestResponse.cs
	namespace 	
EwoQ
 
. 
Models 
{ 
public 

class 
RequestResponse  
{		 
public

 
int

 
Codigo

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
public 
object 
	Resultado 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ύ
8D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Models\ZeroViewModel.cs
	namespace 	
EwoQ
 
. 
Models 
{ 
public		 

class		 
ZeroViewModel		 
{

 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
long 
IdTipoM 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	DescTipoM 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Pregunta 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
List 
< 
ZeroResponses !
>! "
	Responses# ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
public 

class 
ZeroResponses 
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
long 

IdPregunta 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	Respuesta 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
Puntaje 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ζ
;D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str 
)  
]  !
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str !
)! "
]" #
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *Ζ
+D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Startup.cs
[ 
assembly 	
:	 
 
OwinStartupAttribute 
(  
typeof  &
(& '
EwoQ' +
.+ ,
Startup, 3
)3 4
)4 5
]5 6
	namespace 	
EwoQ
 
{ 
public 

partial 
class 
Startup  
{ 
public		 
void		 
Configuration		 !
(		! "
IAppBuilder		" -
app		. 1
)		1 2
{

 	
ConfigureAuth 
( 
app 
) 
; 
} 	
} 
} ”
8D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Utils\Enums\EnListas.cs
	namespace 	
EwoQ
 
. 
Utils 
. 
Enums 
{ 
public 

static 
class 
EnListas  
{		 
public

 
enum

 
TiposListas

 
{ 	
AccionesInmediatas 
=  
$num! "
," #

PlanAccion 
= 
$num 
} 	
} 
} Ό,
5D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Utils\SomeHelpers.cs
	namespace

 	
EwoQ


 
.

 
Utils

 
{ 
public 

class 
SomeHelpers 
{ 
public 
static 
string 

ROL_SADMIN '
=( )
$str* P
;P Q
public 
static 
string 
	ROL_ADMIN &
=' (
$str) O
;O P
public 
static 
string 
ROL_OPER %
=& '
$str( N
;N O
static 
string 
nombreE 
; 
static 
string 
noti_reg 
=  
$str	! 
+ 
$str	 ―
+ 
$str \
+ 
$str 
+ 
nombreE 
+ 
$str	 Μ
+ 
$str 
+ 
$str 
+ 
$str N
+ 
$str	 ²
+ 
$str j
;j k
static 
string 
noti_apr 
=  
$str	! 
+ 
$str	 ―
+   
$str   \
+!! 
$str!! 
+!! 
nombreE!! 
+!! 
$str	!! Ρ
+"" 
$str"" 
+## 
$str## 
+$$ 
$str$$ N
+%% 
$str%% o
+&& 
$str&& j
;&&j k
public'' 
static'' 
async'' 
Task''  
SendGridAsync''! .
(''. /
int''/ 2
type''3 7
,''7 8
string''9 ?
mail''@ D
,''D E
string''F L
nombre''M S
)''S T
{(( 	
var++ 
apiKey++ 
=++  
ConfigurationManager++ -
.++- .
AppSettings++. 9
[++9 :
$str++: G
]++G H
;++H I
var,, 
client,, 
=,, 
new,, 
SendGridClient,, +
(,,+ ,
apiKey,,, 2
),,2 3
;,,3 4
var-- 
from-- 
=-- 
new-- 
EmailAddress-- '
(--' (
$str--( A
,--A B
$str--C Y
)--Y Z
;--Z [
var.. 
subject.. 
=.. 
$str.. ?
;..? @
var// 
to// 
=// 
new// 
EmailAddress// %
(//% &
mail//& *
,//* +
nombre//, 2
)//2 3
;//3 4
var00 
plainTextContent00  
=00! "
$str00# F
;00F G
string22 
htmlContent22 
=22 
$str22 !
;22! "
nombreE44 
=44 
nombre44 
;44 
if66 
(66 
type66 
==66 
$num66 
)66 
{77 
htmlContent88 
=88 
noti_reg88 &
;88& '
}99 
if:: 
(:: 
type:: 
==:: 
$num:: 
):: 
{;; 
htmlContent<< 
=<< 
noti_apr<< &
;<<& '
}== 
var?? 
msg?? 
=?? 

MailHelper??  
.??  !
CreateSingleEmail??! 2
(??2 3
from??3 7
,??7 8
to??9 ;
,??; <
subject??= D
,??D E
plainTextContent??F V
,??V W
htmlContent??X c
)??c d
;??d e
var@@ 
response@@ 
=@@ 
await@@  
client@@! '
.@@' (
SendEmailAsync@@( 6
(@@6 7
msg@@7 :
)@@: ;
;@@; <
SystemBB 
.BB 
DiagnosticsBB 
.BB 
DebugBB $
.BB$ %
	WriteLineBB% .
(BB. /
$strBB/ Q
+BBR S
responseBBT \
.BB\ ]

StatusCodeBB] g
)BBg h
;BBh i
}CC 	
publicEE 
staticEE 
decimalEE 
TruncateDecimalEE -
(EE- .
decimalEE. 5
valueEE6 ;
,EE; <
intEE= @
	precisionEEA J
)EEJ K
{FF 	
decimalGG 
stepGG 
=GG 
(GG 
decimalGG #
)GG# $
MathGG$ (
.GG( )
PowGG) ,
(GG, -
$numGG- /
,GG/ 0
	precisionGG1 :
)GG: ;
;GG; <
decimalHH 
tmpHH 
=HH 
MathHH 
.HH 
TruncateHH '
(HH' (
stepHH( ,
*HH- .
valueHH/ 4
)HH4 5
;HH5 6
returnII 
tmpII 
/II 
stepII 
;II 
}JJ 	
publicLL 
staticLL 
DateTimeLL 
GetCurrentTimeLL -
(LL- .
)LL. /
{MM 	
DateTimeNN 

serverTimeNN 
=NN  !
DateTimeNN" *
.NN* +
NowNN+ .
;NN. /
DateTimeOO 

_localTimeOO 
=OO  !
TimeZoneInfoOO" .
.OO. /)
ConvertTimeBySystemTimeZoneIdOO/ L
(OOL M

serverTimeOOM W
,OOW X
TimeZoneInfoOOY e
.OOe f
LocalOOf k
.OOk l
IdOOl n
,OOn o
$str	OOp 
)
OO ‹
;
OO‹ 
returnPP 

_localTimePP 
;PP 
}QQ 	
}RR 
}SS 