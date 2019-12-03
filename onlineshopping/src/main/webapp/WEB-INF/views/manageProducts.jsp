<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>


<div class="container">
	<div class="row">

		<c:if test="${not empty message}">

			<div class="col-xs-12">
				<div class="alert alert-success alert-dismissible">

					<button type="button" class="close" data-dismiss="alert">&times;</button>
					${message}
				</div>
			</div>

		</c:if>





		<div class="col-md-offset-2 col-md-8">

			<div class="panel panel-primary">

				<div class="panel-heading">
					<h4>Product Management</h4>
				</div>

				<div class="panel-body">
					<!--===================================== FORM ELEMENTS====================================== -->

					<sf:form class="form-horizontal" modelAttribute="product"
						action="${contextRoot}/manage/products" method="POST"
						enctype="multipart/form-data">

						<div class="form-group">

							<label class="control-label col-md-4" for="name">Name:</label>

							<div class="col-md-8">

								<sf:input type="text" path="name" id="name"
									placeholder="Product name" class="form-control" />
								<sf:errors path="name" cssClass="help-block" element="em"
									cssStyle="color:red" />

							</div>

						</div>


						<div class="form-group">

							<label class="control-label col-md-4" for="brand">Brand:</label>

							<div class="col-md-8">

								<sf:input type="text" path="brand" id="brand"
									placeholder="Brand name" class="form-control" />
								<sf:errors path="brand" cssClass="help-block" element="em"
									cssStyle="color:red" />


							</div>

						</div>


						<div class="form-group">

							<label class="control-label col-md-4" for="description">Description:</label>

							<div class="col-md-8">

								<sf:textarea rows="4" path="description" id="description"
									placeholder="Enter Description" class="form-control" />
								<sf:errors path="description" cssClass="help-block" element="em"
									cssStyle="color:red" />

							</div>

						</div>


						<div class="form-group">

							<label class="control-label col-md-4" for="unitPrice">Unit
								Price:</label>

							<div class="col-md-8">

								<sf:input type="text" path="unitPrice" id="unitPrice"
									placeholder="Enter Unit Price " class="form-control" />
								<sf:errors path="unitPrice" cssClass="help-block" element="em"
									cssStyle="color:red" />

							</div>

						</div>

						<div class="form-group">

							<label class="control-label col-md-4" for="quantity">Quantity:</label>

							<div class="col-md-8">

								<sf:input type="text" path="quantity" id="quantity"
									placeholder="Enter Quantity" class="form-control" />


							</div>

						</div>

						<!-- THis is file element for image upload -->
						<div class="form-group">

							<label class="control-label col-md-4" for="file">Upload a
								file:</label>

							<div class="col-md-8">

								<sf:input type="file" path="file" id="file" class="form-control" />
								<sf:errors path="file" cssClass="help-block" element="em"
									cssStyle="color:red" />


							</div>

						</div>



						<div class="form-group">

							<label class="control-label col-md-4" for="category">Category:</label>

							<div class="col-md-8">
								<sf:select path="categoryId" id="categoryId"
									class="form-control" items="${categories}" itemLabel="name"
									itemValue="id" />
								<!-- Add Category code -->

								<c:if test="${product.id == 0}">
									<div class="text-right">
										<br />
										<button type="button" data-toggle="modal"
											data-target="#myCategoryModal" class="btn btn-warning btn-xs">Add
											Category</button>
									</div>
								</c:if>


							</div>

						</div>



						<div class="form-group">


							<div class="col-md-offset-4 col-md-8">

								<input type="submit" name="submit" id="submit" value="Submit "
									class="btn btn-primary" />


							</div>

						</div>

						<sf:hidden path="id" />
						<sf:hidden path="code" />
						<sf:hidden path="supplierId" />
						<sf:hidden path="active" />
						<sf:hidden path="purchases" />
						<sf:hidden path="views" />



					</sf:form>


					<!--=============================================================================================  -->
				</div>
			</div>

		</div>

	</div>



	<div class="row">

		<div class="col-xs-12">
			<h3>Available Products</h3>
			<hr />
		</div>

		<div class="col-xs-12">
			<!--Product Table For Admin  -->
			<div style="overflow: auto;">
				<table id="adminProductsTable"
					class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>Id</th>
							<th>&#160;</th>
							<th>Brand</th>
							<th>Name</th>
							<th>Quantity</th>
							<th>Unit Price</th>
							<th>Active</th>
							<th>Edit</th>
						</tr>
					</thead>
					<%--  <tbody>
                <tr>
                   <td>4</td>
                   <td>
                     <img alt=" Macbook Pro" src="${contextRoot}/resources/images/PRDMNO123PQRX.jpg" class="adminDataTableImg"/>
                   </td>
                   <td>apple</td>
                   <td> Macbook Pro</td>
                   <td>3</td>
                   <td>&#8377; 54000.00/-</td>
                   <td>
                       <!--toggle switch  -->
                       <label class="switch">
                          <input type="checkbox" checked="checked" value="4" />
                          <div class="slider"></div>
                       </label>
                   
                   </td>
                   <td>
                       <a href="${contextRoot}/manage/4/product" class="btn btn-warning">
                         <span  class="glyphicon glyphicon-pencil"></span>
                       </a>
                   
                   </td>
                </tr>
                <tr>
                   <td>4</td>
                   <td>
                     <img alt=" Macbook Pro" src="${contextRoot}/resources/images/PRDMNO123PQRX.jpg" class="adminDataTableImg"/>
                   </td>
                   <td>apple</td>
                   <td> Macbook Pro</td>
                   <td>3</td>
                   <td>&#8377; 54000.00/-</td>
                   <td>
                       <!--toggle switch  -->
                       <label class="switch">
                          <input type="checkbox"  value="4" />
                          <div class="slider"></div>
                       </label>
                   
                   </td>
                   <td>
                       <a href="${contextRoot}/manage/4/product" class="btn btn-warning">
                         <span  class="glyphicon glyphicon-pencil"></span>
                       </a>
                   
                   </td>
                </tr>
                
                </tbody> 
                                --%>

					<tfoot>
						<tr>
							<th>Id</th>
							<th>&#160;</th>
							<th>Brand</th>
							<th>Name</th>
							<th>Quantity</th>
							<th>Unit Price</th>
							<th>Active</th>
							<th>Edit</th>
						</tr>
					</tfoot>

				</table>
			</div>
		</div>
	</div>



	<!-- Modal Box for Add Category -->

	<div class="modal " id="myCategoryModal" role="dialog"
		tabindex="-1">
		 <div class="vertical-alignment-helper">
		<div class="modal-dialog vertical-align-center" role="document">
			<div class="modal-content">
				
				<div class="modal-header" >
				<h4 class="modal-title">Add New Category</h4>
					<button type="button" class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
					
				</div>
				<div class="modal-body">
					


					<sf:form modelAttribute="category" id="categoryForm"
						action="${contextRoot}/manage/category" class="form-horizontal"
						method="post">

						<div class=form-group>
							<label for="category_name" class="control-label col-md-4">Category
								Name</label>
							<div class="col-md-8">
								<sf:input path="name" type="text" id="category_name"
									class="form-control" />
							</div>
						</div>

						<div class=form-group>
							<label for="category_description" class="control-label col-md-4">Category
								Description</label>
							<div class="col-md-8">
								<sf:textarea path="description" cols="" rows="5"
									id="category_description" class="form-control" />
							</div>
						</div>

						<div class=form-group>

							<div class="col-mad-offset-4 col-md-8">
								<input type="submit" value="Add Category"
									class="btn btn-primary">
							</div>
						</div>

					</sf:form>

</div>
				</div>
			</div>
		</div>
	</div>



	<!--=============================================================  -->

	<!--====================================================================  -->
</div>




