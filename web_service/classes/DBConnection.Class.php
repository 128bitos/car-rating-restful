<?php
/******************************************************************
* Author: Khalid Mahmood
* Assignment: WE4.0 Server-side	Web	Development, 
* Date : 2016/07/31
* Ref: none
******************************************************************/



/******************************************************
Database Connection Class 
=========================
Use to establish connection with "Localhost" Server and "web_service_db" Database

This Class is parent class of "DBQuery Class".

******************************************************/

class DBConnection {

	// Public Variables
	public $myConnection;
	public $SelectQuery;
	public $result;
	public $SidePanel_Query;
	public $Panel_Info;
	
	// Private Variables
	private $host = 'localhost';
	private $username = 'root';
	private $password = ''; // no password is defined in database
	private $dbname = 'web_service_db';

	
	//constructor
	public function __construct() {
				
				//establish the Database Connection
				$this->myConnection = mysqli_connect($this->host, $this->username, $this->password, $this->dbname);
						

				//Database Connection Error Handler
				if($this->myConnection === false) {
    			echo "<h3>Database Connection is failed</h3>";
													}

								}

					}
?>