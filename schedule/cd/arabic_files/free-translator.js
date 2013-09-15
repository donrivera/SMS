google.load("language","1");
var tmp=document.createElement("p");tmp.setAttribute("id","pop-up");
document.getElementById("free-translator").appendChild(tmp);
var google_language_code="af,ar,be,bg,ca,cs,cy,da,de,el,en,es,et,fa,fi,fr,ga,gl,hi,hr,,hu,id,is,it,iw,ja,ko,lt,lv,mk,ms,mt,nl,no,pl,pt-PT,ro,ru,sk,sl,sq,sr,sv,sw,th,tl,tr,uk,vi,yi,zh-CN,zh-TW".split(","),bing_language_code=[!1,"ar",!1,"bg","ca","cs",!1,"da","de","el","en","es","et",!1,"fi","fr",!1,!1,!1,!1,"ht","hu","id",!1,"it","he","ja","ko","lt","lv",!1,!1,!1,"nl","no","pl","pt","ro","ru","sk","sl",!1,!1,"sv",!1,"th",!1,"tr","uk","vi",!1,"zh-CHS","zh-CHT"],bing_app_id="58B2CBCEB011DB46421FCE27B57F4D9B54DA5522";

function googleGetTranslation()
{
	firstPass()
}
function swap()
{
	var b=document.getElementById("dst"),c=b.options[b.selectedIndex].value,a,d=document.getElementById("src"),e=d.options[d.selectedIndex].value;"zh-CHS"===e&&(e="zh-CHS");
	if("zh-CHS"===c||"zh-CHT"===c)c="zh-CHS";
	for(a=0;a<d.length;a+=1)
	if(d[a].value===c)
	{
		d[a].selected=!0;break
	}
	for(a=0;a<b.length;a+=1)
	if(b[a].value===e)
	{
		b[a].selected=!0;break
	}
}
function firstPass()
{
	var b=getPageScroll(),c=getPageSize(),a=document.getElementById("overlay"),d=document.getElementById("overlay_message");
	document.getElementById("overlay_message_inner").innerHTML="Processing your translation request...";
	a.style.height=c[1]+"px";
	a.style.display="block";
	b=b[1]+(c[3]-70)/2;c=(c[0]-370)/2;
	d.style.top=0>b?"0px":b+"px";
	d.style.left=0>c?"0px":c+"px";
	setTimeout("secondPass()",3E3)
}
function secondPass()
{
	var t1 = document.forms.translator_template.txt_src.value;
	var t2 = document.forms.translator_template.txt_src1.value;
	var t3 = document.forms.translator_template.txt_src2.value;
	var t4 = document.forms.translator_template.txt_src3.value;
	
	var b=!0;
	c=document.getElementById("overlay_message_inner");
	a=document.forms.translator_template.src.value;
	d=document.forms.translator_template.dst.value;
	e=t1+" "+t2+" "+t3+" "+t4;
	f=a in objectConverter(google_language_code);
	i=d in objectConverter(google_language_code);
	g=!1;
	h=!1;
	
	if(f)
		for(key in google_language_code)
			if(google_language_code[key]==a)
			{
				g=bing_language_code[key];
				break
			}
			if(i)
			for(key in google_language_code)
			if(google_language_code[key]==d)
			{
				h= bing_language_code[key];break
			}
			!g||!h?(alert("Sorry! We're having some trouble translating between those languages.\r\n\r\nWe hope we can sort it out soon, but in the meantime, don't blame us! Blame Google... or Bing..."),document.getElementById("overlay").style.display="none"):(f=document.createElement("script"),f.src="http://api.microsofttranslator.com/V2/Ajax.svc/Translate?oncomplete=bingCallback&appID="+bing_app_id+"&from="+a+"&to="+d+"&text="+e,document.getElementsByTagName("head")[0].appendChild(f), setTimeout("bingErrorCheck()",3E3),window.bingCallback=function(a){b=!1;
			
			a=a.replace("&#39;","'").replace("&amp;#39;","'");
			
			var temp = new Array();
			temp = a.split(" ");
			
			/*alert(temp[3]);
			alert(temp[2]);
			alert(temp[1]);
			alert(temp[0]);
			
			document.getElementById("t1").value= '';
			document.getElementById("t2").value='';
			document.getElementById("t3").value='';
			document.getElementById("t4").value='';*/
			//alert(temp[3]);
			document.getElementById("t1").value = temp[3];
			document.getElementById("t2").value = temp[2];
			document.getElementById("t3").value = temp[1];
			document.getElementById("t4").value = temp[0];
			
			if(document.getElementById("t1").value == "undefined"){
				document.getElementById("t1").value = '';
			}
			if(document.getElementById("t2").value == "undefined"){
				document.getElementById("t2").value = '';
			}
			if(document.getElementById("t3").value == "undefined"){
				document.getElementById("t3").value = '';
			}
			if(document.getElementById("t4").value == "undefined"){
				document.getElementById("t4").value = '';
			}
/*			document.getElementById("t1").value=a.split(" ", 4)[3];
			document.getElementById("t2").value=a.split(" ", 3)[2];
			document.getElementById("t3").value=a.split(" ", 2)[1];
			document.getElementById("t4").value=a.split(" ", 1)[0];*/
			
			c.innerHTML="Your translation is ready!";
			setTimeout("thirdPass()",1500)},window.bingErrorCheck=function(){b&&(alert("Error retrieving translation. Please try again."),setTimeout("failPass()",1500))})}
			function thirdPass()
			{
				document.getElementById("overlay").style.display="none";			
				document.getElementById("pop-up").style.display="block";
				document.getElementById("pop-up").style.bottom="-"+(parseInt(document.getElementById("pop-up").offsetHeight)+10)+"px"
			}
			
			function failPass(){document.getElementById("overlay").style.display="none"} 
			
			function getPageScroll()
			{
				var b;
				if(self.pageYOffset)
					b=self.pageYOffset;
				else if(document.documentElement&&document.documentElement.scrollTop)
					b=document.documentElement.scrollTop;
				else if(document.body)b=document.body.scrollTop;return["",b]
			}
			function getPageSize()
			{
				var b,c;
				window.innerHeight&&window.scrollMaxY?(b=document.body.scrollWidth,c=window.innerHeight+window.scrollMaxY):document.body.scrollHeight>document.body.offsetHeight?(b=document.body.scrollWidth,c=document.body.scrollHeight):(b=document.body.offsetWidth,c=document.body.offsetHeight);
				
				var a,d;
				if(self.innerHeight)
					a=self.innerWidth,d=self.innerHeight;
				
				else if(document.documentElement&&document.documentElement.clientHeight)
					a=document.documentElement.clientWidth,d=document.documentElement.clientHeight; 
				
				else if(document.body)a=document.body.clientWidth,d=document.body.clientHeight;
					var e=0,e=0;
					return[b<a?a:b,c<d?d:c,a,d]
			}
			function tsuGetTranslation()
			{
				var b=document.forms.translator_template.src.value,c=document.forms.translator_template.dst.value,a=document.forms.translator_template.txt_src.value+" "+document.forms.translator_template.txt_src1.value+" "+document.forms.translator_template.txt_src2.value+" "+document.forms.translator_template.txt_src3.value;"zh"===b&&(src_value="zh-CN");
				
				document.forms.translator_template.source_language.value=b;
				document.forms.translator_template.target_language.value=c;
				document.forms.translator_template.text.value=a;
				document.forms.translator_template.submit()
			}
			var txtInputLastValue="",timeout;
			function detectLanguage()
			{
				var b=document.forms.translator_template.src.value;
				if(""===b)
				{
					var c=document.forms.translator_template.txt_src.value +" "+ document.forms.translator_template.txt_src1.value+" "+document.forms.translator_template.txt_src2.value+" "+document.forms.translator_template.txt_src3.value;0<c.length&&c!=txtInputLastValue&&(txtInputLastValue=c,timeout&&clearTimeout(timeout),timeout=setTimeout(function()
					{
						google.language.detect(c,function(a){if(!a.error)document.forms.translator_template.src.value=a.language})
					},750))
				}
				return b
			}
			function closePopUp()
			{
				document.getElementById("pop-up").style.display="none"
			}
			function objectConverter(b)
			{
				for(var c={},a=0;a<b.length;a++)
					c[b[a]]="";return c
			};