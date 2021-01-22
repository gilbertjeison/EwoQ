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
} Ό»
@D:\Dropbox\HPC\Calidad\EwoQ\EwoQ\Controllers\ManageController.cs
	namespace 	
EwoQ
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
public 

class 
ManageController !
:" #

Controller$ .
{ 
private $
ApplicationSignInManager (
_signInManager) 7
;7 8
private "
ApplicationUserManager &
_userManager' 3
;3 4
static 
string 
sign_images !
=" #
$str$ C
;C D
public 
ManageController 
(  
)  !
{ 	
} 	
public 
ManageController 
(  "
ApplicationUserManager  6
userManager7 B
,B C$
ApplicationSignInManagerD \
signInManager] j
)j k
{ 	
UserManager 
= 
userManager %
;% &
SignInManager 
= 
signInManager )
;) *
} 	
public!! $
ApplicationSignInManager!! '
SignInManager!!( 5
{"" 	
get## 
{$$ 
return%% 
_signInManager%% %
??%%& (
HttpContext%%) 4
.%%4 5
GetOwinContext%%5 C
(%%C D
)%%D E
.%%E F
Get%%F I
<%%I J$
ApplicationSignInManager%%J b
>%%b c
(%%c d
)%%d e
;%%e f
}&& 
private'' 
set'' 
{(( 
_signInManager)) 
=))  
value))! &
;))& '
}** 
}++ 	
public-- "
ApplicationUserManager-- %
UserManager--& 1
{.. 	
get// 
{00 
return11 
_userManager11 #
??11$ &
HttpContext11' 2
.112 3
GetOwinContext113 A
(11A B
)11B C
.11C D
GetUserManager11D R
<11R S"
ApplicationUserManager11S i
>11i j
(11j k
)11k l
;11l m
}22 
private33 
set33 
{44 
_userManager55 
=55 
value55 $
;55$ %
}66 
}77 	
public;; 
async;; 
Task;; 
<;; 
ActionResult;; &
>;;& '
Index;;( -
(;;- .
ManageMessageId;;. =
?;;= >
message;;? F
);;F G
{<< 	
ViewBag== 
.== 
StatusMessage== !
===" #
message>> 
==>> 
ManageMessageId>> *
.>>* +!
ChangePasswordSuccess>>+ @
?>>A B
$str>>C b
:?? 
message?? 
==?? 
ManageMessageId?? ,
.??, -
SetPasswordSuccess??- ?
???@ A
$str??B d
:@@ 
message@@ 
==@@ 
ManageMessageId@@ ,
.@@, -
SetTwoFactorSuccess@@- @
?@@A B
$str	@@C …
:AA 
messageAA 
==AA 
ManageMessageIdAA ,
.AA, -
ErrorAA- 2
?AA3 4
$strAA5 P
:BB 
messageBB 
==BB 
ManageMessageIdBB ,
.BB, -
AddPhoneSuccessBB- <
?BB= >
$strBB? f
:CC 
messageCC 
==CC 
ManageMessageIdCC ,
.CC, -
RemovePhoneSuccessCC- ?
?CC@ A
$strCCB h
:DD 
$strDD 
;DD 
varFF 
userIdFF 
=FF 
UserFF 
.FF 
IdentityFF &
.FF& '
	GetUserIdFF' 0
(FF0 1
)FF1 2
;FF2 3
varHH 
modelHH 
=HH 
newHH 
IndexViewModelHH *
{II 
HasSignJJ 
=JJ 
HasSignJJ !
(JJ! "
)JJ" #
,JJ# $
HasPasswordKK 
=KK 
HasPasswordKK )
(KK) *
)KK* +
,KK+ ,
PhoneNumberLL 
=LL 
awaitLL #
UserManagerLL$ /
.LL/ 0
GetPhoneNumberAsyncLL0 C
(LLC D
userIdLLD J
)LLJ K
,LLK L
	TwoFactorMM 
=MM 
awaitMM !
UserManagerMM" -
.MM- .$
GetTwoFactorEnabledAsyncMM. F
(MMF G
userIdMMG M
)MMM N
,MMN O
LoginsNN 
=NN 
awaitNN 
UserManagerNN *
.NN* +
GetLoginsAsyncNN+ 9
(NN9 :
userIdNN: @
)NN@ A
,NNA B
BrowserRememberedOO !
=OO" #
awaitOO$ )!
AuthenticationManagerOO* ?
.OO? @+
TwoFactorBrowserRememberedAsyncOO@ _
(OO_ `
userIdOO` f
)OOf g
}PP 
;PP 
returnQQ 
ViewQQ 
(QQ 
modelQQ 
)QQ 
;QQ 
}RR 	
publicUU 
asyncUU 
TaskUU 
<UU 

JsonResultUU $
>UU$ %
SaveDigitalSignUU& 5
(UU5 6
HttpPostedFileBaseUU6 H
pictureUUI P
,UUP Q
intUUR U
optionUUV \
)UU\ ]
{VV 	
RequestResponseXX 
rrXX 
=XX  
newXX! $
RequestResponseXX% 4
(XX4 5
)XX5 6
;XX6 7
tryZZ 
{[[ 
if\\ 
(\\ 
option\\ 
==\\ 
$num\\ 
)\\  
{]] 
if__ 
(__ 
picture__ 
!=__  "
null__# '
)__' (
{`` 
Guidaa 
nameaa !
=aa" #
Guidaa$ (
.aa( )
NewGuidaa) 0
(aa0 1
)aa1 2
;aa2 3
varbb 
	imageNamebb %
=bb& '
namebb( ,
.bb, -
ToStringbb- 5
(bb5 6
)bb6 7
+bb8 9
$strbb: @
;bb@ A
stringcc 
nameAndLocationcc .
=cc/ 0
sign_imagescc1 <
+cc= >
	imageNamecc? H
;ccH I
picturedd 
.dd  
SaveAsdd  &
(dd& '
Serverdd' -
.dd- .
MapPathdd. 5
(dd5 6
nameAndLocationdd6 E
)ddE F
)ddF G
;ddG H
awaitff 
Daoff !
.ff! "
DaoUsuariosff" -
.ff- .
DaoInstanceff. 9
.ff9 :
SetSignff: A
(ffA B
UserffB F
.ffF G
IdentityffG O
.ffO P
	GetUserIdffP Y
(ffY Z
)ffZ [
,ff[ \
	imageNameff] f
)fff g
;ffg h
rrgg 
.gg 
Codigogg !
=gg" #
$numgg$ %
;gg% &
rrhh 
.hh 
Messagehh "
=hh# $
$strhh% )
;hh) *
}ii 
elsejj 
{kk 
rrll 
.ll 
Codigoll !
=ll" #
-ll$ %
$numll% &
;ll& '
rrmm 
.mm 
Messagemm "
=mm# $
$strmm% 7
;mm7 8
}nn 
}oo 
elsepp 
ifpp 
(pp 
optionpp 
==pp  "
$numpp# $
)pp$ %
{qq 
varss 
fileNamess  
=ss! "
awaitss# (
Daoss) ,
.ss, -
DaoUsuariosss- 8
.ss8 9
DaoInstancess9 D
.ssD E
SetSignssE L
(ssL M
UserssM Q
.ssQ R
IdentityssR Z
.ssZ [
	GetUserIdss[ d
(ssd e
)sse f
,ssf g
nullssh l
)ssl m
;ssm n
stringvv 
fullPathvv #
=vv$ %
Requestvv& -
.vv- .
MapPathvv. 5
(vv5 6
sign_imagesvv6 A
+vvB C
fileNamevvD L
)vvL M
;vvM N
ifww 
(ww 
Systemww 
.ww 
IOww !
.ww! "
Fileww" &
.ww& '
Existsww' -
(ww- .
fullPathww. 6
)ww6 7
)ww7 8
{xx 
Systemyy 
.yy 
IOyy !
.yy! "
Fileyy" &
.yy& '
Deleteyy' -
(yy- .
fullPathyy. 6
)yy6 7
;yy7 8
}zz 
rr}} 
.}} 
Codigo}} 
=}} 
$num}}  !
;}}! "
rr~~ 
.~~ 
Message~~ 
=~~  
$str~~! %
;~~% &
} 
}
ƒƒ 
catch
„„ 
(
„„ 
	Exception
„„ 
ex
„„ 
)
„„  
{
…… 
Trace
†† 
.
†† 
	WriteLine
†† 
(
††  
$str
††  A
+
††B C
ex
††D F
.
††F G
ToString
††G O
(
††O P
)
††P Q
)
††Q R
;
††R S
}
‡‡ 
return
 
Json
 
(
 
rr
 
,
 !
JsonRequestBehavior
 /
.
/ 0
AllowGet
0 8
)
8 9
;
9 :
}
‰‰ 	
[
 	
HttpPost
	 
]
 
[
 	&
ValidateAntiForgeryToken
	 !
]
! "
public
 
async
 
Task
 
<
 
ActionResult
 &
>
& '
RemoveLogin
( 3
(
3 4
string
4 :
loginProvider
; H
,
H I
string
J P
providerKey
Q \
)
\ ]
{
 	
ManageMessageId
‘‘ 
?
‘‘ 
message
‘‘ $
;
‘‘$ %
var
’’ 
result
’’ 
=
’’ 
await
’’ 
UserManager
’’ *
.
’’* +
RemoveLoginAsync
’’+ ;
(
’’; <
User
’’< @
.
’’@ A
Identity
’’A I
.
’’I J
	GetUserId
’’J S
(
’’S T
)
’’T U
,
’’U V
new
’’W Z
UserLoginInfo
’’[ h
(
’’h i
loginProvider
’’i v
,
’’v w
providerKey’’x ƒ
)’’ƒ „
)’’„ …
;’’… †
if
““ 
(
““ 
result
““ 
.
““ 
	Succeeded
““  
)
““  !
{
”” 
var
•• 
user
•• 
=
•• 
await
••  
UserManager
••! ,
.
••, -
FindByIdAsync
••- :
(
••: ;
User
••; ?
.
••? @
Identity
••@ H
.
••H I
	GetUserId
••I R
(
••R S
)
••S T
)
••T U
;
••U V
if
–– 
(
–– 
user
–– 
!=
–– 
null
––  
)
––  !
{
—— 
await
 
SignInManager
 '
.
' (
SignInAsync
( 3
(
3 4
user
4 8
,
8 9
isPersistent
: F
:
F G
false
H M
,
M N
rememberBrowser
O ^
:
^ _
false
` e
)
e f
;
f g
}
™™ 
message
 
=
 
ManageMessageId
 )
.
) * 
RemoveLoginSuccess
* <
;
< =
}
›› 
else
 
{
 
message
 
=
 
ManageMessageId
 )
.
) *
Error
* /
;
/ 0
}
 
return
   
RedirectToAction
   #
(
  # $
$str
  $ 2
,
  2 3
new
  4 7
{
  8 9
Message
  : A
=
  B C
message
  D K
}
  L M
)
  M N
;
  N O
}
΅΅ 	
public
¥¥ 
ActionResult
¥¥ 
AddPhoneNumber
¥¥ *
(
¥¥* +
)
¥¥+ ,
{
¦¦ 	
return
§§ 
View
§§ 
(
§§ 
)
§§ 
;
§§ 
}
¨¨ 	
[
¬¬ 	
HttpPost
¬¬	 
]
¬¬ 
[
­­ 	&
ValidateAntiForgeryToken
­­	 !
]
­­! "
public
®® 
async
®® 
Task
®® 
<
®® 
ActionResult
®® &
>
®®& '
AddPhoneNumber
®®( 6
(
®®6 7%
AddPhoneNumberViewModel
®®7 N
model
®®O T
)
®®T U
{
―― 	
if
°° 
(
°° 
!
°° 

ModelState
°° 
.
°° 
IsValid
°° #
)
°°# $
{
±± 
return
²² 
View
²² 
(
²² 
model
²² !
)
²²! "
;
²²" #
}
³³ 
var
µµ 
code
µµ 
=
µµ 
await
µµ 
UserManager
µµ (
.
µµ( )1
#GenerateChangePhoneNumberTokenAsync
µµ) L
(
µµL M
User
µµM Q
.
µµQ R
Identity
µµR Z
.
µµZ [
	GetUserId
µµ[ d
(
µµd e
)
µµe f
,
µµf g
model
µµh m
.
µµm n
Number
µµn t
)
µµt u
;
µµu v
if
¶¶ 
(
¶¶ 
UserManager
¶¶ 
.
¶¶ 

SmsService
¶¶ &
!=
¶¶' )
null
¶¶* .
)
¶¶. /
{
·· 
var
ΈΈ 
message
ΈΈ 
=
ΈΈ 
new
ΈΈ !
IdentityMessage
ΈΈ" 1
{
ΉΉ 
Destination
ΊΊ 
=
ΊΊ  !
model
ΊΊ" '
.
ΊΊ' (
Number
ΊΊ( .
,
ΊΊ. /
Body
»» 
=
»» 
$str
»» 8
+
»»9 :
code
»»; ?
}
ΌΌ 
;
ΌΌ 
await
½½ 
UserManager
½½ !
.
½½! "

SmsService
½½" ,
.
½½, -
	SendAsync
½½- 6
(
½½6 7
message
½½7 >
)
½½> ?
;
½½? @
}
ΎΎ 
return
ΏΏ 
RedirectToAction
ΏΏ #
(
ΏΏ# $
$str
ΏΏ$ 7
,
ΏΏ7 8
new
ΏΏ9 <
{
ΏΏ= >
PhoneNumber
ΏΏ? J
=
ΏΏK L
model
ΏΏM R
.
ΏΏR S
Number
ΏΏS Y
}
ΏΏZ [
)
ΏΏ[ \
;
ΏΏ\ ]
}
ΐΐ 	
[
ΔΔ 	
HttpPost
ΔΔ	 
]
ΔΔ 
[
ΕΕ 	&
ValidateAntiForgeryToken
ΕΕ	 !
]
ΕΕ! "
public
ΖΖ 
async
ΖΖ 
Task
ΖΖ 
<
ΖΖ 
ActionResult
ΖΖ &
>
ΖΖ& '+
EnableTwoFactorAuthentication
ΖΖ( E
(
ΖΖE F
)
ΖΖF G
{
ΗΗ 	
await
ΘΘ 
UserManager
ΘΘ 
.
ΘΘ &
SetTwoFactorEnabledAsync
ΘΘ 6
(
ΘΘ6 7
User
ΘΘ7 ;
.
ΘΘ; <
Identity
ΘΘ< D
.
ΘΘD E
	GetUserId
ΘΘE N
(
ΘΘN O
)
ΘΘO P
,
ΘΘP Q
true
ΘΘR V
)
ΘΘV W
;
ΘΘW X
var
ΙΙ 
user
ΙΙ 
=
ΙΙ 
await
ΙΙ 
UserManager
ΙΙ (
.
ΙΙ( )
FindByIdAsync
ΙΙ) 6
(
ΙΙ6 7
User
ΙΙ7 ;
.
ΙΙ; <
Identity
ΙΙ< D
.
ΙΙD E
	GetUserId
ΙΙE N
(
ΙΙN O
)
ΙΙO P
)
ΙΙP Q
;
ΙΙQ R
if
ΚΚ 
(
ΚΚ 
user
ΚΚ 
!=
ΚΚ 
null
ΚΚ 
)
ΚΚ 
{
ΛΛ 
await
ΜΜ 
SignInManager
ΜΜ #
.
ΜΜ# $
SignInAsync
ΜΜ$ /
(
ΜΜ/ 0
user
ΜΜ0 4
,
ΜΜ4 5
isPersistent
ΜΜ6 B
:
ΜΜB C
false
ΜΜD I
,
ΜΜI J
rememberBrowser
ΜΜK Z
:
ΜΜZ [
false
ΜΜ\ a
)
ΜΜa b
;
ΜΜb c
}
ΝΝ 
return
ΞΞ 
RedirectToAction
ΞΞ #
(
ΞΞ# $
$str
ΞΞ$ +
,
ΞΞ+ ,
$str
ΞΞ- 5
)
ΞΞ5 6
;
ΞΞ6 7
}
ΟΟ 	
[
ΣΣ 	
HttpPost
ΣΣ	 
]
ΣΣ 
[
ΤΤ 	&
ValidateAntiForgeryToken
ΤΤ	 !
]
ΤΤ! "
public
ΥΥ 
async
ΥΥ 
Task
ΥΥ 
<
ΥΥ 
ActionResult
ΥΥ &
>
ΥΥ& ',
DisableTwoFactorAuthentication
ΥΥ( F
(
ΥΥF G
)
ΥΥG H
{
ΦΦ 	
await
ΧΧ 
UserManager
ΧΧ 
.
ΧΧ &
SetTwoFactorEnabledAsync
ΧΧ 6
(
ΧΧ6 7
User
ΧΧ7 ;
.
ΧΧ; <
Identity
ΧΧ< D
.
ΧΧD E
	GetUserId
ΧΧE N
(
ΧΧN O
)
ΧΧO P
,
ΧΧP Q
false
ΧΧR W
)
ΧΧW X
;
ΧΧX Y
var
ΨΨ 
user
ΨΨ 
=
ΨΨ 
await
ΨΨ 
UserManager
ΨΨ (
.
ΨΨ( )
FindByIdAsync
ΨΨ) 6
(
ΨΨ6 7
User
ΨΨ7 ;
.
ΨΨ; <
Identity
ΨΨ< D
.
ΨΨD E
	GetUserId
ΨΨE N
(
ΨΨN O
)
ΨΨO P
)
ΨΨP Q
;
ΨΨQ R
if
ΩΩ 
(
ΩΩ 
user
ΩΩ 
!=
ΩΩ 
null
ΩΩ 
)
ΩΩ 
{
ΪΪ 
await
ΫΫ 
SignInManager
ΫΫ #
.
ΫΫ# $
SignInAsync
ΫΫ$ /
(
ΫΫ/ 0
user
ΫΫ0 4
,
ΫΫ4 5
isPersistent
ΫΫ6 B
:
ΫΫB C
false
ΫΫD I
,
ΫΫI J
rememberBrowser
ΫΫK Z
:
ΫΫZ [
false
ΫΫ\ a
)
ΫΫa b
;
ΫΫb c
}
άά 
return
έέ 
RedirectToAction
έέ #
(
έέ# $
$str
έέ$ +
,
έέ+ ,
$str
έέ- 5
)
έέ5 6
;
έέ6 7
}
ήή 	
public
ββ 
async
ββ 
Task
ββ 
<
ββ 
ActionResult
ββ &
>
ββ& '
VerifyPhoneNumber
ββ( 9
(
ββ9 :
string
ββ: @
phoneNumber
ββA L
)
ββL M
{
γγ 	
var
δδ 
code
δδ 
=
δδ 
await
δδ 
UserManager
δδ (
.
δδ( )1
#GenerateChangePhoneNumberTokenAsync
δδ) L
(
δδL M
User
δδM Q
.
δδQ R
Identity
δδR Z
.
δδZ [
	GetUserId
δδ[ d
(
δδd e
)
δδe f
,
δδf g
phoneNumber
δδh s
)
δδs t
;
δδt u
return
ζζ 
phoneNumber
ζζ 
==
ζζ !
null
ζζ" &
?
ζζ' (
View
ζζ) -
(
ζζ- .
$str
ζζ. 5
)
ζζ5 6
:
ζζ7 8
View
ζζ9 =
(
ζζ= >
new
ζζ> A(
VerifyPhoneNumberViewModel
ζζB \
{
ζζ] ^
PhoneNumber
ζζ_ j
=
ζζk l
phoneNumber
ζζm x
}
ζζy z
)
ζζz {
;
ζζ{ |
}
ηη 	
[
λλ 	
HttpPost
λλ	 
]
λλ 
[
μμ 	&
ValidateAntiForgeryToken
μμ	 !
]
μμ! "
public
νν 
async
νν 
Task
νν 
<
νν 
ActionResult
νν &
>
νν& '
VerifyPhoneNumber
νν( 9
(
νν9 :(
VerifyPhoneNumberViewModel
νν: T
model
ννU Z
)
ννZ [
{
ξξ 	
if
οο 
(
οο 
!
οο 

ModelState
οο 
.
οο 
IsValid
οο #
)
οο# $
{
ππ 
return
ρρ 
View
ρρ 
(
ρρ 
model
ρρ !
)
ρρ! "
;
ρρ" #
}
ςς 
var
σσ 
result
σσ 
=
σσ 
await
σσ 
UserManager
σσ *
.
σσ* +$
ChangePhoneNumberAsync
σσ+ A
(
σσA B
User
σσB F
.
σσF G
Identity
σσG O
.
σσO P
	GetUserId
σσP Y
(
σσY Z
)
σσZ [
,
σσ[ \
model
σσ] b
.
σσb c
PhoneNumber
σσc n
,
σσn o
model
σσp u
.
σσu v
Code
σσv z
)
σσz {
;
σσ{ |
if
ττ 
(
ττ 
result
ττ 
.
ττ 
	Succeeded
ττ  
)
ττ  !
{
υυ 
var
φφ 
user
φφ 
=
φφ 
await
φφ  
UserManager
φφ! ,
.
φφ, -
FindByIdAsync
φφ- :
(
φφ: ;
User
φφ; ?
.
φφ? @
Identity
φφ@ H
.
φφH I
	GetUserId
φφI R
(
φφR S
)
φφS T
)
φφT U
;
φφU V
if
χχ 
(
χχ 
user
χχ 
!=
χχ 
null
χχ  
)
χχ  !
{
ψψ 
await
ωω 
SignInManager
ωω '
.
ωω' (
SignInAsync
ωω( 3
(
ωω3 4
user
ωω4 8
,
ωω8 9
isPersistent
ωω: F
:
ωωF G
false
ωωH M
,
ωωM N
rememberBrowser
ωωO ^
:
ωω^ _
false
ωω` e
)
ωωe f
;
ωωf g
}
ϊϊ 
return
ϋϋ 
RedirectToAction
ϋϋ '
(
ϋϋ' (
$str
ϋϋ( /
,
ϋϋ/ 0
new
ϋϋ1 4
{
ϋϋ5 6
Message
ϋϋ7 >
=
ϋϋ? @
ManageMessageId
ϋϋA P
.
ϋϋP Q
AddPhoneSuccess
ϋϋQ `
}
ϋϋa b
)
ϋϋb c
;
ϋϋc d
}
όό 

ModelState
ώώ 
.
ώώ 
AddModelError
ώώ $
(
ώώ$ %
$str
ώώ% '
,
ώώ' (
$str
ώώ) P
)
ώώP Q
;
ώώQ R
return
ÿÿ 
View
ÿÿ 
(
ÿÿ 
model
ÿÿ 
)
ÿÿ 
;
ÿÿ 
}
€€ 	
[
„„ 	
HttpPost
„„	 
]
„„ 
[
…… 	&
ValidateAntiForgeryToken
……	 !
]
……! "
public
†† 
async
†† 
Task
†† 
<
†† 
ActionResult
†† &
>
††& '
RemovePhoneNumber
††( 9
(
††9 :
)
††: ;
{
‡‡ 	
var
 
result
 
=
 
await
 
UserManager
 *
.
* +!
SetPhoneNumberAsync
+ >
(
> ?
User
? C
.
C D
Identity
D L
.
L M
	GetUserId
M V
(
V W
)
W X
,
X Y
null
Z ^
)
^ _
;
_ `
if
‰‰ 
(
‰‰ 
!
‰‰ 
result
‰‰ 
.
‰‰ 
	Succeeded
‰‰ !
)
‰‰! "
{
 
return
‹‹ 
RedirectToAction
‹‹ '
(
‹‹' (
$str
‹‹( /
,
‹‹/ 0
new
‹‹1 4
{
‹‹5 6
Message
‹‹7 >
=
‹‹? @
ManageMessageId
‹‹A P
.
‹‹P Q
Error
‹‹Q V
}
‹‹W X
)
‹‹X Y
;
‹‹Y Z
}
 
var
 
user
 
=
 
await
 
UserManager
 (
.
( )
FindByIdAsync
) 6
(
6 7
User
7 ;
.
; <
Identity
< D
.
D E
	GetUserId
E N
(
N O
)
O P
)
P Q
;
Q R
if
 
(
 
user
 
!=
 
null
 
)
 
{
 
await
 
SignInManager
 #
.
# $
SignInAsync
$ /
(
/ 0
user
0 4
,
4 5
isPersistent
6 B
:
B C
false
D I
,
I J
rememberBrowser
K Z
:
Z [
false
\ a
)
a b
;
b c
}
‘‘ 
return
’’ 
RedirectToAction
’’ #
(
’’# $
$str
’’$ +
,
’’+ ,
new
’’- 0
{
’’1 2
Message
’’3 :
=
’’; <
ManageMessageId
’’= L
.
’’L M 
RemovePhoneSuccess
’’M _
}
’’` a
)
’’a b
;
’’b c
}
““ 	
public
—— 
ActionResult
—— 
ChangePassword
—— *
(
——* +
)
——+ ,
{
 	
return
™™ 
View
™™ 
(
™™ 
)
™™ 
;
™™ 
}
 	
[
 	
HttpPost
	 
]
 
[
 	&
ValidateAntiForgeryToken
	 !
]
! "
public
   
async
   
Task
   
<
   
ActionResult
   &
>
  & '
ChangePassword
  ( 6
(
  6 7%
ChangePasswordViewModel
  7 N
model
  O T
)
  T U
{
΅΅ 	
if
ΆΆ 
(
ΆΆ 
!
ΆΆ 

ModelState
ΆΆ 
.
ΆΆ 
IsValid
ΆΆ #
)
ΆΆ# $
{
££ 
return
¤¤ 
View
¤¤ 
(
¤¤ 
model
¤¤ !
)
¤¤! "
;
¤¤" #
}
¥¥ 
var
¦¦ 
result
¦¦ 
=
¦¦ 
await
¦¦ 
UserManager
¦¦ *
.
¦¦* +!
ChangePasswordAsync
¦¦+ >
(
¦¦> ?
User
¦¦? C
.
¦¦C D
Identity
¦¦D L
.
¦¦L M
	GetUserId
¦¦M V
(
¦¦V W
)
¦¦W X
,
¦¦X Y
model
¦¦Z _
.
¦¦_ `
OldPassword
¦¦` k
,
¦¦k l
model
¦¦m r
.
¦¦r s
NewPassword
¦¦s ~
)
¦¦~ 
;¦¦ €
if
§§ 
(
§§ 
result
§§ 
.
§§ 
	Succeeded
§§  
)
§§  !
{
¨¨ 
var
©© 
user
©© 
=
©© 
await
©©  
UserManager
©©! ,
.
©©, -
FindByIdAsync
©©- :
(
©©: ;
User
©©; ?
.
©©? @
Identity
©©@ H
.
©©H I
	GetUserId
©©I R
(
©©R S
)
©©S T
)
©©T U
;
©©U V
if
ªª 
(
ªª 
user
ªª 
!=
ªª 
null
ªª  
)
ªª  !
{
«« 
await
¬¬ 
SignInManager
¬¬ '
.
¬¬' (
SignInAsync
¬¬( 3
(
¬¬3 4
user
¬¬4 8
,
¬¬8 9
isPersistent
¬¬: F
:
¬¬F G
false
¬¬H M
,
¬¬M N
rememberBrowser
¬¬O ^
:
¬¬^ _
false
¬¬` e
)
¬¬e f
;
¬¬f g
}
­­ 
return
®® 
RedirectToAction
®® '
(
®®' (
$str
®®( /
,
®®/ 0
new
®®1 4
{
®®5 6
Message
®®7 >
=
®®? @
ManageMessageId
®®A P
.
®®P Q#
ChangePasswordSuccess
®®Q f
}
®®g h
)
®®h i
;
®®i j
}
―― 
	AddErrors
°° 
(
°° 
result
°° 
)
°° 
;
°° 
return
±± 
View
±± 
(
±± 
model
±± 
)
±± 
;
±± 
}
²² 	
public
¶¶ 
ActionResult
¶¶ 
SetPassword
¶¶ '
(
¶¶' (
)
¶¶( )
{
·· 	
return
ΈΈ 
View
ΈΈ 
(
ΈΈ 
)
ΈΈ 
;
ΈΈ 
}
ΉΉ 	
[
½½ 	
HttpPost
½½	 
]
½½ 
[
ΎΎ 	&
ValidateAntiForgeryToken
ΎΎ	 !
]
ΎΎ! "
public
ΏΏ 
async
ΏΏ 
Task
ΏΏ 
<
ΏΏ 
ActionResult
ΏΏ &
>
ΏΏ& '
SetPassword
ΏΏ( 3
(
ΏΏ3 4"
SetPasswordViewModel
ΏΏ4 H
model
ΏΏI N
)
ΏΏN O
{
ΐΐ 	
if
ΑΑ 
(
ΑΑ 

ModelState
ΑΑ 
.
ΑΑ 
IsValid
ΑΑ "
)
ΑΑ" #
{
ΒΒ 
var
ΓΓ 
result
ΓΓ 
=
ΓΓ 
await
ΓΓ "
UserManager
ΓΓ# .
.
ΓΓ. /
AddPasswordAsync
ΓΓ/ ?
(
ΓΓ? @
User
ΓΓ@ D
.
ΓΓD E
Identity
ΓΓE M
.
ΓΓM N
	GetUserId
ΓΓN W
(
ΓΓW X
)
ΓΓX Y
,
ΓΓY Z
model
ΓΓ[ `
.
ΓΓ` a
NewPassword
ΓΓa l
)
ΓΓl m
;
ΓΓm n
if
ΔΔ 
(
ΔΔ 
result
ΔΔ 
.
ΔΔ 
	Succeeded
ΔΔ $
)
ΔΔ$ %
{
ΕΕ 
var
ΖΖ 
user
ΖΖ 
=
ΖΖ 
await
ΖΖ $
UserManager
ΖΖ% 0
.
ΖΖ0 1
FindByIdAsync
ΖΖ1 >
(
ΖΖ> ?
User
ΖΖ? C
.
ΖΖC D
Identity
ΖΖD L
.
ΖΖL M
	GetUserId
ΖΖM V
(
ΖΖV W
)
ΖΖW X
)
ΖΖX Y
;
ΖΖY Z
if
ΗΗ 
(
ΗΗ 
user
ΗΗ 
!=
ΗΗ 
null
ΗΗ  $
)
ΗΗ$ %
{
ΘΘ 
await
ΙΙ 
SignInManager
ΙΙ +
.
ΙΙ+ ,
SignInAsync
ΙΙ, 7
(
ΙΙ7 8
user
ΙΙ8 <
,
ΙΙ< =
isPersistent
ΙΙ> J
:
ΙΙJ K
false
ΙΙL Q
,
ΙΙQ R
rememberBrowser
ΙΙS b
:
ΙΙb c
false
ΙΙd i
)
ΙΙi j
;
ΙΙj k
}
ΚΚ 
return
ΛΛ 
RedirectToAction
ΛΛ +
(
ΛΛ+ ,
$str
ΛΛ, 3
,
ΛΛ3 4
new
ΛΛ5 8
{
ΛΛ9 :
Message
ΛΛ; B
=
ΛΛC D
ManageMessageId
ΛΛE T
.
ΛΛT U 
SetPasswordSuccess
ΛΛU g
}
ΛΛh i
)
ΛΛi j
;
ΛΛj k
}
ΜΜ 
	AddErrors
ΝΝ 
(
ΝΝ 
result
ΝΝ  
)
ΝΝ  !
;
ΝΝ! "
}
ΞΞ 
return
ΡΡ 
View
ΡΡ 
(
ΡΡ 
model
ΡΡ 
)
ΡΡ 
;
ΡΡ 
}
ÒÒ 	
public
ΦΦ 
async
ΦΦ 
Task
ΦΦ 
<
ΦΦ 
ActionResult
ΦΦ &
>
ΦΦ& '
ManageLogins
ΦΦ( 4
(
ΦΦ4 5
ManageMessageId
ΦΦ5 D
?
ΦΦD E
message
ΦΦF M
)
ΦΦM N
{
ΧΧ 	
ViewBag
ΨΨ 
.
ΨΨ 
StatusMessage
ΨΨ !
=
ΨΨ" #
message
ΩΩ 
==
ΩΩ 
ManageMessageId
ΩΩ *
.
ΩΩ* + 
RemoveLoginSuccess
ΩΩ+ =
?
ΩΩ> ?
$str
ΩΩ@ l
:
ΪΪ 
message
ΪΪ 
==
ΪΪ 
ManageMessageId
ΪΪ ,
.
ΪΪ, -
Error
ΪΪ- 2
?
ΪΪ3 4
$str
ΪΪ5 P
:
ΫΫ 
$str
ΫΫ 
;
ΫΫ 
var
άά 
user
άά 
=
άά 
await
άά 
UserManager
άά (
.
άά( )
FindByIdAsync
άά) 6
(
άά6 7
User
άά7 ;
.
άά; <
Identity
άά< D
.
άάD E
	GetUserId
άάE N
(
άάN O
)
άάO P
)
άάP Q
;
άάQ R
if
έέ 
(
έέ 
user
έέ 
==
έέ 
null
έέ 
)
έέ 
{
ήή 
return
ίί 
View
ίί 
(
ίί 
$str
ίί #
)
ίί# $
;
ίί$ %
}
ΰΰ 
var
αα 

userLogins
αα 
=
αα 
await
αα "
UserManager
αα# .
.
αα. /
GetLoginsAsync
αα/ =
(
αα= >
User
αα> B
.
ααB C
Identity
ααC K
.
ααK L
	GetUserId
ααL U
(
ααU V
)
ααV W
)
ααW X
;
ααX Y
var
ββ 
otherLogins
ββ 
=
ββ #
AuthenticationManager
ββ 3
.
ββ3 4,
GetExternalAuthenticationTypes
ββ4 R
(
ββR S
)
ββS T
.
ββT U
Where
ββU Z
(
ββZ [
auth
ββ[ _
=>
ββ` b

userLogins
ββc m
.
ββm n
All
ββn q
(
ββq r
ul
ββr t
=>
ββu w
auth
ββx |
.
ββ| }!
AuthenticationTypeββ} 
!=ββ ’
ulββ“ •
.ββ• –
LoginProviderββ– £
)ββ£ ¤
)ββ¤ ¥
.ββ¥ ¦
ToListββ¦ ¬
(ββ¬ ­
)ββ­ ®
;ββ® ―
ViewBag
γγ 
.
γγ 
ShowRemoveButton
γγ $
=
γγ% &
user
γγ' +
.
γγ+ ,
PasswordHash
γγ, 8
!=
γγ9 ;
null
γγ< @
||
γγA C

userLogins
γγD N
.
γγN O
Count
γγO T
>
γγU V
$num
γγW X
;
γγX Y
return
δδ 
View
δδ 
(
δδ 
new
δδ #
ManageLoginsViewModel
δδ 1
{
εε 
CurrentLogins
ζζ 
=
ζζ 

userLogins
ζζ  *
,
ζζ* +
OtherLogins
ηη 
=
ηη 
otherLogins
ηη )
}
θθ 
)
θθ 
;
θθ 
}
ιι 	
[
νν 	
HttpPost
νν	 
]
νν 
[
ξξ 	&
ValidateAntiForgeryToken
ξξ	 !
]
ξξ! "
public
οο 
ActionResult
οο 
	LinkLogin
οο %
(
οο% &
string
οο& ,
provider
οο- 5
)
οο5 6
{
ππ 	
return
ςς 
new
ςς 
AccountController
ςς (
.
ςς( )
ChallengeResult
ςς) 8
(
ςς8 9
provider
ςς9 A
,
ςςA B
Url
ςςC F
.
ςςF G
Action
ςςG M
(
ςςM N
$str
ςςN a
,
ςςa b
$str
ςςc k
)
ςςk l
,
ςςl m
User
ςςn r
.
ςςr s
Identity
ςςs {
.
ςς{ |
	GetUserIdςς| …
(ςς… †
)ςς† ‡
)ςς‡ 
;ςς ‰
}
σσ 	
public
χχ 
async
χχ 
Task
χχ 
<
χχ 
ActionResult
χχ &
>
χχ& '
LinkLoginCallback
χχ( 9
(
χχ9 :
)
χχ: ;
{
ψψ 	
var
ωω 
	loginInfo
ωω 
=
ωω 
await
ωω !#
AuthenticationManager
ωω" 7
.
ωω7 8'
GetExternalLoginInfoAsync
ωω8 Q
(
ωωQ R
XsrfKey
ωωR Y
,
ωωY Z
User
ωω[ _
.
ωω_ `
Identity
ωω` h
.
ωωh i
	GetUserId
ωωi r
(
ωωr s
)
ωωs t
)
ωωt u
;
ωωu v
if
ϊϊ 
(
ϊϊ 
	loginInfo
ϊϊ 
==
ϊϊ 
null
ϊϊ !
)
ϊϊ! "
{
ϋϋ 
return
όό 
RedirectToAction
όό '
(
όό' (
$str
όό( 6
,
όό6 7
new
όό8 ;
{
όό< =
Message
όό> E
=
όόF G
ManageMessageId
όόH W
.
όόW X
Error
όόX ]
}
όό^ _
)
όό_ `
;
όό` a
}
ύύ 
var
ώώ 
result
ώώ 
=
ώώ 
await
ώώ 
UserManager
ώώ *
.
ώώ* +
AddLoginAsync
ώώ+ 8
(
ώώ8 9
User
ώώ9 =
.
ώώ= >
Identity
ώώ> F
.
ώώF G
	GetUserId
ώώG P
(
ώώP Q
)
ώώQ R
,
ώώR S
	loginInfo
ώώT ]
.
ώώ] ^
Login
ώώ^ c
)
ώώc d
;
ώώd e
return
ÿÿ 
result
ÿÿ 
.
ÿÿ 
	Succeeded
ÿÿ #
?
ÿÿ$ %
RedirectToAction
ÿÿ& 6
(
ÿÿ6 7
$str
ÿÿ7 E
)
ÿÿE F
:
ÿÿG H
RedirectToAction
ÿÿI Y
(
ÿÿY Z
$str
ÿÿZ h
,
ÿÿh i
new
ÿÿj m
{
ÿÿn o
Message
ÿÿp w
=
ÿÿx y
ManageMessageIdÿÿz ‰
.ÿÿ‰ 
Errorÿÿ 
}ÿÿ ‘
)ÿÿ‘ ’
;ÿÿ’ “
}
€€ 	
	protected
‚‚ 
override
‚‚ 
void
‚‚ 
Dispose
‚‚  '
(
‚‚' (
bool
‚‚( ,
	disposing
‚‚- 6
)
‚‚6 7
{
ƒƒ 	
if
„„ 
(
„„ 
	disposing
„„ 
&&
„„ 
_userManager
„„ )
!=
„„* ,
null
„„- 1
)
„„1 2
{
…… 
_userManager
†† 
.
†† 
Dispose
†† $
(
††$ %
)
††% &
;
††& '
_userManager
‡‡ 
=
‡‡ 
null
‡‡ #
;
‡‡# $
}
 
base
 
.
 
Dispose
 
(
 
	disposing
 "
)
" #
;
# $
}
‹‹ 	
private
 
const
 
string
 
XsrfKey
 $
=
% &
$str
' /
;
/ 0
private
‘‘ $
IAuthenticationManager
‘‘ &#
AuthenticationManager
‘‘' <
{
’’ 	
get
““ 
{
”” 
return
•• 
HttpContext
•• "
.
••" #
GetOwinContext
••# 1
(
••1 2
)
••2 3
.
••3 4
Authentication
••4 B
;
••B C
}
–– 
}
—— 	
private
™™ 
void
™™ 
	AddErrors
™™ 
(
™™ 
IdentityResult
™™ -
result
™™. 4
)
™™4 5
{
 	
foreach
›› 
(
›› 
var
›› 
error
›› 
in
›› !
result
››" (
.
››( )
Errors
››) /
)
››/ 0
{
 

ModelState
 
.
 
AddModelError
 (
(
( )
$str
) +
,
+ ,
error
- 2
)
2 3
;
3 4
}
 
}
 	
private
΅΅ 
bool
΅΅ 
HasPassword
΅΅  
(
΅΅  !
)
΅΅! "
{
ΆΆ 	
var
££ 
user
££ 
=
££ 
UserManager
££ "
.
££" #
FindById
££# +
(
££+ ,
User
££, 0
.
££0 1
Identity
££1 9
.
££9 :
	GetUserId
££: C
(
££C D
)
££D E
)
££E F
;
££F G
if
¤¤ 
(
¤¤ 
user
¤¤ 
!=
¤¤ 
null
¤¤ 
)
¤¤ 
{
¥¥ 
return
¦¦ 
user
¦¦ 
.
¦¦ 
PasswordHash
¦¦ (
!=
¦¦) +
null
¦¦, 0
;
¦¦0 1
}
§§ 
return
¨¨ 
false
¨¨ 
;
¨¨ 
}
©© 	
private
«« 
bool
«« 
HasSign
«« 
(
«« 
)
«« 
{
¬¬ 	
var
­­ 
user
­­ 
=
­­ 
UserManager
­­ "
.
­­" #
FindById
­­# +
(
­­+ ,
User
­­, 0
.
­­0 1
Identity
­­1 9
.
­­9 :
	GetUserId
­­: C
(
­­C D
)
­­D E
)
­­E F
;
­­F G
if
®® 
(
®® 
user
®® 
!=
®® 
null
®® 
)
®® 
{
―― 
return
°° 
user
°° 
.
°° 
SingUrl
°° #
!=
°°$ &
null
°°' +
;
°°+ ,
}
±± 
return
²² 
false
²² 
;
²² 
}
³³ 	
private
µµ 
bool
µµ 
HasPhoneNumber
µµ #
(
µµ# $
)
µµ$ %
{
¶¶ 	
var
·· 
user
·· 
=
·· 
UserManager
·· "
.
··" #
FindById
··# +
(
··+ ,
User
··, 0
.
··0 1
Identity
··1 9
.
··9 :
	GetUserId
··: C
(
··C D
)
··D E
)
··E F
;
··F G
if
ΈΈ 
(
ΈΈ 
user
ΈΈ 
!=
ΈΈ 
null
ΈΈ 
)
ΈΈ 
{
ΉΉ 
return
ΊΊ 
user
ΊΊ 
.
ΊΊ 
PhoneNumber
ΊΊ '
!=
ΊΊ( *
null
ΊΊ+ /
;
ΊΊ/ 0
}
»» 
return
ΌΌ 
false
ΌΌ 
;
ΌΌ 
}
½½ 	
public
ΏΏ 
enum
ΏΏ 
ManageMessageId
ΏΏ #
{
ΐΐ 	
AddPhoneSuccess
ΑΑ 
,
ΑΑ #
ChangePasswordSuccess
ΒΒ !
,
ΒΒ! "!
SetTwoFactorSuccess
ΓΓ 
,
ΓΓ   
SetPasswordSuccess
ΔΔ 
,
ΔΔ  
RemoveLoginSuccess
ΕΕ 
,
ΕΕ  
RemovePhoneSuccess
ΖΖ 
,
ΖΖ 
Error
ΗΗ 
}
ΘΘ 	
}
ΛΛ 
}ΜΜ Γ
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
publicdd 
ActionResultdd 
Indexdd !
(dd! "
)dd" #
{ee 	
returnff 
Viewff 
(ff 
)ff 
;ff 
}gg 	
publicii 
asyncii 
Taskii 
<ii 

JsonResultii $
>ii$ %
GetAllUsersAsyncii& 6
(ii6 7
)ii7 8
{jj 	

SelectListkk 
Listkk 
=kk 
nullkk "
;kk" #
varnn 
listUnn 
=nn 
awaitnn 
DaoUsuariosnn )
.nn) *
DaoInstancenn* 5
.nn5 6
GetAllUsersnn6 A
(nnA B
)nnB C
;nnC D
listUoo 
.oo 
Insertoo 
(oo 
$numoo 
,oo 
newoo 
UsersUIoo  '
(oo' (
)oo( )
{oo* +
Idoo, .
=oo/ 0
$stroo1 4
,oo4 5
NombresCommpletosoo6 G
=ooH I
$strooJ a
}oob c
)ooc d
;ood e
Listpp 
=pp 
newpp 

SelectListpp !
(pp! "
listUpp" '
,pp' (
$strpp) -
,pp- .
$strpp/ B
)ppB C
;ppC D
returnrr 
Jsonrr 
(rr 
newrr 

SelectListrr &
(rr& '
Listrr' +
,rr+ ,
$strrr- 4
,rr4 5
$strrr6 <
)rr< =
)rr= >
;rr> ?
}ss 	
[vv 	
HttpPostvv	 
]vv 
publicww 
asyncww 
Taskww 
<ww 

JsonResultww $
>ww$ % 
GetAllUsersJsonAsyncww& :
(ww: ;
)ww; <
{xx 	
varyy 
usersyy 
=yy 
awaityy 
DaoUsuariosyy )
.yy) *
DaoInstanceyy* 5
.yy5 6
GetAllUsersyy6 A
(yyA B
)yyB C
;yyC D
returnzz 
Jsonzz 
(zz 
userszz 
)zz 
;zz 
}{{ 	
[}} 	
HttpPost}}	 
]}} 
public~~ 
async~~ 
Task~~ 
<~~ 

JsonResult~~ $
>~~$ % 
GetAllDispoJsonAsync~~& :
(~~: ;
)~~; <
{ 	
var
 
listDF
 
=
 
await
 
DaoTiposData
 +
.
+ ,
DaoInstance
, 7
.
7 8
GetTypesAsync
8 E
(
E F
FINALDISPOSITION
F V
)
V W
;
W X
listDF
‚‚ 
.
‚‚ 
Insert
‚‚ 
(
‚‚ 
$num
‚‚ 
,
‚‚ 
new
‚‚  
Database
‚‚! )
.
‚‚) *

tipos_data
‚‚* 4
(
‚‚4 5
)
‚‚5 6
{
‚‚7 8
id
‚‚9 ;
=
‚‚< =
$num
‚‚> ?
,
‚‚? @
descripcion
‚‚A L
=
‚‚M N
$str
‚‚O j
}
‚‚k l
)
‚‚l m
;
‚‚m n
var
ƒƒ 
DisposicionFList
ƒƒ  
=
ƒƒ! "
new
ƒƒ# &

SelectList
ƒƒ' 1
(
ƒƒ1 2
listDF
ƒƒ2 8
,
ƒƒ8 9
$str
ƒƒ: >
,
ƒƒ> ?
$str
ƒƒ@ M
)
ƒƒM N
;
ƒƒN O
return
…… 
Json
…… 
(
…… 
DisposicionFList
…… (
)
……( )
;
……) *
}
†† 	
public
 
async
 
Task
 
<
 

JsonResult
 $
>
$ %
GetAreasJsonAsync
& 7
(
7 8
)
8 9
{
‰‰ 	
var
‹‹ 
listA
‹‹ 
=
‹‹ 
await
‹‹ 
DaoTiposData
‹‹ *
.
‹‹* +
DaoInstance
‹‹+ 6
.
‹‹6 7
GetTypesAsync
‹‹7 D
(
‹‹D E

AREASTYPES
‹‹E O
)
‹‹O P
;
‹‹P Q
listA
 
.
 
Insert
 
(
 
$num
 
,
 
new
 
Database
  (
.
( )

tipos_data
) 3
(
3 4
)
4 5
{
6 7
id
8 :
=
; <
$num
= >
,
> ?
descripcion
@ K
=
L M
$str
N b
}
c d
)
d e
;
e f
var
 
	AreasList
 
=
 
new
 

SelectList
  *
(
* +
listA
+ 0
,
0 1
$str
2 6
,
6 7
$str
8 E
)
E F
;
F G
return
 
Json
 
(
 
	AreasList
 !
)
! "
;
" #
}
 	
[
•• 
HttpPost
•• 
]
•• 
public
–– 
async
–– 
Task
–– 
<
–– 

JsonResult
–– $
>
––$ %#
GetAllUniMedJsonAsync
––& ;
(
––; <
)
––< =
{
—— 	
var
™™ 
listUM
™™ 
=
™™ 
await
™™ 
DaoTiposData
™™ +
.
™™+ ,
DaoInstance
™™, 7
.
™™7 8
GetTypesAsync
™™8 E
(
™™E F
UNIDADMEDIDA
™™F R
)
™™R S
;
™™S T
listUM
 
.
 
Insert
 
(
 
$num
 
,
 
new
  
Database
! )
.
) *

tipos_data
* 4
(
4 5
)
5 6
{
7 8
id
9 ;
=
< =
$num
> ?
,
? @
descripcion
A L
=
M N
$str
O e
}
f g
)
g h
;
h i
var
›› 

UniMedList
›› 
=
›› 
new
››  

SelectList
››! +
(
››+ ,
listUM
››, 2
,
››2 3
$str
››4 8
,
››8 9
$str
››: G
)
››G H
;
››H I
return
 
Json
 
(
 

UniMedList
 "
)
" #
;
# $
}
 	
[
   	
HttpPost
  	 
]
   
public
΅΅ 
async
΅΅ 
Task
΅΅ 
<
΅΅ 

JsonResult
΅΅ $
>
΅΅$ %"
Get4MQuestionsByType
΅΅& :
(
΅΅: ;
int
΅΅; >
id
΅΅? A
)
΅΅A B
{
ΆΆ 	
var
££ 
qstns
££ 
=
££ 
await
££ 
Dao4M
££ #
.
££# $
DaoInstance
££$ /
.
££/ 0"
Get4mQuestionsByType
££0 D
(
££D E
id
££E G
)
££G H
;
££H I
return
¤¤ 
Json
¤¤ 
(
¤¤ 
qstns
¤¤ 
)
¤¤ 
;
¤¤ 
}
¥¥ 	
public
§§ 
async
§§ 
Task
§§ 
<
§§ 

JsonResult
§§ $
>
§§$ %
GetAllUsers
§§& 1
(
§§1 2
)
§§2 3
{
¨¨ 	
var
ªª 
list
ªª 
=
ªª 
await
ªª 
DaoUsuarios
ªª (
.
ªª( )
DaoInstance
ªª) 4
.
ªª4 5
GetAllUsers
ªª5 @
(
ªª@ A
)
ªªA B
;
ªªB C
return
¬¬ 
Json
¬¬ 
(
¬¬ 
list
¬¬ 
,
¬¬ !
JsonRequestBehavior
¬¬ 1
.
¬¬1 2
AllowGet
¬¬2 :
)
¬¬: ;
;
¬¬; <
}
­­ 	
public
°° 
async
°° 
Task
°° 
<
°° 
ActionResult
°° &
>
°°& '
Details
°°( /
(
°°/ 0
long
°°0 4
?
°°4 5
id
°°6 8
)
°°8 9
{
±± 	
if
²² 
(
²² 
id
²² 
==
²² 
null
²² 
)
²² 
{
³³ 
return
΄΄ 
new
΄΄ "
HttpStatusCodeResult
΄΄ /
(
΄΄/ 0
HttpStatusCode
΄΄0 >
.
΄΄> ?

BadRequest
΄΄? I
)
΄΄I J
;
΄΄J K
}
µµ 
ewo
¶¶ 
ewo
¶¶ 
=
¶¶ 
await
¶¶ 
db
¶¶ 
.
¶¶ 
ewo
¶¶ "
.
¶¶" #
	FindAsync
¶¶# ,
(
¶¶, -
id
¶¶- /
)
¶¶/ 0
;
¶¶0 1
if
·· 
(
·· 
ewo
·· 
==
·· 
null
·· 
)
·· 
{
ΈΈ 
return
ΉΉ 
HttpNotFound
ΉΉ #
(
ΉΉ# $
)
ΉΉ$ %
;
ΉΉ% &
}
ΊΊ 
return
»» 
View
»» 
(
»» 
ewo
»» 
)
»» 
;
»» 
}
ΌΌ 	
public
ΏΏ 
async
ΏΏ 
Task
ΏΏ 
<
ΏΏ 
ActionResult
ΏΏ &
>
ΏΏ& '
Create
ΏΏ( .
(
ΏΏ. /
)
ΏΏ/ 0
{
ΐΐ 	
return
ΑΑ 
View
ΑΑ 
(
ΑΑ 
await
ΑΑ 

BuildModel
ΑΑ (
(
ΑΑ( )
$num
ΑΑ) *
)
ΑΑ* +
)
ΑΑ+ ,
;
ΑΑ, -
}
ΒΒ 	
[
ΘΘ 	
HttpPost
ΘΘ	 
]
ΘΘ 
[
ΙΙ 	&
ValidateAntiForgeryToken
ΙΙ	 !
]
ΙΙ! "
public
ΛΛ 
async
ΛΛ 
Task
ΛΛ 
<
ΛΛ 

JsonResult
ΛΛ $
>
ΛΛ$ %
CreateAsync
ΛΛ& 1
(
ΛΛ1 2(
ReporteIncidentesViewModel
ΛΛ2 L
ewr
ΛΛM P
)
ΛΛP Q
{
ΜΜ 	
RequestResponse
ΝΝ 
rr
ΝΝ 
=
ΝΝ  
null
ΝΝ! %
;
ΝΝ% &
try
ΟΟ 
{
ΠΠ 
rr
ΡΡ 
=
ΡΡ 
await
ΡΡ 
CreateEwoObject
ΡΡ *
(
ΡΡ* +
ewr
ΡΡ+ .
,
ΡΡ. /
true
ΡΡ/ 3
)
ΡΡ3 4
;
ΡΡ4 5
}
ÒÒ 
catch
ΣΣ 
(
ΣΣ 
	Exception
ΣΣ 
e
ΣΣ 
)
ΣΣ 
{
ΤΤ 
Debug
ΥΥ 
.
ΥΥ 
	WriteLine
ΥΥ 
(
ΥΥ  
$str
ΥΥ  7
+
ΥΥ7 8
e
ΥΥ8 9
.
ΥΥ9 :
ToString
ΥΥ: B
(
ΥΥB C
)
ΥΥC D
)
ΥΥD E
;
ΥΥE F
rr
ΦΦ 
.
ΦΦ 
Codigo
ΦΦ 
=
ΦΦ 
-
ΦΦ 
$num
ΦΦ 
;
ΦΦ 
}
ΧΧ 
return
ΪΪ 
Json
ΪΪ 
(
ΪΪ 
new
ΪΪ 
{
ΪΪ 
code
ΪΪ "
=
ΪΪ" #
rr
ΪΪ$ &
.
ΪΪ& '
Codigo
ΪΪ' -
}
ΪΪ. /
)
ΪΪ/ 0
;
ΪΪ0 1
}
ΫΫ 	
[
έέ 
HttpGet
έέ 
]
έέ 
public
ήή 
async
ήή 
Task
ήή 
<
ήή 
ActionResult
ήή %
>
ήή% &
ProcesarIncidente
ήή' 8
(
ήή8 9
int
ήή9 <
?
ήή< =
id
ήή> @
)
ήή@ A
{
ίί 	
int
ΰΰ 
code
ΰΰ 
;
ΰΰ 
string
αα 
message
αα 
;
αα 
try
γγ 
{
δδ 
var
εε 
userRole
εε 
=
εε 
DaoUsuarios
εε *
.
εε* +
DaoInstance
εε+ 6
.
εε6 7
GetUser
εε7 >
(
εε> ?
User
εε? C
.
εεC D
Identity
εεD L
.
εεL M
	GetUserId
εεM V
(
εεV W
)
εεW X
)
εεX Y
.
εεY Z
IdRol
εεZ _
;
εε_ `
if
ηη 
(
ηη 
SomeHelpers
ηη 
.
ηη  
ROL_OPER
ηη  (
.
ηη( )
Equals
ηη) /
(
ηη/ 0
userRole
ηη0 8
)
ηη8 9
)
ηη9 :
{
θθ 
return
ιι 
new
ιι  
HttpNotFoundResult
ιι 1
(
ιι1 2
$str
ιι2 b
)
ιιb c
;
ιιc d
}
κκ 
if
μμ 
(
μμ 
id
μμ 
.
μμ 
HasValue
μμ 
)
μμ  
{
νν 
var
ξξ 
rivm
ξξ 
=
ξξ 
await
ξξ $

BuildModel
ξξ% /
(
ξξ/ 0
id
ξξ0 2
.
ξξ2 3
Value
ξξ3 8
)
ξξ8 9
;
ξξ9 :
return
οο 
View
οο 
(
οο  
rivm
οο  $
)
οο$ %
;
οο% &
}
ππ 
else
ρρ 
{
ςς 
return
σσ 
Json
σσ 
(
σσ  
new
σσ  #
{
σσ$ %
code
σσ% )
=
σσ* +
-
σσ, -
$num
σσ- .
,
σσ. /
message
σσ0 7
=
σσ8 9
$str
σσ: W
}
σσX Y
,
σσY Z!
JsonRequestBehavior
σσZ m
.
σσm n
AllowGet
σσn v
)
σσv w
;
σσw x
}
ττ 
}
χχ 
catch
ψψ 
(
ψψ 
	Exception
ψψ 
ex
ψψ 
)
ψψ  
{
ωω 
code
ϊϊ 
=
ϊϊ 
-
ϊϊ 
$num
ϊϊ 
;
ϊϊ 
message
ϋϋ 
=
ϋϋ 
$str
ϋϋ P
+
ϋϋP Q
ex
ϋϋR T
.
ϋϋT U
Message
ϋϋU \
;
ϋϋ\ ]
Trace
όό 
.
όό 
	WriteLine
όό 
(
όό  
message
όό  '
)
όό' (
;
όό( )
return
ύύ 
Json
ύύ 
(
ύύ 
new
ύύ 
{
ύύ  !
code
ύύ" &
,
ύύ& '
message
ύύ( /
}
ύύ0 1
)
ύύ1 2
;
ύύ2 3
}
ώώ 
}
ÿÿ 	
[
 	
HttpPost
	 
]
 
[
‚‚ 	&
ValidateAntiForgeryToken
‚‚	 !
]
‚‚! "
public
ƒƒ 
async
ƒƒ 
Task
ƒƒ 
<
ƒƒ 

JsonResult
ƒƒ $
>
ƒƒ$ %#
ProcesarIncidentePost
ƒƒ& ;
(
ƒƒ; <(
ReporteIncidentesViewModel
ƒƒ< V
rivm
ƒƒW [
)
ƒƒ[ \
{
„„ 	
RequestResponse
†† 
rr
†† 
=
††  
null
††! %
;
††% &
try
 
{
‰‰ 
rr
 
=
 
await
 
CreateEwoObject
 *
(
* +
rivm
+ /
,
/ 0
false
1 6
)
6 7
;
7 8
}
‹‹ 
catch
 
(
 
	Exception
 
ex
 
)
  
{
 
Trace
 
.
 
	WriteLine
 
(
  
$str
  >
+
? @
ex
A C
.
C D
ToString
D L
(
L M
)
M N
)
N O
;
O P
}
 
return
 
Json
 
(
 
rr
 
,
 !
JsonRequestBehavior
 /
.
/ 0
AllowGet
0 8
)
8 9
;
9 :
}
‘‘ 	
public
”” 
async
”” 
Task
”” 
<
”” 
ActionResult
”” &
>
””& '
Edit
””( ,
(
””, -
long
””- 1
?
””1 2
id
””3 5
)
””5 6
{
•• 	
if
–– 
(
–– 
id
–– 
==
–– 
null
–– 
)
–– 
{
—— 
return
 
new
 "
HttpStatusCodeResult
 /
(
/ 0
HttpStatusCode
0 >
.
> ?

BadRequest
? I
)
I J
;
J K
}
™™ 
ewo
 
ewo
 
=
 
await
 
db
 
.
 
ewo
 "
.
" #
	FindAsync
# ,
(
, -
id
- /
)
/ 0
;
0 1
if
›› 
(
›› 
ewo
›› 
==
›› 
null
›› 
)
›› 
{
 
return
 
HttpNotFound
 #
(
# $
)
$ %
;
% &
}
 
ViewBag
 
.
 &
codigo_coordinador_turno
 ,
=
- .
new
/ 2

SelectList
3 =
(
= >
db
> @
.
@ A
AspNetUsers
A L
,
L M
$str
N R
,
R S
$str
T ]
,
] ^
ewo
_ b
.
b c&
codigo_coordinador_turno
c {
)
{ |
;
| }
ViewBag
   
.
   (
codigo_lider_investigacion
   .
=
  / 0
new
  1 4

SelectList
  5 ?
(
  ? @
db
  @ B
.
  B C
AspNetUsers
  C N
,
  N O
$str
  P T
,
  T U
$str
  V _
,
  _ `
ewo
  a d
.
  d e(
codigo_lider_investigacion
  e 
)   €
;  € 
ViewBag
΅΅ 
.
΅΅ )
codigo_operario_responsable
΅΅ /
=
΅΅0 1
new
΅΅2 5

SelectList
΅΅6 @
(
΅΅@ A
db
΅΅A C
.
΅΅C D
AspNetUsers
΅΅D O
,
΅΅O P
$str
΅΅Q U
,
΅΅U V
$str
΅΅W `
,
΅΅` a
ewo
΅΅b e
.
΅΅e f*
codigo_operario_responsable΅΅f 
)΅΅ ‚
;΅΅‚ ƒ
ViewBag
ΆΆ 
.
ΆΆ (
pa_codigo_coordinador_prod
ΆΆ .
=
ΆΆ/ 0
new
ΆΆ1 4

SelectList
ΆΆ5 ?
(
ΆΆ? @
db
ΆΆ@ B
.
ΆΆB C
AspNetUsers
ΆΆC N
,
ΆΆN O
$str
ΆΆP T
,
ΆΆT U
$str
ΆΆV _
,
ΆΆ_ `
ewo
ΆΆa d
.
ΆΆd e(
pa_codigo_coordinador_prod
ΆΆe 
)ΆΆ €
;ΆΆ€ 
ViewBag
££ 
.
££ $
pa_codigo_gerente_prod
££ *
=
££+ ,
new
££- 0

SelectList
££1 ;
(
££; <
db
££< >
.
££> ?
AspNetUsers
££? J
,
££J K
$str
££L P
,
££P Q
$str
££R [
,
££[ \
ewo
££] `
.
££` a$
pa_codigo_gerente_prod
££a w
)
££w x
;
££x y
ViewBag
¤¤ 
.
¤¤ '
pa_codigo_gerente_calidad
¤¤ -
=
¤¤. /
new
¤¤0 3

SelectList
¤¤4 >
(
¤¤> ?
db
¤¤? A
.
¤¤A B
AspNetUsers
¤¤B M
,
¤¤M N
$str
¤¤O S
,
¤¤S T
$str
¤¤U ^
,
¤¤^ _
ewo
¤¤` c
.
¤¤c d'
pa_codigo_gerente_calidad
¤¤d }
)
¤¤} ~
;
¤¤~ 
ViewBag
¥¥ 
.
¥¥ $
pa_codigo_jefe_calidad
¥¥ *
=
¥¥+ ,
new
¥¥- 0

SelectList
¥¥1 ;
(
¥¥; <
db
¥¥< >
.
¥¥> ?
AspNetUsers
¥¥? J
,
¥¥J K
$str
¥¥L P
,
¥¥P Q
$str
¥¥R [
,
¥¥[ \
ewo
¥¥] `
.
¥¥` a$
pa_codigo_jefe_calidad
¥¥a w
)
¥¥w x
;
¥¥x y
ViewBag
¦¦ 
.
¦¦ %
codigo_responsable_area
¦¦ +
=
¦¦, -
new
¦¦. 1

SelectList
¦¦2 <
(
¦¦< =
db
¦¦= ?
.
¦¦? @
AspNetUsers
¦¦@ K
,
¦¦K L
$str
¦¦M Q
,
¦¦Q R
$str
¦¦S \
,
¦¦\ ]
ewo
¦¦^ a
.
¦¦a b%
codigo_responsable_area
¦¦b y
)
¦¦y z
;
¦¦z {
ViewBag
§§ 
.
§§ 
codigo_producto
§§ #
=
§§$ %
new
§§& )

SelectList
§§* 4
(
§§4 5
db
§§5 7
.
§§7 8
	productos
§§8 A
,
§§A B
$str
§§C G
,
§§G H
$str
§§I Q
,
§§Q R
ewo
§§S V
.
§§V W
producto
§§W _
)
§§_ `
;
§§` a
ViewBag
¨¨ 
.
¨¨ +
codigo_disposicion_final_prod
¨¨ 1
=
¨¨2 3
new
¨¨4 7

SelectList
¨¨8 B
(
¨¨B C
db
¨¨C E
.
¨¨E F

tipos_data
¨¨F P
,
¨¨P Q
$str
¨¨R V
,
¨¨V W
$str
¨¨X e
,
¨¨e f
ewo
¨¨g j
.
¨¨j k,
codigo_disposicion_final_prod¨¨k 
)¨¨ ‰
;¨¨‰ 
ViewBag
©© 
.
©© 
codigo_estado
©© !
=
©©" #
new
©©$ '

SelectList
©©( 2
(
©©2 3
db
©©3 5
.
©©5 6

tipos_data
©©6 @
,
©©@ A
$str
©©B F
,
©©F G
$str
©©H U
,
©©U V
ewo
©©W Z
.
©©Z [
codigo_estado
©©[ h
)
©©h i
;
©©i j
ViewBag
ªª 
.
ªª 
codigo_linea
ªª  
=
ªª! "
new
ªª# &

SelectList
ªª' 1
(
ªª1 2
db
ªª2 4
.
ªª4 5

tipos_data
ªª5 ?
,
ªª? @
$str
ªªA E
,
ªªE F
$str
ªªG T
,
ªªT U
ewo
ªªV Y
.
ªªY Z
codigo_linea
ªªZ f
)
ªªf g
;
ªªg h
return
­­ 
View
­­ 
(
­­ 
ewo
­­ 
)
­­ 
;
­­ 
}
®® 	
[
³³ 	
HttpPost
³³	 
]
³³ 
[
΄΄ 	&
ValidateAntiForgeryToken
΄΄	 !
]
΄΄! "
public
µµ 
async
µµ 
Task
µµ 
<
µµ 
ActionResult
µµ &
>
µµ& '
Edit
µµ( ,
(
µµ, -
[
µµ- .
Bind
µµ. 2
(
µµ2 3
Include
µµ3 :
=
µµ; <
$strµµ= ·
)µµ· Έ
]µµΈ Ή
ewoµµΊ ½
ewoµµΎ Α
)µµΑ Β
{
¶¶ 	
if
·· 
(
·· 

ModelState
·· 
.
·· 
IsValid
·· "
)
··" #
{
ΈΈ 
db
ΉΉ 
.
ΉΉ 
Entry
ΉΉ 
(
ΉΉ 
ewo
ΉΉ 
)
ΉΉ 
.
ΉΉ 
State
ΉΉ #
=
ΉΉ$ %
EntityState
ΉΉ& 1
.
ΉΉ1 2
Modified
ΉΉ2 :
;
ΉΉ: ;
await
ΊΊ 
db
ΊΊ 
.
ΊΊ 
SaveChangesAsync
ΊΊ )
(
ΊΊ) *
)
ΊΊ* +
;
ΊΊ+ ,
return
»» 
RedirectToAction
»» '
(
»»' (
$str
»»( /
)
»»/ 0
;
»»0 1
}
ΌΌ 
ViewBag
½½ 
.
½½ &
codigo_coordinador_turno
½½ ,
=
½½- .
new
½½/ 2

SelectList
½½3 =
(
½½= >
db
½½> @
.
½½@ A
AspNetUsers
½½A L
,
½½L M
$str
½½N R
,
½½R S
$str
½½T ]
,
½½] ^
ewo
½½_ b
.
½½b c&
codigo_coordinador_turno
½½c {
)
½½{ |
;
½½| }
ViewBag
ΎΎ 
.
ΎΎ (
codigo_lider_investigacion
ΎΎ .
=
ΎΎ/ 0
new
ΎΎ1 4

SelectList
ΎΎ5 ?
(
ΎΎ? @
db
ΎΎ@ B
.
ΎΎB C
AspNetUsers
ΎΎC N
,
ΎΎN O
$str
ΎΎP T
,
ΎΎT U
$str
ΎΎV _
,
ΎΎ_ `
ewo
ΎΎa d
.
ΎΎd e(
codigo_lider_investigacion
ΎΎe 
)ΎΎ €
;ΎΎ€ 
ViewBag
ΏΏ 
.
ΏΏ )
codigo_operario_responsable
ΏΏ /
=
ΏΏ0 1
new
ΏΏ2 5

SelectList
ΏΏ6 @
(
ΏΏ@ A
db
ΏΏA C
.
ΏΏC D
AspNetUsers
ΏΏD O
,
ΏΏO P
$str
ΏΏQ U
,
ΏΏU V
$str
ΏΏW `
,
ΏΏ` a
ewo
ΏΏb e
.
ΏΏe f*
codigo_operario_responsableΏΏf 
)ΏΏ ‚
;ΏΏ‚ ƒ
ViewBag
ΐΐ 
.
ΐΐ (
pa_codigo_coordinador_prod
ΐΐ .
=
ΐΐ/ 0
new
ΐΐ1 4

SelectList
ΐΐ5 ?
(
ΐΐ? @
db
ΐΐ@ B
.
ΐΐB C
AspNetUsers
ΐΐC N
,
ΐΐN O
$str
ΐΐP T
,
ΐΐT U
$str
ΐΐV _
,
ΐΐ_ `
ewo
ΐΐa d
.
ΐΐd e(
pa_codigo_coordinador_prod
ΐΐe 
)ΐΐ €
;ΐΐ€ 
ViewBag
ΑΑ 
.
ΑΑ $
pa_codigo_gerente_prod
ΑΑ *
=
ΑΑ+ ,
new
ΑΑ- 0

SelectList
ΑΑ1 ;
(
ΑΑ; <
db
ΑΑ< >
.
ΑΑ> ?
AspNetUsers
ΑΑ? J
,
ΑΑJ K
$str
ΑΑL P
,
ΑΑP Q
$str
ΑΑR [
,
ΑΑ[ \
ewo
ΑΑ] `
.
ΑΑ` a$
pa_codigo_gerente_prod
ΑΑa w
)
ΑΑw x
;
ΑΑx y
ViewBag
ΒΒ 
.
ΒΒ '
pa_codigo_gerente_calidad
ΒΒ -
=
ΒΒ. /
new
ΒΒ0 3

SelectList
ΒΒ4 >
(
ΒΒ> ?
db
ΒΒ? A
.
ΒΒA B
AspNetUsers
ΒΒB M
,
ΒΒM N
$str
ΒΒO S
,
ΒΒS T
$str
ΒΒU ^
,
ΒΒ^ _
ewo
ΒΒ` c
.
ΒΒc d'
pa_codigo_gerente_calidad
ΒΒd }
)
ΒΒ} ~
;
ΒΒ~ 
ViewBag
ΓΓ 
.
ΓΓ $
pa_codigo_jefe_calidad
ΓΓ *
=
ΓΓ+ ,
new
ΓΓ- 0

SelectList
ΓΓ1 ;
(
ΓΓ; <
db
ΓΓ< >
.
ΓΓ> ?
AspNetUsers
ΓΓ? J
,
ΓΓJ K
$str
ΓΓL P
,
ΓΓP Q
$str
ΓΓR [
,
ΓΓ[ \
ewo
ΓΓ] `
.
ΓΓ` a$
pa_codigo_jefe_calidad
ΓΓa w
)
ΓΓw x
;
ΓΓx y
ViewBag
ΔΔ 
.
ΔΔ %
codigo_responsable_area
ΔΔ +
=
ΔΔ, -
new
ΔΔ. 1

SelectList
ΔΔ2 <
(
ΔΔ< =
db
ΔΔ= ?
.
ΔΔ? @
AspNetUsers
ΔΔ@ K
,
ΔΔK L
$str
ΔΔM Q
,
ΔΔQ R
$str
ΔΔS \
,
ΔΔ\ ]
ewo
ΔΔ^ a
.
ΔΔa b%
codigo_responsable_area
ΔΔb y
)
ΔΔy z
;
ΔΔz {
ViewBag
ΕΕ 
.
ΕΕ 
codigo_producto
ΕΕ #
=
ΕΕ$ %
new
ΕΕ& )

SelectList
ΕΕ* 4
(
ΕΕ4 5
db
ΕΕ5 7
.
ΕΕ7 8
	productos
ΕΕ8 A
,
ΕΕA B
$str
ΕΕC G
,
ΕΕG H
$str
ΕΕI Q
,
ΕΕQ R
ewo
ΕΕS V
.
ΕΕV W
producto
ΕΕW _
)
ΕΕ_ `
;
ΕΕ` a
ViewBag
ΖΖ 
.
ΖΖ +
codigo_disposicion_final_prod
ΖΖ 1
=
ΖΖ2 3
new
ΖΖ4 7

SelectList
ΖΖ8 B
(
ΖΖB C
db
ΖΖC E
.
ΖΖE F

tipos_data
ΖΖF P
,
ΖΖP Q
$str
ΖΖR V
,
ΖΖV W
$str
ΖΖX e
,
ΖΖe f
ewo
ΖΖg j
.
ΖΖj k,
codigo_disposicion_final_prodΖΖk 
)ΖΖ ‰
;ΖΖ‰ 
ViewBag
ΗΗ 
.
ΗΗ 
codigo_estado
ΗΗ !
=
ΗΗ" #
new
ΗΗ$ '

SelectList
ΗΗ( 2
(
ΗΗ2 3
db
ΗΗ3 5
.
ΗΗ5 6

tipos_data
ΗΗ6 @
,
ΗΗ@ A
$str
ΗΗB F
,
ΗΗF G
$str
ΗΗH U
,
ΗΗU V
ewo
ΗΗW Z
.
ΗΗZ [
codigo_estado
ΗΗ[ h
)
ΗΗh i
;
ΗΗi j
ViewBag
ΘΘ 
.
ΘΘ 
codigo_linea
ΘΘ  
=
ΘΘ! "
new
ΘΘ# &

SelectList
ΘΘ' 1
(
ΘΘ1 2
db
ΘΘ2 4
.
ΘΘ4 5

tipos_data
ΘΘ5 ?
,
ΘΘ? @
$str
ΘΘA E
,
ΘΘE F
$str
ΘΘG T
,
ΘΘT U
ewo
ΘΘV Y
.
ΘΘY Z
codigo_linea
ΘΘZ f
)
ΘΘf g
;
ΘΘg h
return
ΚΚ 
View
ΚΚ 
(
ΚΚ 
ewo
ΚΚ 
)
ΚΚ 
;
ΚΚ 
}
ΛΛ 	
public
ΞΞ 
async
ΞΞ 
Task
ΞΞ 
<
ΞΞ 
ActionResult
ΞΞ &
>
ΞΞ& '
Delete
ΞΞ( .
(
ΞΞ. /
long
ΞΞ/ 3
?
ΞΞ3 4
id
ΞΞ5 7
)
ΞΞ7 8
{
ΟΟ 	
if
ΠΠ 
(
ΠΠ 
id
ΠΠ 
==
ΠΠ 
null
ΠΠ 
)
ΠΠ 
{
ΡΡ 
return
ÒÒ 
new
ÒÒ "
HttpStatusCodeResult
ÒÒ /
(
ÒÒ/ 0
HttpStatusCode
ÒÒ0 >
.
ÒÒ> ?

BadRequest
ÒÒ? I
)
ÒÒI J
;
ÒÒJ K
}
ΣΣ 
ewo
ΤΤ 
ewo
ΤΤ 
=
ΤΤ 
await
ΤΤ 
db
ΤΤ 
.
ΤΤ 
ewo
ΤΤ "
.
ΤΤ" #
	FindAsync
ΤΤ# ,
(
ΤΤ, -
id
ΤΤ- /
)
ΤΤ/ 0
;
ΤΤ0 1
if
ΥΥ 
(
ΥΥ 
ewo
ΥΥ 
==
ΥΥ 
null
ΥΥ 
)
ΥΥ 
{
ΦΦ 
return
ΧΧ 
HttpNotFound
ΧΧ #
(
ΧΧ# $
)
ΧΧ$ %
;
ΧΧ% &
}
ΨΨ 
return
ΩΩ 
View
ΩΩ 
(
ΩΩ 
ewo
ΩΩ 
)
ΩΩ 
;
ΩΩ 
}
ΪΪ 	
[
έέ 	
HttpPost
έέ	 
,
έέ 

ActionName
έέ 
(
έέ 
$str
έέ &
)
έέ& '
]
έέ' (
[
ήή 	&
ValidateAntiForgeryToken
ήή	 !
]
ήή! "
public
ίί 
async
ίί 
Task
ίί 
<
ίί 
ActionResult
ίί &
>
ίί& '
DeleteConfirmed
ίί( 7
(
ίί7 8
long
ίί8 <
id
ίί= ?
)
ίί? @
{
ΰΰ 	
ewo
αα 
ewo
αα 
=
αα 
await
αα 
db
αα 
.
αα 
ewo
αα "
.
αα" #
	FindAsync
αα# ,
(
αα, -
id
αα- /
)
αα/ 0
;
αα0 1
db
ββ 
.
ββ 
ewo
ββ 
.
ββ 
Remove
ββ 
(
ββ 
ewo
ββ 
)
ββ 
;
ββ 
await
γγ 
db
γγ 
.
γγ 
SaveChangesAsync
γγ %
(
γγ% &
)
γγ& '
;
γγ' (
return
δδ 
RedirectToAction
δδ #
(
δδ# $
$str
δδ$ +
)
δδ+ ,
;
δδ, -
}
εε 	
[
ηη 	
HttpGet
ηη	 
]
ηη 
public
θθ 
async
θθ 
Task
θθ 
<
θθ 

JsonResult
θθ $
>
θθ$ %
GetProducts
θθ& 1
(
θθ1 2
string
θθ2 8
term
θθ9 =
)
θθ= >
{
ιι 	
var
λλ 
list
λλ 
=
λλ 
await
λλ 
DaoProductos
λλ )
.
λλ) *
DaoInstance
λλ* 5
.
λλ5 6
GetProductsAsync
λλ6 F
(
λλF G
)
λλG H
;
λλH I
return
νν 
Json
νν 
(
νν 
list
νν 
.
νν 
Where
νν "
(
νν" #
x
νν# $
=>
νν% '
x
νν( )
.
νν) *

StartsWith
νν* 4
(
ξξ 
term
ξξ 
,
ξξ 
StringComparison
ξξ &
.
ξξ& '&
CurrentCultureIgnoreCase
ξξ' ?
)
ξξ? @
)
ξξ@ A
,
ξξA B!
JsonRequestBehavior
οο '
.
οο' (
AllowGet
οο( 0
)
οο0 1
;
οο1 2
}
ππ 	
[
ςς 	
HttpPost
ςς	 
]
ςς 
public
σσ 
async
σσ 
Task
σσ 
<
σσ 

JsonResult
σσ $
>
σσ$ %
GetAcionsList
σσ& 3
(
σσ3 4
long
σσ4 8
id_ewo
σσ9 ?
)
σσ? @
{
ττ 	
var
υυ 
actList
υυ 
=
υυ 
await
υυ 
DaoAcciones
υυ  +
.
υυ+ ,
DaoInstance
υυ, 7
.
υυ7 8
GetActionsList
υυ8 F
(
υυF G
id_ewo
υυG M
)
υυM N
;
υυN O
List
φφ 
<
φφ 
CustomInmActions
φφ !
>
φφ! "
kla
φφ# &
=
φφ' (
new
φφ) ,
List
φφ- 1
<
φφ1 2
CustomInmActions
φφ2 B
>
φφB C
(
φφC D
)
φφD E
;
φφE F
actList
χχ 
.
χχ 
ForEach
χχ 
(
χχ 
x
χχ 
=>
χχ  
{
ψψ 
kla
ωω 
.
ωω 
Add
ωω 
(
ωω 
new
ωω 
CustomInmActions
ωω ,
(
ωω, -
)
ωω- .
{
ϊϊ 

codigo_ewo
ϋϋ 
=
ϋϋ  
x
ϋϋ! "
.
ϋϋ" #

codigo_ewo
ϋϋ# -
,
ϋϋ- .
accion
όό 
=
όό 
x
όό 
.
όό 
accion
όό %
,
όό% &
fecha_compromiso
ύύ $
=
ύύ% &
x
ύύ' (
.
ύύ( )
fecha_compromiso
ύύ) 9
.
ύύ9 :
Value
ύύ: ?
.
ύύ? @
ToString
ύύ@ H
(
ύύH I
$str
ύύI U
)
ύύU V
,
ύύV W
id
ώώ 
=
ώώ 
x
ώώ 
.
ώώ 
id
ώώ 
,
ώώ  
codigo_responsable
ÿÿ &
=
ÿÿ' (
x
ÿÿ) *
.
ÿÿ* + 
codigo_responsable
ÿÿ+ =
,
ÿÿ= >#
evidencia_efectividad
€€ )
=
€€* +
x
€€, -
.
€€- .#
evidencia_efectividad
€€. C
}
 
)
 
;
 
}
‚‚ 
)
‚‚ 
;
‚‚ 
return
„„ 
Json
„„ 
(
„„ 
kla
„„ 
)
„„ 
;
„„ 
}
…… 	
[
‡‡ 	
HttpPost
‡‡	 
]
‡‡ 
public
 
async
 
Task
 
<
 

JsonResult
 $
>
$ %
GetEwoAsync
& 1
(
1 2
int
2 5
id
6 8
)
8 9
{
‰‰ 	
var
 
ewo
 
=
 
await
 
DaoEwo
 "
.
" #
DaoInstance
# .
.
. /

GetEwoDesc
/ 9
(
9 :
id
: <
)
< =
;
= >
return
‹‹ 
Json
‹‹ 
(
‹‹ 
ewo
‹‹ 
)
‹‹ 
;
‹‹ 
}
 	
[
 	
HttpPost
	 
]
 
public
 
async
 
Task
 
<
 

JsonResult
 $
>
$ %
GetZeroQuestions
& 6
(
6 7
int
7 :
id_tipom
; C
)
C D
{
 	
var
’’ 
res
’’ 
=
’’ 
await
’’ 
DaoZero
’’ #
.
’’# $
DaoInstance
’’$ /
.
’’/ 0
GetZeroQuestions
’’0 @
(
’’@ A
id_tipom
’’A I
)
’’I J
;
’’J K
return
““ 
Json
““ 
(
““ 
res
““ 
)
““ 
;
““ 
}
”” 	
public
–– 
async
–– 
Task
–– 
<
–– 

JsonResult
–– $
>
––$ %"
GetDropDownListAsync
––& :
(
––: ;
int
––; >
from
––? C
,
––C D
int
––E H
id
––I K
)
––K L
{
—— 	

SelectList
›› 
List
›› 
=
›› 
null
›› "
;
››" #
switch
 
(
 
from
 
)
 
{
 
case
 
$num
 
:
 
var
΅΅ 
listA
΅΅ 
=
΅΅ 
await
΅΅  %
DaoAreas
΅΅& .
.
΅΅. /
DaoInstance
΅΅/ :
.
΅΅: ;
GetAreasAsync
΅΅; H
(
΅΅H I
id
΅΅I K
)
΅΅K L
;
΅΅L M
listA
ΆΆ 
.
ΆΆ 
Insert
ΆΆ  
(
ΆΆ  !
$num
ΆΆ! "
,
ΆΆ" #
new
ΆΆ$ '
Database
ΆΆ( 0
.
ΆΆ0 1
areas_productivas
ΆΆ1 B
(
ΆΆB C
)
ΆΆC D
{
ΆΆE F
id
ΆΆG I
=
ΆΆJ K
$num
ΆΆL M
,
ΆΆM N
descripcion
ΆΆO Z
=
ΆΆ[ \
$str
ΆΆ] q
}
ΆΆr s
)
ΆΆs t
;
ΆΆt u
List
££ 
=
££ 
new
££ 

SelectList
££ )
(
££) *
listA
££* /
,
££/ 0
$str
££1 5
,
££5 6
$str
££7 D
)
££D E
;
££E F
break
¤¤ 
;
¤¤ 
case
¥¥ 
$num
¥¥ 
:
¥¥ 
var
§§ 
listL
§§ 
=
§§ 
await
§§  %
	DaoLineas
§§& /
.
§§/ 0
DaoInstance
§§0 ;
.
§§; <
GetLinesAsync
§§< I
(
§§I J
id
§§J L
)
§§L M
;
§§M N
listL
¨¨ 
.
¨¨ 
Insert
¨¨  
(
¨¨  !
$num
¨¨! "
,
¨¨" #
new
¨¨$ '
Database
¨¨( 0
.
¨¨0 1
lineas
¨¨1 7
(
¨¨7 8
)
¨¨8 9
{
¨¨: ;
id
¨¨< >
=
¨¨? @
$num
¨¨A B
,
¨¨B C
descripcion
¨¨D O
=
¨¨P Q
$str
¨¨R g
}
¨¨h i
)
¨¨i j
;
¨¨j k
List
©© 
=
©© 
new
©© 

SelectList
©© )
(
©©) *
listL
©©* /
,
©©/ 0
$str
©©1 5
,
©©5 6
$str
©©7 D
)
©©D E
;
©©E F
break
ªª 
;
ªª 
}
«« 
return
¬¬ 
Json
¬¬ 
(
¬¬ 
new
¬¬ 

SelectList
¬¬ &
(
¬¬& '
List
¬¬' +
,
¬¬+ ,
$str
¬¬- 4
,
¬¬4 5
$str
¬¬6 <
)
¬¬< =
)
¬¬= >
;
¬¬> ?
}
­­ 	
private
―― 
async
―― 
Task
―― 
<
―― (
ReporteIncidentesViewModel
―― 5
>
――5 6

BuildModel
――7 A
(
――A B
long
――B F
id
――G I
)
――I J
{
°° 	
var
±± 
	viewModel
±± 
=
±± 
new
±± (
ReporteIncidentesViewModel
±±  :
(
±±: ;
)
±±; <
;
±±< =
if
³³ 
(
³³ 
id
³³ 
>
³³ 
$num
³³ 
)
³³ 
{
΄΄ 
	viewModel
µµ 
=
µµ 
await
µµ !
DaoEwo
µµ" (
.
µµ( )
DaoInstance
µµ) 4
.
µµ4 5

GetEwoDesc
µµ5 ?
(
µµ? @
id
µµ@ B
)
µµB C
;
µµC D
	viewModel
·· 
.
·· 
	FchCierre
·· #
=
··$ %
DateTime
··& .
.
··. /
Now
··/ 2
.
··2 3
ToString
··3 ;
(
··; <
$str
··< H
)
··H I
;
··I J
}
ΈΈ 
else
ΉΉ 
{
ΊΊ 
	viewModel
»» 
.
»» #
FchApertInvestigacion
»» /
=
»»0 1
DateTime
»»2 :
.
»»: ;
Now
»»; >
.
»»> ?
ToString
»»? G
(
»»G H
$str
»»H T
)
»»T U
;
»»U V
	viewModel
ΌΌ 
.
ΌΌ %
FchEntregaInvestigacion
ΌΌ 1
=
ΌΌ2 3
DateTime
ΌΌ4 <
.
ΌΌ< =
Now
ΌΌ= @
.
ΌΌ@ A
ToString
ΌΌA I
(
ΌΌI J
$str
ΌΌJ V
)
ΌΌV W
;
ΌΌW X
	viewModel
½½ 
.
½½ 
Consecutivo
½½ %
=
½½& '
$str
½½( ,
+
½½- .
await
½½/ 4
DaoEwo
½½5 ;
.
½½; <
DaoInstance
½½< G
.
½½G H 
GetLastConsecutive
½½H Z
(
½½Z [
)
½½[ \
;
½½\ ]
}
ΎΎ 
var
ΓΓ 
listTI
ΓΓ 
=
ΓΓ 
await
ΓΓ 
DaoTiposData
ΓΓ +
.
ΓΓ+ ,
DaoInstance
ΓΓ, 7
.
ΓΓ7 8
GetTypesAsync
ΓΓ8 E
(
ΓΓE F
INCIDENTSTYPES
ΓΓF T
)
ΓΓT U
;
ΓΓU V
listTI
ΔΔ 
.
ΔΔ 
Insert
ΔΔ 
(
ΔΔ 
$num
ΔΔ 
,
ΔΔ 
new
ΔΔ  
Database
ΔΔ! )
.
ΔΔ) *

tipos_data
ΔΔ* 4
(
ΔΔ4 5
)
ΔΔ5 6
{
ΔΔ7 8
id
ΔΔ9 ;
=
ΔΔ< =
$num
ΔΔ> ?
,
ΔΔ? @
descripcion
ΔΔA L
=
ΔΔM N
$str
ΔΔO p
}
ΔΔq r
)
ΔΔr s
;
ΔΔs t
	viewModel
ΕΕ 
.
ΕΕ 
TipoIncidenteList
ΕΕ '
=
ΕΕ( )
new
ΕΕ* -

SelectList
ΕΕ. 8
(
ΕΕ8 9
listTI
ΕΕ9 ?
,
ΕΕ? @
$str
ΕΕA E
,
ΕΕE F
$str
ΕΕG T
)
ΕΕT U
;
ΕΕU V
var
ΘΘ 
listPlantas
ΘΘ 
=
ΘΘ 
await
ΘΘ #

DaoPlantas
ΘΘ$ .
.
ΘΘ. /
DaoInstance
ΘΘ/ :
.
ΘΘ: ;
GetPlantasAsync
ΘΘ; J
(
ΘΘJ K
)
ΘΘK L
;
ΘΘL M
listPlantas
ΙΙ 
.
ΙΙ 
Insert
ΙΙ 
(
ΙΙ 
$num
ΙΙ  
,
ΙΙ  !
new
ΙΙ" %
Database
ΙΙ& .
.
ΙΙ. /
plantas
ΙΙ/ 6
(
ΙΙ6 7
)
ΙΙ7 8
{
ΙΙ9 :
id
ΙΙ; =
=
ΙΙ> ?
$num
ΙΙ@ A
,
ΙΙA B
descripcion
ΙΙC N
=
ΙΙO P
$str
ΙΙQ g
}
ΙΙh i
)
ΙΙi j
;
ΙΙj k
	viewModel
ΚΚ 
.
ΚΚ 
PlantasList
ΚΚ !
=
ΚΚ" #
new
ΚΚ$ '

SelectList
ΚΚ( 2
(
ΚΚ2 3
listPlantas
ΚΚ3 >
,
ΚΚ> ?
$str
ΚΚ@ D
,
ΚΚD E
$str
ΚΚF S
)
ΚΚS T
;
ΚΚT U
var
ΝΝ 
listA
ΝΝ 
=
ΝΝ 
await
ΝΝ 
DaoTiposData
ΝΝ *
.
ΝΝ* +
DaoInstance
ΝΝ+ 6
.
ΝΝ6 7
GetTypesAsync
ΝΝ7 D
(
ΝΝD E

AREASTYPES
ΝΝE O
)
ΝΝO P
;
ΝΝP Q
listA
ΞΞ 
.
ΞΞ 
Insert
ΞΞ 
(
ΞΞ 
$num
ΞΞ 
,
ΞΞ 
new
ΞΞ 
Database
ΞΞ  (
.
ΞΞ( )

tipos_data
ΞΞ) 3
(
ΞΞ3 4
)
ΞΞ4 5
{
ΞΞ6 7
id
ΞΞ8 :
=
ΞΞ; <
$num
ΞΞ= >
,
ΞΞ> ?
descripcion
ΞΞ@ K
=
ΞΞL M
$str
ΞΞN b
}
ΞΞc d
)
ΞΞd e
;
ΞΞe f
	viewModel
ΟΟ 
.
ΟΟ 
	AreasList
ΟΟ 
=
ΟΟ  !
new
ΟΟ" %

SelectList
ΟΟ& 0
(
ΟΟ0 1
listA
ΟΟ1 6
,
ΟΟ6 7
$str
ΟΟ8 <
,
ΟΟ< =
$str
ΟΟ> K
)
ΟΟK L
;
ΟΟL M
var
ÒÒ 
listL
ÒÒ 
=
ÒÒ 
await
ÒÒ 
DaoTiposData
ÒÒ *
.
ÒÒ* +
DaoInstance
ÒÒ+ 6
.
ÒÒ6 7
GetTypesAsync
ÒÒ7 D
(
ÒÒD E

LINESTYPES
ÒÒE O
)
ÒÒO P
;
ÒÒP Q
listL
ΣΣ 
.
ΣΣ 
Insert
ΣΣ 
(
ΣΣ 
$num
ΣΣ 
,
ΣΣ 
new
ΣΣ 
Database
ΣΣ  (
.
ΣΣ( )

tipos_data
ΣΣ) 3
(
ΣΣ3 4
)
ΣΣ4 5
{
ΣΣ6 7
id
ΣΣ8 :
=
ΣΣ; <
$num
ΣΣ= >
,
ΣΣ> ?
descripcion
ΣΣ@ K
=
ΣΣL M
$str
ΣΣN c
}
ΣΣd e
)
ΣΣe f
;
ΣΣf g
	viewModel
ΤΤ 
.
ΤΤ 

LineasList
ΤΤ  
=
ΤΤ! "
new
ΤΤ# &

SelectList
ΤΤ' 1
(
ΤΤ1 2
listL
ΤΤ2 7
,
ΤΤ7 8
$str
ΤΤ9 =
,
ΤΤ= >
$str
ΤΤ? L
)
ΤΤL M
;
ΤΤM N
var
ΨΨ 
listUA
ΨΨ 
=
ΨΨ 
await
ΨΨ 
DaoUsuarios
ΨΨ *
.
ΨΨ* +
DaoInstance
ΨΨ+ 6
.
ΨΨ6 7
GetUsersByRole
ΨΨ7 E
(
ΨΨE F
	ADMINROLE
ΨΨF O
)
ΨΨO P
;
ΨΨP Q
listUA
ΩΩ 
.
ΩΩ 
Insert
ΩΩ 
(
ΩΩ 
$num
ΩΩ 
,
ΩΩ 
new
ΩΩ  
UsersUI
ΩΩ! (
(
ΩΩ( )
)
ΩΩ) *
{
ΩΩ+ ,
Id
ΩΩ- /
=
ΩΩ0 1
$str
ΩΩ2 5
,
ΩΩ5 6
NombresCommpletos
ΩΩ7 H
=
ΩΩI J
$str
ΩΩK b
}
ΩΩc d
)
ΩΩd e
;
ΩΩe f
	viewModel
ΪΪ 
.
ΪΪ 
AdminUsersList
ΪΪ $
=
ΪΪ% &
new
ΪΪ' *

SelectList
ΪΪ+ 5
(
ΪΪ5 6
listUA
ΪΪ6 <
,
ΪΪ< =
$str
ΪΪ> B
,
ΪΪB C
$str
ΪΪD W
)
ΪΪW X
;
ΪΪX Y
var
έέ 
listUO
έέ 
=
έέ 
await
έέ 
DaoUsuarios
έέ *
.
έέ* +
DaoInstance
έέ+ 6
.
έέ6 7
GetUsersByRole
έέ7 E
(
έέE F
OPERATINGROLE
έέF S
)
έέS T
;
έέT U
listUO
ήή 
.
ήή 
Insert
ήή 
(
ήή 
$num
ήή 
,
ήή 
new
ήή  
UsersUI
ήή! (
(
ήή( )
)
ήή) *
{
ήή+ ,
Id
ήή- /
=
ήή0 1
$str
ήή2 5
,
ήή5 6
NombresCommpletos
ήή7 H
=
ήήI J
$str
ήήK b
}
ήήc d
)
ήήd e
;
ήήe f
	viewModel
ίί 
.
ίί  
OperatingUsersList
ίί (
=
ίί) *
new
ίί+ .

SelectList
ίί/ 9
(
ίί9 :
listUO
ίί: @
,
ίί@ A
$str
ίίB F
,
ίίF G
$str
ίίH [
)
ίί[ \
;
ίί\ ]
var
ββ 
listDF
ββ 
=
ββ 
await
ββ 
DaoTiposData
ββ +
.
ββ+ ,
DaoInstance
ββ, 7
.
ββ7 8
GetTypesAsync
ββ8 E
(
ββE F
FINALDISPOSITION
ββF V
)
ββV W
;
ββW X
listDF
γγ 
.
γγ 
Insert
γγ 
(
γγ 
$num
γγ 
,
γγ 
new
γγ  
Database
γγ! )
.
γγ) *

tipos_data
γγ* 4
(
γγ4 5
)
γγ5 6
{
γγ7 8
id
γγ9 ;
=
γγ< =
$num
γγ> ?
,
γγ? @
descripcion
γγA L
=
γγM N
$str
γγO j
}
γγk l
)
γγl m
;
γγm n
	viewModel
δδ 
.
δδ 
DisposicionFList
δδ &
=
δδ' (
new
δδ) ,

SelectList
δδ- 7
(
δδ7 8
listDF
δδ8 >
,
δδ> ?
$str
δδ@ D
,
δδD E
$str
δδF S
)
δδS T
;
δδT U
var
ηη 
listTF
ηη 
=
ηη 
await
ηη 
DaoTiposData
ηη +
.
ηη+ ,
DaoInstance
ηη, 7
.
ηη7 8
GetTypesAsync
ηη8 E
(
ηηE F
TOPFIVEFORZERO
ηηF T
)
ηηT U
;
ηηU V
	viewModel
θθ 
.
θθ  
TopFiveForZeroList
θθ (
=
θθ) *
listTF
θθ+ 1
;
θθ1 2
return
κκ 
	viewModel
κκ 
;
κκ 
}
λλ 	
private
νν 
async
νν 
Task
νν 
<
νν 
RequestResponse
νν *
>
νν* +
CreateEwoObject
νν, ;
(
νν; <(
ReporteIncidentesViewModel
νν< V
ewr
ννW Z
,
ννZ [
bool
νν\ `
bReporte
ννa i
)
ννi j
{
ξξ 	
RequestResponse
οο 
rr
οο 
=
οο  
new
οο! $
RequestResponse
οο% 4
(
οο4 5
)
οο5 6
;
οο6 7
ewo
ππ 
ewo
ππ 
=
ππ 
new
ππ 
ewo
ππ 
(
ππ 
)
ππ 
;
ππ  "
JavaScriptSerializer
ςς  
ser
ςς! $
=
ςς% &
new
ςς' *"
JavaScriptSerializer
ςς+ ?
(
ςς? @
)
ςς@ A
;
ςςA B
List
σσ 
<
σσ !
acciones_inmediatas
σσ $
>
σσ$ %
accInm
σσ& ,
=
σσ- .
ser
σσ/ 2
.
σσ2 3
Deserialize
σσ3 >
<
σσ> ?
List
σσ? C
<
σσC D!
acciones_inmediatas
σσD W
>
σσW X
>
σσX Y
(
σσY Z
ewr
σσZ ]
.
σσ] ^
Cmd
σσ^ a
)
σσa b
;
σσb c
ewo
υυ 
.
υυ 
consecutivo
υυ 
=
υυ 
long
υυ "
.
υυ" #
Parse
υυ# (
(
υυ( )
ewr
υυ) ,
.
υυ, -
Consecutivo
υυ- 8
)
υυ8 9
;
υυ9 :
ewo
φφ 
.
φφ *
fecha_apertura_investigacion
φφ ,
=
φφ- .
ewr
φφ/ 2
.
φφ2 3#
FchApertInvestigacion
φφ3 H
==
φφI K
null
φφL P
?
φφQ R
DateTime
φφS [
.
φφ[ \
Now
φφ\ _
:
φφ` a
DateTime
χχ 
.
χχ 

ParseExact
χχ #
(
χχ# $
ewr
χχ$ '
.
χχ' (#
FchApertInvestigacion
χχ( =
,
χχ= >
$str
χχ? K
,
χχK L
CultureInfo
χχM X
.
χχX Y
InvariantCulture
χχY i
)
χχi j
;
χχj k
ewo
ωω 
.
ωω 
hora_evento
ωω 
=
ωω 
TimeSpan
ωω &
.
ωω& '
Parse
ωω' ,
(
ωω, -
ewr
ωω- 0
.
ωω0 1
HrEvento
ωω1 9
)
ωω9 :
;
ωω: ;
ewo
ϊϊ 
.
ϊϊ )
fecha_entrega_investigacion
ϊϊ +
=
ϊϊ, -
ewr
ϊϊ. 1
.
ϊϊ1 2%
FchEntregaInvestigacion
ϊϊ2 I
==
ϊϊJ L
null
ϊϊM Q
?
ϊϊR S
DateTime
ϊϊT \
.
ϊϊ\ ]
Now
ϊϊ] `
:
ϊϊa b
DateTime
ϋϋ 
.
ϋϋ 

ParseExact
ϋϋ #
(
ϋϋ# $
ewr
ϋϋ$ '
.
ϋϋ' (%
FchEntregaInvestigacion
ϋϋ( ?
,
ϋϋ? @
$str
ϋϋA M
,
ϋϋM N
CultureInfo
ϋϋO Z
.
ϋϋZ [
InvariantCulture
ϋϋ[ k
)
ϋϋk l
;
ϋϋl m
ewo
ύύ 
.
ύύ (
hora_entrega_investigacion
ύύ *
=
ύύ+ ,
TimeSpan
ύύ- 5
.
ύύ5 6
Parse
ύύ6 ;
(
ύύ; <
ewr
ύύ< ?
.
ύύ? @$
HrEntregaInvestigacion
ύύ@ V
)
ύύV W
;
ύύW X
ewo
ώώ 
.
ώώ 
codigo_linea
ώώ 
=
ώώ 
ewr
ώώ "
.
ώώ" #
IdLinea
ώώ# *
;
ώώ* +
ewo
ÿÿ 
.
ÿÿ 
etapa
ÿÿ 
=
ÿÿ 
ewr
ÿÿ 
.
ÿÿ 
EtapaProceso
ÿÿ (
;
ÿÿ( )
ewo
€€ 
.
€€ &
codigo_coordinador_turno
€€ (
=
€€) *
ewr
€€+ .
.
€€. /
	IdCoorSup
€€/ 8
;
€€8 9
ewo
 
.
 %
codigo_responsable_area
 '
=
( )
ewr
* -
.
- .

IdRespArea
. 8
;
8 9
ewo
‚‚ 
.
‚‚ )
codigo_operario_responsable
‚‚ +
=
‚‚, -
ewr
‚‚. 1
.
‚‚1 2
IdOpeRes
‚‚2 :
;
‚‚: ;
ewo
ƒƒ 
.
ƒƒ (
codigo_lider_investigacion
ƒƒ *
=
ƒƒ+ ,
ewr
ƒƒ- 0
.
ƒƒ0 1
IdLidInv
ƒƒ1 9
;
ƒƒ9 :
ewo
„„ 
.
„„ 
producto
„„ 
=
„„ 
ewr
„„ 
.
„„ 
NombreProducto
„„ -
;
„„- .
ewo
…… 
.
…… !
codigo_sap_producto
…… #
=
……$ %
ewr
……& )
.
……) *
	CodigoSAP
……* 3
;
……3 4
ewo
†† 
.
†† 
lote_producto
†† 
=
†† 
ewr
††  #
.
††# $
Lote
††$ (
;
††( )
ewo
‡‡ 
.
‡‡  
toneladas_producto
‡‡ "
=
‡‡# $
ewr
‡‡% (
.
‡‡( )
	Toneladas
‡‡) 2
;
‡‡2 3
ewo
 
.
 
numero_cajas
 
=
 
ewr
 "
.
" #
NumCajas
# +
;
+ ,
ewo
‰‰ 
.
‰‰ 
numero_pallet
‰‰ 
=
‰‰ 
ewr
‰‰  #
.
‰‰# $
	NumPallet
‰‰$ -
;
‰‰- .
ewo
 
.
 
unidades
 
=
 
ewr
 
.
 
Unidades
 '
;
' (
ewo
‹‹ 
.
‹‹ 
tamano_formato
‹‹ 
=
‹‹  
ewr
‹‹! $
.
‹‹$ %
TamanoFormato
‹‹% 2
;
‹‹2 3
ewo
 
.
 !
tiempo_linea_parada
 #
=
$ %
ewr
& )
.
) *
TiempoLineaParada
* ;
;
; <
ewo
 
.
 *
descripcion_general_problema
 ,
=
- .
ewr
/ 2
.
2 3!
DescripcionProblema
3 F
;
F G
if
‘‘ 
(
‘‘ 
bReporte
‘‘ 
)
‘‘ 
{
’’ 
ewo
““ 
.
““ 
codigo_estado
““ !
=
““" #
$num
““$ %
;
““% &
ewo
”” 
.
”” 
autor
”” 
=
”” 
User
””  
.
””  !
Identity
””! )
.
””) *
	GetUserId
””* 3
(
””3 4
)
””4 5
;
””5 6
long
–– 
reg
–– 
=
–– 
await
––  
DaoEwo
––! '
.
––' (
DaoInstance
––( 3
.
––3 4
AddEwo
––4 :
(
––: ;
ewo
––; >
)
––> ?
;
––? @
if
 
(
 
reg
 
>
 
$num
 
)
 
{
™™ 
foreach
 
(
 
var
  
item
! %
in
& (
accInm
) /
)
/ 0
{
›› 
item
 
.
 

codigo_ewo
 '
=
( )
reg
* -
;
- .
}
 
await
 
DaoAcciones
 %
.
% &
DaoInstance
& 1
.
1 2
AddAcciones
2 =
(
= >
accInm
> D
)
D E
;
E F
}
   
}
΅΅ 
else
ΆΆ 
{
££ 
ewo
¤¤ 
.
¤¤ 
autor
¤¤ 
=
¤¤ 
(
¤¤ 
await
¤¤ "
DaoEwo
¤¤# )
.
¤¤) *
DaoInstance
¤¤* 5
.
¤¤5 6
GetAutorAsync
¤¤6 C
(
¤¤C D
ewr
¤¤D G
.
¤¤G H
Id
¤¤H J
)
¤¤J K
)
¤¤K L
;
¤¤L M
ewo
¥¥ 
.
¥¥ 
codigo_estado
¥¥ !
=
¥¥" #
$num
¥¥$ %
;
¥¥% &
ewo
¦¦ 
.
¦¦  
usuario_procesador
¦¦ &
=
¦¦' (
User
¦¦) -
.
¦¦- .
Identity
¦¦. 6
.
¦¦6 7
	GetUserId
¦¦7 @
(
¦¦@ A
)
¦¦A B
;
¦¦B C
ewo
¨¨ 
.
¨¨ 
id
¨¨ 
=
¨¨ 
ewr
¨¨ 
.
¨¨ 
Id
¨¨ 
;
¨¨  
ewo
©© 
.
©© 

ap_nivel_1
©© 
=
©©  
ewr
©©! $
.
©©$ %
ArbPerd1
©©% -
;
©©- .
ewo
ªª 
.
ªª 

ap_nivel_2
ªª 
=
ªª  
ewr
ªª! $
.
ªª$ %
ArbPerd2
ªª% -
;
ªª- .
ewo
«« 
.
«« 

ap_nivel_3
«« 
=
««  
ewr
««! $
.
««$ %
ArbPerd3
««% -
;
««- .
ewo
¬¬ 
.
¬¬ 

ap_nivel_4
¬¬ 
=
¬¬  
ewr
¬¬! $
.
¬¬$ %
ArbPerd4
¬¬% -
;
¬¬- .
ewo
­­ 
.
­­ 
ap_nivel_otro
­­ !
=
­­" #
ewr
­­$ '
.
­­' (
ArbPerdO
­­( 0
;
­­0 1
ewo
―― 
.
―― 
tipo_incidente
―― "
=
――# $
ewr
――% (
.
――( )
TipoIncidente
――) 6
;
――6 7
ewo
°° 
.
°° 

recurrente
°° 
=
°°  
ewr
°°! $
.
°°$ %

Recurrente
°°% /
!=
°°0 2
null
°°3 7
?
°°8 9
true
°°: >
:
°°? @
false
°°A F
;
°°F G
ewo
²² 
.
²² 
numero_airsweb
²² "
=
²²# $
ewr
²²% (
.
²²( )

NumAirsweb
²²) 3
;
²²3 4
ewo
³³ 
.
³³ &
tiempo_ingresado_airsweb
³³ ,
=
³³- .
ewr
³³/ 2
.
³³2 3
TiempoAirsWeb
³³3 @
;
³³@ A
ewo
΄΄ 
.
΄΄ 
tiempo_inspeccion
΄΄ %
=
΄΄& '
ewr
΄΄( +
.
΄΄+ ,
TiempoInpeccion
΄΄, ;
;
΄΄; <
ewo
µµ 
.
µµ 
costo_incidente
µµ #
=
µµ$ %
Convert
µµ& -
.
µµ- .
	ToDecimal
µµ. 7
(
µµ7 8
ewr
µµ8 ;
.
µµ; <
CostoIncidente
µµ< J
)
µµJ K
;
µµK L
ewo
¶¶ 
.
¶¶ #
costo_incidente_euros
¶¶ )
=
¶¶* +
Convert
¶¶, 3
.
¶¶3 4
	ToDecimal
¶¶4 =
(
¶¶= >
ewr
¶¶> A
.
¶¶A B!
CostoIncidenteEuros
¶¶B U
)
¶¶U V
;
¶¶V W
ewo
·· 
.
·· +
codigo_disposicion_final_prod
·· 1
=
··2 3
ewr
··4 7
.
··7 8
IdDisposicionF
··8 F
;
··F G
ewo
ΈΈ 
.
ΈΈ  
cantidad_toneladas
ΈΈ &
=
ΈΈ' (
ewr
ΈΈ) ,
.
ΈΈ, -
DFToneladas
ΈΈ- 8
;
ΈΈ8 9
ewo
ΊΊ 
.
ΊΊ 
gemba
ΊΊ 
=
ΊΊ 
ewr
ΊΊ 
.
ΊΊ  
GembaOk
ΊΊ  '
!=
ΊΊ( *
null
ΊΊ+ /
?
ΊΊ0 1
true
ΊΊ2 6
:
ΊΊ7 8
false
ΊΊ9 >
;
ΊΊ> ?
ewo
»» 
.
»» 
gembutsu
»» 
=
»» 
ewr
»» "
.
»»" #

GembutsuOk
»»# -
!=
»». 0
null
»»1 5
?
»»6 7
true
»»8 <
:
»»= >
false
»»? D
;
»»D E
ewo
ΌΌ 
.
ΌΌ 
genjitsu
ΌΌ 
=
ΌΌ 
ewr
ΌΌ "
.
ΌΌ" #

GenjitsuOk
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
ΐΐ 
.
ΐΐ 
five_g_image
ΐΐ  
=
ΐΐ! "
ewr
ΐΐ# &
.
ΐΐ& '
ImageGs
ΐΐ' .
!=
ΐΐ/ 1
null
ΐΐ2 6
?
ΐΐ7 8
ewr
ΐΐ9 <
.
ΐΐ< =
ImageGs
ΐΐ= D
.
ΐΐD E
FileName
ΐΐE M
:
ΐΐN O
$str
ΐΐP R
;
ΐΐR S
ewo
ΑΑ 
.
ΑΑ 
images_path
ΑΑ 
=
ΑΑ  !
ewr
ΑΑ" %
.
ΑΑ% &
ImageFen
ΑΑ& .
!=
ΑΑ/ 1
null
ΑΑ2 6
?
ΑΑ7 8
ewr
ΑΑ9 <
.
ΑΑ< =
ImageFen
ΑΑ= E
.
ΑΑE F
FileName
ΑΑF N
:
ΑΑO P
$str
ΑΑQ S
;
ΑΑS T 
SaveImageEwoServer
ΓΓ "
(
ΓΓ" #
ewr
ΓΓ# &
.
ΓΓ& '
ImageGs
ΓΓ' .
)
ΓΓ. /
;
ΓΓ/ 0 
SaveImageEwoServer
ΔΔ "
(
ΔΔ" #
ewr
ΔΔ# &
.
ΔΔ& '
ImageFen
ΔΔ' /
)
ΔΔ/ 0
;
ΔΔ0 1
ewo
ΖΖ 
.
ΖΖ 
que
ΖΖ 
=
ΖΖ 
ewr
ΖΖ 
.
ΖΖ 
QueDesc
ΖΖ %
;
ΖΖ% &
ewo
ΗΗ 
.
ΗΗ 
donde
ΗΗ 
=
ΗΗ 
ewr
ΗΗ 
.
ΗΗ  
	DondeDesc
ΗΗ  )
;
ΗΗ) *
ewo
ΘΘ 
.
ΘΘ 
cuando
ΘΘ 
=
ΘΘ 
ewr
ΘΘ  
.
ΘΘ  !

CuandoDesc
ΘΘ! +
;
ΘΘ+ ,
ewo
ΙΙ 
.
ΙΙ 
quien
ΙΙ 
=
ΙΙ 
ewr
ΙΙ 
.
ΙΙ  
	QuienDesc
ΙΙ  )
;
ΙΙ) *
ewo
ΚΚ 
.
ΚΚ 
cual
ΚΚ 
=
ΚΚ 
ewr
ΚΚ 
.
ΚΚ 
CualDesc
ΚΚ '
;
ΚΚ' (
ewo
ΛΛ 
.
ΛΛ 
como
ΛΛ 
=
ΛΛ 
ewr
ΛΛ 
.
ΛΛ 
ComoDesc
ΛΛ '
;
ΛΛ' (
ewo
ΜΜ 
.
ΜΜ "
descripcion_fenomeno
ΜΜ (
=
ΜΜ) *
ewr
ΜΜ+ .
.
ΜΜ. /
FenomenoDesc
ΜΜ/ ;
;
ΜΜ; <
ewo
ΟΟ 
.
ΟΟ 
maquina4m_desc
ΟΟ "
=
ΟΟ# $
ewr
ΟΟ% (
.
ΟΟ( )
Maquina4MDesc
ΟΟ) 6
;
ΟΟ6 7
ewo
ΠΠ 
.
ΠΠ 
metodo4m_desc
ΠΠ !
=
ΠΠ" #
ewr
ΠΠ$ '
.
ΠΠ' (
Metodo4MDesc
ΠΠ( 4
;
ΠΠ4 5
ewo
ΡΡ 
.
ΡΡ 
manoobra4m_desc
ΡΡ #
=
ΡΡ$ %
ewr
ΡΡ& )
.
ΡΡ) *
ManoObra4MDesc
ΡΡ* 8
;
ΡΡ8 9
ewo
ÒÒ 
.
ÒÒ 
material4m_desc
ÒÒ #
=
ÒÒ$ %
ewr
ÒÒ& )
.
ÒÒ) *
Material4MDesc
ÒÒ* 8
;
ÒÒ8 9
decimal
ΤΤ 
maq4m
ΤΤ 
=
ΤΤ 
decimal
ΤΤ  '
.
ΤΤ' (
Parse
ΤΤ( -
(
ΤΤ- .
ewr
ΤΤ. 1
.
ΤΤ1 2
Maquina4MTotal
ΤΤ2 @
.
ΤΤ@ A
Replace
ΤΤA H
(
ΤΤH I
$str
ΤΤI L
,
ΤΤL M
$str
ΤΤN P
)
ΤΤP Q
)
ΤΤQ R
;
ΤΤR S
decimal
ΥΥ 
met4m
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
ΥΥ1 2
Metodo4MTotal
ΥΥ2 ?
.
ΥΥ? @
Replace
ΥΥ@ G
(
ΥΥG H
$str
ΥΥH K
,
ΥΥK L
$str
ΥΥM O
)
ΥΥO P
)
ΥΥP Q
;
ΥΥQ R
decimal
ΦΦ 
man4m
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
ΦΦ1 2
ManoObra4MTotal
ΦΦ2 A
.
ΦΦA B
Replace
ΦΦB I
(
ΦΦI J
$str
ΦΦJ M
,
ΦΦM N
$str
ΦΦO Q
)
ΦΦQ R
)
ΦΦR S
;
ΦΦS T
decimal
ΧΧ 
mat4m
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
Material4MTotal
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
ΧΧS T
ewo
ΩΩ 
.
ΩΩ 
	maquina4m
ΩΩ 
=
ΩΩ 
maq4m
ΩΩ  %
;
ΩΩ% &
ewo
ΪΪ 
.
ΪΪ 
metodo4m
ΪΪ 
=
ΪΪ 
met4m
ΪΪ $
;
ΪΪ$ %
ewo
ΫΫ 
.
ΫΫ 

manoobra4m
ΫΫ 
=
ΫΫ  
man4m
ΫΫ! &
;
ΫΫ& '
ewo
άά 
.
άά 

material4m
άά 
=
άά  
mat4m
άά! &
;
άά& '
ewo
ίί 
.
ίί 
before
ίί 
=
ίί 
decimal
ίί $
.
ίί$ %
Parse
ίί% *
(
ίί* +
ewr
ίί+ .
.
ίί. /
	BeforePct
ίί/ 8
)
ίί8 9
;
ίί9 :
ewo
ΰΰ 
.
ΰΰ 
after
ΰΰ 
=
ΰΰ 
decimal
ΰΰ #
.
ΰΰ# $
Parse
ΰΰ$ )
(
ΰΰ) *
ewr
ΰΰ* -
.
ΰΰ- .
AfterPct
ΰΰ. 6
)
ΰΰ6 7
;
ΰΰ7 8
ewo
ββ 
.
ββ #
codigo_top_five_fzero
ββ )
=
ββ* +
ewr
ββ, /
.
ββ/ 0
IdTopFFZ
ββ0 8
.
ββ8 9
Split
ββ9 >
(
ββ> ?
$char
ββ? B
)
ββB C
.
ββC D
Length
ββD J
>
ββK L
$num
ββM N
?
ββO P
Int64
ββQ V
.
ββV W
Parse
ββW \
(
ββ\ ]
ewr
ββ^ a
.
ββa b
IdTopFFZ
ββb j
.
ββj k
Split
ββk p
(
ββp q
$char
ββq t
)
ββt u
[
ββu v
$num
ββv w
]
ββw x
)
ββx y
:
ββz {
$num
ββ| }
;
ββ} ~
ewo
δδ 
.
δδ &
comentarios_resoluciones
δδ ,
=
δδ- .
ewr
δδ/ 2
.
δδ2 3%
ComentariosResoluciones
δδ3 J
;
δδJ K
ewo
εε 
.
εε (
pa_codigo_coordinador_prod
εε .
=
εε/ 0
ewr
εε1 4
.
εε4 5

IdCoorProd
εε5 ?
;
εε? @
ewo
ζζ 
.
ζζ $
pa_codigo_jefe_calidad
ζζ *
=
ζζ+ ,
ewr
ζζ- 0
.
ζζ0 1
IdJefCal
ζζ1 9
;
ζζ9 :
ewo
ηη 
.
ηη $
pa_codigo_gerente_prod
ηη *
=
ηη+ ,
ewr
ηη- 0
.
ηη0 1
	IdGerProd
ηη1 :
;
ηη: ;
ewo
θθ 
.
θθ '
pa_codigo_gerente_calidad
θθ -
=
θθ. /
ewr
θθ0 3
.
θθ3 4
IdGerCal
θθ4 <
;
θθ< =
ewo
κκ 
.
κκ 
fecha_cierre
κκ  
=
κκ! "
ewr
κκ# &
.
κκ& '
	FchCierre
κκ' 0
==
κκ1 3
null
κκ4 8
?
κκ9 :
DateTime
κκ; C
.
κκC D
Now
κκD G
:
κκH I
DateTime
λλ 
.
λλ 

ParseExact
λλ #
(
λλ# $
ewr
λλ$ '
.
λλ' (
	FchCierre
λλ( 1
,
λλ1 2
$str
λλ3 ?
,
λλ? @
CultureInfo
λλA L
.
λλL M
InvariantCulture
λλM ]
)
λλ] ^
;
λλ^ _
ewo
νν 
.
νν 
codigo_m
νν 
=
νν 
ewr
νν "
.
νν" #
MaxMId
νν# )
;
νν) *
long
ππ 
id
ππ 
=
ππ 
await
ππ 
DaoEwo
ππ  &
.
ππ& '
DaoInstance
ππ' 2
.
ππ2 3$
ProcesarIncidenteAsync
ππ3 I
(
ππI J
ewo
ππJ M
)
ππM N
;
ππN O
foreach
σσ 
(
σσ 
var
σσ 
item
σσ !
in
σσ" $
accInm
σσ% +
)
σσ+ ,
{
ττ 
item
υυ 
.
υυ 

codigo_ewo
υυ #
=
υυ$ %
id
υυ& (
;
υυ( )
}
φφ 
await
ψψ 
DaoAcciones
ψψ !
.
ψψ! "
DaoInstance
ψψ" -
.
ψψ- . 
AddAccionesProcess
ψψ. @
(
ψψ@ A
accInm
ψψA G
,
ψψG H
id
ψψH J
)
ψψJ K
;
ψψK L
var
ϋϋ 
eqTrab
ϋϋ 
=
ϋϋ 
ewr
ϋϋ  
.
ϋϋ  !
EquipoTrabajo
ϋϋ! .
;
ϋϋ. /
string
όό 
[
όό 
]
όό 
integrantes
όό $
=
όό% &
eqTrab
όό' -
.
όό- .
Split
όό. 3
(
όό3 4
$char
όό4 7
)
όό7 8
;
όό8 9
List
ύύ 
<
ύύ 
equipo_trabajo
ύύ #
>
ύύ# $
listET
ύύ% +
=
ύύ, -
new
ύύ. 1
List
ύύ2 6
<
ύύ6 7
equipo_trabajo
ύύ7 E
>
ύύE F
(
ύύF G
)
ύύG H
;
ύύH I
foreach
ÿÿ 
(
ÿÿ 
var
ÿÿ 

integrante
ÿÿ '
in
ÿÿ( *
integrantes
ÿÿ+ 6
)
ÿÿ6 7
{
€€ 
listET
 
.
 
Add
 
(
 
new
 "
equipo_trabajo
# 1
(
1 2
)
2 3
{
‚‚ 

codigo_ewo
ƒƒ "
=
ƒƒ# $
id
ƒƒ% '
,
ƒƒ' (
codigo_usuario
„„ &
=
„„' (

integrante
„„) 3
}
…… 
)
…… 
;
…… 
}
†† 
await
‰‰ 
DaoEwo
‰‰ 
.
‰‰ 
DaoInstance
‰‰ (
.
‰‰( )
AddEquipoTrabjo
‰‰) 8
(
‰‰8 9
listET
‰‰9 ?
)
‰‰? @
;
‰‰@ A
List
 
<
 
fiveg_resultados
 %
>
% &
listGenjitsu
' 3
=
4 5
ser
6 9
.
9 :
Deserialize
: E
<
E F
List
F J
<
J K
fiveg_resultados
K [
>
[ \
>
\ ]
(
] ^
ewr
^ a
.
a b
ListGenj
b j
)
j k
;
k l
foreach
 
(
 
var
 
item
 !
in
" $
listGenjitsu
% 1
)
1 2
{
 
item
 
.
 
codigo_5fv_opcion
 *
=
+ ,
$num
- /
;
/ 0
}
 
List
’’ 
<
’’ 
fiveg_resultados
’’ %
>
’’% &
	listGenri
’’' 0
=
’’1 2
ser
’’3 6
.
’’6 7
Deserialize
’’7 B
<
’’B C
List
’’C G
<
’’G H
fiveg_resultados
’’H X
>
’’X Y
>
’’Y Z
(
’’Z [
ewr
’’[ ^
.
’’^ _
ListGenr
’’_ g
)
’’g h
;
’’h i
foreach
““ 
(
““ 
var
““ 
item
““ !
in
““" $
	listGenri
““% .
)
““. /
{
”” 
item
•• 
.
•• 
codigo_5fv_opcion
•• *
=
••+ ,
$num
••- /
;
••/ 0
}
–– 
List
 
<
 
fiveg_resultados
 %
>
% &
listGensoku
' 2
=
3 4
ser
5 8
.
8 9
Deserialize
9 D
<
D E
List
E I
<
I J
fiveg_resultados
J Z
>
Z [
>
[ \
(
\ ]
ewr
] `
.
` a
ListGens
a i
)
i j
;
j k
foreach
™™ 
(
™™ 
var
™™ 
item
™™ !
in
™™" $
listGensoku
™™% 0
)
™™0 1
{
 
item
›› 
.
›› 
codigo_5fv_opcion
›› *
=
››+ ,
$num
››- /
;
››/ 0
}
 
List
 
<
 
fiveg_resultados
 %
>
% &
listGs
' -
=
. /
listGenjitsu
0 <
.
< =
Union
= B
(
B C
	listGenri
C L
)
L M
.
M N
Union
N S
(
S T
listGensoku
T _
)
_ `
.
` a
ToList
a g
(
g h
)
h i
;
i j
foreach
΅΅ 
(
΅΅ 
var
΅΅ 
item
΅΅ !
in
΅΅" $
listGs
΅΅% +
)
΅΅+ ,
{
ΆΆ 
item
££ 
.
££ 

codigo_ewo
££ #
=
££$ %
id
££& (
;
££( )
}
¤¤ 
await
§§ 
Dao5GResultados
§§ %
.
§§% &
DaoInstance
§§& 1
.
§§1 2"
Add5GResultadosAsync
§§2 F
(
§§F G
listGs
§§G M
)
§§M N
;
§§N O
List
ªª 
<
ªª 
porque_porque
ªª "
>
ªª" #

listPorque
ªª$ .
=
ªª/ 0
ser
ªª1 4
.
ªª4 5
Deserialize
ªª5 @
<
ªª@ A
List
ªªA E
<
ªªE F
porque_porque
ªªF S
>
ªªS T
>
ªªT U
(
ªªU V
ewr
ªªV Y
.
ªªY Z
ListPorq
ªªZ b
)
ªªb c
;
ªªc d
foreach
«« 
(
«« 
var
«« 
item
«« !
in
««" $

listPorque
««% /
)
««/ 0
{
¬¬ 
item
­­ 
.
­­ 

codigo_ewo
­­ #
=
­­$ %
id
­­& (
;
­­( )
}
®® 
await
±± 
	DaoPorque
±± 
.
±±  
DaoInstance
±±  +
.
±±+ ,
AddPorqueAsync
±±, :
(
±±: ;

listPorque
±±; E
)
±±E F
;
±±F G
List
΄΄ 
<
΄΄ 
Preguntas4MModel
΄΄ %
>
΄΄% &
list4M
΄΄' -
=
΄΄. /
ser
΄΄0 3
.
΄΄3 4
Deserialize
΄΄4 ?
<
΄΄? @
List
΄΄@ D
<
΄΄D E
Preguntas4MModel
΄΄E U
>
΄΄U V
>
΄΄V W
(
΄΄W X
ewr
΄΄X [
.
΄΄[ \
List4M
΄΄\ b
)
΄΄b c
;
΄΄c d
List
µµ 
<
µµ 
respuestas4m
µµ !
>
µµ! "
listDB4M
µµ# +
=
µµ, -
new
µµ. 1
List
µµ2 6
<
µµ6 7
respuestas4m
µµ7 C
>
µµC D
(
µµD E
)
µµE F
;
µµF G
foreach
¶¶ 
(
¶¶ 
var
¶¶ 
item
¶¶ !
in
¶¶" $
list4M
¶¶% +
)
¶¶+ ,
{
·· 
listDB4M
ΈΈ 
.
ΈΈ 
Add
ΈΈ  
(
ΈΈ  !
new
ΈΈ! $
respuestas4m
ΈΈ% 1
(
ΈΈ1 2
)
ΈΈ2 3
{
ΉΉ 

codigo_ewo
ΊΊ "
=
ΊΊ# $
id
ΊΊ% '
,
ΊΊ' (
codigo_pregunta
»» '
=
»»( )
item
»»* .
.
»». /
id
»»/ 1
,
»»1 2

verificado
ΌΌ "
=
ΌΌ# $
item
ΌΌ% )
.
ΌΌ) *
option
ΌΌ* 0
==
ΌΌ1 3
$str
ΌΌ4 7
?
ΌΌ8 9
$str
ΌΌ: ?
:
ΌΌ@ A
(
ΌΌB C
item
ΌΌC G
.
ΌΌG H
option
ΌΌH N
==
ΌΌO Q
$str
ΌΌR U
?
ΌΌV W
$str
ΌΌX \
:
ΌΌ] ^
$str
ΌΌ^ b
)
ΌΌb c
}
½½ 
)
½½ 
;
½½ 
}
ΎΎ 
await
ΑΑ 
Dao4M
ΑΑ 
.
ΑΑ 
DaoInstance
ΑΑ '
.
ΑΑ' ( 
AddRespuestasAsync
ΑΑ( :
(
ΑΑ: ;
listDB4M
ΑΑ; C
)
ΑΑC D
;
ΑΑD E
List
ΔΔ 
<
ΔΔ 
ZeroResponses
ΔΔ "
>
ΔΔ" #
listZRB
ΔΔ$ +
=
ΔΔ, -
ser
ΔΔ. 1
.
ΔΔ1 2
Deserialize
ΔΔ2 =
<
ΔΔ= >
List
ΔΔ> B
<
ΔΔB C
ZeroResponses
ΔΔC P
>
ΔΔP Q
>
ΔΔQ R
(
ΔΔR S
ewr
ΔΔS V
.
ΔΔV W
ListBefo
ΔΔW _
)
ΔΔ_ `
;
ΔΔ` a
List
ΕΕ 
<
ΕΕ 
ZeroResponses
ΕΕ "
>
ΕΕ" #
listZRA
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
ListAfte
ΕΕW _
)
ΕΕ_ `
;
ΕΕ` a
List
ΗΗ 
<
ΗΗ 
zero_ewo
ΗΗ 
>
ΗΗ 
listZE
ΗΗ %
=
ΗΗ& '
new
ΗΗ( +
List
ΗΗ, 0
<
ΗΗ0 1
zero_ewo
ΗΗ1 9
>
ΗΗ9 :
(
ΗΗ: ;
)
ΗΗ; <
;
ΗΗ< =
foreach
ΙΙ 
(
ΙΙ 
var
ΙΙ 
item
ΙΙ !
in
ΙΙ" $
listZRB
ΙΙ% ,
)
ΙΙ, -
{
ΚΚ 
listZE
ΛΛ 
.
ΛΛ 
Add
ΛΛ 
(
ΛΛ 
new
ΛΛ "
zero_ewo
ΛΛ# +
(
ΛΛ+ ,
)
ΛΛ, -
{
ΜΜ 

codigo_ewo
ΝΝ "
=
ΝΝ# $
$num
ΝΝ% &
,
ΝΝ& '
before
ΞΞ 
=
ΞΞ  
item
ΞΞ! %
.
ΞΞ% &
Puntaje
ΞΞ& -
,
ΞΞ- .
codigo_response
ΟΟ '
=
ΟΟ( )
item
ΟΟ* .
.
ΟΟ. /
Puntaje
ΟΟ/ 6
==
ΟΟ7 9
$num
ΟΟ: ;
?
ΟΟ< =
$num
ΟΟ> ?
:
ΟΟ@ A
(
ΟΟB C
await
ΟΟC H
DaoZero
ΟΟI P
.
ΟΟP Q
DaoInstance
ΟΟQ \
.
ΟΟ\ ]
GetZeroResponse
ΟΟ] l
(
ΟΟl m
item
ΟΟm q
.
ΟΟq r
Id
ΟΟr t
,
ΟΟt u
item
ΟΟv z
.
ΟΟz {
PuntajeΟΟ{ ‚
)ΟΟ‚ ƒ
)ΟΟƒ „
.ΟΟ„ …
IdΟΟ… ‡
}
ΠΠ 
)
ΠΠ 
;
ΠΠ 
}
ΡΡ 
foreach
ΣΣ 
(
ΣΣ 
var
ΣΣ 
item
ΣΣ !
in
ΣΣ" $
listZRA
ΣΣ% ,
)
ΣΣ, -
{
ΤΤ 
listZE
ΥΥ 
.
ΥΥ 
Add
ΥΥ 
(
ΥΥ 
new
ΥΥ "
zero_ewo
ΥΥ# +
(
ΥΥ+ ,
)
ΥΥ, -
{
ΦΦ 

codigo_ewo
ΧΧ "
=
ΧΧ# $
$num
ΧΧ% &
,
ΧΧ& '
after
ΨΨ 
=
ΨΨ 
item
ΨΨ  $
.
ΨΨ$ %
Puntaje
ΨΨ% ,
,
ΨΨ, -
codigo_response
ΩΩ '
=
ΩΩ( )
item
ΩΩ* .
.
ΩΩ. /
Puntaje
ΩΩ/ 6
==
ΩΩ7 9
$num
ΩΩ: ;
?
ΩΩ< =
$num
ΩΩ> ?
:
ΩΩ@ A
(
ΩΩB C
await
ΩΩC H
DaoZero
ΩΩI P
.
ΩΩP Q
DaoInstance
ΩΩQ \
.
ΩΩ\ ]
GetZeroResponse
ΩΩ] l
(
ΩΩl m
item
ΩΩm q
.
ΩΩq r
Id
ΩΩr t
,
ΩΩt u
item
ΩΩv z
.
ΩΩz {
PuntajeΩΩ{ ‚
)ΩΩ‚ ƒ
)ΩΩƒ „
.ΩΩ„ …
IdΩΩ… ‡
}
ΪΪ 
)
ΪΪ 
;
ΪΪ 
}
ΫΫ 
await
ήή 
DaoZero
ήή 
.
ήή 
DaoInstance
ήή )
.
ήή) *
AddZeroEwoAsync
ήή* 9
(
ήή9 :
listZE
ήή: @
)
ήή@ A
;
ήήA B
List
αα 
<
αα 
plan_accion
αα  
>
αα  !
listPA
αα" (
=
αα) *
ser
αα+ .
.
αα. /
Deserialize
αα/ :
<
αα: ;
List
αα; ?
<
αα? @
plan_accion
αα@ K
>
ααK L
>
ααL M
(
ααM N
ewr
ααN Q
.
ααQ R
ListPlan
ααR Z
)
ααZ [
;
αα[ \
foreach
ββ 
(
ββ 
var
ββ 
item
ββ !
in
ββ" $
listPA
ββ% +
)
ββ+ ,
{
γγ 
item
δδ 
.
δδ 

codigo_ewo
δδ #
=
δδ$ %
id
δδ& (
;
δδ( )
}
εε 
await
θθ 
DaoPlanAccion
θθ #
.
θθ# $
DaoInstance
θθ$ /
.
θθ/ 0 
AddPlanAccionAsync
θθ0 B
(
θθB C
listPA
θθC I
)
θθI J
;
θθJ K
}
κκ 
rr
μμ 
.
μμ 
Codigo
μμ 
=
μμ 
$num
μμ 
;
μμ 
rr
νν 
.
νν 
	Resultado
νν 
=
νν 
ewo
νν 
;
νν 
return
ξξ 
rr
ξξ 
;
ξξ 
}
οο 	
private
ρρ 
void
ρρ  
SaveImageEwoServer
ρρ '
(
ρρ' ( 
HttpPostedFileBase
ρρ( :
file
ρρ; ?
)
ρρ? @
{
ςς 	
if
σσ 
(
σσ 
file
σσ 
!=
σσ 
null
σσ 
)
σσ 
{
ττ 
string
υυ 
nameAndLocation
υυ &
=
υυ' (

ewo_images
υυ) 3
+
υυ4 5
file
υυ6 :
.
υυ: ;
FileName
υυ; C
;
υυC D
file
φφ 
.
φφ 
SaveAs
φφ 
(
φφ 
Server
φφ "
.
φφ" #
MapPath
φφ# *
(
φφ* +
nameAndLocation
φφ+ :
)
φφ: ;
)
φφ; <
;
φφ< =
}
χχ 
}
ψψ 	
	protected
ϊϊ 
override
ϊϊ 
void
ϊϊ 
Dispose
ϊϊ  '
(
ϊϊ' (
bool
ϊϊ( ,
	disposing
ϊϊ- 6
)
ϊϊ6 7
{
ϋϋ 	
if
όό 
(
όό 
	disposing
όό 
)
όό 
{
ύύ 
db
ώώ 
.
ώώ 
Dispose
ώώ 
(
ώώ 
)
ώώ 
;
ώώ 
}
ÿÿ 
base
€€ 
.
€€ 
Dispose
€€ 
(
€€ 
	disposing
€€ "
)
€€" #
;
€€# $
}
 	
}
‚‚ 
}ƒƒ Ίx
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
δδ 
using
ηη 
(
ηη 
var
ηη 
context
ηη &
=
ηη' (
new
ηη) ,
EwoQEntities
ηη- 9
(
ηη9 :
)
ηη: ;
)
ηη; <
{
θθ 
context
κκ 
.
κκ  
Entry
κκ  %
(
κκ% &
ed
κκ& (
)
κκ( )
.
κκ) *
State
κκ* /
=
κκ0 1
EntityState
κκ2 =
.
κκ= >
Modified
κκ> F
;
κκF G
await
νν 
context
νν %
.
νν% &
SaveChangesAsync
νν& 6
(
νν6 7
)
νν7 8
;
νν8 9
regs
ξξ 
=
ξξ 
ed
ξξ !
.
ξξ! "
id
ξξ" $
;
ξξ$ %
}
οο 
}
ππ 
}
ρρ 
catch
ςς 
(
ςς 
	Exception
ςς 
e
ςς 
)
ςς 
{
σσ 
string
ττ 
err
ττ 
=
ττ 
$str
ττ 8
+
ττ9 :
e
ττ; <
.
ττ< =
ToString
ττ= E
(
ττE F
)
ττF G
;
ττG H
Trace
υυ 
.
υυ 
	WriteLine
υυ 
(
υυ  
err
υυ  #
)
υυ# $
;
υυ$ %
await
χχ 
DaoExcepcion
χχ "
.
χχ" #
DaoInstance
χχ# .
.
χχ. /
AddExceptionAsync
χχ/ @
(
χχ@ A
new
ψψ 
excepciones
ψψ #
(
ψψ# $
)
ψψ$ %
{
ωω 
codigo_error
ϊϊ $
=
ϊϊ% &
-
ϊϊ' (
$num
ϊϊ( )
,
ϊϊ) *
codigo_usuario
ϋϋ &
=
ϋϋ' (
HttpContext
ϋϋ) 4
.
ϋϋ4 5
Current
ϋϋ5 <
.
ϋϋ< =
User
ϋϋ= A
.
ϋϋA B
Identity
ϋϋB J
.
ϋϋJ K
	GetUserId
ϋϋK T
(
ϋϋT U
)
ϋϋU V
??
ϋϋW Y
$str
ϋϋZ g
,
ϋϋg h
descripcion
όό #
=
όό$ %
err
όό& )
,
όό) *
fecha
ύύ 
=
ύύ 
SomeHelpers
ύύ  +
.
ύύ+ ,
GetCurrentTime
ύύ, :
(
ύύ: ;
)
ύύ; <
}
ώώ 
)
ώώ 
;
ώώ 
}
ÿÿ 
return
 
regs
 
;
 
}
‚‚ 	
public
„„ 
async
„„ 
Task
„„ 
<
„„ 
int
„„ 
>
„„ 
AddEquipoTrabjo
„„ .
(
„„. /
List
„„/ 3
<
„„3 4
equipo_trabajo
„„4 B
>
„„B C
et
„„D F
)
„„F G
{
…… 	
int
†† 
regs
†† 
=
†† 
$num
†† 
;
†† 
try
 
{
‰‰ 
using
 
(
 
var
 
context
 "
=
# $
new
% (
EwoQEntities
) 5
(
5 6
)
6 7
)
7 8
{
‹‹ 
context
 
.
 
equipo_trabajo
 *
.
* +
AddRange
+ 3
(
3 4
et
4 6
)
6 7
;
7 8
regs
 
=
 
await
  
context
! (
.
( )
SaveChangesAsync
) 9
(
9 :
)
: ;
;
; <
}
 
}
 
catch
 
(
 
	Exception
 
e
 
)
 
{
‘‘ 
Debug
’’ 
.
’’ 
	WriteLine
’’ 
(
’’  
$str
’’  E
+
’’F G
e
’’H I
.
’’I J
ToString
’’J R
(
’’R S
)
’’S T
)
’’T U
;
’’U V
regs
““ 
=
““ 
-
““ 
$num
““ 
;
““ 
}
”” 
return
–– 
regs
–– 
;
–– 
}
—— 	
}
 
}™™ Φ
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
}JJ φ°
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
·· 
int
ΈΈ 
regs
ΈΈ 
=
ΈΈ 
$num
ΈΈ 
;
ΈΈ 
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
ΟΟ 
await
ΟΟ  
context
ΟΟ! (
.
ΟΟ( )
SaveChangesAsync
ΟΟ) 9
(
ΟΟ9 :
)
ΟΟ: ;
;
ΟΟ; <
return
ΡΡ 
regs
ΡΡ 
;
ΡΡ  
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
άά 
string
άά  
>
άά  !
SetSign
άά" )
(
άά) *
string
άά* 0
id
άά1 3
,
άά3 4
string
άά5 ;
sign
άά< @
)
άά@ A
{
έέ 	
AspNetUsers
ήή 
usere
ήή 
;
ήή 
int
ίί 
regs
ίί 
=
ίί 
$num
ίί 
;
ίί 
string
ΰΰ 
fileName
ΰΰ 
=
ΰΰ 
null
ΰΰ "
;
ΰΰ" #
using
γγ 
(
γγ 
var
γγ 
context
γγ 
=
γγ  
new
γγ! $
EwoQEntities
γγ% 1
(
γγ1 2
)
γγ2 3
)
γγ3 4
{
δδ 
usere
εε 
=
εε 
context
εε 
.
εε  
AspNetUsers
εε  +
.
εε+ ,
Where
εε, 1
(
εε1 2
s
εε2 3
=>
εε4 6
s
εε7 8
.
εε8 9
Id
εε9 ;
==
εε< >
id
εε? A
)
εεA B
.
εεB C
FirstOrDefault
εεC Q
(
εεQ R
)
εεR S
;
εεS T
if
ζζ 
(
ζζ 
usere
ζζ 
!=
ζζ 
null
ζζ !
)
ζζ! "
{
ηη 
fileName
θθ 
=
θθ 
usere
θθ $
.
θθ$ %
SingUrl
θθ% ,
;
θθ, -
}
ιι 
}
κκ 
if
νν 
(
νν 
usere
νν 
!=
νν 
null
νν 
)
νν 
{
ξξ 
usere
οο 
.
οο 
SingUrl
οο 
=
οο 
sign
οο  $
;
οο$ %
}
ππ 
using
σσ 
(
σσ 
var
σσ 
context
σσ 
=
σσ  
new
σσ! $
EwoQEntities
σσ% 1
(
σσ1 2
)
σσ2 3
)
σσ3 4
{
ττ 
context
φφ 
.
φφ 
Entry
φφ 
(
φφ 
usere
φφ #
)
φφ# $
.
φφ$ %
State
φφ% *
=
φφ+ ,
EntityState
φφ- 8
.
φφ8 9
Modified
φφ9 A
;
φφA B
regs
ωω 
=
ωω 
await
ωω 
context
ωω $
.
ωω$ %
SaveChangesAsync
ωω% 5
(
ωω5 6
)
ωω6 7
;
ωω7 8
return
ϋϋ 
fileName
ϋϋ 
;
ϋϋ  
}
όό 
}
ύύ 	
public
ÿÿ 
async
ÿÿ 
Task
ÿÿ 
<
ÿÿ 
List
ÿÿ 
<
ÿÿ 
UsersUI
ÿÿ &
>
ÿÿ& '
>
ÿÿ' (
GetAllUsers
ÿÿ) 4
(
ÿÿ4 5
)
ÿÿ5 6
{
€€ 	
List
 
<
 
UsersUI
 
>
 
	listUsers
 #
=
$ %
new
& )
List
* .
<
. /
UsersUI
/ 6
>
6 7
(
7 8
)
8 9
;
9 :
try
ƒƒ 
{
„„ 
using
…… 
(
…… 
var
…… 
context
…… "
=
……# $
new
……% (
EwoQEntities
……) 5
(
……5 6
)
……6 7
)
……7 8
{
†† 
var
‡‡ 
query
‡‡ 
=
‡‡ 
from
‡‡  $
td
‡‡% '
in
‡‡( *
context
‡‡+ 2
.
‡‡2 3
AspNetUsers
‡‡3 >
select
  &
td
' )
;
) *
var
 
listT
 
=
 
await
  %
query
& +
.
+ ,
ToListAsync
, 7
(
7 8
)
8 9
;
9 :
foreach
 
(
 
var
  
s
! "
in
# %
listT
& +
)
+ ,
{
 
	listUsers
 !
.
! "
Add
" %
(
% &
new
& )
UsersUI
* 1
(
1 2
)
2 3
{
 
Id
 
=
  
s
! "
.
" #
Id
# %
,
% &
Nombres
‘‘ #
=
‘‘$ %
s
‘‘& '
.
‘‘' (
Nombres
‘‘( /
,
‘‘/ 0
	Apellidos
’’ %
=
’’& '
s
’’( )
.
’’) *
	Apellidos
’’* 3
,
’’3 4
Email
““ !
=
““" #
s
““$ %
.
““% &
Email
““& +
,
““+ ,
Usuario
”” #
=
””$ %
s
””& '
.
””' (
UserName
””( 0
,
””0 1
IdRol
•• !
=
••" #
s
••$ %
.
••% &
IdRol
••& +
,
••+ ,
NombresCommpletos
–– -
=
––. /
s
––0 1
.
––1 2
Nombres
––2 9
+
––: ;
$str
––< ?
+
––@ A
s
––B C
.
––C D
	Apellidos
––D M
}
—— 
)
—— 
;
—— 
}
 
}
™™ 
}
 
catch
›› 
(
›› 
	Exception
›› 
e
›› 
)
›› 
{
 
Debug
 
.
 
	WriteLine
 
(
  
e
  !
.
! "
ToString
" *
(
* +
)
+ ,
)
, -
;
- .
}
 
return
   
	listUsers
   
;
   
}
΅΅ 	
public
££ 
async
££ 
Task
££ 
<
££ 
List
££ 
<
££ 
string
££ %
>
££% &
>
££& '
GetAllUsersNames
££( 8
(
££8 9
)
££9 :
{
¤¤ 	
List
¥¥ 
<
¥¥ 
string
¥¥ 
>
¥¥ 
	listUsers
¥¥ "
=
¥¥# $
new
¥¥% (
List
¥¥) -
<
¥¥- .
string
¥¥. 4
>
¥¥4 5
(
¥¥5 6
)
¥¥6 7
;
¥¥7 8
try
§§ 
{
¨¨ 
using
©© 
(
©© 
var
©© 
context
©© "
=
©©# $
new
©©% (
EwoQEntities
©©) 5
(
©©5 6
)
©©6 7
)
©©7 8
{
ªª 
var
«« 
query
«« 
=
«« 
from
««  $
td
««% '
in
««( *
context
««+ 2
.
««2 3
AspNetUsers
««3 >
select
¬¬  &
td
¬¬' )
;
¬¬) *
var
®® 
listT
®® 
=
®® 
await
®®  %
query
®®& +
.
®®+ ,
ToListAsync
®®, 7
(
®®7 8
)
®®8 9
;
®®9 :
foreach
°° 
(
°° 
var
°°  
s
°°! "
in
°°# %
listT
°°& +
)
°°+ ,
{
±± 
	listUsers
²² !
.
²²! "
Add
²²" %
(
²²% &
s
²²& '
.
²²' (
Nombres
²²( /
+
²²0 1
$str
²²2 5
+
²²6 7
s
²²8 9
.
²²9 :
	Apellidos
²²: C
)
²²C D
;
²²D E
}
³³ 
}
΄΄ 
}
µµ 
catch
¶¶ 
(
¶¶ 
	Exception
¶¶ 
e
¶¶ 
)
¶¶ 
{
·· 
Debug
ΈΈ 
.
ΈΈ 
	WriteLine
ΈΈ 
(
ΈΈ  
e
ΈΈ  !
.
ΈΈ! "
ToString
ΈΈ" *
(
ΈΈ* +
)
ΈΈ+ ,
)
ΈΈ, -
;
ΈΈ- .
}
ΉΉ 
return
»» 
	listUsers
»» 
;
»» 
}
ΌΌ 	
}
½½ 
}ΎΎ υO
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
} ί:
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
}2 3
public 
string 
SignUrl 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class !
ManageLoginsViewModel &
{ 
public 
IList 
< 
UserLoginInfo "
>" #
CurrentLogins$ 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
IList 
< %
AuthenticationDescription .
>. /
OtherLogins0 ;
{< =
get> A
;A B
setC F
;F G
}H I
} 
public 

class 
FactorViewModel  
{ 
public 
string 
Purpose 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class  
SetPasswordViewModel %
{ 
[   	
Required  	 
]   
[!! 	
StringLength!!	 
(!! 
$num!! 
,!! 
ErrorMessage!! '
=!!( )
$str!!* _
,!!_ `
MinimumLength!!a n
=!!o p
$num!!q r
)!!r s
]!!s t
["" 	
DataType""	 
("" 
DataType"" 
."" 
Password"" #
)""# $
]""$ %
[## 	
Display##	 
(## 
Name## 
=## 
$str## *
)##* +
]##+ ,
public$$ 
string$$ 
NewPassword$$ !
{$$" #
get$$$ '
;$$' (
set$$) ,
;$$, -
}$$. /
[&& 	
DataType&&	 
(&& 
DataType&& 
.&& 
Password&& #
)&&# $
]&&$ %
['' 	
Display''	 
('' 
Name'' 
='' 
$str'' 6
)''6 7
]''7 8
[(( 	
Compare((	 
((( 
$str(( 
,(( 
ErrorMessage((  ,
=((- .
$str((/ r
)((r s
]((s t
public)) 
string)) 
ConfirmPassword)) %
{))& '
get))( +
;))+ ,
set))- 0
;))0 1
}))2 3
}** 
public,, 

class,, #
ChangePasswordViewModel,, (
{-- 
[.. 	
Required..	 
].. 
[// 	
DataType//	 
(// 
DataType// 
.// 
Password// #
)//# $
]//$ %
[00 	
Display00	 
(00 
Name00 
=00 
$str00 +
)00+ ,
]00, -
public11 
string11 
OldPassword11 !
{11" #
get11$ '
;11' (
set11) ,
;11, -
}11. /
[33 	
Required33	 
]33 
[44 	
StringLength44	 
(44 
$num44 
,44 
ErrorMessage44 '
=44( )
$str44* _
,44_ `
MinimumLength44a n
=44o p
$num44q r
)44r s
]44s t
[55 	
DataType55	 
(55 
DataType55 
.55 
Password55 #
)55# $
]55$ %
[66 	
Display66	 
(66 
Name66 
=66 
$str66 *
)66* +
]66+ ,
public77 
string77 
NewPassword77 !
{77" #
get77$ '
;77' (
set77) ,
;77, -
}77. /
[99 	
DataType99	 
(99 
DataType99 
.99 
Password99 #
)99# $
]99$ %
[:: 	
Display::	 
(:: 
Name:: 
=:: 
$str:: 6
)::6 7
]::7 8
[;; 	
Compare;;	 
(;; 
$str;; 
,;; 
ErrorMessage;;  ,
=;;- .
$str;;/ r
);;r s
];;s t
public<< 
string<< 
ConfirmPassword<< %
{<<& '
get<<( +
;<<+ ,
set<<- 0
;<<0 1
}<<2 3
}== 
public?? 

class?? #
AddPhoneNumberViewModel?? (
{@@ 
[AA 	
RequiredAA	 
]AA 
[BB 	
PhoneBB	 
]BB 
[CC 	
DisplayCC	 
(CC 
NameCC 
=CC 
$strCC ,
)CC, -
]CC- .
publicDD 
stringDD 
NumberDD 
{DD 
getDD "
;DD" #
setDD$ '
;DD' (
}DD) *
}EE 
publicGG 

classGG &
VerifyPhoneNumberViewModelGG +
{HH 
[II 	
RequiredII	 
]II 
[JJ 	
DisplayJJ	 
(JJ 
NameJJ 
=JJ 
$strJJ  
)JJ  !
]JJ! "
publicKK 
stringKK 
CodeKK 
{KK 
getKK  
;KK  !
setKK" %
;KK% &
}KK' (
[MM 	
RequiredMM	 
]MM 
[NN 	
PhoneNN	 
]NN 
[OO 	
DisplayOO	 
(OO 
NameOO 
=OO 
$strOO ,
)OO, -
]OO- .
publicPP 
stringPP 
PhoneNumberPP !
{PP" #
getPP$ '
;PP' (
setPP) ,
;PP, -
}PP. /
}QQ 
publicSS 

classSS '
ConfigureTwoFactorViewModelSS ,
{TT 
publicUU 
stringUU 
SelectedProviderUU &
{UU' (
getUU) ,
;UU, -
setUU. 1
;UU1 2
}UU3 4
publicVV 
ICollectionVV 
<VV 
SystemVV !
.VV! "
WebVV" %
.VV% &
MvcVV& )
.VV) *
SelectListItemVV* 8
>VV8 9
	ProvidersVV: C
{VVD E
getVVF I
;VVI J
setVVK N
;VVN O
}VVP Q
}WW 
}XX Ρ
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