	 $(document).ready(function(){
			 $(".duyier a:last").css("background-image","none");
     });

$(function(){
        //����������λ�ô��ھඥ��100��������ʱ����ת���ӳ��֣�������?
        $(function () {
            $(window).scroll(function(){
                if ($(window).scrollTop()>100){
                    $("#back-to-top").fadeIn(1500);
                }
                else
                {
                    $("#back-to-top").fadeOut(1500);
                }
            });

            //�������ת���Ӻ󣬻ص�ҳ�涥��λ?

            $("#back-to-top").click(function(){
                $('body,html').animate({scrollTop:0},1000);
                return false;
            });
        });
    });