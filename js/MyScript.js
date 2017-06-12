/*
******************************************************************
* Author: Khalid Mahmood
* Assignment: WE4.0 WE4.0 Server-side Web Development, 
* Date : 2016/07/31
* Ref: http://stackoverflow.com/questions/24173871/what-is-the-mobile-pagecontainer-selector,  
* Ref: http://stackoverflow.com/questions/9738948/jquery-mobile-change-page
* Ref: http://api.jquery.com/jQuery.ajax/
******************************************************************
*/


/** SLIDEPANEL TEXT (VARIABLE), JSON data Retrieve by using Jquery.ajax, JSON Data is generated by Web Service "web_service/index.php?method=side_Panel_Text" **/

var paneltxt ;

//Ref: http://api.jquery.com/jQuery.ajax/
  $.ajax({
    url: "web_service/index.php?method=side_Panel_Text",  
    async: false,
    dataType: 'json',
    success: function(data) {
                              $.each(data, function(id,text) {
                                                              paneltxt = text.info_text ; 
                                                              $('#mypanel').append(paneltxt);
                                                              } 
                             )}
        });

/*************************************************/



/***********  DYNAMIC PAGES ELEMENTS (VARIABLE) **********/
//Dynamic Page Var
var dynamic_page   =  "<div data-role='page' data-url=Car_Details>";

//SidePanel Main Text Var 
var d_page_panel   =  "<div data-role='panel' id='mypanel2'><a href='' data-rel='close' class='ui-btn ui-btn-inline ui-shadow ui-corner-all ui-btn-a ui-icon-delete ui-btn-icon-left'>Close</a>" +paneltxt+ "</div>";

// Dynamic Page Header Var
var d_header_start =  "<div data-role='header'>";
var d_header_end   =  "</div>";

// Dynamic PAge Content Var
var d_content_start=  "<div data-role='content' >";
var d_content_end  =  "</div>";

//Dynamic Page Footer Var
var d_footer_start =  "<div data-role='footer'>";
var d_footer_end   =  "</div></div>";

/************************************************/


  
  //Retrieve JSON data by using getJSON, JSON Data is generated by Web Service "web_service/index.php?method=best_Sell_Cars"
 
  $.getJSON("web_service/index.php?method=best_Sell_Cars", function(cars){

      //Empty listview to get ready for latest data 
      $('#CarList').empty();
   
      //Add the car names as list by using "each" and append in "#CarList" listview
      $.each(cars, function(key, value){

          $('#CarList').append(CreateCarLinks(value));
      });


      //Refresh the list view to show the latest changes in "#CarList"
      $('#CarList').listview('refresh');
  });



  //Generate the car detail pages link list "As soon user click the link, (moveTocarsDetailPage) function will call and data pass to generate dynamic page"
  function CreateCarLinks(value){
  
  return '<li><a href="javascript:void(0)'
        + '" onclick="moveTocarsDetailPage(\''
        + value.car_name 
        + '\',\''
        + value.ranking 
        + '\',\''
        + value.car_image 
        + '\',\''
        + value.detail 
        + '\',\''
        + value.price_from +'\')">' 
        + value.car_name 
        + '</a></li>';
  }


  //Generate Dynamic Page 
  function moveTocarsDetailPage(car_name, ranking, car_image, detail, price_from){
  

      //Dynamic page's HTML Structure & data. data stored in "CarInformPage" variable 
      //HTML Element variable define on start of file
      var CarInformPage = $("" 
                    +dynamic_page+ "" 
                    +d_page_panel+ ""
                    +d_header_start+ "<a href='#mypanel2' class='ui-btn ui-shadow ui-corner-all ui-icon-info ui-btn-icon-notext'>info</a><h1>" + car_name + " <br><i>(Ranking: " +ranking+ ")</i></h1>" +d_header_end+ ""
                    +d_content_start+"<p class='p_center'><img src='" + car_image + "' class='center'/></p><p>"+detail+"</p>" +d_content_end+ ""
                    +d_footer_start+"<h4>Price From: &euro; "+ price_from + "</h4><span class='right-hand'><a href='#' class='ui-btn ui-btn-inline ui-shadow ui-corner-all ui-btn-a ui-icon-back ui-btn-icon-left' data-rel='back'>Go Back</a></span>" +d_footer_end +"" 
                    );

      //Append the new dynamically generated page to mobile page container
      CarInformPage.appendTo( $.mobile.pageContainer ); //Ref: http://stackoverflow.com/questions/24173871/what-is-the-mobile-pagecontainer-selector


      //Go to on new dynamically generated page
      $.mobile.changePage( CarInformPage ); //Ref: http://stackoverflow.com/questions/9738948/jquery-mobile-change-page
  };

