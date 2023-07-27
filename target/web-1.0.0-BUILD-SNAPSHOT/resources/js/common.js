$(function () {


    //레이어를 띄운 상태에서 레이어 밖을 클릭할 경우 레이어 닫는 방법
    $(document).mouseup(function (e) {
        var closeLayerPop = $(".layerPop");
        if (closeLayerPop.has(e.target).length == 0) {
            closeLayerPop.hide();
        }
    });

    //함수호출
    modalLayer();
    lnb();
    // introduction();

});



/**********************************************************************/
/***************************    FUNCTION    ***************************/
/**********************************************************************/
function modalLayer() {

    var treeMenuLiA = $(".treeMenu li a"), //트리메뉴
        layerPop = $(".layerPop"), //레이어 팝업
        layerSpan = $(".layer h2 span"), //각 레이어의 제목
        closeLayer = $(".closeLayer"); //닫기 버튼

    //show layer
    $(treeMenuLiA).on("click", function () {
        $(layerPop).show();
        $(layerSpan).text($(this).text());
        $(closeLayer).focus();

        //각 메뉴 클릭시 그에 해당하는 아이콘 가져오기
        var icon = $(this).children("em").css("background-image").replace(/url\("*|"*\)/g, "");
        $(".layer h2 img").attr("src", icon);

    });

    //모달 안 마지막 링크 아웃시
    $(".noFrame").on("focusin", function () {
        $(closeLayer).focus();
    });

    //hide layer
    $(closeLayer).on("click", function () {
        $(layerPop).hide();
        $(".treeMenu li:first a").focus();
    });

}



function lnb() {
    $(".lnb li a").on("click", function () {
        $(".lnb li a").removeClass("active");
        $(this).addClass("active");
    });
}



/* 한 줄 소개 */
/* 
function introduction() {
    $(".item a").on("click", function () {
        $(".introduction").text($(this).text());
    });
} 
*/
