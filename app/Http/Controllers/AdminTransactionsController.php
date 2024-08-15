<?php

namespace App\Http\Controllers;

use DB;
use Request;
use Session;
use CRUDBooster;
use App\Models\Point;
use App\Models\Saldo;
use App\Models\Transaction;

class AdminTransactionsController extends \crocodicstudio\crudbooster\controllers\CBController
{

	public function cbInit()
	{

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "updated_at,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = true;
			$this->button_export = true;
			$this->table = "transactions";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Nama User","name"=>"user_id","join"=>"users,username"];
			$this->col[] = ["label"=>"Nama BSU","name"=>"admin_id","join"=>"cms_users,name"];
			$this->col[] = ["label"=>"Jenis Sampah","name"=>"sampah_id","join"=>"sampah,name"];
			$this->col[] = ["label"=>"Total Berat","name"=>"total_weight"];
			$this->col[] = ["label"=>"Saldo Didapat","name"=>"total_income"];
			$this->col[] = ["label"=>"Poin Didapat","name"=>"point_received"];
			$this->col[] = ["label"=>"Bukti Foto","name"=>"photo_evidence","image"=>true];
			$this->col[] = ["label" => "Tanggal & Waktu", "name" => "created_at", "callback" => function($row) {
				return date('d/m/Y H:i:s', strtotime($row->created_at)); // Format alternatif
			}];
			$this->col[] = ["label"=>"Periode","name"=>"periode"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
		$this->form = [];
		$this->form[] = ['label' => 'Nama User', 'name' => 'user_id', 'type' => 'select2', 'validation' => 'required|min:1|max:255', 'width' => 'col-sm-10', 'datatable' => 'users,username', 'datatable_where' => 'cms_user_id = '.CRUDBooster::myId()];
		$this->form[] = ['label' => 'Nama BSU', 'name' => 'admin_id', 'type' => 'select2', 'validation' => 'required|integer|min:0', 'width' => 'col-sm-10', 'datatable' => 'cms_users,name', 'datatable_where' => 'id = '.CRUDBooster::myId()];
		$this->form[] = ['label' => 'Jenis Sampah', 'name' => 'sampah_id', 'type' => 'select2', 'validation' => 'required|min:1|max:255', 'width' => 'col-sm-10', 'datatable' => 'sampah,name', 'datatable_format' => 'name,\'. Harga per Kg =  \',price_per_kg'];
		$this->form[] = ['label' => 'Total Berat(kg)', 'name' => 'total_weight', 'type' => 'text', 'validation' => 'required|min:0|numeric', 'width' => 'col-sm-10'];
		$this->form[] = ['label' => 'Total Pendapatan', 'name' => 'total_income', 'type' => 'number', 'validation' => 'required|integer|min:0', 'width' => 'col-sm-10', 'readonly' => 'true'];
		$this->form[] = ['label' => 'Poin Didapat', 'name' => 'point_received', 'type' => 'number', 'validation' => 'required|integer|min:0', 'width' => 'col-sm-10', 'readonly' => 'true'];
		$this->form[] = ['label' => 'Bukti Foto', 'name' => 'photo_evidence', 'type' => 'upload', 'validation'=>'required|image|max:3000','width'=>'col-sm-10','help'=>'File types support : JPG, JPEG, PNG, GIF, BMP'];
		$this->form[] = ['label' => 'Periode', 'name' => 'periode', 'type' => 'text', 'validation' => 'required|min:1|max:255', 'width' => 'col-sm-10'];
		# END FORM DO NOT REMOVE THIS LINE

		# END FORM DO NOT REMOVE THIS LINE

		# OLD START FORM
		//$this->form = [];
		//$this->form[] = ['label'=>'Nama User','name'=>'user_id','type'=>'select2','validation'=>'required|min:1|max:255','width'=>'col-sm-10','datatable'=>'users,username'];
		//$this->form[] = ['label'=>'Nama Admin','name'=>'admin_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'cms_users,name'];
		//$this->form[] = ['label'=>'Jenis Sampah','name'=>'sampah_id','type'=>'select2','validation'=>'required|min:1|max:255','width'=>'col-sm-10','datatable'=>'sampah,name','datatable_format'=>'name,\'. Harga per Kg =  \',price_per_kg'];
		//$this->form[] = ['label'=>'Total Berat','name'=>'total_weight','type'=>'number','validation'=>'required|min:0','width'=>'col-sm-10'];
		//$this->form[] = ['label'=>'Total Pendapatan','name'=>'total_income','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-10','readonly'=>'true'];
		//$this->form[] = ['label'=>'Poin Didapat','name'=>'point_received','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-10','readonly'=>'true'];
		# OLD END FORM

		/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
		$this->sub_module = array();


		/* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
		$this->addaction = array();


		/* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */
		$this->button_selected = array();


		/* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
		$this->alert        = array();



		/* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
		$this->index_button = array();

		/* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
		$this->table_row_color = array();


		/*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
		$this->index_statistic = array();



		/*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |


	        */
			
			$this->script_js = "
				$(document).ready(function() {
					let income = $('input[name=\"total_income\"]');
					let pointReceived = $('input[name=\"point_received\"]');
					let totalWeight = $('input[name=\"total_weight\"]');

					totalWeight.on('change', function() {
						// Get Sampah Price and convert to string
						var sampah = $('.select2-selection__rendered').eq(2).text();
						var match = sampah.match(/\\d+$/);
						var price = match ? parseInt(match[0]) : null;

						// fill total income and total point received automatically
						var weight = this.value;
						income.val(price * weight);
						pointReceived.val(Math.round(weight * 100));
					});
				});
				";

			/*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
		$this->pre_index_html = null;



		/*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
		$this->post_index_html = null;



		/*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
		$this->load_js = array();



		/*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
		$this->style_css = NULL;



		/*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
			$this->load_css[] =  asset('we-cycle-app/bootstrap/css/admin.css');
	}


	/*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
		
	
	public function actionButtonSelected($id_selected, $button_name)
	{
	}


	/*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
		public function hook_query_index(&$query)
		{
			$currentUserId = CRUDBooster::myId(); 
			if ($currentUserId == 1) {

			}else {
				$query->where('cms_user_id', $currentUserId);
			}

			

		}
		// public function hook_query_index(&$query)
		// {
		// 	$currentUserId = CRUDBooster::myId(); 

		// 	// Filter berdasarkan bulan dan tahun saat ini
		// 	$currentMonth = date('m');
		// 	$currentYear = date('Y');
			
		// 	// Cek apakah user adalah admin
		// 	if ($currentUserId == 1) {
		// 		// Ganti 'transactions' dengan nama tabel yang sesuai jika diperlukan
		// 		$query->whereMonth('transactions.created_at', $currentMonth)
		// 			->whereYear('transactions.created_at', $currentYear);
		// 	} else {
		// 		// Ganti 'transactions' dengan nama tabel yang sesuai jika diperlukan
		// 		$query->where('cms_user_id', $currentUserId)
		// 			->whereMonth('transactions.created_at', $currentMonth)
		// 			->whereYear('transactions.created_at', $currentYear);
		// 	}
		// }


	/*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */
	public function hook_row_index($column_index, &$column_value)
	{
		//Your code here
	}

	/*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	public function hook_before_add(&$postdata)
	{
		//Your code here

	}

	/* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
		public function hook_after_add($id)
		{
			// Mengupdate atau menambahkan total points
			$user_point = Point::where('user_id', $_REQUEST['user_id'])->first();
			$point_received = $_REQUEST['point_received'];

			if ($user_point) {
				$user_point->update([
					'total_points' => $user_point['total_points'] + $point_received
				]);
			} else {
				Point::create([
					'user_id' => $_REQUEST['user_id'],
					'total_points' => $point_received
				]);
			}

			// Mengupdate atau menambahkan total saldo
			$user_saldo = Saldo::where('user_id', $_REQUEST['user_id'])->first();
			$total_income = $_REQUEST['total_income'];

			if ($user_saldo) {
				$user_saldo->update([
					'total_saldo' => $user_saldo['total_saldo'] + $total_income
				]);
			} else {
				Saldo::create([
					'user_id' => $_REQUEST['user_id'],
					'total_saldo' => $total_income
				]);
			}

		}



		

	/* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	public function hook_before_edit(&$postdata, $id)
	{
		//Your code here

	}

	/* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	public function hook_after_edit($id)
	{
		//Your code here 

	}

	/* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	public function hook_before_delete($id)
	{
		//Your code here

	}

	/* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	public function hook_after_delete($id)
	{
		//Your code here

	}



	//By the way, you can still create your own method in here... :) 


}