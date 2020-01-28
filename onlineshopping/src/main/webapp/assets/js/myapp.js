$(function() {

	switch (menu) {
	case 'About Us':
		$('#about').addClass('active');
		break;

	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	case 'All Products':
		$('#listProducts').addClass('active');
		break;
	case 'Manage Products':
		$('#manageProducts').addClass('active');
		break;
	default:
		$('#home').addClass('active');
		$('#a_' + menu).addClass('active');
		break;
	}

	// code for jquery Datatablet
	// create a database

	/*
	 * var products=[
	 * 
	 * ['1','ABC'], ['2','DCD'], ['3','VFG'], ['4','WER'], ['5','ASD'],
	 * ['6','QWE'], ['7','FVB'], ['8','ZXC'], ['9','QWD'], ['10','VFB'],
	 * ['11','WEW'], ['12','QQQ']
	 * 
	 *  ];
	 */

	var $table = $('#productListTable');

	if ($table.length) {

		var jsonUrl = '';
		if (window.categoryId == '') {

			jsonUrl = window.contextRoot + '/json/data/all/products';
		} else {

			jsonUrl = window.contextRoot + '/json/data/category/'+ window.categoryId +'/products';

		}
		// console.log('Inside the table..');

		$table.DataTable({

			lengthMenu : [ [ 3, 5, 10, -1 ],
					[ '3 Records', '5 Records', '10 Records', 'All' ] ],
			pageLength : 5,

			ajax : {
				url : jsonUrl,
				dataSrc : ''  
			},

			columns : [

			
				{
					data : 'code',
						mRender:function(data,type,row){
							return '<img src="'+window.contextRoot+'/resources/images/'+data+'.jpg" class="dataTableImg"/>';
						}
				},
				
				{
				data : 'name'
			},

			{ 
				data : 'brand'
			},

			{
				data : 'unitPrice',
				mRender: function(data, type  ,row){
					return '&#8377; '+data;
				}
			},

			{
				   data : 'quantity',
					mRender: function(data,type,row){
						
						if(data<1){
							
							return '<span style="color:red">Out of stock</span>';
						}
						return data;
					}
			},
			
			{
				data : 'id',
				mRender:function(data,type,row){
					var str='';
					str+='<a href="'+window.contextRoot+'/show/'+data+'/product" class="btn btn-primary"><span class="glyphicon glyphicon-eye-open"></span></a>';
					if(userRole=='ADMIN')
					{
						 str+='<a href="'+window.contextRoot+'/manage/'+data+'/product" class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span></a>';
					}
					else{
							if(row.quantity<1)
		                      {					
						     	str+='<a href="javascript.void(0)" class="btn btn-success disabled"><span class="glyphicon glyphicon-shopping-cart"></span></a>';
		                      }
							else{
								
										str+='<a href="'+window.contextRoot+'/cart/add/'+data+'/product" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span></a>';
							}
					}
					return str;
				}
			},
			
			]

		});
	}

	//dismissing the alert after 5 seconds
	
	
	var $alert=$('.alert');
	
	if($alert.length){
		
		setTimeout(function(){
			$alert.fadeOut('slow');
		},5000)
	}
//-------------------------------Activate Toggle button with bootbox----------------------------
	
	/*$('.switch input[type="checkbox"]').on('change',function(){
		var checkbox=$(this);
		var checked=checkbox.prop('checked');
		var dMsg=(checked)?'You want to activate the Product?':'You want to deactivate the Product?';
		var value=checkbox.prop('value');
		
		bootbox.confirm({
			size:'medium',
			title:'Activation Or Deactivation Product',
			message: dMsg,
			callback:function(confirmed){
				if(confirmed){
					console.log(value);
					bootbox.alert({
						size:'medium',
						title:'information',
						message:'you are going to perform operation on product'+value
					});
				}else{
					checkbox.prop('checked', !checked);
				}
				
			}
			
			
		});
		
	});   */
	
	//to takle csrf token
	
	var token=$('meta[name="_csrf"]').attr('content');
	var header=$('meta[name="_csrf_header"]').attr('content');
	
	if(token.length>0 && header.length>0){
		//set the token header for the ajax request
		
		$(document).ajaxSend(function(e, xhr ,options){
			
			xhr.setRequestHeader(header,token);
			
		});
	}
	
	
	
	
	
	
	
	
	
	//-----------------------DataTable For Admin--------------
	var $adminProductsTable = $('#adminProductsTable');

	if ($adminProductsTable.length) {

		var jsonUrl = window.contextRoot+'/json/data/admin/all/products';

		$adminProductsTable.DataTable({

			lengthMenu : [ [ 10, 30, 50, -1 ],
					[ '10 Records', '30 Records', '50 Records', 'All' ] ],
			pageLength : 10,

			ajax : {
				url : jsonUrl,
				dataSrc : ''  
			},

			columns : [
				{
					data:'id'
				},

			
				{
					data : 'code',
						mRender:function(data,type,row){
							return '<img src="'+window.contextRoot+'/resources/images/'+data+'.jpg" class="adminDataTableImg"/>';
						}
				},
				
				{
				data : 'name'
			},

			{ 
				data : 'brand'
			},

			{
				   data : 'quantity',
					mRender: function(data,type,row){
						
						if(data<1){
							
							return '<span style="color:red">Out of stock</span>';
						}
						return data;
					}
			},
			
			{
				data : 'unitPrice',
				mRender: function(data, type  ,row){
					return '&#8377; '+data;
				}
			},
			
			{
				data : 'active',
				bSortable:false,
				mRender: function(data, type, row){
					var str='';
					str +='<label class="switch">';
					
					if(data){
	                    str +='<input type="checkbox" checked="checked" value="'+row.id+'" />';

					}else{
	                    str +='<input type="checkbox" value="'+row.id+'" />';

					}
                    str += '<div class="slider"></div></label>';
					
					return str; 
				}
				
			}, 
			{
				
				data:'id',
				bSortable:false,
				mRender: function(data, type, row){
					
					var str='';
					str+= '<a href="'+window.contextRoot+'/manage/'+data+'/product" class="btn btn-warning">';
                    str+='<span  class="glyphicon glyphicon-pencil"></span></a>';
                    
                    
                    return str;
				}
				
				
				
				
			}
			],
			
			   initComplete: function () {
		            var api = this.api();
		            api.$('.switch input[type="checkbox"]').on('change', function () {
		                var checkbox = $(this);
		                var checked = checkbox.prop('checked');
		                var dMsg = (checked) ? 'You want to activate the product?' :
		                    'You want to deactivate the product?';
		                var value = checkbox.prop('value');
		                bootbox.confirm({
		                    size: 'medium',
		                    title: 'Product Activation & Deactivation',
		                    message: dMsg,
		                    callback: function (confirmed) {
		                        if (confirmed) {
		                            console.log(value);	                            
		                            var activationUrl = window.contextRoot+'/manage/product/'+value+'/activation';	                            
		                            $.post(activationUrl, function(data) {
			                            bootbox.alert({
			                                size: 'medium',
			                                title: 'Information',
			                                message: data
			                            });	                            	
		                            });
		                            
		                        }
		                        else {
		                            checkbox.prop('checked', !checked);
		                        }
		                    }
		                });
		            });
		        }
			

		});
	}
	
	//--------------------------------------------------------
	
	//-------------------JQuery Validator for category-----------------------
	
	
	var $categoryForm = $('#categoryForm');
	if($categoryForm.length){
		
		$categoryForm.validate({
			
			rules : {
				
				name:{
					 required:true,
		             minlength:2
					
				     },
				description :{
					
					required :true
				}     
				
			},
			
			messages : {
				   
				  name:{
					  required:'Please add the category name',
					  minlength:'Category name should not be less than 2 characters'
					  
				  },
				  
				  description :{
					  required: 'Please add category description'
				  }
				
			},
			
			errorElement :'em',
			errorPlacement :function(error,element){
				error.addClass('help-block');
				error.insertAfter(element);
			}
			
		});
		
		
		
		
		
	}
	//-------------------------------------------------------------
	
/*	JQuery Validation for Login Page*/
	
	
	var $loginForm = $('#loginForm');
	if($loginForm.length){
		
		$loginForm.validate({
			
			rules : {
				
				username:{
					 required:true,
		             email:true
					
				     },
				password :{
					required :true
				}     
				
			},
			
			messages : {   
				username:{
					  required:'Please enter the username!',
					  email:'Please enter valid email address!'
					  
				  },
				  
				  password :{
					  required: 'Please Enter password'
				  }
				
			},
			
			errorElement :'em',
			errorPlacement :function(error,element){
				error.addClass('help-block');
				error.insertAfter(element);
			}
			
		});
		
		
		
		
		
	}
	
	
	
	//--------------------------------------------------------
});