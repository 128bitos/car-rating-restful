<?php
/******************************************************************
* Author: Khalid Mahmood
* Assignment: WE4.0 Server-side	Web	Development, 
* Date : 2016/07/31
* Ref: none
******************************************************************/




/******************************************************
This is a Child Class of DBConnection class.
DBQuery Class,  Use to retrieve records from "cars" table AND side panel text record from "side_panel" table of "webservice_db" Database.

Contain following class property from parent Class:
														public $myConnection;
														public $SelectQuery;
														public $SidePanel_Query;
														public $Panel_Info;

******************************************************/


	class DBQuery extends DBConnection {


	/*********************************************************************
	** Car_Detail_Query() Method retrieve all records from "cars" table **
	**********************************************************************
	** get_Select_Query() Method pass query results "$result" **
	*********************************************************************/

	//Method retrieve all records from "cars" table
	public function Car_Detail_Query()
			{

				// (select)Query retrieve all records form "cars" table
				$this->SelectQuery = "SELECT * FROM `cars`" 
									or die("error..." . mysqli_error($this->myConnection)); // Query Error Handler


				//execute the query
				$this->result = $this->myConnection->query($this->SelectQuery);


				mysqli_close($this->myConnection);
			}

	

	// Getter Method pass query results
	public function get_Select_Query() 
			{
				return $this->result;

			} 

	/*******************************************************************
	*******************************************************************/





	/*************************************************************************************
	** info_Query() Method retrieve side panel text last record from "side_panel" table **
	**************************************************************************************
	**            get_Info_Query() Method pass query results "$Panel_Info"              **
	*************************************************************************************/


	// Select Query Method to retrieve last record from "side_panel" table
	public function info_Query()
			{
				
				// Query to retrieve side panel text last record from "side_panel" table
				$this->SidePanel_Query = "SELECT info_text FROM `side_panel` order by info_id desc limit 1" 
									or die("error..." . mysqli_error($this->myConnection)); // Query Error Handler


				//execute the query
				$this->Panel_Info = $this->myConnection->query($this->SidePanel_Query);


				mysqli_close($this->myConnection);
			}

	

	// Getter Method pass query results
	public function get_Info_Query() 
			{
				return $this->Panel_Info;

			} 

									}


    /*******************************************************************
	*******************************************************************/

?>