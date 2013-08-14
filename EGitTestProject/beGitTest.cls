 
 /*------------------------------------------------------------------------
    File        : beGitTest
    Syntax      : 
    Author(s)   : mihai.neagoe
    Created     : Wed Aug 14 13:06:44 EEST 2013
    Notes       : 
  ----------------------------------------------------------------------*/
    
@program FILE(name="beGitTest.cls", module="AppServer").
@openapi.openedge.export FILE(type="REST", executionMode="singleton", useReturnValue="false", writeDataSetBeforeImage="false").
@progress.service.resource FILE(name="beGitTest", URI="/beGitTest", schemaName="dsbeGitTest", schemaFile="").

USING Progress.Lang.*.

ROUTINE-LEVEL ON ERROR UNDO, THROW.

CLASS beGitTest:

    /*------------------------------------------------------------------------------
            Purpose:                                                                      
            Notes:                                                                        
    ------------------------------------------------------------------------------*/
	
	   
    /* TODO: Change to use your schema */ 
	DEFINE TEMP-TABLE ebeGitTest FIELD beGitTestField AS INTEGER INDEX beGitTestIndex IS UNIQUE PRIMARY beGitTestField.
	DEFINE DATASET dsbeGitTest FOR ebeGitTest. 
	define variable abcd as char.
	
    /*------------------------------------------------------------------------------
            Purpose:  Get one or more records, based on a filter string                                                                     
            Notes:                                                                        
    ------------------------------------------------------------------------------*/
    @openapi.openedge.export(type="REST", useReturnValue="false", writeDataSetBeforeImage="false").
    @progress.service.resourceMapping(type="REST", operation="read", URI="?filter=~{filter~}", alias="", mediaType="application/json"). 
    METHOD PUBLIC VOID ReadbeGitTest(
    		INPUT filter AS CHARACTER, 
    		OUTPUT DATASET dsbeGitTest):
    	DEFINE VARIABLE pcWhere AS CHARACTER.
    	IF filter BEGINS "WHERE " THEN
            pcWhere = filter.
        ELSE IF filter NE "" THEN
            pcWhere = "WHERE " + filter.
    	      
	         
        /* TODO: Add code to get a set of records and return the
           resulting records to the client. */      
    END METHOD.
	  
    /*------------------------------------------------------------------------------
            Purpose: Create one or more new records                                                               
            Notes:                                                                        
    ------------------------------------------------------------------------------*/  
    @openapi.openedge.export(type="REST", useReturnValue="false", writeDataSetBeforeImage="false").
    @progress.service.resourceMapping(type="REST", operation="create", URI="", alias="", mediaType="application/json").
    METHOD PUBLIC VOID CreatebeGitTest(INPUT-OUTPUT DATASET dsbeGitTest):    		
	            
        /* TODO: Add code to create a record from data passed
           in from the client. */        
    END METHOD.    
	
    /*------------------------------------------------------------------------------
            Purpose:  Update one or more records                                                                  
            Notes:                                                                        
    ------------------------------------------------------------------------------*/
    @openapi.openedge.export(type="REST", useReturnValue="false", writeDataSetBeforeImage="false").
    @progress.service.resourceMapping(type="REST", operation="update", URI="", alias="", mediaType="application/json").
    METHOD PUBLIC VOID UpdatebeGitTest(INPUT-OUTPUT DATASET dsbeGitTest):    		
	          
        /* TODO: Add code to update a record from data passed
           in from the client. */          
    END METHOD.
	
    /*------------------------------------------------------------------------------
            Purpose:    Delete a record                                                               
            Notes:                                                                        
    ------------------------------------------------------------------------------*/
    @openapi.openedge.export(type="REST", useReturnValue="false", writeDataSetBeforeImage="false").
    @progress.service.resourceMapping(type="REST", operation="delete", URI="", alias="", mediaType="application/json").
    METHOD PUBLIC VOID DeletebeGitTest(INPUT-OUTPUT DATASET dsbeGitTest):     		       
	   
        /* TODO: Add code to delete a record passed in from the client. */   
    END METHOD.
	 
          
END CLASS.