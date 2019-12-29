      <%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
   
    <%@include file="../include/flows-header.jsp" %>
	
	     <div class="container">
	         
	        
	         
	         <div class="row">
	            
	            <div class="col-md-6 col-md-offset-3">
	               
	               <div class="panel panel-primary">
	                  
	                  <div class="panel-heading">
	                     <h4>Sign Up - Address</h4>
	                  </div>
	                  
	                  <div class="panel-body">
	                     <sf:form method="post" class="form-horizontal" id="registerForm" modelAttribute="billing">
	                        
	                        <div class="form-group">
	                           <label class="control-label col-md-4">Address Line One</label>
	                           <div class="col-md-8">
	                             <sf:input path="addressLineOne" type="text" class="form-control" placeholder="Address Line One"/>
	                             <sf:errors path="addressLineOne" cssClass="help-block" element="em"/>
	                           </div>
	                        </div>
	                        
	                        <div class="form-group">
	                           <label class="control-label col-md-4">Address Line Two</label>
	                           <div class="col-md-8">
	                             <sf:input path="addressLineTwo" type="text" class="form-control" placeholder="Address Line Two"/>
	                             <sf:errors path="addressLineTwo" cssClass="help-block" element="em"/>
	                           </div>
	                        </div>
	                     
	                        <div class="form-group">
	                           <label class="control-label col-md-4">City</label>
	                           <div class="col-md-8">
	                             <sf:input path="city" type="text" class="form-control" placeholder="city"/>
	                             <sf:errors path="city" cssClass="help-block" element="em"/>
	                           </div>
	                        </div>
	                        
	                        <div class="form-group">
	                           <label class="control-label col-md-4">State</label>
	                           <div class="col-md-8">
	                             <sf:input path="state" type="text" class="form-control" placeholder="State"/>
	                             <sf:errors path="state" cssClass="help-block" element="em"/>
	                           </div>
	                        </div>
	                        
	                        
	                         <div class="form-group">
	                           <label class="control-label col-md-4">Country</label>
	                           <div class="col-md-8">
	                             <sf:input path="country" type="text" class="form-control" placeholder="Country"/>
	                             <sf:errors path="country" cssClass="help-block" element="em"/>
	                           </div>
	                        </div>
	                        
	                         <div class="form-group">
	                           <label class="control-label col-md-4">Postal Code</label>
	                           <div class="col-md-8">
	                             <sf:input path="postalCode" type="text" class="form-control" placeholder="Postal Code"/>
	                             <sf:errors path="postalCode" cssClass="help-block" element="em"/>
	                           </div>
	                        </div>
	                        
	                    
	                     
                            <div class="form-group">
                              <div class="col-md-offset-4 col-md-8">
                                 <button type="submit" class="btn btn-primary" name="_eventId_personal">
                                  
                                   <span class="glyphicon glyphicon-chevron-left"></span>Previous - Personal
                                   
                                 </button>
                                
                                 <button type="submit" class="btn btn-primary" name="_eventId_confirm"> 
                                   Next-Confirm<span class="glyphicon glyphicon-chevron-right"></span>
                                   
                                 </button>
                              </div>
                            
                            
                            </div>	                     
	                     
	                     
	                                       
	                     </sf:form>
	                     
	                  </div>
	               </div>
	            
	            </div>
	      
	         </div> 
	      
	     </div>
	
	<%@include file="../include/flows-footer.jsp" %>