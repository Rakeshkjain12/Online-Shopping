<div class="container">

	<div class="row">

		<!-- would be display sidebar -->

		<div class="col-lg-3">
			<%@include file="./include/sidebar.jsp"%>

		</div>


		<div class="col-lg-9">

			<!-- Added Breadcrumb component -->
			<div class="row">



				<div class="col-lg-12">

					<c:if test="${userClickAllProducts==true}">

						<script>
							window.categoryId = '';
						</script>

						<ol class="breadcrumb">
							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">/All Products</li>
						</ol>
					</c:if>

					<c:if test="${userClickCategoryProducts==true}">

						<script>
							window.categoryId = '${category.id}';
						</script>

						<ol class="breadcrumb">
							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">/Category</li>
							<li class="active">/ ${category.name}</li>
						</ol>
					</c:if>
				</div>

			</div>

			<div class="row">
				<div class="col-xs-12">

					<table id="productListTable"
						class="table table-striped table-borderd">
						<thead>

							<tr>
                                <th>Product</th>
								<th>Name</th>
								<th>Brand</th>
								<th>Price</th>
								<th>Qty. Available</th>
								<th>Action</th>

							</tr>

						</thead>
						
						<tfoot>

							<tr>
                                 <th>Product</th>
								<th>Name</th>
								<th>Brand</th>
								<th>Price</th>
								<th>Qty. Available</th>
								<th>Action</th>

							</tr>

						</tfoot>

					</table>


				</div>

			</div>
		</div>


	</div>


</div>