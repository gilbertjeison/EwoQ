�
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
} �
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
} �K
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
context	AAy �
)
AA� �
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
context	~~} �
)
~~� �
{ 	
return
�� 
new
�� &
ApplicationSignInManager
�� /
(
��/ 0
context
��0 7
.
��7 8
GetUserManager
��8 F
<
��F G$
ApplicationUserManager
��G ]
>
��] ^
(
��^ _
)
��_ `
,
��` a
context
��b i
.
��i j
Authentication
��j x
)
��x y
;
��y z
}
�� 	
}
�� 
}�� �
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
} �
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
}DD ��
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
false	VV �
)
VV� �
;
VV� �
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
$str	gg9 �
)
gg� �
;
gg� �
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
�� 
(
�� 
!
�� 
await
�� 
SignInManager
�� $
.
��$ %"
HasBeenVerifiedAsync
��% 9
(
��9 :
)
��: ;
)
��; <
{
�� 
return
�� 
View
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
return
�� 
View
�� 
(
�� 
new
�� !
VerifyCodeViewModel
�� /
{
��0 1
Provider
��2 :
=
��; <
provider
��= E
,
��E F
	ReturnUrl
��G P
=
��Q R
	returnUrl
��S \
,
��\ ]

RememberMe
��^ h
=
��i j

rememberMe
��k u
}
��v w
)
��w x
;
��x y
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '

VerifyCode
��( 2
(
��2 3!
VerifyCodeViewModel
��3 F
model
��G L
)
��L M
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
model
�� !
)
��! "
;
��" #
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
SignInManager
�� ,
.
��, -"
TwoFactorSignInAsync
��- A
(
��A B
model
��B G
.
��G H
Provider
��H P
,
��P Q
model
��R W
.
��W X
Code
��X \
,
��\ ]
isPersistent
��^ j
:
��j k
model
��m r
.
��r s

RememberMe
��s }
,
��} ~
rememberBrowser�� �
:��� �
model��� �
.��� �
RememberBrowser��� �
)��� �
;��� �
switch
�� 
(
�� 
result
�� 
)
�� 
{
�� 
case
�� 
SignInStatus
�� !
.
��! "
Success
��" )
:
��) *
return
�� 
RedirectToLocal
�� *
(
��* +
model
��+ 0
.
��0 1
	ReturnUrl
��1 :
,
��: ;
$str
��; A
)
��A B
;
��B C
case
�� 
SignInStatus
�� !
.
��! "
	LockedOut
��" +
:
��+ ,
return
�� 
View
�� 
(
��  
$str
��  )
)
��) *
;
��* +
case
�� 
SignInStatus
�� !
.
��! "
Failure
��" )
:
��) *
default
�� 
:
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
$str
��- /
,
��/ 0
$str
��1 D
)
��D E
;
��E F
return
�� 
View
�� 
(
��  
model
��  %
)
��% &
;
��& '
}
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� 
Register
�� $
(
��$ %
)
��% &
{
�� 	
var
�� 
	viewModel
�� 
=
�� 
new
�� 
RegisterViewModel
��  1
(
��1 2
)
��2 3
;
��3 4
	viewModel
�� 
.
�� 
RoleList
�� 
=
��  
new
��! $
List
��% )
<
��) *
SelectListItem
��* 8
>
��8 9
(
��9 :
)
��: ;
;
��; <
	viewModel
�� 
.
�� 
RoleList
�� 
=
��  
GetRoles
��! )
(
��) *
)
��* +
;
��+ ,
return
�� 
View
�� 
(
�� 
	viewModel
�� !
)
��! "
;
��" #
}
�� 	
public
�� 
List
�� 
<
�� 
SelectListItem
�� "
>
��" #
GetRoles
��$ ,
(
��, -
)
��- .
{
�� 	
using
�� 
(
�� "
ApplicationDbContext
�� '
db
��( *
=
��+ ,
new
��- 0"
ApplicationDbContext
��1 E
(
��E F
)
��F G
)
��G H
{
�� 
var
�� 
RoleMan
�� 
=
�� 
new
�� !
RoleManager
��" -
<
��- .
IdentityRole
��. :
>
��: ;
(
��; <
new
��< ?
	RoleStore
��@ I
<
��I J
IdentityRole
��J V
>
��V W
(
��W X
db
��X Z
)
��Z [
)
��[ \
;
��\ ]
var
�� 
roles
�� 
=
�� 
RoleMan
�� #
.
��# $
Roles
��$ )
.
��) *
Where
��* /
(
��/ 0
x
��0 1
=>
��2 4
!
��5 6
x
��6 7
.
��7 8
Name
��8 <
.
��< =
Equals
��= C
(
��C D
$str
��D K
)
��K L
)
��L M
.
��M N
ToList
��N T
(
��T U
)
��U V
;
��V W
var
�� 
RoleList
�� 
=
�� 
new
�� "
List
��# '
<
��' (
SelectListItem
��( 6
>
��6 7
(
��7 8
)
��8 9
;
��9 :
RoleList
�� 
.
�� 
Add
�� 
(
�� 
new
��  
SelectListItem
��! /
(
��/ 0
)
��0 1
{
��2 3
Text
��4 8
=
��9 :
$str
��; Q
,
��Q R
Value
��S X
=
��Y Z
string
��[ a
.
��a b
Empty
��b g
}
��h i
)
��i j
;
��j k
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $
roles
��% *
)
��* +
{
�� 
RoleList
�� 
.
�� 
Add
��  
(
��  !
new
��! $
SelectListItem
��% 3
(
��3 4
)
��4 5
{
��6 7
Text
��8 <
=
��= >
item
��? C
.
��C D
Name
��D H
,
��H I
Value
��J O
=
��P Q
item
��R V
.
��V W
Id
��W Y
}
��Z [
)
��[ \
;
��\ ]
}
�� 
return
�� 
RoleList
�� 
;
��  
}
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
Register
��( 0
(
��0 1
RegisterViewModel
��1 B
model
��C H
)
��H I
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
user
�� 
=
�� 
new
�� 
ApplicationUser
�� .
{
�� 
UserName
�� 
=
�� 
model
�� $
.
��$ %
Email
��% *
,
��* +
Email
�� 
=
�� 
model
�� !
.
��! "
Email
��" '
,
��' (
Nombres
�� 
=
�� 
model
�� #
.
��# $
Nombres
��$ +
,
��+ ,
	Apellidos
�� 
=
�� 
model
��  %
.
��% &
	Apellidos
��& /
,
��/ 0
IdRol
�� 
=
�� 
model
�� !
.
��! "
Role
��" &
,
��& '

Registrado
�� 
=
��  
DateTime
��! )
.
��) *
Now
��* -
}
�� 
;
�� 
var
�� 
result
�� 
=
��  
await
��! &
UserManager
��' 2
.
��2 3
CreateAsync
��3 >
(
��> ?
user
��? C
,
��C D
model
��E J
.
��J K
Password
��K S
)
��S T
;
��T U
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� (
)
��( )
{
�� 
await
�� 
SignInManager
�� +
.
��+ ,
SignInAsync
��, 7
(
��7 8
user
��8 <
,
��< =
isPersistent
��> J
:
��J K
false
��L Q
,
��Q R
rememberBrowser
��S b
:
��b c
false
��d i
)
��i j
;
��j k
await
�� 
Utils
�� $
.
��$ %
SomeHelpers
��% 0
.
��0 1
SendGridAsync
��1 >
(
��> ?
$num
��? @
,
��@ A
model
��A F
.
��F G
Email
��G L
,
��L M
model
��M R
.
��R S
Nombres
��S Z
+
��Z [
$str
��[ ^
+
��^ _
model
��_ d
.
��d e
	Apellidos
��e n
)
��n o
;
��o p
return
�� 
RedirectToAction
�� /
(
��/ 0
$str
��0 @
,
��@ A
$str
��B K
)
��K L
;
��L M
}
�� 
	AddErrors
�� 
(
�� 
result
�� $
)
��$ %
;
��% &
}
�� 
model
�� 
.
�� 
RoleList
�� 
=
�� 
GetRoles
�� %
(
��% &
)
��& '
;
��' (
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ConfirmEmail
��( 4
(
��4 5
string
��5 ;
userId
��< B
,
��B C
string
��D J
code
��K O
)
��O P
{
�� 	
if
�� 
(
�� 
userId
�� 
==
�� 
null
�� 
||
�� !
code
��" &
==
��' )
null
��* .
)
��. /
{
�� 
return
�� 
View
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +
ConfirmEmailAsync
��+ <
(
��< =
userId
��= C
,
��C D
code
��E I
)
��I J
;
��J K
return
�� 
View
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� (
?
��) *
$str
��+ 9
:
��: ;
$str
��< C
)
��C D
;
��D E
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� 
AccountCreated
�� *
(
��* +
)
��+ ,
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� 
ForgotPassword
�� *
(
��* +
)
��+ ,
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ForgotPassword
��( 6
(
��6 7%
ForgotPasswordViewModel
��7 N
model
��O T
)
��T U
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
user
�� 
=
�� 
await
��  
UserManager
��! ,
.
��, -
FindByNameAsync
��- <
(
��< =
model
��= B
.
��B C
Email
��C H
)
��H I
;
��I J
if
�� 
(
�� 
user
�� 
==
�� 
null
��  
||
��! #
!
��$ %
(
��% &
await
��& +
UserManager
��, 7
.
��7 8#
IsEmailConfirmedAsync
��8 M
(
��M N
user
��N R
.
��R S
Id
��S U
)
��U V
)
��V W
)
��W X
{
�� 
return
�� 
View
�� 
(
��  
$str
��  <
)
��< =
;
��= >
}
�� 
}
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� (
ForgotPasswordConfirmation
�� 6
(
��6 7
)
��7 8
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� 
ResetPassword
�� )
(
��) *
string
��* 0
code
��1 5
)
��5 6
{
�� 	
return
�� 
code
�� 
==
�� 
null
�� 
?
��  !
View
��" &
(
��& '
$str
��' .
)
��. /
:
��0 1
View
��2 6
(
��6 7
)
��7 8
;
��8 9
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ResetPassword
��( 5
(
��5 6$
ResetPasswordViewModel
��6 L
model
��M R
)
��R S
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
model
�� !
)
��! "
;
��" #
}
�� 
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByNameAsync
��) 8
(
��8 9
model
��9 >
.
��> ?
Email
��? D
)
��D E
;
��E F
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( C
,
��C D
$str
��E N
)
��N O
;
��O P
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* + 
ResetPasswordAsync
��+ =
(
��= >
user
��> B
.
��B C
Id
��C E
,
��E F
model
��G L
.
��L M
Code
��M Q
,
��Q R
model
��S X
.
��X Y
Password
��Y a
)
��a b
;
��b c
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( C
,
��C D
$str
��E N
)
��N O
;
��O P
}
�� 
	AddErrors
�� 
(
�� 
result
�� 
)
�� 
;
�� 
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� '
ResetPasswordConfirmation
�� 5
(
��5 6
)
��6 7
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
ExternalLogin
�� )
(
��) *
string
��* 0
provider
��1 9
,
��9 :
string
��; A
	returnUrl
��B K
)
��K L
{
�� 	
return
�� 
new
�� 
ChallengeResult
�� &
(
��& '
provider
��' /
,
��/ 0
Url
��1 4
.
��4 5
Action
��5 ;
(
��; <
$str
��< S
,
��S T
$str
��U ^
,
��^ _
new
��` c
{
��d e
	ReturnUrl
��f o
=
��p q
	returnUrl
��r {
}
��| }
)
��} ~
)
��~ 
;�� �
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
SendCode
��( 0
(
��0 1
string
��1 7
	returnUrl
��8 A
,
��A B
bool
��C G

rememberMe
��H R
)
��R S
{
�� 	
var
�� 
userId
�� 
=
�� 
await
�� 
SignInManager
�� ,
.
��, -$
GetVerifiedUserIdAsync
��- C
(
��C D
)
��D E
;
��E F
if
�� 
(
�� 
userId
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
View
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
var
�� 
userFactors
�� 
=
�� 
await
�� #
UserManager
��$ /
.
��/ 0-
GetValidTwoFactorProvidersAsync
��0 O
(
��O P
userId
��P V
)
��V W
;
��W X
var
�� 
factorOptions
�� 
=
�� 
userFactors
��  +
.
��+ ,
Select
��, 2
(
��2 3
purpose
��3 :
=>
��; =
new
��> A
SelectListItem
��B P
{
��Q R
Text
��S W
=
��X Y
purpose
��Z a
,
��a b
Value
��c h
=
��i j
purpose
��k r
}
��s t
)
��t u
.
��u v
ToList
��v |
(
��| }
)
��} ~
;
��~ 
return
�� 
View
�� 
(
�� 
new
�� 
SendCodeViewModel
�� -
{
��. /
	Providers
��0 9
=
��: ;
factorOptions
��< I
,
��I J
	ReturnUrl
��K T
=
��U V
	returnUrl
��W `
,
��` a

RememberMe
��b l
=
��m n

rememberMe
��o y
}
��z {
)
��{ |
;
��| }
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
SendCode
��( 0
(
��0 1
SendCodeViewModel
��1 B
model
��C H
)
��H I
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
await
�� 
SignInManager
�� $
.
��$ %$
SendTwoFactorCodeAsync
��% ;
(
��; <
model
��< A
.
��A B
SelectedProvider
��B R
)
��R S
)
��S T
{
�� 
return
�� 
View
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ 0
,
��0 1
new
��2 5
{
��6 7
Provider
��8 @
=
��A B
model
��C H
.
��H I
SelectedProvider
��I Y
,
��Y Z
	ReturnUrl
��[ d
=
��e f
model
��g l
.
��l m
	ReturnUrl
��m v
,
��v w

RememberMe��x �
=��� �
model��� �
.��� �

RememberMe��� �
}��� �
)��� �
;��� �
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '#
ExternalLoginCallback
��( =
(
��= >
string
��> D
	returnUrl
��E N
)
��N O
{
�� 	
var
�� 
	loginInfo
�� 
=
�� 
await
�� !#
AuthenticationManager
��" 7
.
��7 8'
GetExternalLoginInfoAsync
��8 Q
(
��Q R
)
��R S
;
��S T
if
�� 
(
�� 
	loginInfo
�� 
==
�� 
null
�� !
)
��! "
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
SignInManager
�� ,
.
��, -!
ExternalSignInAsync
��- @
(
��@ A
	loginInfo
��A J
,
��J K
isPersistent
��L X
:
��X Y
false
��Z _
)
��_ `
;
��` a
switch
�� 
(
�� 
result
�� 
)
�� 
{
�� 
case
�� 
SignInStatus
�� !
.
��! "
Success
��" )
:
��) *
return
�� 
RedirectToLocal
�� *
(
��* +
	returnUrl
��+ 4
,
��4 5
$str
��5 7
)
��7 8
;
��8 9
case
�� 
SignInStatus
�� !
.
��! "
	LockedOut
��" +
:
��+ ,
return
�� 
View
�� 
(
��  
$str
��  )
)
��) *
;
��* +
case
�� 
SignInStatus
�� !
.
��! ""
RequiresVerification
��" 6
:
��6 7
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 6
,
��6 7
new
��8 ;
{
��< =
	ReturnUrl
��> G
=
��H I
	returnUrl
��J S
,
��S T

RememberMe
��U _
=
��` a
false
��b g
}
��h i
)
��i j
;
��j k
case
�� 
SignInStatus
�� !
.
��! "
Failure
��" )
:
��) *
default
�� 
:
�� 
ViewBag
�� 
.
�� 
	ReturnUrl
�� %
=
��& '
	returnUrl
��( 1
;
��1 2
ViewBag
�� 
.
�� 
LoginProvider
�� )
=
��* +
	loginInfo
��, 5
.
��5 6
Login
��6 ;
.
��; <
LoginProvider
��< I
;
��I J
return
�� 
View
�� 
(
��  
$str
��  ;
,
��; <
new
��= @0
"ExternalLoginConfirmationViewModel
��A c
{
��d e
Email
��f k
=
��l m
	loginInfo
��n w
.
��w x
Email
��x }
}
��~ 
)�� �
;��� �
}
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& ''
ExternalLoginConfirmation
��( A
(
��A B0
"ExternalLoginConfirmationViewModel
��B d
model
��e j
,
��j k
string
��l r
	returnUrl
��s |
)
��| }
{
�� 	
if
�� 
(
�� 
User
�� 
.
�� 
Identity
�� 
.
�� 
IsAuthenticated
�� -
)
��- .
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 9
)
��9 :
;
��: ;
}
�� 
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
info
�� 
=
�� 
await
��  #
AuthenticationManager
��! 6
.
��6 7'
GetExternalLoginInfoAsync
��7 P
(
��P Q
)
��Q R
;
��R S
if
�� 
(
�� 
info
�� 
==
�� 
null
��  
)
��  !
{
�� 
return
�� 
View
�� 
(
��  
$str
��  6
)
��6 7
;
��7 8
}
�� 
var
�� 
user
�� 
=
�� 
new
�� 
ApplicationUser
�� .
{
��/ 0
UserName
��1 9
=
��: ;
model
��< A
.
��A B
Email
��B G
,
��G H
Email
��I N
=
��O P
model
��Q V
.
��V W
Email
��W \
}
��] ^
;
��^ _
var
�� 
result
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
CreateAsync
��/ :
(
��: ;
user
��; ?
)
��? @
;
��@ A
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� $
)
��$ %
{
�� 
result
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
AddLoginAsync
��/ <
(
��< =
user
��= A
.
��A B
Id
��B D
,
��D E
info
��F J
.
��J K
Login
��K P
)
��P Q
;
��Q R
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� (
)
��( )
{
�� 
await
�� 
SignInManager
�� +
.
��+ ,
SignInAsync
��, 7
(
��7 8
user
��8 <
,
��< =
isPersistent
��> J
:
��J K
false
��L Q
,
��Q R
rememberBrowser
��S b
:
��b c
false
��d i
)
��i j
;
��j k
return
�� 
RedirectToLocal
�� .
(
��. /
	returnUrl
��/ 8
,
��8 9
$str
��9 ;
)
��; <
;
��< =
}
�� 
}
�� 
	AddErrors
�� 
(
�� 
result
��  
)
��  !
;
��! "
}
�� 
ViewBag
�� 
.
�� 
	ReturnUrl
�� 
=
�� 
	returnUrl
��  )
;
��) *
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 
HttpPost
�� 
]
�� 
[
�� &
ValidateAntiForgeryToken
��  
]
��  !
public
�� 
ActionResult
�� 
LogOff
�� "
(
��" #
)
��# $
{
�� 	#
AuthenticationManager
�� !
.
��! "
SignOut
��" )
(
��) *(
DefaultAuthenticationTypes
��* D
.
��D E
ApplicationCookie
��E V
)
��V W
;
��W X
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 6
)
��6 7
;
��7 8
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� "
ExternalLoginFailure
�� 0
(
��0 1
)
��1 2
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
	protected
�� 
override
�� 
void
�� 
Dispose
��  '
(
��' (
bool
��( ,
	disposing
��- 6
)
��6 7
{
�� 	
if
�� 
(
�� 
	disposing
�� 
)
�� 
{
�� 
if
�� 
(
�� 
_userManager
��  
!=
��! #
null
��$ (
)
��( )
{
�� 
_userManager
��  
.
��  !
Dispose
��! (
(
��( )
)
��) *
;
��* +
_userManager
��  
=
��! "
null
��# '
;
��' (
}
�� 
if
�� 
(
�� 
_signInManager
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
_signInManager
�� "
.
��" #
Dispose
��# *
(
��* +
)
��+ ,
;
��, -
_signInManager
�� "
=
��# $
null
��% )
;
��) *
}
�� 
}
�� 
base
�� 
.
�� 
Dispose
�� 
(
�� 
	disposing
�� "
)
��" #
;
��# $
}
�� 	
private
�� 
const
�� 
string
�� 
XsrfKey
�� $
=
��% &
$str
��' /
;
��/ 0
private
�� $
IAuthenticationManager
�� &#
AuthenticationManager
��' <
{
�� 	
get
�� 
{
�� 
return
�� 
HttpContext
�� "
.
��" #
GetOwinContext
��# 1
(
��1 2
)
��2 3
.
��3 4
Authentication
��4 B
;
��B C
}
�� 
}
�� 	
private
�� 
void
�� 
	AddErrors
�� 
(
�� 
IdentityResult
�� -
result
��. 4
)
��4 5
{
�� 	
foreach
�� 
(
�� 
var
�� 
error
�� 
in
�� !
result
��" (
.
��( )
Errors
��) /
)
��/ 0
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) +
,
��+ ,
error
��- 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
private
�� 
ActionResult
�� 
RedirectToLocal
�� ,
(
��, -
string
��- 3
	returnUrl
��4 =
,
��= >
string
��? E
role
��F J
)
��J K
{
�� 	
if
�� 
(
�� 
Url
�� 
.
�� 

IsLocalUrl
�� 
(
�� 
	returnUrl
�� (
)
��( )
)
��) *
{
�� 
return
�� 
Redirect
�� 
(
��  
	returnUrl
��  )
)
��) *
;
��* +
}
�� 
string
�� 
action
�� 
=
�� 
$str
�� 
;
�� 
if
�� 
(
�� 
role
�� 
.
�� 
Equals
�� 
(
�� 
$str
�� B
)
��B C
||
�� 
role
�� 
.
�� 
Equals
�� 
(
�� 
$str
�� E
)
��E F
)
��F G
{
�� 
action
�� 
=
�� 
$str
�� %
;
��% &
}
�� 
else
�� 
{
�� 
action
�� 
=
�� 
$str
��  
;
��  !
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
action
��$ *
,
��* +
$str
��, 2
)
��2 3
;
��3 4
}
�� 	
internal
�� 
class
�� 
ChallengeResult
�� &
:
��' ($
HttpUnauthorizedResult
��) ?
{
�� 	
public
�� 
ChallengeResult
�� "
(
��" #
string
��# )
provider
��* 2
,
��2 3
string
��4 :
redirectUri
��; F
)
��F G
:
�� 
this
�� 
(
�� 
provider
�� 
,
��  
redirectUri
��! ,
,
��, -
null
��. 2
)
��2 3
{
�� 
}
�� 
public
�� 
ChallengeResult
�� "
(
��" #
string
��# )
provider
��* 2
,
��2 3
string
��4 :
redirectUri
��; F
,
��F G
string
��H N
userId
��O U
)
��U V
{
�� 
LoginProvider
�� 
=
�� 
provider
��  (
;
��( )
RedirectUri
�� 
=
�� 
redirectUri
�� )
;
��) *
UserId
�� 
=
�� 
userId
�� 
;
��  
}
�� 
public
�� 
string
�� 
LoginProvider
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
RedirectUri
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
UserId
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
override
�� 
void
��  
ExecuteResult
��! .
(
��. /
ControllerContext
��/ @
context
��A H
)
��H I
{
�� 
var
�� 

properties
�� 
=
��  
new
��! $&
AuthenticationProperties
��% =
{
��> ?
RedirectUri
��@ K
=
��L M
RedirectUri
��N Y
}
��Z [
;
��[ \
if
�� 
(
�� 
UserId
�� 
!=
�� 
null
�� "
)
��" #
{
�� 

properties
�� 
.
�� 

Dictionary
�� )
[
��) *
XsrfKey
��* 1
]
��1 2
=
��3 4
UserId
��5 ;
;
��; <
}
�� 
context
�� 
.
�� 
HttpContext
�� #
.
��# $
GetOwinContext
��$ 2
(
��2 3
)
��3 4
.
��4 5
Authentication
��5 C
.
��C D
	Challenge
��D M
(
��M N

properties
��N X
,
��X Y
LoginProvider
��Z g
)
��g h
;
��h i
}
�� 
}
�� 	
}
�� 
}�� �
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
}## �3
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
�� 
}�� ߖ
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
$str	==C �
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
providerKey	WWx �
)
WW� �
)
WW� �
;
WW� �
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
�� 
=
�� 
$str
�� 8
+
��9 :
code
��; ?
}
�� 
;
�� 
await
�� 
UserManager
�� !
.
��! "

SmsService
��" ,
.
��, -
	SendAsync
��- 6
(
��6 7
message
��7 >
)
��> ?
;
��? @
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ 7
,
��7 8
new
��9 <
{
��= >
PhoneNumber
��? J
=
��K L
model
��M R
.
��R S
Number
��S Y
}
��Z [
)
��[ \
;
��\ ]
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '+
EnableTwoFactorAuthentication
��( E
(
��E F
)
��F G
{
�� 	
await
�� 
UserManager
�� 
.
�� &
SetTwoFactorEnabledAsync
�� 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
,
��P Q
true
��R V
)
��V W
;
��W X
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
)
��P Q
;
��Q R
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
await
�� 
SignInManager
�� #
.
��# $
SignInAsync
��$ /
(
��/ 0
user
��0 4
,
��4 5
isPersistent
��6 B
:
��B C
false
��D I
,
��I J
rememberBrowser
��K Z
:
��Z [
false
��\ a
)
��a b
;
��b c
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 5
)
��5 6
;
��6 7
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& ',
DisableTwoFactorAuthentication
��( F
(
��F G
)
��G H
{
�� 	
await
�� 
UserManager
�� 
.
�� &
SetTwoFactorEnabledAsync
�� 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
,
��P Q
false
��R W
)
��W X
;
��X Y
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
)
��P Q
;
��Q R
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
await
�� 
SignInManager
�� #
.
��# $
SignInAsync
��$ /
(
��/ 0
user
��0 4
,
��4 5
isPersistent
��6 B
:
��B C
false
��D I
,
��I J
rememberBrowser
��K Z
:
��Z [
false
��\ a
)
��a b
;
��b c
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 5
)
��5 6
;
��6 7
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
VerifyPhoneNumber
��( 9
(
��9 :
string
��: @
phoneNumber
��A L
)
��L M
{
�� 	
var
�� 
code
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )1
#GenerateChangePhoneNumberTokenAsync
��) L
(
��L M
User
��M Q
.
��Q R
Identity
��R Z
.
��Z [
	GetUserId
��[ d
(
��d e
)
��e f
,
��f g
phoneNumber
��h s
)
��s t
;
��t u
return
�� 
phoneNumber
�� 
==
�� !
null
��" &
?
��' (
View
��) -
(
��- .
$str
��. 5
)
��5 6
:
��7 8
View
��9 =
(
��= >
new
��> A(
VerifyPhoneNumberViewModel
��B \
{
��] ^
PhoneNumber
��_ j
=
��k l
phoneNumber
��m x
}
��y z
)
��z {
;
��{ |
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
VerifyPhoneNumber
��( 9
(
��9 :(
VerifyPhoneNumberViewModel
��: T
model
��U Z
)
��Z [
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
model
�� !
)
��! "
;
��" #
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +$
ChangePhoneNumberAsync
��+ A
(
��A B
User
��B F
.
��F G
Identity
��G O
.
��O P
	GetUserId
��P Y
(
��Y Z
)
��Z [
,
��[ \
model
��] b
.
��b c
PhoneNumber
��c n
,
��n o
model
��p u
.
��u v
Code
��v z
)
��z {
;
��{ |
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
var
�� 
user
�� 
=
�� 
await
��  
UserManager
��! ,
.
��, -
FindByIdAsync
��- :
(
��: ;
User
��; ?
.
��? @
Identity
��@ H
.
��H I
	GetUserId
��I R
(
��R S
)
��S T
)
��T U
;
��U V
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  
)
��  !
{
�� 
await
�� 
SignInManager
�� '
.
��' (
SignInAsync
��( 3
(
��3 4
user
��4 8
,
��8 9
isPersistent
��: F
:
��F G
false
��H M
,
��M N
rememberBrowser
��O ^
:
��^ _
false
��` e
)
��e f
;
��f g
}
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
new
��1 4
{
��5 6
Message
��7 >
=
��? @
ManageMessageId
��A P
.
��P Q
AddPhoneSuccess
��Q `
}
��a b
)
��b c
;
��c d
}
�� 

ModelState
�� 
.
�� 
AddModelError
�� $
(
��$ %
$str
��% '
,
��' (
$str
��) P
)
��P Q
;
��Q R
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
RemovePhoneNumber
��( 9
(
��9 :
)
��: ;
{
�� 	
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +!
SetPhoneNumberAsync
��+ >
(
��> ?
User
��? C
.
��C D
Identity
��D L
.
��L M
	GetUserId
��M V
(
��V W
)
��W X
,
��X Y
null
��Z ^
)
��^ _
;
��_ `
if
�� 
(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� !
)
��! "
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
new
��1 4
{
��5 6
Message
��7 >
=
��? @
ManageMessageId
��A P
.
��P Q
Error
��Q V
}
��W X
)
��X Y
;
��Y Z
}
�� 
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
)
��P Q
;
��Q R
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
await
�� 
SignInManager
�� #
.
��# $
SignInAsync
��$ /
(
��/ 0
user
��0 4
,
��4 5
isPersistent
��6 B
:
��B C
false
��D I
,
��I J
rememberBrowser
��K Z
:
��Z [
false
��\ a
)
��a b
;
��b c
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
new
��- 0
{
��1 2
Message
��3 :
=
��; <
ManageMessageId
��= L
.
��L M 
RemovePhoneSuccess
��M _
}
��` a
)
��a b
;
��b c
}
�� 	
public
�� 
ActionResult
�� 
ChangePassword
�� *
(
��* +
)
��+ ,
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ChangePassword
��( 6
(
��6 7%
ChangePasswordViewModel
��7 N
model
��O T
)
��T U
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
model
�� !
)
��! "
;
��" #
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +!
ChangePasswordAsync
��+ >
(
��> ?
User
��? C
.
��C D
Identity
��D L
.
��L M
	GetUserId
��M V
(
��V W
)
��W X
,
��X Y
model
��Z _
.
��_ `
OldPassword
��` k
,
��k l
model
��m r
.
��r s
NewPassword
��s ~
)
��~ 
;�� �
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
var
�� 
user
�� 
=
�� 
await
��  
UserManager
��! ,
.
��, -
FindByIdAsync
��- :
(
��: ;
User
��; ?
.
��? @
Identity
��@ H
.
��H I
	GetUserId
��I R
(
��R S
)
��S T
)
��T U
;
��U V
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  
)
��  !
{
�� 
await
�� 
SignInManager
�� '
.
��' (
SignInAsync
��( 3
(
��3 4
user
��4 8
,
��8 9
isPersistent
��: F
:
��F G
false
��H M
,
��M N
rememberBrowser
��O ^
:
��^ _
false
��` e
)
��e f
;
��f g
}
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
new
��1 4
{
��5 6
Message
��7 >
=
��? @
ManageMessageId
��A P
.
��P Q#
ChangePasswordSuccess
��Q f
}
��g h
)
��h i
;
��i j
}
�� 
	AddErrors
�� 
(
�� 
result
�� 
)
�� 
;
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
SetPassword
�� '
(
��' (
)
��( )
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
SetPassword
��( 3
(
��3 4"
SetPasswordViewModel
��4 H
model
��I N
)
��N O
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
result
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
AddPasswordAsync
��/ ?
(
��? @
User
��@ D
.
��D E
Identity
��E M
.
��M N
	GetUserId
��N W
(
��W X
)
��X Y
,
��Y Z
model
��[ `
.
��` a
NewPassword
��a l
)
��l m
;
��m n
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� $
)
��$ %
{
�� 
var
�� 
user
�� 
=
�� 
await
�� $
UserManager
��% 0
.
��0 1
FindByIdAsync
��1 >
(
��> ?
User
��? C
.
��C D
Identity
��D L
.
��L M
	GetUserId
��M V
(
��V W
)
��W X
)
��X Y
;
��Y Z
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
await
�� 
SignInManager
�� +
.
��+ ,
SignInAsync
��, 7
(
��7 8
user
��8 <
,
��< =
isPersistent
��> J
:
��J K
false
��L Q
,
��Q R
rememberBrowser
��S b
:
��b c
false
��d i
)
��i j
;
��j k
}
�� 
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
new
��5 8
{
��9 :
Message
��; B
=
��C D
ManageMessageId
��E T
.
��T U 
SetPasswordSuccess
��U g
}
��h i
)
��i j
;
��j k
}
�� 
	AddErrors
�� 
(
�� 
result
��  
)
��  !
;
��! "
}
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ManageLogins
��( 4
(
��4 5
ManageMessageId
��5 D
?
��D E
message
��F M
)
��M N
{
�� 	
ViewBag
�� 
.
�� 
StatusMessage
�� !
=
��" #
message
�� 
==
�� 
ManageMessageId
�� *
.
��* + 
RemoveLoginSuccess
��+ =
?
��> ?
$str
��@ l
:
�� 
message
�� 
==
�� 
ManageMessageId
�� ,
.
��, -
Error
��- 2
?
��3 4
$str
��5 P
:
�� 
$str
�� 
;
�� 
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
)
��P Q
;
��Q R
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
View
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
var
�� 

userLogins
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
GetLoginsAsync
��/ =
(
��= >
User
��> B
.
��B C
Identity
��C K
.
��K L
	GetUserId
��L U
(
��U V
)
��V W
)
��W X
;
��X Y
var
�� 
otherLogins
�� 
=
�� #
AuthenticationManager
�� 3
.
��3 4,
GetExternalAuthenticationTypes
��4 R
(
��R S
)
��S T
.
��T U
Where
��U Z
(
��Z [
auth
��[ _
=>
��` b

userLogins
��c m
.
��m n
All
��n q
(
��q r
ul
��r t
=>
��u w
auth
��x |
.
��| }!
AuthenticationType��} �
!=��� �
ul��� �
.��� �
LoginProvider��� �
)��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
;��� �
ViewBag
�� 
.
�� 
ShowRemoveButton
�� $
=
��% &
user
��' +
.
��+ ,
PasswordHash
��, 8
!=
��9 ;
null
��< @
||
��A C

userLogins
��D N
.
��N O
Count
��O T
>
��U V
$num
��W X
;
��X Y
return
�� 
View
�� 
(
�� 
new
�� #
ManageLoginsViewModel
�� 1
{
�� 
CurrentLogins
�� 
=
�� 

userLogins
��  *
,
��* +
OtherLogins
�� 
=
�� 
otherLogins
�� )
}
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
	LinkLogin
�� %
(
��% &
string
��& ,
provider
��- 5
)
��5 6
{
�� 	
return
�� 
new
�� 
AccountController
�� (
.
��( )
ChallengeResult
��) 8
(
��8 9
provider
��9 A
,
��A B
Url
��C F
.
��F G
Action
��G M
(
��M N
$str
��N a
,
��a b
$str
��c k
)
��k l
,
��l m
User
��n r
.
��r s
Identity
��s {
.
��{ |
	GetUserId��| �
(��� �
)��� �
)��� �
;��� �
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
LinkLoginCallback
��( 9
(
��9 :
)
��: ;
{
�� 	
var
�� 
	loginInfo
�� 
=
�� 
await
�� !#
AuthenticationManager
��" 7
.
��7 8'
GetExternalLoginInfoAsync
��8 Q
(
��Q R
XsrfKey
��R Y
,
��Y Z
User
��[ _
.
��_ `
Identity
��` h
.
��h i
	GetUserId
��i r
(
��r s
)
��s t
)
��t u
;
��u v
if
�� 
(
�� 
	loginInfo
�� 
==
�� 
null
�� !
)
��! "
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( 6
,
��6 7
new
��8 ;
{
��< =
Message
��> E
=
��F G
ManageMessageId
��H W
.
��W X
Error
��X ]
}
��^ _
)
��_ `
;
��` a
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +
AddLoginAsync
��+ 8
(
��8 9
User
��9 =
.
��= >
Identity
��> F
.
��F G
	GetUserId
��G P
(
��P Q
)
��Q R
,
��R S
	loginInfo
��T ]
.
��] ^
Login
��^ c
)
��c d
;
��d e
return
�� 
result
�� 
.
�� 
	Succeeded
�� #
?
��$ %
RedirectToAction
��& 6
(
��6 7
$str
��7 E
)
��E F
:
��G H
RedirectToAction
��I Y
(
��Y Z
$str
��Z h
,
��h i
new
��j m
{
��n o
Message
��p w
=
��x y
ManageMessageId��z �
.��� �
Error��� �
}��� �
)��� �
;��� �
}
�� 	
	protected
�� 
override
�� 
void
�� 
Dispose
��  '
(
��' (
bool
��( ,
	disposing
��- 6
)
��6 7
{
�� 	
if
�� 
(
�� 
	disposing
�� 
&&
�� 
_userManager
�� )
!=
��* ,
null
��- 1
)
��1 2
{
�� 
_userManager
�� 
.
�� 
Dispose
�� $
(
��$ %
)
��% &
;
��& '
_userManager
�� 
=
�� 
null
�� #
;
��# $
}
�� 
base
�� 
.
�� 
Dispose
�� 
(
�� 
	disposing
�� "
)
��" #
;
��# $
}
�� 	
private
�� 
const
�� 
string
�� 
XsrfKey
�� $
=
��% &
$str
��' /
;
��/ 0
private
�� $
IAuthenticationManager
�� &#
AuthenticationManager
��' <
{
�� 	
get
�� 
{
�� 
return
�� 
HttpContext
�� "
.
��" #
GetOwinContext
��# 1
(
��1 2
)
��2 3
.
��3 4
Authentication
��4 B
;
��B C
}
�� 
}
�� 	
private
�� 
void
�� 
	AddErrors
�� 
(
�� 
IdentityResult
�� -
result
��. 4
)
��4 5
{
�� 	
foreach
�� 
(
�� 
var
�� 
error
�� 
in
�� !
result
��" (
.
��( )
Errors
��) /
)
��/ 0
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) +
,
��+ ,
error
��- 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
private
�� 
bool
�� 
HasPassword
��  
(
��  !
)
��! "
{
�� 	
var
�� 
user
�� 
=
�� 
UserManager
�� "
.
��" #
FindById
��# +
(
��+ ,
User
��, 0
.
��0 1
Identity
��1 9
.
��9 :
	GetUserId
��: C
(
��C D
)
��D E
)
��E F
;
��F G
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
return
�� 
user
�� 
.
�� 
PasswordHash
�� (
!=
��) +
null
��, 0
;
��0 1
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
bool
�� 
HasSign
�� 
(
�� 
)
�� 
{
�� 	
var
�� 
user
�� 
=
�� 
UserManager
�� "
.
��" #
FindById
��# +
(
��+ ,
User
��, 0
.
��0 1
Identity
��1 9
.
��9 :
	GetUserId
��: C
(
��C D
)
��D E
)
��E F
;
��F G
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
return
�� 
user
�� 
.
�� 
SingUrl
�� #
!=
��$ &
null
��' +
;
��+ ,
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
bool
�� 
HasPhoneNumber
�� #
(
��# $
)
��$ %
{
�� 	
var
�� 
user
�� 
=
�� 
UserManager
�� "
.
��" #
FindById
��# +
(
��+ ,
User
��, 0
.
��0 1
Identity
��1 9
.
��9 :
	GetUserId
��: C
(
��C D
)
��D E
)
��E F
;
��F G
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
return
�� 
user
�� 
.
�� 
PhoneNumber
�� '
!=
��( *
null
��+ /
;
��/ 0
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
enum
�� 
ManageMessageId
�� #
{
�� 	
AddPhoneSuccess
�� 
,
�� #
ChangePasswordSuccess
�� !
,
��! "!
SetTwoFactorSuccess
�� 
,
��   
SetPasswordSuccess
�� 
,
��  
RemoveLoginSuccess
�� 
,
��  
RemovePhoneSuccess
�� 
,
�� 
Error
�� 
}
�� 	
}
�� 
}�� ��
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
�� 	
var
�� 
listDF
�� 
=
�� 
await
�� 
DaoTiposData
�� +
.
��+ ,
DaoInstance
��, 7
.
��7 8
GetTypesAsync
��8 E
(
��E F
FINALDISPOSITION
��F V
)
��V W
;
��W X
listDF
�� 
.
�� 
Insert
�� 
(
�� 
$num
�� 
,
�� 
new
��  
Database
��! )
.
��) *

tipos_data
��* 4
(
��4 5
)
��5 6
{
��7 8
id
��9 ;
=
��< =
$num
��> ?
,
��? @
descripcion
��A L
=
��M N
$str
��O j
}
��k l
)
��l m
;
��m n
var
�� 
DisposicionFList
��  
=
��! "
new
��# &

SelectList
��' 1
(
��1 2
listDF
��2 8
,
��8 9
$str
��: >
,
��> ?
$str
��@ M
)
��M N
;
��N O
return
�� 
Json
�� 
(
�� 
DisposicionFList
�� (
)
��( )
;
��) *
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 

JsonResult
�� $
>
��$ %
GetAreasJsonAsync
��& 7
(
��7 8
)
��8 9
{
�� 	
var
�� 
listA
�� 
=
�� 
await
�� 
DaoTiposData
�� *
.
��* +
DaoInstance
��+ 6
.
��6 7
GetTypesAsync
��7 D
(
��D E

AREASTYPES
��E O
)
��O P
;
��P Q
listA
�� 
.
�� 
Insert
�� 
(
�� 
$num
�� 
,
�� 
new
�� 
Database
��  (
.
��( )

tipos_data
��) 3
(
��3 4
)
��4 5
{
��6 7
id
��8 :
=
��; <
$num
��= >
,
��> ?
descripcion
��@ K
=
��L M
$str
��N b
}
��c d
)
��d e
;
��e f
var
�� 
	AreasList
�� 
=
�� 
new
�� 

SelectList
��  *
(
��* +
listA
��+ 0
,
��0 1
$str
��2 6
,
��6 7
$str
��8 E
)
��E F
;
��F G
return
�� 
Json
�� 
(
�� 
	AreasList
�� !
)
��! "
;
��" #
}
�� 	
[
�� 
HttpPost
�� 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 

JsonResult
�� $
>
��$ %#
GetAllUniMedJsonAsync
��& ;
(
��; <
)
��< =
{
�� 	
var
�� 
listUM
�� 
=
�� 
await
�� 
DaoTiposData
�� +
.
��+ ,
DaoInstance
��, 7
.
��7 8
GetTypesAsync
��8 E
(
��E F
UNIDADMEDIDA
��F R
)
��R S
;
��S T
listUM
�� 
.
�� 
Insert
�� 
(
�� 
$num
�� 
,
�� 
new
��  
Database
��! )
.
��) *

tipos_data
��* 4
(
��4 5
)
��5 6
{
��7 8
id
��9 ;
=
��< =
$num
��> ?
,
��? @
descripcion
��A L
=
��M N
$str
��O e
}
��f g
)
��g h
;
��h i
var
�� 

UniMedList
�� 
=
�� 
new
��  

SelectList
��! +
(
��+ ,
listUM
��, 2
,
��2 3
$str
��4 8
,
��8 9
$str
��: G
)
��G H
;
��H I
return
�� 
Json
�� 
(
�� 

UniMedList
�� "
)
��" #
;
��# $
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 

JsonResult
�� $
>
��$ %"
Get4MQuestionsByType
��& :
(
��: ;
int
��; >
id
��? A
)
��A B
{
�� 	
var
�� 
qstns
�� 
=
�� 
await
�� 
Dao4M
�� #
.
��# $
DaoInstance
��$ /
.
��/ 0"
Get4mQuestionsByType
��0 D
(
��D E
id
��E G
)
��G H
;
��H I
return
�� 
Json
�� 
(
�� 
qstns
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 

JsonResult
�� $
>
��$ %
GetAllUsers
��& 1
(
��1 2
)
��2 3
{
�� 	
var
�� 
list
�� 
=
�� 
await
�� 
DaoUsuarios
�� (
.
��( )
DaoInstance
��) 4
.
��4 5
GetAllUsers
��5 @
(
��@ A
)
��A B
;
��B C
return
�� 
Json
�� 
(
�� 
list
�� 
,
�� !
JsonRequestBehavior
�� 1
.
��1 2
AllowGet
��2 :
)
��: ;
;
��; <
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
Details
��( /
(
��/ 0
long
��0 4
?
��4 5
id
��6 8
)
��8 9
{
�� 	
if
�� 
(
�� 
id
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
new
�� "
HttpStatusCodeResult
�� /
(
��/ 0
HttpStatusCode
��0 >
.
��> ?

BadRequest
��? I
)
��I J
;
��J K
}
�� 
ewo
�� 
ewo
�� 
=
�� 
await
�� 
db
�� 
.
�� 
ewo
�� "
.
��" #
	FindAsync
��# ,
(
��, -
id
��- /
)
��/ 0
;
��0 1
if
�� 
(
�� 
ewo
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
HttpNotFound
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
return
�� 
View
�� 
(
�� 
ewo
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
Create
��( .
(
��. /
)
��/ 0
{
�� 	
return
�� 
View
�� 
(
�� 
await
�� 

BuildModel
�� (
(
��( )
$num
��) *
)
��* +
)
��+ ,
;
��, -
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 

JsonResult
�� $
>
��$ %
CreateAsync
��& 1
(
��1 2(
ReporteIncidentesViewModel
��2 L
ewr
��M P
)
��P Q
{
�� 	
RequestResponse
�� 
rr
�� 
=
��  
null
��! %
;
��% &
try
�� 
{
�� 
rr
�� 
=
�� 
await
�� 
CreateEwoObject
�� *
(
��* +
ewr
��+ .
,
��. /
true
��/ 3
)
��3 4
;
��4 5
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
	WriteLine
�� 
(
��  
$str
��  7
+
��7 8
e
��8 9
.
��9 :
ToString
��: B
(
��B C
)
��C D
)
��D E
;
��E F
rr
�� 
.
�� 
Codigo
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
return
�� 
Json
�� 
(
�� 
new
�� 
{
�� 
code
�� "
=
��" #
rr
��$ &
.
��& '
Codigo
��' -
}
��. /
)
��/ 0
;
��0 1
}
�� 	
[
�� 
HttpGet
�� 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� %
>
��% &
ProcesarIncidente
��' 8
(
��8 9
int
��9 <
?
��< =
id
��> @
)
��@ A
{
�� 	
int
�� 
code
�� 
;
�� 
string
�� 
message
�� 
;
�� 
try
�� 
{
�� 
var
�� 
userRole
�� 
=
�� 
DaoUsuarios
�� *
.
��* +
DaoInstance
��+ 6
.
��6 7
GetUser
��7 >
(
��> ?
User
��? C
.
��C D
Identity
��D L
.
��L M
	GetUserId
��M V
(
��V W
)
��W X
)
��X Y
.
��Y Z
IdRol
��Z _
;
��_ `
if
�� 
(
�� 
SomeHelpers
�� 
.
��  
ROL_OPER
��  (
.
��( )
Equals
��) /
(
��/ 0
userRole
��0 8
)
��8 9
)
��9 :
{
�� 
return
�� 
new
��  
HttpNotFoundResult
�� 1
(
��1 2
$str
��2 b
)
��b c
;
��c d
}
�� 
if
�� 
(
�� 
id
�� 
.
�� 
HasValue
�� 
)
��  
{
�� 
var
�� 
rivm
�� 
=
�� 
await
�� $

BuildModel
��% /
(
��/ 0
id
��0 2
.
��2 3
Value
��3 8
)
��8 9
;
��9 :
return
�� 
View
�� 
(
��  
rivm
��  $
)
��$ %
;
��% &
}
�� 
else
�� 
{
�� 
return
�� 
Json
�� 
(
��  
new
��  #
{
��$ %
code
��% )
=
��* +
-
��, -
$num
��- .
,
��. /
message
��0 7
=
��8 9
$str
��: W
}
��X Y
,
��Y Z!
JsonRequestBehavior
��Z m
.
��m n
AllowGet
��n v
)
��v w
;
��w x
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
code
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
message
�� 
=
�� 
$str
�� P
+
��P Q
ex
��R T
.
��T U
Message
��U \
;
��\ ]
Trace
�� 
.
�� 
	WriteLine
�� 
(
��  
message
��  '
)
��' (
;
��( )
return
�� 
Json
�� 
(
�� 
new
�� 
{
��  !
code
��" &
,
��& '
message
��( /
}
��0 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 

JsonResult
�� $
>
��$ %#
ProcesarIncidentePost
��& ;
(
��; <(
ReporteIncidentesViewModel
��< V
rivm
��W [
)
��[ \
{
�� 	
RequestResponse
�� 
rr
�� 
=
��  
null
��! %
;
��% &
try
�� 
{
�� 
rr
�� 
=
�� 
await
�� 
CreateEwoObject
�� *
(
��* +
rivm
��+ /
,
��/ 0
false
��1 6
)
��6 7
;
��7 8
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Trace
�� 
.
�� 
	WriteLine
�� 
(
��  
$str
��  >
+
��? @
ex
��A C
.
��C D
ToString
��D L
(
��L M
)
��M N
)
��N O
;
��O P
}
�� 
return
�� 
Json
�� 
(
�� 
rr
�� 
,
�� !
JsonRequestBehavior
�� /
.
��/ 0
AllowGet
��0 8
)
��8 9
;
��9 :
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
Edit
��( ,
(
��, -
long
��- 1
?
��1 2
id
��3 5
)
��5 6
{
�� 	
if
�� 
(
�� 
id
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
new
�� "
HttpStatusCodeResult
�� /
(
��/ 0
HttpStatusCode
��0 >
.
��> ?

BadRequest
��? I
)
��I J
;
��J K
}
�� 
ewo
�� 
ewo
�� 
=
�� 
await
�� 
db
�� 
.
�� 
ewo
�� "
.
��" #
	FindAsync
��# ,
(
��, -
id
��- /
)
��/ 0
;
��0 1
if
�� 
(
�� 
ewo
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
HttpNotFound
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
ViewBag
�� 
.
�� &
codigo_coordinador_turno
�� ,
=
��- .
new
��/ 2

SelectList
��3 =
(
��= >
db
��> @
.
��@ A
AspNetUsers
��A L
,
��L M
$str
��N R
,
��R S
$str
��T ]
,
��] ^
ewo
��_ b
.
��b c&
codigo_coordinador_turno
��c {
)
��{ |
;
��| }
ViewBag
�� 
.
�� (
codigo_lider_investigacion
�� .
=
��/ 0
new
��1 4

SelectList
��5 ?
(
��? @
db
��@ B
.
��B C
AspNetUsers
��C N
,
��N O
$str
��P T
,
��T U
$str
��V _
,
��_ `
ewo
��a d
.
��d e(
codigo_lider_investigacion
��e 
)�� �
;��� �
ViewBag
�� 
.
�� )
codigo_operario_responsable
�� /
=
��0 1
new
��2 5

SelectList
��6 @
(
��@ A
db
��A C
.
��C D
AspNetUsers
��D O
,
��O P
$str
��Q U
,
��U V
$str
��W `
,
��` a
ewo
��b e
.
��e f*
codigo_operario_responsable��f �
)��� �
;��� �
ViewBag
�� 
.
�� (
pa_codigo_coordinador_prod
�� .
=
��/ 0
new
��1 4

SelectList
��5 ?
(
��? @
db
��@ B
.
��B C
AspNetUsers
��C N
,
��N O
$str
��P T
,
��T U
$str
��V _
,
��_ `
ewo
��a d
.
��d e(
pa_codigo_coordinador_prod
��e 
)�� �
;��� �
ViewBag
�� 
.
�� $
pa_codigo_gerente_prod
�� *
=
��+ ,
new
��- 0

SelectList
��1 ;
(
��; <
db
��< >
.
��> ?
AspNetUsers
��? J
,
��J K
$str
��L P
,
��P Q
$str
��R [
,
��[ \
ewo
��] `
.
��` a$
pa_codigo_gerente_prod
��a w
)
��w x
;
��x y
ViewBag
�� 
.
�� '
pa_codigo_gerente_calidad
�� -
=
��. /
new
��0 3

SelectList
��4 >
(
��> ?
db
��? A
.
��A B
AspNetUsers
��B M
,
��M N
$str
��O S
,
��S T
$str
��U ^
,
��^ _
ewo
��` c
.
��c d'
pa_codigo_gerente_calidad
��d }
)
��} ~
;
��~ 
ViewBag
�� 
.
�� $
pa_codigo_jefe_calidad
�� *
=
��+ ,
new
��- 0

SelectList
��1 ;
(
��; <
db
��< >
.
��> ?
AspNetUsers
��? J
,
��J K
$str
��L P
,
��P Q
$str
��R [
,
��[ \
ewo
��] `
.
��` a$
pa_codigo_jefe_calidad
��a w
)
��w x
;
��x y
ViewBag
�� 
.
�� %
codigo_responsable_area
�� +
=
��, -
new
��. 1

SelectList
��2 <
(
��< =
db
��= ?
.
��? @
AspNetUsers
��@ K
,
��K L
$str
��M Q
,
��Q R
$str
��S \
,
��\ ]
ewo
��^ a
.
��a b%
codigo_responsable_area
��b y
)
��y z
;
��z {
ViewBag
�� 
.
�� 
codigo_producto
�� #
=
��$ %
new
��& )

SelectList
��* 4
(
��4 5
db
��5 7
.
��7 8
	productos
��8 A
,
��A B
$str
��C G
,
��G H
$str
��I Q
,
��Q R
ewo
��S V
.
��V W
producto
��W _
)
��_ `
;
��` a
ViewBag
�� 
.
�� +
codigo_disposicion_final_prod
�� 1
=
��2 3
new
��4 7

SelectList
��8 B
(
��B C
db
��C E
.
��E F

tipos_data
��F P
,
��P Q
$str
��R V
,
��V W
$str
��X e
,
��e f
ewo
��g j
.
��j k,
codigo_disposicion_final_prod��k �
)��� �
;��� �
ViewBag
�� 
.
�� 
codigo_estado
�� !
=
��" #
new
��$ '

SelectList
��( 2
(
��2 3
db
��3 5
.
��5 6

tipos_data
��6 @
,
��@ A
$str
��B F
,
��F G
$str
��H U
,
��U V
ewo
��W Z
.
��Z [
codigo_estado
��[ h
)
��h i
;
��i j
ViewBag
�� 
.
�� 
codigo_linea
��  
=
��! "
new
��# &

SelectList
��' 1
(
��1 2
db
��2 4
.
��4 5

tipos_data
��5 ?
,
��? @
$str
��A E
,
��E F
$str
��G T
,
��T U
ewo
��V Y
.
��Y Z
codigo_linea
��Z f
)
��f g
;
��g h
return
�� 
View
�� 
(
�� 
ewo
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
Edit
��( ,
(
��, -
[
��- .
Bind
��. 2
(
��2 3
Include
��3 :
=
��; <
$str��= �
)��� �
]��� �
ewo��� �
ewo��� �
)��� �
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
db
�� 
.
�� 
Entry
�� 
(
�� 
ewo
�� 
)
�� 
.
�� 
State
�� #
=
��$ %
EntityState
��& 1
.
��1 2
Modified
��2 :
;
��: ;
await
�� 
db
�� 
.
�� 
SaveChangesAsync
�� )
(
��) *
)
��* +
;
��+ ,
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 
ViewBag
�� 
.
�� &
codigo_coordinador_turno
�� ,
=
��- .
new
��/ 2

SelectList
��3 =
(
��= >
db
��> @
.
��@ A
AspNetUsers
��A L
,
��L M
$str
��N R
,
��R S
$str
��T ]
,
��] ^
ewo
��_ b
.
��b c&
codigo_coordinador_turno
��c {
)
��{ |
;
��| }
ViewBag
�� 
.
�� (
codigo_lider_investigacion
�� .
=
��/ 0
new
��1 4

SelectList
��5 ?
(
��? @
db
��@ B
.
��B C
AspNetUsers
��C N
,
��N O
$str
��P T
,
��T U
$str
��V _
,
��_ `
ewo
��a d
.
��d e(
codigo_lider_investigacion
��e 
)�� �
;��� �
ViewBag
�� 
.
�� )
codigo_operario_responsable
�� /
=
��0 1
new
��2 5

SelectList
��6 @
(
��@ A
db
��A C
.
��C D
AspNetUsers
��D O
,
��O P
$str
��Q U
,
��U V
$str
��W `
,
��` a
ewo
��b e
.
��e f*
codigo_operario_responsable��f �
)��� �
;��� �
ViewBag
�� 
.
�� (
pa_codigo_coordinador_prod
�� .
=
��/ 0
new
��1 4

SelectList
��5 ?
(
��? @
db
��@ B
.
��B C
AspNetUsers
��C N
,
��N O
$str
��P T
,
��T U
$str
��V _
,
��_ `
ewo
��a d
.
��d e(
pa_codigo_coordinador_prod
��e 
)�� �
;��� �
ViewBag
�� 
.
�� $
pa_codigo_gerente_prod
�� *
=
��+ ,
new
��- 0

SelectList
��1 ;
(
��; <
db
��< >
.
��> ?
AspNetUsers
��? J
,
��J K
$str
��L P
,
��P Q
$str
��R [
,
��[ \
ewo
��] `
.
��` a$
pa_codigo_gerente_prod
��a w
)
��w x
;
��x y
ViewBag
�� 
.
�� '
pa_codigo_gerente_calidad
�� -
=
��. /
new
��0 3

SelectList
��4 >
(
��> ?
db
��? A
.
��A B
AspNetUsers
��B M
,
��M N
$str
��O S
,
��S T
$str
��U ^
,
��^ _
ewo
��` c
.
��c d'
pa_codigo_gerente_calidad
��d }
)
��} ~
;
��~ 
ViewBag
�� 
.
�� $
pa_codigo_jefe_calidad
�� *
=
��+ ,
new
��- 0

SelectList
��1 ;
(
��; <
db
��< >
.
��> ?
AspNetUsers
��? J
,
��J K
$str
��L P
,
��P Q
$str
��R [
,
��[ \
ewo
��] `
.
��` a$
pa_codigo_jefe_calidad
��a w
)
��w x
;
��x y
ViewBag
�� 
.
�� %
codigo_responsable_area
�� +
=
��, -
new
��. 1

SelectList
��2 <
(
��< =
db
��= ?
.
��? @
AspNetUsers
��@ K
,
��K L
$str
��M Q
,
��Q R
$str
��S \
,
��\ ]
ewo
��^ a
.
��a b%
codigo_responsable_area
��b y
)
��y z
;
��z {
ViewBag
�� 
.
�� 
codigo_producto
�� #
=
��$ %
new
��& )

SelectList
��* 4
(
��4 5
db
��5 7
.
��7 8
	productos
��8 A
,
��A B
$str
��C G
,
��G H
$str
��I Q
,
��Q R
ewo
��S V
.
��V W
producto
��W _
)
��_ `
;
��` a
ViewBag
�� 
.
�� +
codigo_disposicion_final_prod
�� 1
=
��2 3
new
��4 7

SelectList
��8 B
(
��B C
db
��C E
.
��E F

tipos_data
��F P
,
��P Q
$str
��R V
,
��V W
$str
��X e
,
��e f
ewo
��g j
.
��j k,
codigo_disposicion_final_prod��k �
)��� �
;��� �
ViewBag
�� 
.
�� 
codigo_estado
�� !
=
��" #
new
��$ '

SelectList
��( 2
(
��2 3
db
��3 5
.
��5 6

tipos_data
��6 @
,
��@ A
$str
��B F
,
��F G
$str
��H U
,
��U V
ewo
��W Z
.
��Z [
codigo_estado
��[ h
)
��h i
;
��i j
ViewBag
�� 
.
�� 
codigo_linea
��  
=
��! "
new
��# &

SelectList
��' 1
(
��1 2
db
��2 4
.
��4 5

tipos_data
��5 ?
,
��? @
$str
��A E
,
��E F
$str
��G T
,
��T U
ewo
��V Y
.
��Y Z
codigo_linea
��Z f
)
��f g
;
��g h
return
�� 
View
�� 
(
�� 
ewo
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
Delete
��( .
(
��. /
long
��/ 3
?
��3 4
id
��5 7
)
��7 8
{
�� 	
if
�� 
(
�� 
id
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
new
�� "
HttpStatusCodeResult
�� /
(
��/ 0
HttpStatusCode
��0 >
.
��> ?

BadRequest
��? I
)
��I J
;
��J K
}
�� 
ewo
�� 
ewo
�� 
=
�� 
await
�� 
db
�� 
.
�� 
ewo
�� "
.
��" #
	FindAsync
��# ,
(
��, -
id
��- /
)
��/ 0
;
��0 1
if
�� 
(
�� 
ewo
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
HttpNotFound
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
return
�� 
View
�� 
(
�� 
ewo
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
,
�� 

ActionName
�� 
(
�� 
$str
�� &
)
��& '
]
��' (
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
DeleteConfirmed
��( 7
(
��7 8
long
��8 <
id
��= ?
)
��? @
{
�� 	
ewo
�� 
ewo
�� 
=
�� 
await
�� 
db
�� 
.
�� 
ewo
�� "
.
��" #
	FindAsync
��# ,
(
��, -
id
��- /
)
��/ 0
;
��0 1
db
�� 
.
�� 
ewo
�� 
.
�� 
Remove
�� 
(
�� 
ewo
�� 
)
�� 
;
�� 
await
�� 
db
�� 
.
�� 
SaveChangesAsync
�� %
(
��% &
)
��& '
;
��' (
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
)
��+ ,
;
��, -
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 

JsonResult
�� $
>
��$ %
GetProducts
��& 1
(
��1 2
string
��2 8
term
��9 =
)
��= >
{
�� 	
var
�� 
list
�� 
=
�� 
await
�� 
DaoProductos
�� )
.
��) *
DaoInstance
��* 5
.
��5 6
GetProductsAsync
��6 F
(
��F G
)
��G H
;
��H I
return
�� 
Json
�� 
(
�� 
list
�� 
.
�� 
Where
�� "
(
��" #
x
��# $
=>
��% '
x
��( )
.
��) *

StartsWith
��* 4
(
�� 
term
�� 
,
�� 
StringComparison
�� &
.
��& '&
CurrentCultureIgnoreCase
��' ?
)
��? @
)
��@ A
,
��A B!
JsonRequestBehavior
�� '
.
��' (
AllowGet
��( 0
)
��0 1
;
��1 2
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 

JsonResult
�� $
>
��$ %
GetAcionsList
��& 3
(
��3 4
long
��4 8
id_ewo
��9 ?
)
��? @
{
�� 	
var
�� 
actList
�� 
=
�� 
await
�� 
DaoAcciones
��  +
.
��+ ,
DaoInstance
��, 7
.
��7 8
GetActionsList
��8 F
(
��F G
id_ewo
��G M
)
��M N
;
��N O
List
�� 
<
�� 
CustomInmActions
�� !
>
��! "
kla
��# &
=
��' (
new
��) ,
List
��- 1
<
��1 2
CustomInmActions
��2 B
>
��B C
(
��C D
)
��D E
;
��E F
actList
�� 
.
�� 
ForEach
�� 
(
�� 
x
�� 
=>
��  
{
�� 
kla
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
CustomInmActions
�� ,
(
��, -
)
��- .
{
�� 

codigo_ewo
�� 
=
��  
x
��! "
.
��" #

codigo_ewo
��# -
,
��- .
accion
�� 
=
�� 
x
�� 
.
�� 
accion
�� %
,
��% &
fecha_compromiso
�� $
=
��% &
x
��' (
.
��( )
fecha_compromiso
��) 9
.
��9 :
Value
��: ?
.
��? @
ToString
��@ H
(
��H I
$str
��I U
)
��U V
,
��V W
id
�� 
=
�� 
x
�� 
.
�� 
id
�� 
,
��  
codigo_responsable
�� &
=
��' (
x
��) *
.
��* + 
codigo_responsable
��+ =
,
��= >#
evidencia_efectividad
�� )
=
��* +
x
��, -
.
��- .#
evidencia_efectividad
��. C
}
�� 
)
�� 
;
�� 
}
�� 
)
�� 
;
�� 
return
�� 
Json
�� 
(
�� 
kla
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 

JsonResult
�� $
>
��$ %
GetEwoAsync
��& 1
(
��1 2
int
��2 5
id
��6 8
)
��8 9
{
�� 	
var
�� 
ewo
�� 
=
�� 
await
�� 
DaoEwo
�� "
.
��" #
DaoInstance
��# .
.
��. /

GetEwoDesc
��/ 9
(
��9 :
id
��: <
)
��< =
;
��= >
return
�� 
Json
�� 
(
�� 
ewo
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 

JsonResult
�� $
>
��$ %
GetZeroQuestions
��& 6
(
��6 7
int
��7 :
id_tipom
��; C
)
��C D
{
�� 	
var
�� 
res
�� 
=
�� 
await
�� 
DaoZero
�� #
.
��# $
DaoInstance
��$ /
.
��/ 0
GetZeroQuestions
��0 @
(
��@ A
id_tipom
��A I
)
��I J
;
��J K
return
�� 
Json
�� 
(
�� 
res
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 

JsonResult
�� $
>
��$ %"
GetDropDownListAsync
��& :
(
��: ;
int
��; >
from
��? C
,
��C D
int
��E H
id
��I K
)
��K L
{
�� 	

SelectList
�� 
List
�� 
=
�� 
null
�� "
;
��" #
switch
�� 
(
�� 
from
�� 
)
�� 
{
�� 
case
�� 
$num
�� 
:
�� 
var
�� 
listA
�� 
=
�� 
await
��  %
DaoAreas
��& .
.
��. /
DaoInstance
��/ :
.
��: ;
GetAreasAsync
��; H
(
��H I
id
��I K
)
��K L
;
��L M
listA
�� 
.
�� 
Insert
��  
(
��  !
$num
��! "
,
��" #
new
��$ '
Database
��( 0
.
��0 1
areas_productivas
��1 B
(
��B C
)
��C D
{
��E F
id
��G I
=
��J K
$num
��L M
,
��M N
descripcion
��O Z
=
��[ \
$str
��] q
}
��r s
)
��s t
;
��t u
List
�� 
=
�� 
new
�� 

SelectList
�� )
(
��) *
listA
��* /
,
��/ 0
$str
��1 5
,
��5 6
$str
��7 D
)
��D E
;
��E F
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� 
var
�� 
listL
�� 
=
�� 
await
��  %
	DaoLineas
��& /
.
��/ 0
DaoInstance
��0 ;
.
��; <
GetLinesAsync
��< I
(
��I J
id
��J L
)
��L M
;
��M N
listL
�� 
.
�� 
Insert
��  
(
��  !
$num
��! "
,
��" #
new
��$ '
Database
��( 0
.
��0 1
lineas
��1 7
(
��7 8
)
��8 9
{
��: ;
id
��< >
=
��? @
$num
��A B
,
��B C
descripcion
��D O
=
��P Q
$str
��R g
}
��h i
)
��i j
;
��j k
List
�� 
=
�� 
new
�� 

SelectList
�� )
(
��) *
listL
��* /
,
��/ 0
$str
��1 5
,
��5 6
$str
��7 D
)
��D E
;
��E F
break
�� 
;
�� 
}
�� 
return
�� 
Json
�� 
(
�� 
new
�� 

SelectList
�� &
(
��& '
List
��' +
,
��+ ,
$str
��- 4
,
��4 5
$str
��6 <
)
��< =
)
��= >
;
��> ?
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� (
ReporteIncidentesViewModel
�� 5
>
��5 6

BuildModel
��7 A
(
��A B
long
��B F
id
��G I
)
��I J
{
�� 	
var
�� 
	viewModel
�� 
=
�� 
new
�� (
ReporteIncidentesViewModel
��  :
(
��: ;
)
��; <
;
��< =
if
�� 
(
�� 
id
�� 
>
�� 
$num
�� 
)
�� 
{
�� 
	viewModel
�� 
=
�� 
await
�� !
DaoEwo
��" (
.
��( )
DaoInstance
��) 4
.
��4 5

GetEwoDesc
��5 ?
(
��? @
id
��@ B
)
��B C
;
��C D
	viewModel
�� 
.
�� 
	FchCierre
�� #
=
��$ %
DateTime
��& .
.
��. /
Now
��/ 2
.
��2 3
ToString
��3 ;
(
��; <
$str
��< H
)
��H I
;
��I J
}
�� 
else
�� 
{
�� 
	viewModel
�� 
.
�� #
FchApertInvestigacion
�� /
=
��0 1
DateTime
��2 :
.
��: ;
Now
��; >
.
��> ?
ToString
��? G
(
��G H
$str
��H T
)
��T U
;
��U V
	viewModel
�� 
.
�� %
FchEntregaInvestigacion
�� 1
=
��2 3
DateTime
��4 <
.
��< =
Now
��= @
.
��@ A
ToString
��A I
(
��I J
$str
��J V
)
��V W
;
��W X
	viewModel
�� 
.
�� 
Consecutivo
�� %
=
��& '
$str
��( ,
+
��- .
await
��/ 4
DaoEwo
��5 ;
.
��; <
DaoInstance
��< G
.
��G H 
GetLastConsecutive
��H Z
(
��Z [
)
��[ \
;
��\ ]
}
�� 
var
�� 
listTI
�� 
=
�� 
await
�� 
DaoTiposData
�� +
.
��+ ,
DaoInstance
��, 7
.
��7 8
GetTypesAsync
��8 E
(
��E F
INCIDENTSTYPES
��F T
)
��T U
;
��U V
listTI
�� 
.
�� 
Insert
�� 
(
�� 
$num
�� 
,
�� 
new
��  
Database
��! )
.
��) *

tipos_data
��* 4
(
��4 5
)
��5 6
{
��7 8
id
��9 ;
=
��< =
$num
��> ?
,
��? @
descripcion
��A L
=
��M N
$str
��O p
}
��q r
)
��r s
;
��s t
	viewModel
�� 
.
�� 
TipoIncidenteList
�� '
=
��( )
new
��* -

SelectList
��. 8
(
��8 9
listTI
��9 ?
,
��? @
$str
��A E
,
��E F
$str
��G T
)
��T U
;
��U V
var
�� 
listPlantas
�� 
=
�� 
await
�� #

DaoPlantas
��$ .
.
��. /
DaoInstance
��/ :
.
��: ;
GetPlantasAsync
��; J
(
��J K
)
��K L
;
��L M
listPlantas
�� 
.
�� 
Insert
�� 
(
�� 
$num
��  
,
��  !
new
��" %
Database
��& .
.
��. /
plantas
��/ 6
(
��6 7
)
��7 8
{
��9 :
id
��; =
=
��> ?
$num
��@ A
,
��A B
descripcion
��C N
=
��O P
$str
��Q g
}
��h i
)
��i j
;
��j k
	viewModel
�� 
.
�� 
PlantasList
�� !
=
��" #
new
��$ '

SelectList
��( 2
(
��2 3
listPlantas
��3 >
,
��> ?
$str
��@ D
,
��D E
$str
��F S
)
��S T
;
��T U
var
�� 
listA
�� 
=
�� 
await
�� 
DaoTiposData
�� *
.
��* +
DaoInstance
��+ 6
.
��6 7
GetTypesAsync
��7 D
(
��D E

AREASTYPES
��E O
)
��O P
;
��P Q
listA
�� 
.
�� 
Insert
�� 
(
�� 
$num
�� 
,
�� 
new
�� 
Database
��  (
.
��( )

tipos_data
��) 3
(
��3 4
)
��4 5
{
��6 7
id
��8 :
=
��; <
$num
��= >
,
��> ?
descripcion
��@ K
=
��L M
$str
��N b
}
��c d
)
��d e
;
��e f
	viewModel
�� 
.
�� 
	AreasList
�� 
=
��  !
new
��" %

SelectList
��& 0
(
��0 1
listA
��1 6
,
��6 7
$str
��8 <
,
��< =
$str
��> K
)
��K L
;
��L M
var
�� 
listL
�� 
=
�� 
await
�� 
DaoTiposData
�� *
.
��* +
DaoInstance
��+ 6
.
��6 7
GetTypesAsync
��7 D
(
��D E

LINESTYPES
��E O
)
��O P
;
��P Q
listL
�� 
.
�� 
Insert
�� 
(
�� 
$num
�� 
,
�� 
new
�� 
Database
��  (
.
��( )

tipos_data
��) 3
(
��3 4
)
��4 5
{
��6 7
id
��8 :
=
��; <
$num
��= >
,
��> ?
descripcion
��@ K
=
��L M
$str
��N c
}
��d e
)
��e f
;
��f g
	viewModel
�� 
.
�� 

LineasList
��  
=
��! "
new
��# &

SelectList
��' 1
(
��1 2
listL
��2 7
,
��7 8
$str
��9 =
,
��= >
$str
��? L
)
��L M
;
��M N
var
�� 
listUA
�� 
=
�� 
await
�� 
DaoUsuarios
�� *
.
��* +
DaoInstance
��+ 6
.
��6 7
GetUsersByRole
��7 E
(
��E F
	ADMINROLE
��F O
)
��O P
;
��P Q
listUA
�� 
.
�� 
Insert
�� 
(
�� 
$num
�� 
,
�� 
new
��  
UsersUI
��! (
(
��( )
)
��) *
{
��+ ,
Id
��- /
=
��0 1
$str
��2 5
,
��5 6
NombresCommpletos
��7 H
=
��I J
$str
��K b
}
��c d
)
��d e
;
��e f
	viewModel
�� 
.
�� 
AdminUsersList
�� $
=
��% &
new
��' *

SelectList
��+ 5
(
��5 6
listUA
��6 <
,
��< =
$str
��> B
,
��B C
$str
��D W
)
��W X
;
��X Y
var
�� 
listUO
�� 
=
�� 
await
�� 
DaoUsuarios
�� *
.
��* +
DaoInstance
��+ 6
.
��6 7
GetUsersByRole
��7 E
(
��E F
OPERATINGROLE
��F S
)
��S T
;
��T U
listUO
�� 
.
�� 
Insert
�� 
(
�� 
$num
�� 
,
�� 
new
��  
UsersUI
��! (
(
��( )
)
��) *
{
��+ ,
Id
��- /
=
��0 1
$str
��2 5
,
��5 6
NombresCommpletos
��7 H
=
��I J
$str
��K b
}
��c d
)
��d e
;
��e f
	viewModel
�� 
.
��  
OperatingUsersList
�� (
=
��) *
new
��+ .

SelectList
��/ 9
(
��9 :
listUO
��: @
,
��@ A
$str
��B F
,
��F G
$str
��H [
)
��[ \
;
��\ ]
var
�� 
listDF
�� 
=
�� 
await
�� 
DaoTiposData
�� +
.
��+ ,
DaoInstance
��, 7
.
��7 8
GetTypesAsync
��8 E
(
��E F
FINALDISPOSITION
��F V
)
��V W
;
��W X
listDF
�� 
.
�� 
Insert
�� 
(
�� 
$num
�� 
,
�� 
new
��  
Database
��! )
.
��) *

tipos_data
��* 4
(
��4 5
)
��5 6
{
��7 8
id
��9 ;
=
��< =
$num
��> ?
,
��? @
descripcion
��A L
=
��M N
$str
��O j
}
��k l
)
��l m
;
��m n
	viewModel
�� 
.
�� 
DisposicionFList
�� &
=
��' (
new
��) ,

SelectList
��- 7
(
��7 8
listDF
��8 >
,
��> ?
$str
��@ D
,
��D E
$str
��F S
)
��S T
;
��T U
var
�� 
listTF
�� 
=
�� 
await
�� 
DaoTiposData
�� +
.
��+ ,
DaoInstance
��, 7
.
��7 8
GetTypesAsync
��8 E
(
��E F
TOPFIVEFORZERO
��F T
)
��T U
;
��U V
	viewModel
�� 
.
��  
TopFiveForZeroList
�� (
=
��) *
listTF
��+ 1
;
��1 2
return
�� 
	viewModel
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
RequestResponse
�� *
>
��* +
CreateEwoObject
��, ;
(
��; <(
ReporteIncidentesViewModel
��< V
ewr
��W Z
,
��Z [
bool
��\ `
bReporte
��a i
)
��i j
{
�� 	
RequestResponse
�� 
rr
�� 
=
��  
new
��! $
RequestResponse
��% 4
(
��4 5
)
��5 6
;
��6 7
ewo
�� 
ewo
�� 
=
�� 
new
�� 
ewo
�� 
(
�� 
)
�� 
;
��  "
JavaScriptSerializer
��  
ser
��! $
=
��% &
new
��' *"
JavaScriptSerializer
��+ ?
(
��? @
)
��@ A
;
��A B
List
�� 
<
�� !
acciones_inmediatas
�� $
>
��$ %
accInm
��& ,
=
��- .
ser
��/ 2
.
��2 3
Deserialize
��3 >
<
��> ?
List
��? C
<
��C D!
acciones_inmediatas
��D W
>
��W X
>
��X Y
(
��Y Z
ewr
��Z ]
.
��] ^
Cmd
��^ a
)
��a b
;
��b c
ewo
�� 
.
�� 
consecutivo
�� 
=
�� 
long
�� "
.
��" #
Parse
��# (
(
��( )
ewr
��) ,
.
��, -
Consecutivo
��- 8
)
��8 9
;
��9 :
ewo
�� 
.
�� *
fecha_apertura_investigacion
�� ,
=
��- .
ewr
��/ 2
.
��2 3#
FchApertInvestigacion
��3 H
==
��I K
null
��L P
?
��Q R
DateTime
��S [
.
��[ \
Now
��\ _
:
��` a
DateTime
�� 
.
�� 

ParseExact
�� #
(
��# $
ewr
��$ '
.
��' (#
FchApertInvestigacion
��( =
,
��= >
$str
��? K
,
��K L
CultureInfo
��M X
.
��X Y
InvariantCulture
��Y i
)
��i j
;
��j k
ewo
�� 
.
�� 
hora_evento
�� 
=
�� 
TimeSpan
�� &
.
��& '
Parse
��' ,
(
��, -
ewr
��- 0
.
��0 1
HrEvento
��1 9
)
��9 :
;
��: ;
ewo
�� 
.
�� )
fecha_entrega_investigacion
�� +
=
��, -
ewr
��. 1
.
��1 2%
FchEntregaInvestigacion
��2 I
==
��J L
null
��M Q
?
��R S
DateTime
��T \
.
��\ ]
Now
��] `
:
��a b
DateTime
�� 
.
�� 

ParseExact
�� #
(
��# $
ewr
��$ '
.
��' (%
FchEntregaInvestigacion
��( ?
,
��? @
$str
��A M
,
��M N
CultureInfo
��O Z
.
��Z [
InvariantCulture
��[ k
)
��k l
;
��l m
ewo
�� 
.
�� (
hora_entrega_investigacion
�� *
=
��+ ,
TimeSpan
��- 5
.
��5 6
Parse
��6 ;
(
��; <
ewr
��< ?
.
��? @$
HrEntregaInvestigacion
��@ V
)
��V W
;
��W X
ewo
�� 
.
�� 
codigo_linea
�� 
=
�� 
ewr
�� "
.
��" #
IdLinea
��# *
;
��* +
ewo
�� 
.
�� 
etapa
�� 
=
�� 
ewr
�� 
.
�� 
EtapaProceso
�� (
;
��( )
ewo
�� 
.
�� &
codigo_coordinador_turno
�� (
=
��) *
ewr
��+ .
.
��. /
	IdCoorSup
��/ 8
;
��8 9
ewo
�� 
.
�� %
codigo_responsable_area
�� '
=
��( )
ewr
��* -
.
��- .

IdRespArea
��. 8
;
��8 9
ewo
�� 
.
�� )
codigo_operario_responsable
�� +
=
��, -
ewr
��. 1
.
��1 2
IdOpeRes
��2 :
;
��: ;
ewo
�� 
.
�� (
codigo_lider_investigacion
�� *
=
��+ ,
ewr
��- 0
.
��0 1
IdLidInv
��1 9
;
��9 :
ewo
�� 
.
�� 
producto
�� 
=
�� 
ewr
�� 
.
�� 
NombreProducto
�� -
;
��- .
ewo
�� 
.
�� !
codigo_sap_producto
�� #
=
��$ %
ewr
��& )
.
��) *
	CodigoSAP
��* 3
;
��3 4
ewo
�� 
.
�� 
lote_producto
�� 
=
�� 
ewr
��  #
.
��# $
Lote
��$ (
;
��( )
ewo
�� 
.
��  
toneladas_producto
�� "
=
��# $
ewr
��% (
.
��( )
	Toneladas
��) 2
;
��2 3
ewo
�� 
.
�� 
numero_cajas
�� 
=
�� 
ewr
�� "
.
��" #
NumCajas
��# +
;
��+ ,
ewo
�� 
.
�� 
numero_pallet
�� 
=
�� 
ewr
��  #
.
��# $
	NumPallet
��$ -
;
��- .
ewo
�� 
.
�� 
unidades
�� 
=
�� 
ewr
�� 
.
�� 
Unidades
�� '
;
��' (
ewo
�� 
.
�� 
tamano_formato
�� 
=
��  
ewr
��! $
.
��$ %
TamanoFormato
��% 2
;
��2 3
ewo
�� 
.
�� !
tiempo_linea_parada
�� #
=
��$ %
ewr
��& )
.
��) *
TiempoLineaParada
��* ;
;
��; <
ewo
�� 
.
�� *
descripcion_general_problema
�� ,
=
��- .
ewr
��/ 2
.
��2 3!
DescripcionProblema
��3 F
;
��F G
if
�� 
(
�� 
bReporte
�� 
)
�� 
{
�� 
ewo
�� 
.
�� 
codigo_estado
�� !
=
��" #
$num
��$ %
;
��% &
ewo
�� 
.
�� 
autor
�� 
=
�� 
User
��  
.
��  !
Identity
��! )
.
��) *
	GetUserId
��* 3
(
��3 4
)
��4 5
;
��5 6
long
�� 
reg
�� 
=
�� 
await
��  
DaoEwo
��! '
.
��' (
DaoInstance
��( 3
.
��3 4
AddEwo
��4 :
(
��: ;
ewo
��; >
)
��> ?
;
��? @
if
�� 
(
�� 
reg
�� 
>
�� 
$num
�� 
)
�� 
{
�� 
foreach
�� 
(
�� 
var
��  
item
��! %
in
��& (
accInm
��) /
)
��/ 0
{
�� 
item
�� 
.
�� 

codigo_ewo
�� '
=
��( )
reg
��* -
;
��- .
}
�� 
await
�� 
DaoAcciones
�� %
.
��% &
DaoInstance
��& 1
.
��1 2
AddAcciones
��2 =
(
��= >
accInm
��> D
)
��D E
;
��E F
}
�� 
}
�� 
else
�� 
{
�� 
ewo
�� 
.
�� 
autor
�� 
=
�� 
(
�� 
await
�� "
DaoEwo
��# )
.
��) *
DaoInstance
��* 5
.
��5 6
GetAutorAsync
��6 C
(
��C D
ewr
��D G
.
��G H
Id
��H J
)
��J K
)
��K L
;
��L M
ewo
�� 
.
�� 
codigo_estado
�� !
=
��" #
$num
��$ %
;
��% &
ewo
�� 
.
��  
usuario_procesador
�� &
=
��' (
User
��) -
.
��- .
Identity
��. 6
.
��6 7
	GetUserId
��7 @
(
��@ A
)
��A B
;
��B C
ewo
�� 
.
�� 
id
�� 
=
�� 
ewr
�� 
.
�� 
Id
�� 
;
��  
ewo
�� 
.
�� 

ap_nivel_1
�� 
=
��  
ewr
��! $
.
��$ %
ArbPerd1
��% -
;
��- .
ewo
�� 
.
�� 

ap_nivel_2
�� 
=
��  
ewr
��! $
.
��$ %
ArbPerd2
��% -
;
��- .
ewo
�� 
.
�� 

ap_nivel_3
�� 
=
��  
ewr
��! $
.
��$ %
ArbPerd3
��% -
;
��- .
ewo
�� 
.
�� 

ap_nivel_4
�� 
=
��  
ewr
��! $
.
��$ %
ArbPerd4
��% -
;
��- .
ewo
�� 
.
�� 
ap_nivel_otro
�� !
=
��" #
ewr
��$ '
.
��' (
ArbPerdO
��( 0
;
��0 1
ewo
�� 
.
�� 
tipo_incidente
�� "
=
��# $
ewr
��% (
.
��( )
TipoIncidente
��) 6
;
��6 7
ewo
�� 
.
�� 

recurrente
�� 
=
��  
ewr
��! $
.
��$ %

Recurrente
��% /
!=
��0 2
null
��3 7
?
��8 9
true
��: >
:
��? @
false
��A F
;
��F G
ewo
�� 
.
�� 
numero_airsweb
�� "
=
��# $
ewr
��% (
.
��( )

NumAirsweb
��) 3
;
��3 4
ewo
�� 
.
�� &
tiempo_ingresado_airsweb
�� ,
=
��- .
ewr
��/ 2
.
��2 3
TiempoAirsWeb
��3 @
;
��@ A
ewo
�� 
.
�� 
tiempo_inspeccion
�� %
=
��& '
ewr
��( +
.
��+ ,
TiempoInpeccion
��, ;
;
��; <
ewo
�� 
.
�� 
costo_incidente
�� #
=
��$ %
Convert
��& -
.
��- .
	ToDecimal
��. 7
(
��7 8
ewr
��8 ;
.
��; <
CostoIncidente
��< J
)
��J K
;
��K L
ewo
�� 
.
�� #
costo_incidente_euros
�� )
=
��* +
Convert
��, 3
.
��3 4
	ToDecimal
��4 =
(
��= >
ewr
��> A
.
��A B!
CostoIncidenteEuros
��B U
)
��U V
;
��V W
ewo
�� 
.
�� +
codigo_disposicion_final_prod
�� 1
=
��2 3
ewr
��4 7
.
��7 8
IdDisposicionF
��8 F
;
��F G
ewo
�� 
.
��  
cantidad_toneladas
�� &
=
��' (
ewr
��) ,
.
��, -
DFToneladas
��- 8
;
��8 9
ewo
�� 
.
�� 
gemba
�� 
=
�� 
ewr
�� 
.
��  
GembaOk
��  '
!=
��( *
null
��+ /
?
��0 1
true
��2 6
:
��7 8
false
��9 >
;
��> ?
ewo
�� 
.
�� 
gembutsu
�� 
=
�� 
ewr
�� "
.
��" #

GembutsuOk
��# -
!=
��. 0
null
��1 5
?
��6 7
true
��8 <
:
��= >
false
��? D
;
��D E
ewo
�� 
.
�� 
genjitsu
�� 
=
�� 
ewr
�� "
.
��" #

GenjitsuOk
��# -
!=
��. 0
null
��1 5
?
��6 7
true
��8 <
:
��= >
false
��? D
;
��D E
ewo
�� 
.
�� 
five_g_image
��  
=
��! "
ewr
��# &
.
��& '
ImageGs
��' .
!=
��/ 1
null
��2 6
?
��7 8
ewr
��9 <
.
��< =
ImageGs
��= D
.
��D E
FileName
��E M
:
��N O
$str
��P R
;
��R S
ewo
�� 
.
�� 
images_path
�� 
=
��  !
ewr
��" %
.
��% &
ImageFen
��& .
!=
��/ 1
null
��2 6
?
��7 8
ewr
��9 <
.
��< =
ImageFen
��= E
.
��E F
FileName
��F N
:
��O P
$str
��Q S
;
��S T 
SaveImageEwoServer
�� "
(
��" #
ewr
��# &
.
��& '
ImageGs
��' .
)
��. /
;
��/ 0 
SaveImageEwoServer
�� "
(
��" #
ewr
��# &
.
��& '
ImageFen
��' /
)
��/ 0
;
��0 1
ewo
�� 
.
�� 
que
�� 
=
�� 
ewr
�� 
.
�� 
QueDesc
�� %
;
��% &
ewo
�� 
.
�� 
donde
�� 
=
�� 
ewr
�� 
.
��  
	DondeDesc
��  )
;
��) *
ewo
�� 
.
�� 
cuando
�� 
=
�� 
ewr
��  
.
��  !

CuandoDesc
��! +
;
��+ ,
ewo
�� 
.
�� 
quien
�� 
=
�� 
ewr
�� 
.
��  
	QuienDesc
��  )
;
��) *
ewo
�� 
.
�� 
cual
�� 
=
�� 
ewr
�� 
.
�� 
CualDesc
�� '
;
��' (
ewo
�� 
.
�� 
como
�� 
=
�� 
ewr
�� 
.
�� 
ComoDesc
�� '
;
��' (
ewo
�� 
.
�� "
descripcion_fenomeno
�� (
=
��) *
ewr
��+ .
.
��. /
FenomenoDesc
��/ ;
;
��; <
ewo
�� 
.
�� 
maquina4m_desc
�� "
=
��# $
ewr
��% (
.
��( )
Maquina4MDesc
��) 6
;
��6 7
ewo
�� 
.
�� 
metodo4m_desc
�� !
=
��" #
ewr
��$ '
.
��' (
Metodo4MDesc
��( 4
;
��4 5
ewo
�� 
.
�� 
manoobra4m_desc
�� #
=
��$ %
ewr
��& )
.
��) *
ManoObra4MDesc
��* 8
;
��8 9
ewo
�� 
.
�� 
material4m_desc
�� #
=
��$ %
ewr
��& )
.
��) *
Material4MDesc
��* 8
;
��8 9
decimal
�� 
maq4m
�� 
=
�� 
decimal
��  '
.
��' (
Parse
��( -
(
��- .
ewr
��. 1
.
��1 2
Maquina4MTotal
��2 @
.
��@ A
Replace
��A H
(
��H I
$str
��I L
,
��L M
$str
��N P
)
��P Q
)
��Q R
;
��R S
decimal
�� 
met4m
�� 
=
�� 
decimal
��  '
.
��' (
Parse
��( -
(
��- .
ewr
��. 1
.
��1 2
Metodo4MTotal
��2 ?
.
��? @
Replace
��@ G
(
��G H
$str
��H K
,
��K L
$str
��M O
)
��O P
)
��P Q
;
��Q R
decimal
�� 
man4m
�� 
=
�� 
decimal
��  '
.
��' (
Parse
��( -
(
��- .
ewr
��. 1
.
��1 2
ManoObra4MTotal
��2 A
.
��A B
Replace
��B I
(
��I J
$str
��J M
,
��M N
$str
��O Q
)
��Q R
)
��R S
;
��S T
decimal
�� 
mat4m
�� 
=
�� 
decimal
��  '
.
��' (
Parse
��( -
(
��- .
ewr
��. 1
.
��1 2
Material4MTotal
��2 A
.
��A B
Replace
��B I
(
��I J
$str
��J M
,
��M N
$str
��O Q
)
��Q R
)
��R S
;
��S T
ewo
�� 
.
�� 
	maquina4m
�� 
=
�� 
maq4m
��  %
;
��% &
ewo
�� 
.
�� 
metodo4m
�� 
=
�� 
met4m
�� $
;
��$ %
ewo
�� 
.
�� 

manoobra4m
�� 
=
��  
man4m
��! &
;
��& '
ewo
�� 
.
�� 

material4m
�� 
=
��  
mat4m
��! &
;
��& '
ewo
�� 
.
�� 
before
�� 
=
�� 
decimal
�� $
.
��$ %
Parse
��% *
(
��* +
ewr
��+ .
.
��. /
	BeforePct
��/ 8
)
��8 9
;
��9 :
ewo
�� 
.
�� 
after
�� 
=
�� 
decimal
�� #
.
��# $
Parse
��$ )
(
��) *
ewr
��* -
.
��- .
AfterPct
��. 6
)
��6 7
;
��7 8
ewo
�� 
.
�� #
codigo_top_five_fzero
�� )
=
��* +
ewr
��, /
.
��/ 0
IdTopFFZ
��0 8
.
��8 9
Split
��9 >
(
��> ?
$char
��? B
)
��B C
.
��C D
Length
��D J
>
��K L
$num
��M N
?
��O P
Int64
��Q V
.
��V W
Parse
��W \
(
��\ ]
ewr
��^ a
.
��a b
IdTopFFZ
��b j
.
��j k
Split
��k p
(
��p q
$char
��q t
)
��t u
[
��u v
$num
��v w
]
��w x
)
��x y
:
��z {
$num
��| }
;
��} ~
ewo
�� 
.
�� &
comentarios_resoluciones
�� ,
=
��- .
ewr
��/ 2
.
��2 3%
ComentariosResoluciones
��3 J
;
��J K
ewo
�� 
.
�� (
pa_codigo_coordinador_prod
�� .
=
��/ 0
ewr
��1 4
.
��4 5

IdCoorProd
��5 ?
;
��? @
ewo
�� 
.
�� $
pa_codigo_jefe_calidad
�� *
=
��+ ,
ewr
��- 0
.
��0 1
IdJefCal
��1 9
;
��9 :
ewo
�� 
.
�� $
pa_codigo_gerente_prod
�� *
=
��+ ,
ewr
��- 0
.
��0 1
	IdGerProd
��1 :
;
��: ;
ewo
�� 
.
�� '
pa_codigo_gerente_calidad
�� -
=
��. /
ewr
��0 3
.
��3 4
IdGerCal
��4 <
;
��< =
ewo
�� 
.
�� 
fecha_cierre
��  
=
��! "
ewr
��# &
.
��& '
	FchCierre
��' 0
==
��1 3
null
��4 8
?
��9 :
DateTime
��; C
.
��C D
Now
��D G
:
��H I
DateTime
�� 
.
�� 

ParseExact
�� #
(
��# $
ewr
��$ '
.
��' (
	FchCierre
��( 1
,
��1 2
$str
��3 ?
,
��? @
CultureInfo
��A L
.
��L M
InvariantCulture
��M ]
)
��] ^
;
��^ _
ewo
�� 
.
�� 
codigo_m
�� 
=
�� 
ewr
�� "
.
��" #
MaxMId
��# )
;
��) *
long
�� 
id
�� 
=
�� 
await
�� 
DaoEwo
��  &
.
��& '
DaoInstance
��' 2
.
��2 3$
ProcesarIncidenteAsync
��3 I
(
��I J
ewo
��J M
)
��M N
;
��N O
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $
accInm
��% +
)
��+ ,
{
�� 
item
�� 
.
�� 

codigo_ewo
�� #
=
��$ %
id
��& (
;
��( )
}
�� 
await
�� 
DaoAcciones
�� !
.
��! "
DaoInstance
��" -
.
��- . 
AddAccionesProcess
��. @
(
��@ A
accInm
��A G
,
��G H
id
��H J
)
��J K
;
��K L
var
�� 
eqTrab
�� 
=
�� 
ewr
��  
.
��  !
EquipoTrabajo
��! .
;
��. /
string
�� 
[
�� 
]
�� 
integrantes
�� $
=
��% &
eqTrab
��' -
.
��- .
Split
��. 3
(
��3 4
$char
��4 7
)
��7 8
;
��8 9
List
�� 
<
�� 
equipo_trabajo
�� #
>
��# $
listET
��% +
=
��, -
new
��. 1
List
��2 6
<
��6 7
equipo_trabajo
��7 E
>
��E F
(
��F G
)
��G H
;
��H I
foreach
�� 
(
�� 
var
�� 

integrante
�� '
in
��( *
integrantes
��+ 6
)
��6 7
{
�� 
listET
�� 
.
�� 
Add
�� 
(
�� 
new
�� "
equipo_trabajo
��# 1
(
��1 2
)
��2 3
{
�� 

codigo_ewo
�� "
=
��# $
id
��% '
,
��' (
codigo_usuario
�� &
=
��' (

integrante
��) 3
}
�� 
)
�� 
;
�� 
}
�� 
await
�� 
DaoEwo
�� 
.
�� 
DaoInstance
�� (
.
��( )
AddEquipoTrabjo
��) 8
(
��8 9
listET
��9 ?
)
��? @
;
��@ A
List
�� 
<
�� 
fiveg_resultados
�� %
>
��% &
listGenjitsu
��' 3
=
��4 5
ser
��6 9
.
��9 :
Deserialize
��: E
<
��E F
List
��F J
<
��J K
fiveg_resultados
��K [
>
��[ \
>
��\ ]
(
��] ^
ewr
��^ a
.
��a b
ListGenj
��b j
)
��j k
;
��k l
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $
listGenjitsu
��% 1
)
��1 2
{
�� 
item
�� 
.
�� 
codigo_5fv_opcion
�� *
=
��+ ,
$num
��- /
;
��/ 0
}
�� 
List
�� 
<
�� 
fiveg_resultados
�� %
>
��% &
	listGenri
��' 0
=
��1 2
ser
��3 6
.
��6 7
Deserialize
��7 B
<
��B C
List
��C G
<
��G H
fiveg_resultados
��H X
>
��X Y
>
��Y Z
(
��Z [
ewr
��[ ^
.
��^ _
ListGenr
��_ g
)
��g h
;
��h i
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $
	listGenri
��% .
)
��. /
{
�� 
item
�� 
.
�� 
codigo_5fv_opcion
�� *
=
��+ ,
$num
��- /
;
��/ 0
}
�� 
List
�� 
<
�� 
fiveg_resultados
�� %
>
��% &
listGensoku
��' 2
=
��3 4
ser
��5 8
.
��8 9
Deserialize
��9 D
<
��D E
List
��E I
<
��I J
fiveg_resultados
��J Z
>
��Z [
>
��[ \
(
��\ ]
ewr
��] `
.
��` a
ListGens
��a i
)
��i j
;
��j k
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $
listGensoku
��% 0
)
��0 1
{
�� 
item
�� 
.
�� 
codigo_5fv_opcion
�� *
=
��+ ,
$num
��- /
;
��/ 0
}
�� 
List
�� 
<
�� 
fiveg_resultados
�� %
>
��% &
listGs
��' -
=
��. /
listGenjitsu
��0 <
.
��< =
Union
��= B
(
��B C
	listGenri
��C L
)
��L M
.
��M N
Union
��N S
(
��S T
listGensoku
��T _
)
��_ `
.
��` a
ToList
��a g
(
��g h
)
��h i
;
��i j
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $
listGs
��% +
)
��+ ,
{
�� 
item
�� 
.
�� 

codigo_ewo
�� #
=
��$ %
id
��& (
;
��( )
}
�� 
await
�� 
Dao5GResultados
�� %
.
��% &
DaoInstance
��& 1
.
��1 2"
Add5GResultadosAsync
��2 F
(
��F G
listGs
��G M
)
��M N
;
��N O
List
�� 
<
�� 
porque_porque
�� "
>
��" #

listPorque
��$ .
=
��/ 0
ser
��1 4
.
��4 5
Deserialize
��5 @
<
��@ A
List
��A E
<
��E F
porque_porque
��F S
>
��S T
>
��T U
(
��U V
ewr
��V Y
.
��Y Z
ListPorq
��Z b
)
��b c
;
��c d
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $

listPorque
��% /
)
��/ 0
{
�� 
item
�� 
.
�� 

codigo_ewo
�� #
=
��$ %
id
��& (
;
��( )
}
�� 
await
�� 
	DaoPorque
�� 
.
��  
DaoInstance
��  +
.
��+ ,
AddPorqueAsync
��, :
(
��: ;

listPorque
��; E
)
��E F
;
��F G
List
�� 
<
�� 
Preguntas4MModel
�� %
>
��% &
list4M
��' -
=
��. /
ser
��0 3
.
��3 4
Deserialize
��4 ?
<
��? @
List
��@ D
<
��D E
Preguntas4MModel
��E U
>
��U V
>
��V W
(
��W X
ewr
��X [
.
��[ \
List4M
��\ b
)
��b c
;
��c d
List
�� 
<
�� 
respuestas4m
�� !
>
��! "
listDB4M
��# +
=
��, -
new
��. 1
List
��2 6
<
��6 7
respuestas4m
��7 C
>
��C D
(
��D E
)
��E F
;
��F G
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $
list4M
��% +
)
��+ ,
{
�� 
listDB4M
�� 
.
�� 
Add
��  
(
��  !
new
��! $
respuestas4m
��% 1
(
��1 2
)
��2 3
{
�� 

codigo_ewo
�� "
=
��# $
id
��% '
,
��' (
codigo_pregunta
�� '
=
��( )
item
��* .
.
��. /
id
��/ 1
,
��1 2

verificado
�� "
=
��# $
item
��% )
.
��) *
option
��* 0
==
��1 3
$str
��4 7
?
��8 9
$str
��: ?
:
��@ A
(
��B C
item
��C G
.
��G H
option
��H N
==
��O Q
$str
��R U
?
��V W
$str
��X \
:
��] ^
$str
��^ b
)
��b c
}
�� 
)
�� 
;
�� 
}
�� 
await
�� 
Dao4M
�� 
.
�� 
DaoInstance
�� '
.
��' ( 
AddRespuestasAsync
��( :
(
��: ;
listDB4M
��; C
)
��C D
;
��D E
List
�� 
<
�� 
ZeroResponses
�� "
>
��" #
listZRB
��$ +
=
��, -
ser
��. 1
.
��1 2
Deserialize
��2 =
<
��= >
List
��> B
<
��B C
ZeroResponses
��C P
>
��P Q
>
��Q R
(
��R S
ewr
��S V
.
��V W
ListBefo
��W _
)
��_ `
;
��` a
List
�� 
<
�� 
ZeroResponses
�� "
>
��" #
listZRA
��$ +
=
��, -
ser
��. 1
.
��1 2
Deserialize
��2 =
<
��= >
List
��> B
<
��B C
ZeroResponses
��C P
>
��P Q
>
��Q R
(
��R S
ewr
��S V
.
��V W
ListAfte
��W _
)
��_ `
;
��` a
List
�� 
<
�� 
zero_ewo
�� 
>
�� 
listZE
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1
zero_ewo
��1 9
>
��9 :
(
��: ;
)
��; <
;
��< =
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $
listZRB
��% ,
)
��, -
{
�� 
listZE
�� 
.
�� 
Add
�� 
(
�� 
new
�� "
zero_ewo
��# +
(
��+ ,
)
��, -
{
�� 

codigo_ewo
�� "
=
��# $
$num
��% &
,
��& '
before
�� 
=
��  
item
��! %
.
��% &
Puntaje
��& -
,
��- .
codigo_response
�� '
=
��( )
item
��* .
.
��. /
Puntaje
��/ 6
==
��7 9
$num
��: ;
?
��< =
$num
��> ?
:
��@ A
(
��B C
await
��C H
DaoZero
��I P
.
��P Q
DaoInstance
��Q \
.
��\ ]
GetZeroResponse
��] l
(
��l m
item
��m q
.
��q r
Id
��r t
,
��t u
item
��v z
.
��z {
Puntaje��{ �
)��� �
)��� �
.��� �
Id��� �
}
�� 
)
�� 
;
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $
listZRA
��% ,
)
��, -
{
�� 
listZE
�� 
.
�� 
Add
�� 
(
�� 
new
�� "
zero_ewo
��# +
(
��+ ,
)
��, -
{
�� 

codigo_ewo
�� "
=
��# $
$num
��% &
,
��& '
after
�� 
=
�� 
item
��  $
.
��$ %
Puntaje
��% ,
,
��, -
codigo_response
�� '
=
��( )
item
��* .
.
��. /
Puntaje
��/ 6
==
��7 9
$num
��: ;
?
��< =
$num
��> ?
:
��@ A
(
��B C
await
��C H
DaoZero
��I P
.
��P Q
DaoInstance
��Q \
.
��\ ]
GetZeroResponse
��] l
(
��l m
item
��m q
.
��q r
Id
��r t
,
��t u
item
��v z
.
��z {
Puntaje��{ �
)��� �
)��� �
.��� �
Id��� �
}
�� 
)
�� 
;
�� 
}
�� 
await
�� 
DaoZero
�� 
.
�� 
DaoInstance
�� )
.
��) *
AddZeroEwoAsync
��* 9
(
��9 :
listZE
��: @
)
��@ A
;
��A B
List
�� 
<
�� 
plan_accion
��  
>
��  !
listPA
��" (
=
��) *
ser
��+ .
.
��. /
Deserialize
��/ :
<
��: ;
List
��; ?
<
��? @
plan_accion
��@ K
>
��K L
>
��L M
(
��M N
ewr
��N Q
.
��Q R
ListPlan
��R Z
)
��Z [
;
��[ \
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $
listPA
��% +
)
��+ ,
{
�� 
item
�� 
.
�� 

codigo_ewo
�� #
=
��$ %
id
��& (
;
��( )
}
�� 
await
�� 
DaoPlanAccion
�� #
.
��# $
DaoInstance
��$ /
.
��/ 0 
AddPlanAccionAsync
��0 B
(
��B C
listPA
��C I
)
��I J
;
��J K
}
�� 
rr
�� 
.
�� 
Codigo
�� 
=
�� 
$num
�� 
;
�� 
rr
�� 
.
�� 
	Resultado
�� 
=
�� 
ewo
�� 
;
�� 
return
�� 
rr
�� 
;
�� 
}
�� 	
private
�� 
void
��  
SaveImageEwoServer
�� '
(
��' ( 
HttpPostedFileBase
��( :
file
��; ?
)
��? @
{
�� 	
if
�� 
(
�� 
file
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
string
�� 
nameAndLocation
�� &
=
��' (

ewo_images
��) 3
+
��4 5
file
��6 :
.
��: ;
FileName
��; C
;
��C D
file
�� 
.
�� 
SaveAs
�� 
(
�� 
Server
�� "
.
��" #
MapPath
��# *
(
��* +
nameAndLocation
��+ :
)
��: ;
)
��; <
;
��< =
}
�� 
}
�� 	
	protected
�� 
override
�� 
void
�� 
Dispose
��  '
(
��' (
bool
��( ,
	disposing
��- 6
)
��6 7
{
�� 	
if
�� 
(
�� 
	disposing
�� 
)
�� 
{
�� 
db
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
�� 
}
�� 
base
�� 
.
�� 
Dispose
�� 
(
�� 
	disposing
�� "
)
��" #
;
��# $
}
�� 	
}
�� 
}�� �x
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
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
Create
�� "
(
��" #
[
��# $
Bind
��$ (
(
��( )
Include
��) 0
=
��1 2
$str��3 �
)��� �
]��� �
AspNetUsers��� �
aspNetUsers��� �
)��� �
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
db
�� 
.
�� 
AspNetUsers
�� 
.
�� 
Add
�� "
(
��" #
aspNetUsers
��# .
)
��. /
;
��/ 0
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
��  
;
��  !
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 
return
�� 
View
�� 
(
�� 
aspNetUsers
�� #
)
��# $
;
��$ %
}
�� 	
public
�� 
ActionResult
�� 
Edit
��  
(
��  !
string
��! '
id
��( *
)
��* +
{
�� 	
if
�� 
(
�� 
id
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
new
�� "
HttpStatusCodeResult
�� /
(
��/ 0
HttpStatusCode
��0 >
.
��> ?

BadRequest
��? I
)
��I J
;
��J K
}
�� 
AspNetUsers
�� 
aspNetUsers
�� #
=
��$ %
db
��& (
.
��( )
AspNetUsers
��) 4
.
��4 5
Find
��5 9
(
��9 :
id
��: <
)
��< =
;
��= >
if
�� 
(
�� 
aspNetUsers
�� 
==
�� 
null
�� #
)
��# $
{
�� 
return
�� 
HttpNotFound
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
return
�� 
View
�� 
(
�� 
aspNetUsers
�� #
)
��# $
;
��$ %
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
Edit
��  
(
��  !
[
��! "
Bind
��" &
(
��& '
Include
��' .
=
��/ 0
$str��1 �
)��� �
]��� �
AspNetUsers��� �
aspNetUsers��� �
)��� �
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
db
�� 
.
�� 
Entry
�� 
(
�� 
aspNetUsers
�� $
)
��$ %
.
��% &
State
��& +
=
��, -
EntityState
��. 9
.
��9 :
Modified
��: B
;
��B C
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
��  
;
��  !
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 
return
�� 
View
�� 
(
�� 
aspNetUsers
�� #
)
��# $
;
��$ %
}
�� 	
public
�� 
ActionResult
�� 
Delete
�� "
(
��" #
string
��# )
id
��* ,
)
��, -
{
�� 	
if
�� 
(
�� 
id
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
new
�� "
HttpStatusCodeResult
�� /
(
��/ 0
HttpStatusCode
��0 >
.
��> ?

BadRequest
��? I
)
��I J
;
��J K
}
�� 
AspNetUsers
�� 
aspNetUsers
�� #
=
��$ %
db
��& (
.
��( )
AspNetUsers
��) 4
.
��4 5
Find
��5 9
(
��9 :
id
��: <
)
��< =
;
��= >
if
�� 
(
�� 
aspNetUsers
�� 
==
�� 
null
�� #
)
��# $
{
�� 
return
�� 
HttpNotFound
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
return
�� 
View
�� 
(
�� 
aspNetUsers
�� #
)
��# $
;
��$ %
}
�� 	
[
�� 	
HttpPost
��	 
,
�� 

ActionName
�� 
(
�� 
$str
�� &
)
��& '
]
��' (
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
DeleteConfirmed
�� +
(
��+ ,
string
��, 2
id
��3 5
)
��5 6
{
�� 	
AspNetUsers
�� 
aspNetUsers
�� #
=
��$ %
db
��& (
.
��( )
AspNetUsers
��) 4
.
��4 5
Find
��5 9
(
��9 :
id
��: <
)
��< =
;
��= >
db
�� 
.
�� 
AspNetUsers
�� 
.
�� 
Remove
�� !
(
��! "
aspNetUsers
��" -
)
��- .
;
��. /
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
�� 
;
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
)
��+ ,
;
��, -
}
�� 	
	protected
�� 
override
�� 
void
�� 
Dispose
��  '
(
��' (
bool
��( ,
	disposing
��- 6
)
��6 7
{
�� 	
if
�� 
(
�� 
	disposing
�� 
)
�� 
{
�� 
db
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
�� 
}
�� 
base
�� 
.
�� 
Dispose
�� 
(
�� 
	disposing
�� "
)
��" #
;
��# $
}
�� 	
}
�� 
}�� �#
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
}SS �
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
}11 �-
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
}__ �
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
}44 ��
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
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
var
�� 
maxv
�� 
=
�� 
context
�� &
.
��& '
ewo
��' *
.
��* +
Count
��+ 0
(
��0 1
)
��1 2
;
��2 3
max
�� 
=
�� 
maxv
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
	WriteLine
�� 
(
��  
$str
��  G
+
��H I
e
��J K
.
��K L
ToString
��L T
(
��T U
)
��U V
)
��V W
;
��W X
max
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
return
�� 
max
�� 
;
�� 
}
�� 	
public
�� 
int
�� 
GetCountClosed
�� !
(
��! "
)
��" #
{
�� 	
int
�� 
max
�� 
=
�� 
$num
�� 
;
�� 
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
var
�� 
maxv
�� 
=
�� 
context
�� &
.
��& '
ewo
��' *
.
��* +
Where
��+ 0
(
��0 1
x
��1 2
=>
��2 4
x
��5 6
.
��6 7
codigo_estado
��7 D
==
��E G
$num
��H I
)
��I J
.
��J K
Count
��K P
(
��P Q
)
��Q R
;
��R S
max
�� 
=
�� 
maxv
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
	WriteLine
�� 
(
��  
$str
��  P
+
��Q R
e
��S T
.
��T U
ToString
��U ]
(
��] ^
)
��^ _
)
��_ `
;
��` a
max
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
return
�� 
max
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
long
�� 
>
�� 
AddEwo
��  &
(
��& '
ewo
��' *
ewo
��+ .
)
��. /
{
�� 	
long
�� 
regs
�� 
=
�� 
$num
�� 
;
�� 
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
context
�� 
.
�� 
ewo
�� 
.
��  
Add
��  #
(
��# $
ewo
��$ '
)
��' (
;
��( )
await
�� 
context
�� !
.
��! "
SaveChangesAsync
��" 2
(
��2 3
)
��3 4
;
��4 5
regs
�� 
=
�� 
ewo
�� 
.
�� 
id
�� !
;
��! "
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
	WriteLine
�� 
(
��  
$str
��  8
+
��8 9
e
��9 :
.
��: ;
ToString
��; C
(
��C D
)
��D E
)
��E F
;
��F G
regs
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
return
�� 
regs
�� 
;
�� 
}
�� 	
public
�� 
List
�� 
<
�� 
DonutViewModel
�� "
>
��" #
GetEwoPercents
��$ 2
(
��2 3
)
��3 4
{
�� 	
List
�� 
<
�� 
DonutViewModel
�� 
>
��  
list
��! %
=
��& '
new
��( +
List
��, 0
<
��0 1
DonutViewModel
��1 ?
>
��? @
(
��@ A
)
��A B
;
��B C
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
var
�� 
query
�� 
=
�� 
(
��  !
from
��! %
e
��& '
in
��( *
context
��+ 2
.
��2 3
ewo
��3 6
join
��! %
td
��& (
in
��) +
context
��, 3
.
��3 4

tipos_data
��4 >
on
��! #
e
��$ %
.
��% &
tipo_incidente
��& 4
equals
��5 ;
td
��< >
.
��> ?
id
��? A
group
��! &
e
��' (
by
��) +
new
��, /
{
��0 1
e
��2 3
.
��3 4
tipo_incidente
��4 B
,
��B C
td
��C E
.
��E F
descripcion
��F Q
}
��R S
into
��T X
g
��Y Z
select
��! '
new
��( +
{
��! "
g
��% &
.
��& '
Key
��' *
.
��* +
descripcion
��+ 6
,
��6 7
Count
��% *
=
��+ ,
g
��- .
.
��. /
Count
��/ 4
(
��4 5
)
��5 6
}
��! "
)
��" #
.
��# $
AsEnumerable
��$ 0
(
��0 1
)
��1 2
.
��  !
Select
��! '
(
��' (
g
��( )
=>
��* ,
new
��- 0
{
��  !
g
��$ %
.
��% &
descripcion
��& 1
,
��1 2
g
��$ %
.
��% &
Count
��& +
}
��  !
)
��! "
;
��" #
if
�� 
(
�� 
query
�� 
!=
��  
null
��! %
)
��% &
{
�� 
foreach
�� 
(
��  !
var
��! $
item
��% )
in
��* ,
query
��- 2
)
��2 3
{
�� 
list
��  
.
��  !
Add
��! $
(
��$ %
new
��% (
DonutViewModel
��) 7
(
��7 8
)
��8 9
{
�� 
label
��  %
=
��& '
item
��( ,
.
��, -
descripcion
��- 8
+
��9 :
$str
��; ?
+
��? @
item
��@ D
.
��D E
Count
��E J
+
��J K
$str
��K N
,
��N O
value
��  %
=
��& '
(
��( )
(
��) *
double
��* 0
)
��0 1
item
��1 5
.
��5 6
Count
��6 ;
/
��< =
GetCountClosed
��> L
(
��L M
)
��M N
*
��O P
$num
��Q T
)
��T U
.
��U V
ToString
��V ^
(
��^ _
$str
��_ c
)
��c d
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
	WriteLine
�� 
(
��  
$str
��  Y
+
��Z [
e
��\ ]
.
��] ^
ToString
��^ f
(
��f g
)
��g h
)
��h i
;
��i j
}
�� 
return
�� 
list
�� 
;
�� 
}
�� 	
public
�� 
List
�� 
<
�� 
DonutViewModel
�� "
>
��" #
GetEwoMPercents
��$ 3
(
��3 4
)
��4 5
{
�� 	
List
�� 
<
�� 
DonutViewModel
�� 
>
��  
list
��! %
=
��& '
new
��( +
List
��, 0
<
��0 1
DonutViewModel
��1 ?
>
��? @
(
��@ A
)
��A B
;
��B C
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
var
�� 
query
�� 
=
�� 
(
��  !
from
��! %
e
��& '
in
��( *
context
��+ 2
.
��2 3
ewo
��3 6
join
��! %
td
��& (
in
��) +
context
��, 3
.
��3 4

tipos_data
��4 >
on
��! #
e
��$ %
.
��% &
codigo_m
��& .
equals
��/ 5
td
��6 8
.
��8 9
id
��9 ;
group
��! &
e
��' (
by
��) +
new
��, /
{
��0 1
e
��2 3
.
��3 4
codigo_m
��4 <
,
��< =
td
��> @
.
��@ A
descripcion
��A L
}
��M N
into
��O S
g
��T U
select
��! '
new
��( +
{
��! "
g
��% &
.
��& '
Key
��' *
.
��* +
descripcion
��+ 6
,
��6 7
Count
��% *
=
��+ ,
g
��- .
.
��. /
Count
��/ 4
(
��4 5
)
��5 6
}
��! "
)
��" #
.
��# $
AsEnumerable
��$ 0
(
��0 1
)
��1 2
.
��  !
Select
��! '
(
��' (
g
��( )
=>
��* ,
new
��- 0
{
��  !
g
��$ %
.
��% &
descripcion
��& 1
,
��1 2
g
��$ %
.
��% &
Count
��& +
}
��  !
)
��! "
;
��" #
if
�� 
(
�� 
query
�� 
!=
��  
null
��! %
)
��% &
{
�� 
foreach
�� 
(
��  !
var
��! $
item
��% )
in
��* ,
query
��- 2
)
��2 3
{
�� 
list
��  
.
��  !
Add
��! $
(
��$ %
new
��% (
DonutViewModel
��) 7
(
��7 8
)
��8 9
{
�� 
label
��  %
=
��& '
item
��( ,
.
��, -
descripcion
��- 8
+
��9 :
$str
��; ?
+
��@ A
item
��B F
.
��F G
Count
��G L
+
��M N
$str
��O R
,
��R S
value
��  %
=
��& '
(
��( )
(
��) *
double
��* 0
)
��0 1
item
��1 5
.
��5 6
Count
��6 ;
/
��< =
GetCountClosed
��> L
(
��L M
)
��M N
*
��O P
$num
��Q T
)
��T U
.
��U V
ToString
��V ^
(
��^ _
$str
��_ c
)
��c d
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
	WriteLine
�� 
(
��  
$str
��  N
+
��O P
e
��Q R
.
��R S
ToString
��S [
(
��[ \
)
��\ ]
)
��] ^
;
��^ _
}
�� 
return
�� 
list
�� 
;
�� 
}
�� 	
public
�� 
List
�� 
<
�� 
DonutViewModel
�� "
>
��" # 
GetEwoTFFZPercents
��$ 6
(
��6 7
)
��7 8
{
�� 	
List
�� 
<
�� 
DonutViewModel
�� 
>
��  
list
��! %
=
��& '
new
��( +
List
��, 0
<
��0 1
DonutViewModel
��1 ?
>
��? @
(
��@ A
)
��A B
;
��B C
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
var
�� 
query
�� 
=
�� 
(
��  !
from
��! %
e
��& '
in
��( *
context
��+ 2
.
��2 3
ewo
��3 6
join
��! %
td
��& (
in
��) +
context
��, 3
.
��3 4

tipos_data
��4 >
on
��! #
e
��$ %
.
��% &#
codigo_top_five_fzero
��& ;
equals
��< B
td
��C E
.
��E F
id
��F H
group
��! &
e
��' (
by
��) +
new
��, /
{
��0 1
e
��2 3
.
��3 4#
codigo_top_five_fzero
��4 I
,
��I J
td
��K M
.
��M N
descripcion
��N Y
}
��Z [
into
��\ `
g
��a b
select
��! '
new
��( +
{
��! "
g
��% &
.
��& '
Key
��' *
.
��* +
descripcion
��+ 6
,
��6 7
Count
��% *
=
��+ ,
g
��- .
.
��. /
Count
��/ 4
(
��4 5
)
��5 6
}
��! "
)
��" #
.
��# $
AsEnumerable
��$ 0
(
��0 1
)
��1 2
.
��  !
Select
��! '
(
��' (
g
��( )
=>
��* ,
new
��- 0
{
��  !
g
��$ %
.
��% &
descripcion
��& 1
,
��1 2
g
��$ %
.
��% &
Count
��& +
}
��  !
)
��! "
;
��" #
if
�� 
(
�� 
query
�� 
!=
��  
null
��! %
)
��% &
{
�� 
foreach
�� 
(
��  !
var
��! $
item
��% )
in
��* ,
query
��- 2
)
��2 3
{
�� 
list
��  
.
��  !
Add
��! $
(
��$ %
new
��% (
DonutViewModel
��) 7
(
��7 8
)
��8 9
{
�� 
label
��  %
=
��& '
item
��( ,
.
��, -
descripcion
��- 8
+
��9 :
$str
��; ?
+
��@ A
item
��B F
.
��F G
Count
��G L
+
��M N
$str
��O R
,
��R S
value
��  %
=
��& '
(
��( )
(
��) *
double
��* 0
)
��0 1
item
��1 5
.
��5 6
Count
��6 ;
/
��< =
GetCountClosed
��> L
(
��L M
)
��M N
*
��O P
$num
��Q T
)
��T U
.
��U V
ToString
��V ^
(
��^ _
$str
��_ c
)
��c d
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
	WriteLine
�� 
(
��  
$str
��  W
+
��X Y
e
��Z [
.
��[ \
ToString
��\ d
(
��d e
)
��e f
)
��f g
;
��g h
}
�� 
return
�� 
list
�� 
;
�� 
}
�� 	
public
�� 
List
�� 
<
�� 
DonutViewModel
�� "
>
��" #"
GetEwoPlantsPercents
��$ 8
(
��8 9
)
��9 :
{
�� 	
List
�� 
<
�� 
DonutViewModel
�� 
>
��  
list
��! %
=
��& '
new
��( +
List
��, 0
<
��0 1
DonutViewModel
��1 ?
>
��? @
(
��@ A
)
��A B
;
��B C
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
var
�� 
query
�� 
=
�� 
(
��  !
from
��! %
e
��& '
in
��( *
context
��+ 2
.
��2 3
ewo
��3 6
join
��! %
l
��& '
in
��( *
context
��+ 2
.
��2 3
lineas
��3 9
on
��! #
e
��$ %
.
��% &
codigo_linea
��& 2
equals
��3 9
l
��: ;
.
��; <
id
��< >
join
��! %
a
��& '
in
��( *
context
��+ 2
.
��2 3
areas_productivas
��3 D
on
��! #
l
��$ %
.
��% &
codigo_area
��& 1
equals
��2 8
a
��9 :
.
��: ;
id
��; =
join
��! %
p
��& '
in
��( *
context
��+ 2
.
��2 3
plantas
��3 :
on
��! #
a
��$ %
.
��% &
codigo_planta
��& 3
equals
��4 :
p
��; <
.
��< =
id
��= ?
group
��! &
e
��' (
by
��) +
new
��, /
{
��0 1
p
��2 3
.
��3 4
id
��4 6
,
��6 7
p
��8 9
.
��9 :
descripcion
��: E
}
��F G
into
��H L
g
��M N
select
��! '
new
��( +
{
��! "
g
��% &
.
��& '
Key
��' *
.
��* +
descripcion
��+ 6
,
��6 7
Count
��% *
=
��+ ,
g
��- .
.
��. /
Count
��/ 4
(
��4 5
)
��5 6
}
��! "
)
��" #
.
��# $
AsEnumerable
��$ 0
(
��0 1
)
��1 2
.
��  !
Select
��! '
(
��' (
g
��( )
=>
��* ,
new
��- 0
{
��  !
g
��$ %
.
��% &
descripcion
��& 1
,
��1 2
g
��$ %
.
��% &
Count
��& +
}
��  !
)
��! "
;
��" #
if
�� 
(
�� 
query
�� 
!=
��  
null
��! %
)
��% &
{
�� 
foreach
�� 
(
��  !
var
��! $
item
��% )
in
��* ,
query
��- 2
)
��2 3
{
�� 
list
��  
.
��  !
Add
��! $
(
��$ %
new
��% (
DonutViewModel
��) 7
(
��7 8
)
��8 9
{
�� 
label
��  %
=
��& '
item
��( ,
.
��, -
descripcion
��- 8
+
��9 :
$str
��; ?
+
��@ A
item
��B F
.
��F G
Count
��G L
+
��M N
$str
��O R
,
��R S
value
��  %
=
��& '
(
��( )
(
��) *
double
��* 0
)
��0 1
item
��1 5
.
��5 6
Count
��6 ;
/
��< =
GetCount
��> F
(
��F G
)
��G H
*
��I J
$num
��K N
)
��N O
.
��O P
ToString
��P X
(
��X Y
$str
��Y ]
)
��] ^
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
	WriteLine
�� 
(
��  
$str
��  M
+
��N O
e
��P Q
.
��Q R
ToString
��R Z
(
��Z [
)
��[ \
)
��\ ]
;
��] ^
}
�� 
return
�� 
list
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� !
IndexAdminViewModel
�� -
>
��- .
GetIndexData
��/ ;
(
��; <
)
��< =
{
�� 	!
IndexAdminViewModel
�� 
iavm
��  $
=
��% &
new
��' *!
IndexAdminViewModel
��+ >
(
��> ?
)
��? @
;
��@ A
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
await
�� 
Task
�� 
.
�� 
Run
�� "
(
��" #
(
��# $
)
��$ %
=>
��& (
{
�� 
iavm
�� 
.
�� "
IncidentesReportados
�� 1
=
��2 3
(
��4 5
from
��5 9
e
��: ;
in
��< >
context
��? F
.
��F G
ewo
��G J
select
��K Q
e
��R S
)
��S T
.
��T U
Count
��U Z
(
��Z [
)
��[ \
;
��\ ]
iavm
�� 
.
��  
IncidentespProceso
�� /
=
��0 1
(
��2 3
from
��3 7
e
��8 9
in
��: <
context
��= D
.
��D E
ewo
��E H
join
��3 7
td
��8 :
in
��; =
context
��> E
.
��E F

tipos_data
��F P
on
��3 5
e
��6 7
.
��7 8
codigo_estado
��8 E
equals
��F L
td
��M O
.
��O P
id
��P R
where
��3 8
e
��9 :
.
��: ;
codigo_estado
��; H
==
��I K
$num
��L M
||
��3 5
e
��6 7
.
��7 8
codigo_estado
��8 E
==
��F H
$num
��I J
select
��3 9
e
��: ;
)
��; <
.
��< =
Count
��= B
(
��B C
)
��C D
;
��D E
iavm
�� 
.
��  
IncidentesCerrados
�� /
=
��0 1
(
��2 3
from
��3 7
e
��8 9
in
��: <
context
��= D
.
��D E
ewo
��E H
join
��3 7
td
��8 :
in
��; =
context
��> E
.
��E F

tipos_data
��F P
on
��3 5
e
��6 7
.
��7 8
codigo_estado
��8 E
equals
��F L
td
��M O
.
��O P
id
��P R
where
��3 8
e
��9 :
.
��: ;
codigo_estado
��; H
==
��I K
$num
��L M
select
��3 9
e
��: ;
)
��; <
.
��< =
Count
��= B
(
��B C
)
��C D
;
��D E
iavm
�� 
.
�� 
TiempoLinParada
�� ,
=
��- .
(
��/ 0
from
��0 4
e
��5 6
in
��7 9
context
��: A
.
��A B
ewo
��B E
select
��3 9
e
��: ;
)
��; <
.
��< =
Sum
��= @
(
��@ A
x
��A B
=>
��C E
x
��F G
.
��G H!
tiempo_linea_parada
��H [
.
��[ \
HasValue
��\ d
?
��e f
(
��g h
int
��h k
?
��k l
)
��l m
x
��m n
.
��n o"
tiempo_linea_parada��o �
.��� �
Value��� �
:��� �
$num��� �
)��� �
??��� �
$num��� �
;��� �
iavm
�� 
.
�� 
UnidadesAfectadas
�� .
=
��/ 0
(
��1 2
from
��2 6
e
��7 8
in
��9 ;
context
��< C
.
��C D
ewo
��D G
select
��0 6
e
��7 8
)
��8 9
.
��9 :
Sum
��: =
(
��= >
x
��> ?
=>
��@ B
x
��C D
.
��D E
unidades
��E M
.
��M N
HasValue
��N V
?
��W X
(
��Y Z
int
��Z ]
?
��] ^
)
��^ _
x
��_ `
.
��` a
unidades
��a i
.
��i j
Value
��j o
:
��p q
$num
��r s
)
��s t
??
��u w
$num
��x y
;
��y z
iavm
�� 
.
�� 
CostosTotales
�� *
=
��+ ,
(
��- .
from
��. 2
e
��3 4
in
��5 7
context
��8 ?
.
��? @
ewo
��@ C
select
��2 8
e
��9 :
)
��: ;
.
��; <
Sum
��< ?
(
��? @
x
��@ A
=>
��B D
x
��E F
.
��F G
costo_incidente
��G V
.
��V W
HasValue
��W _
?
��` a
(
��b c
int
��c f
?
��f g
)
��g h
x
��h i
.
��i j
costo_incidente
��j y
.
��y z
Value
��z 
:��� �
$num��� �
)��� �
??��� �
$num��� �
;��� �
iavm
�� 
.
�� !
UsuariosRegistrados
�� 0
=
��1 2
(
��3 4
from
��4 8
e
��9 :
in
��; =
context
��> E
.
��E F
AspNetUsers
��F Q
select
��3 9
e
��: ;
)
��; <
.
��< =
Count
��= B
(
��B C
)
��C D
;
��D E
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
	WriteLine
�� 
(
��  
$str
��  Y
+
��Z [
e
��\ ]
.
��] ^
ToString
��^ f
(
��f g
)
��g h
)
��h i
;
��i j
}
�� 
return
�� 
iavm
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
List
�� 
<
�� (
ReporteIncidentesViewModel
�� 9
>
��9 :
>
��: ;

GetEwoList
��< F
(
��F G
string
��G M
id_autor
��N V
)
��V W
{
�� 	
List
�� 
<
�� (
ReporteIncidentesViewModel
�� +
>
��+ ,
list
��- 1
=
��2 3
new
��4 7
List
��8 <
<
��< =(
ReporteIncidentesViewModel
��= W
>
��W X
(
��X Y
)
��Y Z
;
��Z [
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
var
�� 
query
�� 
=
�� 
from
��  $
e
��% &
in
��' )
context
��* 1
.
��1 2
ewo
��2 5
join
��  $
l
��% &
in
��' )
context
��* 1
.
��1 2

tipos_data
��2 <
on
��  "
e
��# $
.
��$ %
codigo_linea
��% 1
equals
��2 8
l
��9 :
.
��: ;
id
��; =
join
��  $
ti
��% '
in
��( *
context
��+ 2
.
��2 3

tipos_data
��3 =
on
��  "
e
��# $
.
��$ %
tipo_incidente
��% 3
equals
��4 :
ti
��; =
.
��= >
id
��> @
join
��  $
es
��% '
in
��( *
context
��+ 2
.
��2 3

tipos_data
��3 =
on
��  "
e
��# $
.
��$ %
codigo_estado
��% 2
equals
��3 9
es
��: <
.
��< =
id
��= ?
join
��  $
t
��% &
in
��' )
context
��* 1
.
��1 2
AspNetUsers
��2 =
on
��  "
e
��# $
.
��$ %
autor
��% *
equals
��+ 1
t
��2 3
.
��3 4
Id
��4 6
where
��  %
e
��& '
.
��' (
autor
��( -
==
��. 0
id_autor
��1 9
select
��  &
new
��' *
{
��+ ,
e
��- .
,
��. /
l
��0 1
,
��1 2
t
��3 4
,
��4 5
ti
��6 8
,
��8 9
es
��9 ;
}
��< =
;
��= >
var
�� 
data
�� 
=
�� 
await
�� $
query
��% *
.
��* +
ToListAsync
��+ 6
(
��6 7
)
��7 8
;
��8 9
foreach
�� 
(
�� 
var
��  
item
��! %
in
��& (
data
��) -
.
��- .
ToList
��. 4
(
��4 5
)
��5 6
)
��6 7
{
�� 
list
�� 
.
�� 
Add
��  
(
��  !
new
��! $(
ReporteIncidentesViewModel
��% ?
(
��? @
)
��@ A
{
�� 
Id
�� 
=
��  
item
��! %
.
��% &
e
��& '
.
��' (
id
��( *
,
��* +
	LineaDesc
�� %
=
��& '
item
��( ,
.
��, -
l
��- .
.
��. /
descripcion
��/ :
,
��: ;
Autor
�� !
=
��" #
item
��$ (
.
��( )
t
��) *
.
��* +
Id
��+ -
,
��- .
	AutorDesc
�� %
=
��& '
item
��( ,
.
��, -
t
��- .
.
��. /
Nombres
��/ 6
+
��7 8
$str
��9 <
+
��= >
item
��? C
.
��C D
t
��D E
.
��E F
	Apellidos
��F O
,
��O P
TipoIncidente
�� )
=
��* +
item
��, 0
.
��0 1
e
��1 2
.
��2 3
tipo_incidente
��3 A
.
��A B
Value
��B G
,
��G H
TipoIncidenteDesc
�� -
=
��. /
item
��0 4
.
��4 5
ti
��5 7
.
��7 8
descripcion
��8 C
,
��C D!
DescripcionProblema
�� /
=
��0 1
item
��2 6
.
��6 7
e
��7 8
.
��8 9*
descripcion_general_problema
��9 U
,
��U V
TiempoLineaParada
�� -
=
��. /
item
��0 4
.
��4 5
e
��5 6
.
��6 7!
tiempo_linea_parada
��7 J
.
��J K
Value
��K P
,
��P Q
Fecha
�� !
=
��" #
item
��$ (
.
��( )
e
��) *
.
��* +*
fecha_apertura_investigacion
��+ G
.
��G H
Value
��H M
,
��M N
Estado
�� "
=
��# $
item
��% )
.
��) *
e
��* +
.
��+ ,
codigo_estado
��, 9
.
��9 :
Value
��: ?
,
��? @

EstadoDesc
�� &
=
��' (
item
��) -
.
��- .
es
��. 0
.
��0 1
descripcion
��1 <
,
��< =

NumAirsweb
�� &
=
��' (
item
��) -
.
��- .
e
��. /
.
��/ 0
numero_airsweb
��0 >
.
��> ?
HasValue
��? G
?
��H I
item
��J N
.
��N O
e
��O P
.
��P Q
numero_airsweb
��Q _
.
��_ `
Value
��` e
:
��f g
$num
��h i
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
	WriteLine
�� 
(
��  
$str
��  i
+
��j k
e
��l m
.
��m n
ToString
��n v
(
��v w
)
��w x
)
��x y
;
��y z
}
�� 
return
�� 
list
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
List
�� 
<
�� (
ReporteIncidentesViewModel
�� 9
>
��9 :
>
��: ;

GetEwoList
��< F
(
��F G
)
��G H
{
�� 	
List
�� 
<
�� (
ReporteIncidentesViewModel
�� +
>
��+ ,
list
��- 1
=
��2 3
new
��4 7
List
��8 <
<
��< =(
ReporteIncidentesViewModel
��= W
>
��W X
(
��X Y
)
��Y Z
;
��Z [
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
var
�� 
query
�� 
=
�� 
from
��  $
e
��% &
in
��' )
context
��* 1
.
��1 2
ewo
��2 5
join
��  $
l
��% &
in
��' )
context
��* 1
.
��1 2
lineas
��2 8
on
��  "
e
��# $
.
��$ %
codigo_linea
��% 1
equals
��2 8
l
��9 :
.
��: ;
id
��; =
join
��  $
a
��% &
in
��' )
context
��* 1
.
��1 2
areas_productivas
��2 C
on
��  "
l
��# $
.
��$ %
codigo_area
��% 0
equals
��1 7
a
��8 9
.
��9 :
id
��: <
join
��  $
ti
��% '
in
��( *
context
��+ 2
.
��2 3

tipos_data
��3 =
on
��  "
e
��# $
.
��$ %
tipo_incidente
��% 3
equals
��4 :
ti
��; =
.
��= >
id
��> @
join
��  $
es
��% '
in
��( *
context
��+ 2
.
��2 3

tipos_data
��3 =
on
��  "
e
��# $
.
��$ %
codigo_estado
��% 2
equals
��3 9
es
��: <
.
��< =
id
��= ?
join
��  $
t
��% &
in
��' )
context
��* 1
.
��1 2
AspNetUsers
��2 =
on
��  "
e
��# $
.
��$ %
autor
��% *
equals
��+ 1
t
��2 3
.
��3 4
Id
��4 6
select
��  &
new
��' *
{
��+ ,
e
��- .
,
��. /
l
��0 1
,
��1 2
t
��3 4
,
��4 5
ti
��6 8
,
��8 9
es
��: <
,
��< =
a
��> ?
}
��A B
;
��B C
var
�� 
data
�� 
=
�� 
await
�� $
query
��% *
.
��* +
ToListAsync
��+ 6
(
��6 7
)
��7 8
;
��8 9
foreach
�� 
(
�� 
var
��  
item
��! %
in
��& (
data
��) -
.
��- .
ToList
��. 4
(
��4 5
)
��5 6
)
��6 7
{
�� 
list
�� 
.
�� 
Add
��  
(
��  !
new
��! $(
ReporteIncidentesViewModel
��% ?
(
��? @
)
��@ A
{
�� 
Id
�� 
=
��  
item
��! %
.
��% &
e
��& '
.
��' (
id
��( *
,
��* +
	LineaDesc
�� %
=
��& '
item
��( ,
.
��, -
l
��- .
.
��. /
descripcion
��/ :
,
��: ;
AreaDesc
�� $
=
��% &
item
��' +
.
��+ ,
a
��, -
.
��- .
descripcion
��. 9
,
��9 :
Autor
�� !
=
��" #
item
��$ (
.
��( )
t
��) *
.
��* +
Id
��+ -
,
��- .
	AutorDesc
�� %
=
��& '
item
��( ,
.
��, -
t
��- .
.
��. /
Nombres
��/ 6
+
��7 8
$str
��9 <
+
��= >
item
��? C
.
��C D
t
��D E
.
��E F
	Apellidos
��F O
,
��O P
TipoIncidente
�� )
=
��* +
item
��, 0
.
��0 1
e
��1 2
.
��2 3
tipo_incidente
��3 A
.
��A B
Value
��B G
,
��G H
TipoIncidenteDesc
�� -
=
��. /
item
��0 4
.
��4 5
ti
��5 7
.
��7 8
descripcion
��8 C
,
��C D!
DescripcionProblema
�� /
=
��0 1
item
��2 6
.
��6 7
e
��7 8
.
��8 9*
descripcion_general_problema
��9 U
,
��U V
TiempoLineaParada
�� -
=
��. /
item
��0 4
.
��4 5
e
��5 6
.
��6 7!
tiempo_linea_parada
��7 J
.
��J K
Value
��K P
,
��P Q
Fecha
�� !
=
��" #
item
��$ (
.
��( )
e
��) *
.
��* +*
fecha_apertura_investigacion
��+ G
.
��G H
Value
��H M
,
��M N
Estado
�� "
=
��# $
item
��% )
.
��) *
e
��* +
.
��+ ,
codigo_estado
��, 9
.
��9 :
Value
��: ?
,
��? @

EstadoDesc
�� &
=
��' (
item
��) -
.
��- .
es
��. 0
.
��0 1
descripcion
��1 <
,
��< =

NumAirsweb
�� &
=
��' (
item
��) -
.
��- .
e
��. /
.
��/ 0
numero_airsweb
��0 >
.
��> ?
HasValue
��? G
?
��H I
item
��J N
.
��N O
e
��O P
.
��P Q
numero_airsweb
��Q _
.
��_ `
Value
��` e
:
��f g
$num
��h i
,
��i j
Consecutivo
�� '
=
��( )
item
��* .
.
��. /
e
��/ 0
.
��0 1
consecutivo
��1 <
.
��< =
ToString
��= E
(
��E F
)
��F G
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
	WriteLine
�� 
(
��  
$str
��  i
+
��j k
e
��l m
.
��m n
ToString
��n v
(
��v w
)
��w x
)
��x y
;
��y z
}
�� 
return
�� 
list
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� (
ReporteIncidentesViewModel
�� 4
>
��4 5

GetEwoDesc
��6 @
(
��@ A
long
��A E
id
��F H
)
��H I
{
�� 	(
ReporteIncidentesViewModel
�� &
lDecs
��' ,
=
��- .
null
��/ 3
;
��3 4
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
var
�� 
query
�� 
=
�� 
from
��  $
e
��% &
in
��' )
context
��* 1
.
��1 2
ewo
��2 5
join
��  $
l
��% &
in
��' )
context
��* 1
.
��1 2
lineas
��2 8
on
��  "
e
��# $
.
��$ %
codigo_linea
��% 1
equals
��2 8
l
��9 :
.
��: ;
id
��; =
join
��  $
a
��% &
in
��' )
context
��* 1
.
��1 2
areas_productivas
��2 C
on
��  "
l
��# $
.
��$ %
codigo_area
��% 0
equals
��1 7
a
��8 9
.
��9 :
id
��: <
join
��  $
p
��% &
in
��' )
context
��* 1
.
��1 2
plantas
��2 9
on
��  "
a
��# $
.
��$ %
codigo_planta
��% 2
equals
��3 9
p
��: ;
.
��; <
id
��< >
join
��  $
es
��% '
in
��( *
context
��+ 2
.
��2 3

tipos_data
��3 =
on
��  "
e
��# $
.
��$ %
codigo_estado
��% 2
equals
��3 9
es
��: <
.
��< =
id
��= ?
join
��  $
t
��% &
in
��' )
context
��* 1
.
��1 2
AspNetUsers
��2 =
on
��  "
e
��# $
.
��$ %
autor
��% *
equals
��+ 1
t
��2 3
.
��3 4
Id
��4 6
join
��  $
ti
��% '
in
��( *
context
��+ 2
.
��2 3

tipos_data
��3 =
on
��  "
e
��# $
.
��$ %
tipo_incidente
��% 3
equals
��4 :
ti
��; =
.
��= >
id
��> @
where
��  %
e
��& '
.
��' (
id
��( *
==
��+ -
id
��. 0
select
��  &
new
��' *
{
��+ ,
e
��- .
,
��. /
l
��0 1
,
��1 2
t
��3 4
,
��4 5
ti
��6 8
,
��8 9
es
��9 ;
,
��; <
a
��= >
,
��> ?
p
��@ A
}
��B C
;
��C D
var
�� 
data
�� 
=
�� 
await
�� $
query
��% *
.
��* +
ToListAsync
��+ 6
(
��6 7
)
��7 8
;
��8 9
foreach
�� 
(
�� 
var
��  
i
��! "
in
��# %
data
��& *
.
��* +
ToList
��+ 1
(
��1 2
)
��2 3
)
��3 4
{
�� 
lDecs
�� 
=
�� 
new
��  #(
ReporteIncidentesViewModel
��$ >
(
��> ?
)
��? @
{
�� 
Id
�� 
=
��  
i
��! "
.
��" #
e
��# $
.
��$ %
id
��% '
,
��' (
	LineaDesc
�� %
=
��& '
i
��( )
.
��) *
l
��* +
.
��+ ,
descripcion
��, 7
,
��7 8
IdLinea
�� #
=
��$ %
i
��& '
.
��' (
e
��( )
.
��) *
codigo_linea
��* 6
.
��6 7
Value
��7 <
,
��< =
IdPlanta
�� $
=
��% &
i
��' (
.
��( )
p
��) *
.
��* +
id
��+ -
,
��- .
IdArea
�� "
=
��# $
i
��% &
.
��& '
a
��' (
.
��( )
id
��) +
,
��+ ,
Autor
�� !
=
��" #
i
��$ %
.
��% &
t
��& '
.
��' (
Nombres
��( /
+
��0 1
$str
��2 5
+
��6 7
i
��8 9
.
��9 :
t
��: ;
.
��; <
	Apellidos
��< E
,
��E F
TipoIncidente
�� )
=
��* +
i
��, -
.
��- .
e
��. /
.
��/ 0
tipo_incidente
��0 >
.
��> ?
Value
��? D
,
��D E
TipoIncidenteDesc
�� -
=
��. /
i
��0 1
.
��1 2
ti
��2 4
.
��4 5
descripcion
��5 @
,
��@ A
Consecutivo
�� '
=
��( )
i
��* +
.
��+ ,
e
��, -
.
��- .
consecutivo
��. 9
.
��9 :
Value
��: ?
.
��? @
ToString
��@ H
(
��H I
)
��I J
,
��J K
Fecha
�� !
=
��" #
i
��$ %
.
��% &
e
��& '
.
��' (*
fecha_apertura_investigacion
��( D
.
��D E
Value
��E J
,
��J K#
FchApertInvestigacion
�� 1
=
��2 3
i
��4 5
.
��5 6
e
��6 7
.
��7 8*
fecha_apertura_investigacion
��8 T
.
��T U
Value
��U Z
.
��Z [
ToString
��[ c
(
��c d
$str
��d p
)
��p q
,
��q r

EstadoDesc
�� &
=
��' (
i
��) *
.
��* +
es
��+ -
.
��- .
descripcion
��. 9
,
��9 :

HrEventoTS
�� &
=
��' (
i
��) *
.
��* +
e
��+ ,
.
��, -
hora_evento
��- 8
.
��8 9
Value
��9 >
,
��> ?
HrEvento
�� $
=
��% &
i
��' (
.
��( )
e
��) *
.
��* +
hora_evento
��+ 6
.
��6 7
Value
��7 <
.
��< =
ToString
��= E
(
��E F
$str
��F O
)
��O P
,
��P Q%
FchEntregaInvestigacion
�� 3
=
��4 5
i
��6 7
.
��7 8
e
��8 9
.
��9 :)
fecha_entrega_investigacion
��: U
.
��U V
Value
��V [
.
��[ \
ToString
��\ d
(
��d e
$str
��e q
)
��q r
,
��r s$
HrEntregaInvestigacion
�� 2
=
��3 4
i
��5 6
.
��6 7
e
��7 8
.
��8 9(
hora_entrega_investigacion
��9 S
.
��S T
Value
��T Y
.
��Y Z
ToString
��Z b
(
��b c
$str
��c l
)
��l m
,
��m n&
HrEntregaInvestigacionTS
�� 4
=
��5 6
i
��7 8
.
��8 9
e
��9 :
.
��: ;(
hora_entrega_investigacion
��; U
.
��U V
Value
��V [
,
��[ \
RecurrenteB
�� '
=
��( )
i
��* +
.
��+ ,
e
��, -
.
��- .

recurrente
��. 8
,
��8 9
EtapaProceso
�� (
=
��) *
i
��+ ,
.
��, -
e
��- .
.
��. /
etapa
��/ 4
,
��4 5
	IdCoorSup
�� %
=
��& '
i
��( )
.
��) *
e
��* +
.
��+ ,&
codigo_coordinador_turno
��, D
,
��D E

IdRespArea
�� &
=
��' (
i
��) *
.
��* +
e
��+ ,
.
��, -%
codigo_responsable_area
��- D
,
��D E
IdOpeRes
�� $
=
��% &
i
��' (
.
��( )
e
��) *
.
��* +)
codigo_operario_responsable
��+ F
,
��F G
IdLidInv
�� $
=
��% &
i
��' (
.
��( )
e
��) *
.
��* +(
codigo_lider_investigacion
��+ E
,
��E F
NombreProducto
�� *
=
��+ ,
i
��- .
.
��. /
e
��/ 0
.
��0 1
producto
��1 9
,
��9 :
	CodigoSAP
�� %
=
��& '
i
��( )
.
��) *
e
��* +
.
��+ ,!
codigo_sap_producto
��, ?
,
��? @
Lote
��  
=
��! "
i
��# $
.
��$ %
e
��% &
.
��& '
lote_producto
��' 4
,
��4 5
	Toneladas
�� %
=
��& '
i
��( )
.
��) *
e
��* +
.
��+ , 
toneladas_producto
��, >
.
��> ?
Value
��? D
,
��D E
NumCajas
�� $
=
��% &
i
��' (
.
��( )
e
��) *
.
��* +
numero_cajas
��+ 7
.
��7 8
Value
��8 =
,
��= >
	NumPallet
�� %
=
��& '
i
��( )
.
��) *
e
��* +
.
��+ ,
numero_pallet
��, 9
,
��9 :
Unidades
�� $
=
��% &
i
��' (
.
��( )
e
��) *
.
��* +
unidades
��+ 3
.
��3 4
Value
��4 9
,
��9 :
TamanoFormato
�� )
=
��* +
i
��, -
.
��- .
e
��. /
.
��/ 0
tamano_formato
��0 >
,
��> ?
TiempoLineaParada
�� -
=
��. /
i
��0 1
.
��1 2
e
��2 3
.
��3 4!
tiempo_linea_parada
��4 G
.
��G H
Value
��H M
,
��M N!
DescripcionProblema
�� /
=
��0 1
i
��2 3
.
��3 4
e
��4 5
.
��5 6*
descripcion_general_problema
��6 R
}
�� 
;
�� 
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Trace
�� 
.
�� 
	WriteLine
�� 
(
��  
$str
��  Z
+
��[ \
e
��] ^
.
��^ _
ToString
��_ g
(
��g h
)
��h i
)
��i j
;
��j k
}
�� 
return
�� 
lDecs
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
long
�� 
>
�� $
ProcesarIncidenteAsync
��  6
(
��6 7
ewo
��7 :
ewo
��; >
)
��> ?
{
�� 	
ewo
�� 
ed
�� 
;
�� 
long
�� 
regs
�� 
=
�� 
$num
�� 
;
�� 
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
ed
�� 
=
�� 
context
��  
.
��  !
ewo
��! $
.
��$ %
Where
��% *
(
��* +
s
��+ ,
=>
��- /
s
��0 1
.
��1 2
id
��2 4
==
��5 7
ewo
��8 ;
.
��; <
id
��< >
)
��> ?
.
��? @
FirstOrDefault
��@ N
(
��N O
)
��O P
;
��P Q
}
�� 
if
�� 
(
�� 
ed
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
ed
�� 
=
�� 
ewo
�� 
;
�� 
}
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
context
�� 
.
�� 
Entry
�� !
(
��! "
ed
��" $
)
��$ %
.
��% &
State
��& +
=
��, -
EntityState
��. 9
.
��9 :
Modified
��: B
;
��B C
await
�� 
context
�� !
.
��! "
SaveChangesAsync
��" 2
(
��2 3
)
��3 4
;
��4 5
regs
�� 
=
�� 
ed
�� 
.
�� 
id
��  
;
��  !
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
string
�� 
err
�� 
=
�� 
$str
�� 8
+
��9 :
e
��; <
.
��< =
ToString
��= E
(
��E F
)
��F G
;
��G H
Trace
�� 
.
�� 
	WriteLine
�� 
(
��  
err
��  #
)
��# $
;
��$ %
await
�� 
DaoExcepcion
�� "
.
��" #
DaoInstance
��# .
.
��. /
AddExceptionAsync
��/ @
(
��@ A
new
�� 
excepciones
�� #
(
��# $
)
��$ %
{
�� 
codigo_error
�� $
=
��% &
-
��' (
$num
��( )
,
��) *
codigo_usuario
�� &
=
��' (
HttpContext
��) 4
.
��4 5
Current
��5 <
.
��< =
User
��= A
.
��A B
Identity
��B J
.
��J K
	GetUserId
��K T
(
��T U
)
��U V
??
��W Y
$str
��Z g
,
��g h
descripcion
�� #
=
��$ %
err
��& )
,
��) *
fecha
�� 
=
�� 
SomeHelpers
��  +
.
��+ ,
GetCurrentTime
��, :
(
��: ;
)
��; <
}
�� 
)
�� 
;
�� 
}
�� 
return
�� 
regs
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
int
�� 
>
�� 
AddEquipoTrabjo
�� .
(
��. /
List
��/ 3
<
��3 4
equipo_trabajo
��4 B
>
��B C
et
��D F
)
��F G
{
�� 	
int
�� 
regs
�� 
=
�� 
$num
�� 
;
�� 
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
context
�� 
.
�� 
equipo_trabajo
�� *
.
��* +
AddRange
��+ 3
(
��3 4
et
��4 6
)
��6 7
;
��7 8
regs
�� 
=
�� 
await
��  
context
��! (
.
��( )
SaveChangesAsync
��) 9
(
��9 :
)
��: ;
;
��; <
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
	WriteLine
�� 
(
��  
$str
��  E
+
��F G
e
��H I
.
��I J
ToString
��J R
(
��R S
)
��S T
)
��T U
;
��U V
regs
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
return
�� 
regs
�� 
;
�� 
}
�� 	
}
�� 
}�� �
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
},, �
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
}33 �
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
}11 �
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
}11 �
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
}11 �
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
}22 �
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
} � 
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
}JJ ��
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
�� 
)
�� 
;
�� 
}
�� 
)
�� 
)
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
System
�� 
.
�� 
Diagnostics
�� "
.
��" #
Debug
��# (
.
��( )
	WriteLine
��) 2
(
��2 3
$str
��3 _
+
��` a
e
��b c
.
��c d
ToString
��d l
(
��l m
)
��m n
)
��n o
;
��o p
}
�� 
return
�� 
list
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
List
�� 
<
�� 
UsersUI
�� &
>
��& '
>
��' (
GetUsersByRole
��) 7
(
��7 8
string
��8 >
role
��? C
)
��C D
{
�� 	
List
�� 
<
�� 
UsersUI
�� 
>
�� 
list
�� 
=
��  
new
��! $
List
��% )
<
��) *
UsersUI
��* 1
>
��1 2
(
��2 3
)
��3 4
;
��4 5
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
var
�� 
als
�� 
=
�� 
from
�� "
b
��# $
in
��% '
context
��( /
.
��/ 0
AspNetUsers
��0 ;
where
�� #
b
��$ %
.
��% &
EmailConfirmed
��& 4
==
��5 7
true
��8 <
&&
��  
b
��! "
.
��" #
IdRol
��# (
.
��( )
Equals
��) /
(
��/ 0
role
��0 4
)
��4 5
select
�� $
b
��% &
;
��& '
var
�� 
listT
�� 
=
�� 
await
��  %
als
��& )
.
��) *
ToListAsync
��* 5
(
��5 6
)
��6 7
;
��7 8
await
�� 
Task
�� 
.
�� 
Run
�� "
(
��" #
(
��# $
)
��$ %
=>
��& (
Parallel
��) 1
.
��1 2
ForEach
��2 9
(
��9 :
listT
��: ?
,
��? @
s
��A B
=>
��C E
{
�� 
list
�� 
.
�� 
Add
��  
(
��  !
new
��! $
UsersUI
��% ,
(
��, -
)
��- .
{
�� 
Id
�� 
=
��  
s
��! "
.
��" #
Id
��# %
,
��% &
Nombres
�� #
=
��$ %
s
��& '
.
��' (
Nombres
��( /
,
��/ 0
	Apellidos
�� %
=
��& '
s
��( )
.
��) *
	Apellidos
��* 3
,
��3 4
Email
�� !
=
��" #
s
��$ %
.
��% &
Email
��& +
,
��+ ,
Usuario
�� #
=
��$ %
s
��& '
.
��' (
UserName
��( 0
,
��0 1
IdRol
�� !
=
��" #
s
��$ %
.
��% &
IdRol
��& +
,
��+ ,
NombresCommpletos
�� -
=
��. /
s
��0 1
.
��1 2
Nombres
��2 9
+
��: ;
$str
��< ?
+
��@ A
s
��B C
.
��C D
	Apellidos
��D M
}
�� 
)
�� 
;
�� 
}
�� 
)
�� 
)
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
System
�� 
.
�� 
Diagnostics
�� "
.
��" #
Debug
��# (
.
��( )
	WriteLine
��) 2
(
��2 3
$str
��3 [
+
��\ ]
e
��^ _
.
��_ `
ToString
��` h
(
��h i
)
��i j
)
��j k
;
��k l
}
�� 
return
�� 
list
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
int
�� 
>
�� 
ApproveUser
�� *
(
��* +
string
��+ 1
id
��2 4
)
��4 5
{
�� 	
AspNetUsers
�� 
usere
�� 
;
�� 
Task
�� 
<
�� 
int
�� 
>
�� 
regs
�� 
=
�� 
Task
�� !
<
��! "
int
��" %
>
��% &
.
��& '
Factory
��' .
.
��. /
StartNew
��/ 7
(
��7 8
(
��8 9
)
��9 :
=>
��; =
$num
��> ?
)
��? @
;
��@ A
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
usere
�� 
=
�� 
context
�� #
.
��# $
AspNetUsers
��$ /
.
��/ 0
Where
��0 5
(
��5 6
s
��6 7
=>
��8 :
s
��; <
.
��< =
Id
��= ?
==
��@ B
id
��C E
)
��E F
.
��F G
FirstOrDefault
��G U
(
��U V
)
��V W
;
��W X
}
�� 
if
�� 
(
�� 
usere
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
usere
�� 
.
�� 
EmailConfirmed
�� (
=
��) *
true
��+ /
;
��/ 0
}
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
context
�� 
.
�� 
Entry
�� !
(
��! "
usere
��" '
)
��' (
.
��( )
State
��) .
=
��/ 0
EntityState
��1 <
.
��< =
Modified
��= E
;
��E F
regs
�� 
=
�� 
context
�� "
.
��" #
SaveChangesAsync
��# 3
(
��3 4
)
��4 5
;
��5 6
return
�� 
await
��  
regs
��! %
;
��% &
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� ?
+
��@ A
e
��B C
.
��C D
ToString
��D L
(
��L M
)
��M N
)
��N O
;
��O P
}
�� 
return
�� 
$num
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
List
�� 
<
�� 
UsersUI
�� &
>
��& '
>
��' (
GetAllUsers
��) 4
(
��4 5
)
��5 6
{
�� 	
List
�� 
<
�� 
UsersUI
�� 
>
�� 
	listUsers
�� #
=
��$ %
new
��& )
List
��* .
<
��. /
UsersUI
��/ 6
>
��6 7
(
��7 8
)
��8 9
;
��9 :
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
var
�� 
query
�� 
=
�� 
from
��  $
td
��% '
in
��( *
context
��+ 2
.
��2 3
AspNetUsers
��3 >
select
��  &
td
��' )
;
��) *
var
�� 
listT
�� 
=
�� 
await
��  %
query
��& +
.
��+ ,
ToListAsync
��, 7
(
��7 8
)
��8 9
;
��9 :
foreach
�� 
(
�� 
var
��  
s
��! "
in
��# %
listT
��& +
)
��+ ,
{
�� 
	listUsers
�� !
.
��! "
Add
��" %
(
��% &
new
��& )
UsersUI
��* 1
(
��1 2
)
��2 3
{
�� 
Id
�� 
=
��  
s
��! "
.
��" #
Id
��# %
,
��% &
Nombres
�� #
=
��$ %
s
��& '
.
��' (
Nombres
��( /
,
��/ 0
	Apellidos
�� %
=
��& '
s
��( )
.
��) *
	Apellidos
��* 3
,
��3 4
Email
�� !
=
��" #
s
��$ %
.
��% &
Email
��& +
,
��+ ,
Usuario
�� #
=
��$ %
s
��& '
.
��' (
UserName
��( 0
,
��0 1
IdRol
�� !
=
��" #
s
��$ %
.
��% &
IdRol
��& +
,
��+ ,
NombresCommpletos
�� -
=
��. /
s
��0 1
.
��1 2
Nombres
��2 9
+
��: ;
$str
��< ?
+
��@ A
s
��B C
.
��C D
	Apellidos
��D M
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
	WriteLine
�� 
(
��  
e
��  !
.
��! "
ToString
��" *
(
��* +
)
��+ ,
)
��, -
;
��- .
}
�� 
return
�� 
	listUsers
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
List
�� 
<
�� 
string
�� %
>
��% &
>
��& '
GetAllUsersNames
��( 8
(
��8 9
)
��9 :
{
�� 	
List
�� 
<
�� 
string
�� 
>
�� 
	listUsers
�� "
=
��# $
new
��% (
List
��) -
<
��- .
string
��. 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
var
�� 
query
�� 
=
�� 
from
��  $
td
��% '
in
��( *
context
��+ 2
.
��2 3
AspNetUsers
��3 >
select
��  &
td
��' )
;
��) *
var
�� 
listT
�� 
=
�� 
await
��  %
query
��& +
.
��+ ,
ToListAsync
��, 7
(
��7 8
)
��8 9
;
��9 :
foreach
�� 
(
�� 
var
��  
s
��! "
in
��# %
listT
��& +
)
��+ ,
{
�� 
	listUsers
�� !
.
��! "
Add
��" %
(
��% &
s
��& '
.
��' (
Nombres
��( /
+
��0 1
$str
��2 5
+
��6 7
s
��8 9
.
��9 :
	Apellidos
��: C
)
��C D
;
��D E
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
	WriteLine
�� 
(
��  
e
��  !
.
��! "
ToString
��" *
(
��* +
)
��+ ,
)
��, -
;
��- .
}
�� 
return
�� 
	listUsers
�� 
;
�� 
}
�� 	
}
�� 
}�� �O
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
�� 
regs
�� 
=
�� 
$num
�� 
;
�� 
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
context
�� "
=
��# $
new
��% (
EwoQEntities
��) 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
context
�� 
.
�� 
zero_ewo
�� $
.
��$ %
AddRange
��% -
(
��- .
zr
��. 0
)
��0 1
;
��1 2
regs
�� 
=
�� 
await
��  
context
��! (
.
��( )
SaveChangesAsync
��) 9
(
��9 :
)
��: ;
;
��; <
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
	WriteLine
�� 
(
��  
$str
��  <
+
��= >
e
��? @
.
��@ A
ToString
��A I
(
��I J
)
��J K
)
��K L
;
��L M
regs
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
return
�� 
regs
�� 
;
�� 
}
�� 	
}
�� 
}�� �
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
}// �<
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
num	 �
,
� �
string
� �
icon
� �
)
� �
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
currentController	$$w �
,
$$� �

controller
$$� �
,
$$� �
StringComparison
$$� �
.
$$� �
OrdinalIgnoreCase
$$� �
)
$$� �
;
$$� �
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
}BB �`
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
}ff �
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
} �k
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
$str	zzR �
)
zz� �
]
zz� �
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
�� 	
Required
��	 
]
�� 
[
�� 	
EmailAddress
��	 
]
�� 
[
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� ,
)
��, -
]
��- .
public
�� 
string
�� 
Email
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
[
�� 	
Required
��	 
]
�� 
[
�� 	
StringLength
��	 
(
�� 
$num
�� 
,
�� 
ErrorMessage
�� '
=
��( )
$str
��* a
,
��a b
MinimumLength
��c p
=
��q r
$num
��s t
)
��t u
]
��u v
[
�� 	
DataType
��	 
(
�� 
DataType
�� 
.
�� 
Password
�� #
)
��# $
]
��$ %
[
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� $
)
��$ %
]
��% &
public
�� 
string
�� 
Password
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
[
�� 	
DataType
��	 
(
�� 
DataType
�� 
.
�� 
Password
�� #
)
��# $
]
��$ %
[
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� .
)
��. /
]
��/ 0
[
�� 	
System
��	 
.
�� 
ComponentModel
�� 
.
�� 
DataAnnotations
�� .
.
��. /
Compare
��/ 6
(
��6 7
$str
��7 A
,
��A B
ErrorMessage
��C O
=
��P Q
$str��R �
)��� �
]��� �
public
�� 
string
�� 
ConfirmPassword
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
Code
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
}
�� 
public
�� 

class
�� %
ForgotPasswordViewModel
�� (
{
�� 
[
�� 	
Required
��	 
]
�� 
[
�� 	
EmailAddress
��	 
]
�� 
[
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� ,
)
��, -
]
��- .
public
�� 
string
�� 
Email
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
}
�� 
}�� �

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
} �
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
} �
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
} ��
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
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� 3
)
��3 4
]
��4 5
public
�� 
int
�� 
TiempoLineaParada
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
[
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� :
)
��: ;
]
��; <
public
�� 
string
�� !
DescripcionProblema
�� )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
[
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� M
)
��M N
]
��N O
public
�� 
	ArrayList
�� 
AccionesList
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
[
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� 8
)
��8 9
]
��9 :
public
�� 
	ArrayList
�� 
DisposicionesList
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
public
�� 
string
�� 
Cmd
�� 
{
�� 
get
�� 
;
��  
set
��! $
;
��$ %
}
��& '
[
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� 7
)
��7 8
]
��8 9
public
�� 
string
�� 
ArbPerd1
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
ArbPerd2
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
ArbPerd3
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
ArbPerd4
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
ArbPerdO
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
[
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� $
)
��$ %
]
��% &
public
�� 
int
�� 

NumAirsweb
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
[
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� 0
)
��0 1
]
��1 2
public
�� 
int
�� 
TiempoAirsWeb
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
[
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� 1
)
��1 2
]
��2 3
public
�� 
int
�� 
TiempoInpeccion
�� "
{
��# $
get
��% (
;
��( )
set
��* -
;
��- .
}
��/ 0
[
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� 8
)
��8 9
]
��9 :
public
�� 
long
�� 
IdDisposicionF
�� "
{
��# $
get
��% (
;
��( )
set
��* -
;
��- .
}
��/ 0
public
�� 
string
�� 
DisposicionFDesc
�� &
{
��' (
get
��) ,
;
��, -
set
��. 1
;
��1 2
}
��3 4
public
�� 

SelectList
�� 
DisposicionFList
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
[
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� .
)
��. /
]
��/ 0
public
�� 
int
�� 
DFToneladas
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
	GembaDesc
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
GembutsuDesc
�� "
{
��# $
get
��% (
;
��( )
set
��* -
;
��- .
}
��/ 0
public
�� 
string
�� 
GenjitsuDesc
�� "
{
��# $
get
��% (
;
��( )
set
��* -
;
��- .
}
��/ 0
public
�� 
string
�� 
	GenriDesc
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
GensokuDesc
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
string
�� 
GembaOk
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 

GembutsuOk
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 

GenjitsuOk
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
PathImageGs
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
string
�� 
	DescImgGs
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
��  
HttpPostedFileBase
�� !
ImageGs
��" )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
string
�� 
QueDesc
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 
	DondeDesc
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 

CuandoDesc
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
	QuienDesc
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
CualDesc
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
ComoDesc
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
FenomenoDesc
�� "
{
��# $
get
��% (
;
��( )
set
��* -
;
��- .
}
��/ 0
public
�� 
string
�� 
FenomenoDescT
�� #
{
��$ %
get
��& )
;
��) *
set
��+ .
;
��. /
}
��0 1
public
�� 
string
�� 
PathImageFen
�� "
{
��# $
get
��% (
;
��( )
set
��* -
;
��- .
}
��/ 0
public
�� 
string
�� 

DescImgFen
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
��  
HttpPostedFileBase
�� !
ImageFen
��" *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
public
�� 
string
�� 

ManoObra4M
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
=
��/ 0
$str
��1 6
;
��6 7
public
�� 
string
�� 

Material4M
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
=
��/ 0
$str
��1 6
;
��6 7
public
�� 
string
�� 
	Maquina4M
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
=
��. /
$str
��0 5
;
��5 6
public
�� 
string
�� 
Metodo4M
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
=
��- .
$str
��/ 4
;
��4 5
public
�� 
string
�� 
ManoObra4MTotal
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
=
��4 5
$str
��6 ;
;
��; <
public
�� 
string
�� 
Material4MTotal
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
=
��4 5
$str
��6 ;
;
��; <
public
�� 
string
�� 
Maquina4MTotal
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
=
��3 4
$str
��5 :
;
��: ;
public
�� 
string
�� 
Metodo4MTotal
�� #
{
��$ %
get
��& )
;
��) *
set
��+ .
;
��. /
}
��0 1
=
��2 3
$str
��4 9
;
��9 :
public
�� 
string
�� 
ManoObra4MDesc
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
Material4MDesc
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
Maquina4MDesc
�� #
{
��$ %
get
��& )
;
��) *
set
��+ .
;
��. /
}
��0 1
public
�� 
string
�� 
Metodo4MDesc
�� "
{
��# $
get
��% (
;
��( )
set
��* -
;
��- .
}
��/ 0
public
�� 
string
�� 
IdTopFFZ
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
GrpTFFZ
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
List
�� 
<
�� 

tipos_data
�� 
>
��  
TopFiveForZeroList
��  2
{
��3 4
get
��5 8
;
��8 9
set
��: =
;
��= >
}
��? @
[
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� 4
)
��4 5
]
��5 6
public
�� 
string
�� %
ComentariosResoluciones
�� -
{
��. /
get
��0 3
;
��3 4
set
��5 8
;
��8 9
}
��: ;
[
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� 4
)
��4 5
]
��5 6
public
�� 
string
�� 

IdCoorProd
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
[
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� 2
)
��2 3
]
��3 4
public
�� 
string
�� 
	IdGerProd
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
[
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� 1
)
��1 2
]
��2 3
public
�� 
string
�� 
IdJefCal
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
[
�� 	
Display
��	 
(
�� 
Name
�� 
=
�� 
$str
�� .
)
��. /
]
��/ 0
public
�� 
string
�� 
IdGerCal
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
[
�� 	
DisplayName
��	 
(
�� 
$str
�� 7
)
��7 8
]
��8 9
public
�� 
string
�� 
	FchCierre
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
	BeforePct
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
AfterPct
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 

ListAccInm
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
ListGenj
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
ListGenr
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
ListGens
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
ListPorq
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
ListBefo
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
ListAfte
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
ListPlan
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
List4M
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
int
�� 
MaxMId
�� 
{
�� 
get
�� 
;
��  
set
��! $
;
��$ %
}
��& '
}
�� 
}�� �
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
}.. �
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
} �9
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
}WW �
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
} �
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
} �
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
]##) *�
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
} �
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
} �,
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
$str	! �
+ 
$str	 �
+ 
$str \
+ 
$str 
+ 
nombreE 
+ 
$str	 �
+ 
$str 
+ 
$str 
+ 
$str N
+ 
$str	 �
+ 
$str j
;j k
static 
string 
noti_apr 
=  
$str	! �
+ 
$str	 �
+   
$str   \
+!! 
$str!! 
+!! 
nombreE!! 
+!! 
$str	!! �
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
$str	OOp �
)
OO� �
;
OO� �
returnPP 

_localTimePP 
;PP 
}QQ 	
}RR 
}SS 