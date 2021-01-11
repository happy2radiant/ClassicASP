<!--#include virtual="/common/common_inc.asp" -->
<%
'=======================================================================
'업 무 명 : 학원사이트 모바일 페이지 ( mcampus.megastudy.net )
'모듈기능 : 인트로
'파 일 명 :
'작성일자 : 2015/10/
'작 성 자 :
'-----------------------------------------------------------------------
'변경일자   변경자  변동내역
'=======================================================================
'
'=======================================================================
'Response.Expires=-1
Response.Cookies("_CAMPUS_") = "intro"
%>

<!--#include virtual="/common/html_head.asp" -->


<!-- Header// -->
<!--#include virtual="/common/header.asp" -->
<!-- //Header -->
<%

Function GetNowDate()
	Dim NowDate

	NowDate = fillZeroNum(Year(Now), 4) & fillZeroNum(Month(Now),2) & fillZeroNum(Day(Now),2) & fillZeroNum(Hour(Now),2) & fillZeroNum(Minute(Now),2) & fillZeroNum(Second(Now),2)
	GetNowDate = NowDate
End Function

Function fillZeroNum(ByVal nNum, nSize)
	Dim i
	If IsNull(nNum) Then
		nNum = ""
	End If
	fillZeroNum = CStr(nNum)

	If Len(CStr(nNum)) < nSize Then
		For i=1 To CInt(nSize) - Len(nNum)
			fillZeroNum = "0" & fillZeroNum
		Next
	End If
End Function


nEndDate = 20160123110000

If CDbl(GetNowDate()) < CDbl(nEndDate) Then
    imgUrl  = "m_exp01_tit01_0122_n"
    imgUrl1 = "m_exp02"
Else
    imgUrl  = "m_exp01_tit01_0123"
    imgUrl1 = "m_exp02_0123"
End If

Dim status : status = Trim(request.QueryString("v"))
%>
	<div class="clearfix"></div>
	<div class="wrap" style="padding:0;z-index:3">
		<div style="width:100%; margin:auto; position:relative;top:0;left:0;z-index:12;">
              
		<div><img src="<%=Application("img_path_mob")%>/common/img/2019_ske/ske_m_01.jpg" alt="" class="img-responsive" style="width:100%"></div>
        </div>
        
        <div style="background:#e5e5e5">
			<div><img src="<%=Application("img_path_mob")%>/common/img/2019_ske/ske_m_02_tit.jpg" alt="" class="img-responsive" style="width:100%"></div>
			<!-- 텝부분(인문 / 자연) 시작 -->
			<div>
				<table width="100%" border="0">
				  <tr>
					<td>
						<a href="javascript:;"><img id="imgTab01" src="<%=Application("img_path_mob")%>/common/img/2019_ske/tab01_on.jpg" alt="" class="img-responsive" style="width:100%" onclick="showContents(1);"></a>
					</td>
					<td>
						<a href="javascript:;"><img id="imgTab02" src="<%=Application("img_path_mob")%>/common/img/2019_ske/tab02_off.jpg" alt="" class="img-responsive" style="width:100%" onclick="showContents(2);"></a>
					</td>
				  </tr>
				</table>
				<script>
					var showContents = function(tabNumber) {
						if( tabNumber==1 ){
							$('#imgTab01').attr('src','<%=Application("img_path_mob")%>/common/img/2019_ske/tab01_on.jpg');
							$('#imgTab02').attr('src','<%=Application("img_path_mob")%>/common/img/2019_ske/tab02_off.jpg');
							$('.human').show();
							$('.nature').hide();
						}else if( tabNumber==2 ){
							$('#imgTab01').attr('src','<%=Application("img_path_mob")%>/common/img/2019_ske/tab01_off.jpg');
							$('#imgTab02').attr('src','<%=Application("img_path_mob")%>/common/img/2019_ske/tab02_on.jpg');
							$('.human').hide();
							$('.nature').show();
						}
					}

					$(document).ready(function() {
						var status = '<%=status%>';
						if( status=='' || status=='gangnam' ) {
							showContents(1);
						} else if ( status=='intro' || status=='seocho') {
							showContents(2);
						}
					});
				</script>
			</div>
			<!-- 텝부분(인문 / 자연) 끝 -->
		
			<!-- 인문 -->
			<div style="margin-top:3rem;" class="human"><img src="<%=Application("img_path_mob")%>/common/img/2019_ske/mov_tit1.jpg" alt="" class="img-responsive" style="width:100%"></div>

			<div style="margin-top:1.5rem;" class="human"><iframe frameborder="no" height="100%" marginheight="0" marginwidth="0" scrolling="no" src="https://mcampus.megastudy.net/campus_common/campus/campus_mov.asp?mCode=N1808300001" width="100%"></iframe></div>

			<div style="margin-top:3rem;" class="human"><img src="<%=Application("img_path_mob")%>/common/img/2019_ske/mov_tit3.jpg" alt="" class="img-responsive" style="width:100%"></div>

			<div style="margin-top:1.5rem;" class="human"><iframe frameborder="no" height="100%" marginheight="0" marginwidth="0" scrolling="no" src="https://mcampus.megastudy.net/campus_common/campus/campus_mov.asp?mCode=N1808300002" width="100%"></iframe></div>
			<!-- 인문 -->
			
			<!-- 자연 -->
			<div style="margin-top:3rem;display:none;" class="nature" ><img src="<%=Application("img_path_mob")%>/common/img/2019_ske/mov_tit1.jpg" alt="" class="img-responsive" style="width:100%"></div>

			<div style="margin-top:1.5rem;display:none;" class="nature"><iframe frameborder="no" height="100%" marginheight="0" marginwidth="0" scrolling="no" src="https://mcampus.megastudy.net/campus_common/campus/campus_mov.asp?mCode=N1808300003" width="100%"></iframe></div>

			<div style="margin-top:3rem;display:none;" class="nature"><img src="<%=Application("img_path_mob")%>/common/img/2019_ske/mov_tit2.jpg" alt="" class="img-responsive" style="width:100%"></div>

			<div style="margin-top:1.5rem;display:none;" class="nature"><iframe frameborder="no" height="100%" marginheight="0" marginwidth="0" scrolling="no" src="https://mcampus.megastudy.net/campus_common/campus/campus_mov.asp?mCode=N1808300004" width="100%"></iframe></div>
			<!-- 자연 -->
			<br />
		   </div>
			
			<!-- 인문 -->
			<div class="human"><img src="<%=Application("img_path_mob")%>/common/img/2019_ske/ske_m_02.jpg" alt="" class="img-responsive" style="width:100%"></div>
		   
			<div class="human"><iframe frameborder="no" height="100%" marginheight="0" marginwidth="0" scrolling="no" src="https://mcampus.megastudy.net/campus_common/campus/campus_mov.asp?mCode=N1808220001" width="100%"></iframe></div>

			 <div class="human"><img src="<%=Application("img_path_mob")%>/common/img/2019_ske/ske_m_04.jpg" alt="" class="img-responsive" style="width:100%"></div>
			 <!-- 인문 -->

			<!-- 자연 -->
 			 <div class="nature" style="display:none;"><img src="<%=Application("img_path_mob")%>/common/img/2019_ske/ske_m_02.jpg" alt="" class="img-responsive" style="width:100%"></div>

			 <div class="nature" style="display:none;"><iframe frameborder="no" height="100%" marginheight="0" marginwidth="0" scrolling="no" src="https://mcampus.megastudy.net/campus_common/campus/campus_mov.asp?mCode=N1808220001" width="100%"></iframe></div>

			 <div class="nature" style="display:none;"><img src="<%=Application("img_path_mob")%>/common/img/2019_ske/ske_m_04.jpg" alt="" class="img-responsive" style="width:100%"></div>
			 <!-- 자연 -->
			
			<!--div><img src="<%=Application("img_path_mob")%>/common/img/2019_scholar/scholar_btn2.jpg" alt="" class="img-responsive" style="width:100%"></div-->
			<br /><br />
		</div>

	<!--하단배너-->
	<!--div style="width:100%;">
		<a href="http://mcampus.megastudy.net/2019_concert.asp" target="_self"><img src="<%=Application("img_path_mob")%>/common/img/intro/ss_mbn_2019concert.jpg" alt="" class="img-responsive" style="width:100%" /></a>
	</div-->
	<!--div style="width:100%;margin:2% auto 5%;">
		<a href="http://mcampus.megastudy.net/2018_special.asp" target="_self"><img src="<%=Application("img_path_mob")%>/common/img/2019_teamplay/banner.jpg" alt="" class="img-responsive" style="width:100%" /></a>
	</div-->
</div>
<!--// container -->
<!--#include virtual="/common/footer.asp" -->