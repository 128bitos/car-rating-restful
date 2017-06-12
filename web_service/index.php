<?php

/******************************************************************
* Author: Khalid Mahmood
* Assignment: WE4.0 Server-side	Web	Development, 
* Date : 2016/07/31
* Ref: http://php.net/manual/en/json.constants.php
* Ref: http://www.w3schools.com/php/func_http_header.asp
******************************************************************/


// Include Classes ****************************
	include ('classes\DBConnection.Class.php');
	include ('classes\DBQuery.Class.php');


//variable declare  
$Cars_Data;
$Panel_Data;

// call the passed in function
	if(function_exists($_GET['method'])) {
			// Query Object
			$Main_Data = new DBQuery ();
			//Call function
			$_GET['method']($Main_Data);
			}





/************************* STARTED ********************************
****************** best_Sell_Cars() function ********************** 
******************************************************************/

function best_Sell_Cars($Cars_Data)
	{

	$Cars_Data->Car_Detail_Query();

			
//Query Output 
	$Top_Cars = $Cars_Data->get_Select_Query(); 


			
    // Output data of each Car_Record
    		
    		$Car_Records=array();


    		while($Car_Record = mysqli_fetch_array($Top_Cars)) 
    		{
    			$All_Records[] = array (

    			'car_name' => $Car_Record["car_name"],
    			'ranking' => $Car_Record["ranking"],
				'car_image' => $Car_Record["car_image"],
				'detail' => $Car_Record["detail"],
				'price_from' => $Car_Record["price_from"],
				);
		
			}

header('content-type:application/json'); //Ref: http://www.w3schools.com/php/func_http_header.asp
		$json_response = json_encode($All_Records, JSON_PRETTY_PRINT); //Ref: http://php.net/manual/en/json.constants.php
		echo $json_response;
}	

/*************************** END *******************************/




/************************* STARTED ********************************
****************** side_Panel_Text() function *********************
******************************************************************/


function side_Panel_Text ($Panel_Data)

{

	$Panel_Data->info_Query();

			
//Query Output for Result
	$P_Text = $Panel_Data->get_Info_Query(); 

	
    		$P_Record=array();


    		while($P_Record = mysqli_fetch_array($P_Text)) 
    		{
    			$Text_Record[] = array (

    			'info_text' => $P_Record["info_text"],
    			
				);
		
			}

header('content-type:application/json');
		$json_response_Panel = json_encode($Text_Record, JSON_PRETTY_PRINT); //Ref: http://php.net/manual/en/json.constants.php
		echo $json_response_Panel;
}

/*************************** END *******************************/


?>






