//----------DHTML Menu Created using AllWebMenus PRO ver 5.3-#840---------------
//C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\bookmyticket\main\awmdata\Cherry.awm
var awmMenuName='header';
var awmLibraryBuild=840;
var awmLibraryPath='/awmdata';
var awmImagesPath='/awmdata/header';
var awmSupported=(navigator.appName + navigator.appVersion.substring(0,1)=="Netscape5" || document.all || document.layers || navigator.userAgent.indexOf('Opera')>-1 || navigator.userAgent.indexOf('Konqueror')>-1)?1:0;
if (awmAltUrl!='' && !awmSupported) window.location.replace(awmAltUrl);
if (awmSupported){
var nua=navigator.userAgent,scriptNo=(nua.indexOf('Chrome')>-1)?2:((nua.indexOf('Safari')>-1)?7:(nua.indexOf('Gecko')>-1)?2:((document.layers)?3:((nua.indexOf('Opera')>-1)?4:((nua.indexOf('Mac')>-1)?5:1))));
var mpi=document.location,xt="";
var mpa=mpi.protocol+"//"+mpi.host;
var mpi=mpi.protocol+"//"+mpi.host+mpi.pathname;
if(scriptNo==1){oBC=document.all.tags("BASE");if(oBC && oBC.length) if(oBC[0].href) mpi=oBC[0].href;}
while (mpi.search(/\\/)>-1) mpi=mpi.replace("\\","/");
mpi=mpi.substring(0,mpi.lastIndexOf("/")+1);
var e=document.getElementsByTagName("SCRIPT");
for (var i=0;i<e.length;i++){if (e[i].src){if (e[i].src.indexOf(awmMenuName+".js")!=-1){xt=e[i].src.split("/");if (xt[xt.length-1]==awmMenuName+".js"){xt=e[i].src.substring(0,e[i].src.length-awmMenuName.length-3);if (e[i].src.indexOf("://")!=-1){mpi=xt;}else{if(xt.substring(0,1)=="/")mpi=mpa+xt; else mpi+=xt;}}}}}
while (mpi.search(/\/\.\//)>-1) {mpi=mpi.replace("/./","/");}
var awmMenuPath=mpi.substring(0,mpi.length-1);
while (awmMenuPath.search("'")>-1) {awmMenuPath=awmMenuPath.replace("'","%27");}
document.write("<SCRIPT SRC='"+awmMenuPath+awmLibraryPath+"/awmlib"+scriptNo+".js'><\/SCRIPT>");
var n=null;
awmzindex=1000;
}

var awmImageName='';
var awmPosID='';
var awmSubmenusFrame='';
var awmSubmenusFrameOffset;
var awmOptimize=0;
var awmHash='WDHIMYWKLBOIHYDOUECUZKID';
var awmUseTrs=0;
var awmSepr=["0","","",""];
var awmMarg=[0,0,0,0];
function awmBuildMenu(){
if (awmSupported){
awmImagesColl=["main-header.gif",21,33,"main-footer.gif",21,33,"main-button-tile.gif",3,33,"main-buttonOver-tile.gif",3,33,"main-button-left.gif",3,33,"main-buttonOver-left.gif",4,33,"main-button-right.gif",4,33,"main-buttonOver-right.gif",4,33,"sub-button-tile.gif",4,26,"sub-buttonOver-tile.gif",4,26,"sub-button-left.gif",4,26,"sub-buttonOver-left.gif",4,26,"sub-button-right.gif",4,26,"sub-buttonOver-right.gif",4,26];
awmCreateCSS(1,2,1,'#FFFFFF',n,n,'14px sans-serif',n,'none','0','#000000','0px 0px 0px 0',0);
awmCreateCSS(0,2,1,'#FFFFFF',n,n,'14px sans-serif',n,'none','0','#000000','0px 0px 0px 0',0);
awmCreateCSS(0,1,0,n,n,n,n,n,'none','0','#000000',0,0);
awmCreateCSS(1,2,1,'#FFDCDC',n,2,'bold 11px Tahoma',n,'none','0','#000000','5px 20px 0px 20',0);
awmCreateCSS(0,2,1,'#FFFFFF',n,3,'bold 11px Tahoma',n,'none','0','#000000','5px 20px 0px 20',0);
awmCreateCSS(1,2,1,'#FFDCDC',n,2,'bold 11px Tahoma',n,'none','0','#000000','5px 20px 0px 20',1);
awmCreateCSS(0,2,1,'#FFFFFF',n,3,'bold 11px Tahoma',n,'none','0','#000000','5px 20px 0px 20',1);
awmCreateCSS(1,2,0,'#FFDCDC',n,8,'bold 11px Tahoma',n,'none','0','#000000','0px 20px 0px 20',1);
awmCreateCSS(0,2,0,'#FFFFFF',n,9,'bold 11px Tahoma',n,'none','0','#000000','0px 20px 0px 20',1);
var s0=awmCreateMenu(0,0,0,0,1,0,0,0,0,324,120,0,1,2,0,0,1,n,n,100,0,0,324,120,0,-1,1,200,200,0,0,0,"0,0,0",n,n,n,n,n,n,n,n,0,0,0,0,1,0,0,0,1);
it=s0.addItemWithImages(0,1,1,"","","","",0,0,0,3,3,3,n,n,n,"",n,n,n,n,n,0,0,0,n,n,n,n,n,n,0,0,0,0,0,n,n,n,0,0,0,n,n);
it=s0.addItemWithImages(3,4,4,"Family Tour",n,n,"",n,n,n,3,3,3,n,n,n,"",n,n,n,n,n,0,0,2,4,5,5,6,7,7,1,1,1,0,0,n,n,n,0,0,0,0,n);
var s1=it.addSubmenu(0,0,0,0,0,0,0,2,0,1,0,n,n,100,0,2,0,-1,1,200,200,0,0,"0,0,0",0,"0",1);
it=s1.addItemWithImages(7,8,8,"India Tour",n,n,"",n,n,n,3,3,3,n,n,n,"../indiatours.html",n,n,n,"../indiatours.html",n,0,0,2,10,11,11,12,13,13,1,1,1,0,0,n,n,n,0,0,0,10,n);
it=s1.addItemWithImages(7,8,8,"World Tour",n,n,"",n,n,n,3,3,3,n,n,n,"../worldtour.html",n,n,n,"../worldtour.html",n,0,0,2,10,11,11,12,13,13,1,1,1,0,0,n,n,n,0,0,0,11,n);
it=s0.addItemWithImages(5,6,6,"Customized Tour",n,n,"",n,n,n,3,3,3,n,n,n,"../custom.html",n,n,n,"../custom.html",n,0,0,2,4,5,5,6,7,7,1,1,1,0,0,n,n,n,0,0,0,1,n);
it=s0.addItemWithImages(3,4,4,"Special Offer",n,n,"",n,n,n,3,3,3,n,n,n,"",n,n,n,n,n,0,0,2,4,5,5,6,7,7,1,1,1,0,0,n,n,n,0,0,0,2,n);
var s1=it.addSubmenu(0,0,0,0,0,0,0,2,0,1,0,n,n,100,0,3,0,-1,1,200,200,0,0,"0,0,0",0,"0",1);
it=s1.addItemWithImages(7,8,8,"Jungle Tour",n,n,"",n,n,n,3,3,3,n,n,n,"../jungle.html",n,n,n,"../jungle.html",n,0,0,2,10,11,11,12,13,13,1,1,1,0,0,n,n,n,0,0,0,12,n);
it=s0.addItemWithImages(5,6,6,"Unique Speciality Tour",n,n,"",n,n,n,3,3,3,n,n,n,"../unique.html",n,n,n,"../unique.html",n,0,0,2,4,5,5,6,7,7,1,1,1,0,0,n,n,n,0,0,0,8,n);
it=s0.addItemWithImages(5,6,6,"Corporate Travel",n,n,"",n,n,n,3,3,3,n,n,n,"../business.html",n,n,n,"../business.html",n,0,0,2,4,5,5,6,7,7,1,1,1,0,0,n,n,n,0,0,0,9,n);
it=s0.addItemWithImages(5,6,6,"Book &nbsp;My &nbsp;Ticket",n,n,"",n,n,n,3,3,3,n,n,n,"http://localhost:8080/bookmyticket/main/signin.html",n,n,n,"http://localhost:8080/bookmyticket/main/signin.html",n,0,0,2,4,5,5,6,7,7,1,1,1,0,0,n,n,n,0,0,0,14,n);
it=s0.addItemWithImages(0,1,1,"","","","",1,1,1,3,3,3,n,n,n,"",n,n,n,n,n,0,0,0,n,n,n,n,n,n,0,0,0,0,0,n,n,n,0,0,0,n,n);
s0.pm.buildMenu();
}}
