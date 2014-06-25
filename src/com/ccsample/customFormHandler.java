package com.ccsample;

import java.io.IOException;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;




import javax.servlet.ServletException;

import atg.droplet.GenericFormHandler;
import atg.servlet.DynamoHttpServletRequest;
import atg.servlet.DynamoHttpServletResponse;
import atg.servlet.DynamoServlet;
import atg.repository.MutableRepository;
import atg.repository.MutableRepositoryItem;
import atg.repository.Repository;
import atg.repository.RepositoryException;
import atg.repository.RepositoryItem;
import atg.repository.RepositoryView;
import atg.repository.rql.RqlStatement;
import atg.servlet.ServletUtil;


public class customFormHandler extends GenericFormHandler
{
	MutableRepository BlogRepository;      //This name should match with name present in property file
	private String blog_id = null;
	private String name=null;
	private String url=null;
	private String category=null;
	
	private String Post_multi=null;
	
	private String post_id = null;
	private String[] postName=null;
	private String[] text=null;
	
	private String Comment_multi=null;
	
	private String  comment_id = null;
	private String[] comment_email=null;
	private String[] comment_text=null;
	
	
	
	String successUrl=null;
	String failureUrl=null;               //For navigation purpose

	public MutableRepository getBlogRepository() {          //For accessing repository
		return BlogRepository;
	}
	public void setBlogRepository(MutableRepository BlogRepository) {
		this.BlogRepository = BlogRepository;
	}

	public String getBlogId() {
		return blog_id;    //Likewise generate getter setter for all the properties
	}
	public void setBlogId(String id) {
		this.blog_id = id;
	}
	
	public String getName() {
		return name;    //Likewise generate getter setter for all the properties
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return url;    //Likewise generate getter setter for all the properties
	}
	public void setUrl(String url) {
		this.url = url;
	} 
	
	public String getCategory() {
		return category;    //Likewise generate getter setter for all the properties
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getPosts() {
		return Post_multi;    //Likewise generate getter setter for all the properties
	}
	public void setPosts(String posts) {
		this.Post_multi = posts;
	}
	
	public String getPostId() {
		return post_id;    //Likewise generate getter setter for all the properties
	}
	public void setPostId(String id) {
		this.post_id = id;
	}
	
/*	public String [] getPostName() {
		return postName;    //Likewise generate getter setter for all the properties
	}
	public void setPostName(String name) {
		this.postName = name;
	}*/
	
	/*public String getText() {
		return text;    //Likewise generate getter setter for all the properties
	}
	public void setText(String text) {
		this.text = text;
	}*/
	
	public String[] getPostName() {
		return postName;
	}
	
	public void setPostName(String[] postName) {
		this.postName = postName;
	}
	
	public String[] getText() {
		return text;
	}
	public void setText(String[] text) {
		this.text = text;
	}
	
	
	
	public String getComments() {
		return Post_multi;    //Likewise generate getter setter for all the properties
	}
	public void setComments(String comments) {
		this.Comment_multi = comments;
	}
	
	public String getComment_id() {
		return comment_id;
	}
	public void setComment_id(String comment_id) {
		this.comment_id = comment_id;
	}
	public String[] getComment_email() {
		return comment_email;
	}
	public void setComment_email(String[] comment_email) {
		this.comment_email = comment_email;
	}
	public String[] getComment_text() {
		return comment_text;
	}
	public void setComment_text(String[] comment_text) {
		this.comment_text = comment_text;
	}

	
	
	public String getSuccessUrl() {
		return successUrl;
	}
	public void setSuccessUrl(String successUrl) {
		this.successUrl = successUrl;
	}
	
	public String getFailureUrl() {
		return failureUrl;
	}
	public void setFailureUrl(String failureUrl) {
		this.failureUrl = failureUrl;
	}

 
	
	
	public boolean handleCreate(DynamoHttpServletRequest req,
			DynamoHttpServletResponse res) throws ServletException,
			IOException, RepositoryException {
		  /*logDebug("The name is"+getName());
		  logDebug("The url is"+getUrl());
		  logDebug("The catagory is"+getCategory());*/

		 
		 	
		 	
//		  MutableRepositoryItem item=getBlogRepository().createItem("Blog");
//		  item.setPropertyValue("name", getName());
//		  item.setPropertyValue("url", getUrl());
//		  item.setPropertyValue("category", getCategory());
//		  
//		  item.setPropertyValue("Post_multi", getPosts());
//          
//		   getBlogRepository().addItem(item);
		
		
		
///////////////////multi-relation/////////////////////
		Set<RepositoryItem> blogs = new HashSet<RepositoryItem>();   //For storing property of type multi
		Set<RepositoryItem> posts = new HashSet<RepositoryItem>();  
		MutableRepositoryItem item=getBlogRepository().createItem("Blog");
		  item.setPropertyValue("name", getName());
		  item.setPropertyValue("url", getUrl());
		  item.setPropertyValue("category", getCategory());
		
		  

			//For setting answers property of question item
		  
			for (int i = 0; i <getPostName().length; i++)
			{
		 	 MutableRepositoryItem postitem = getBlogRepository().createItem("Post");
		 	 postitem.setPropertyValue("name", getPostName()[i]);
		 	 postitem.setPropertyValue("text", getText()[i]);
		 	 
		 	    for (int j = 0; j <getComment_text().length; j++){
		 		     MutableRepositoryItem commentitem = getBlogRepository().createItem("Comment");
		 		     commentitem.setPropertyValue("email", getComment_email()[j]);
		 		     commentitem.setPropertyValue("text", getComment_text()[j]);
		 		     getBlogRepository().addItem(commentitem);
		 		     posts.add(commentitem);
		 	    }
		 	 postitem.setPropertyValue("Comment_multi", posts);
			 getBlogRepository().addItem(postitem);
			 blogs.add(postitem);               //;add each answer item into set
			}
			item.setPropertyValue("Post_multi", blogs);

		    getBlogRepository().addItem(item);
//////////////////////////////////////////////////////
		    
             return checkFormRedirect(getSuccessUrl(), getFailureUrl(), req, res);//??????
           }
       
	


	
	
	public boolean handleUpdate(DynamoHttpServletRequest req,
			DynamoHttpServletResponse res) throws ServletException,
			IOException, RepositoryException{
//		RepositoryItem blog = getBlogRepository().getItem("Blog");
		MutableRepositoryItem item=getBlogRepository().getItemForUpdate(getBlogId(), "Blog");
//		MutableRepositoryItem item=getBlogRepository().getItemForUpdate(blog.getRepositoryId(), "Blog");
		item.setPropertyValue("name", getName()); 
		item.setPropertyValue("url", getUrl());
		item.setPropertyValue("category", getCategory());
		
		
		
		getBlogRepository().updateItem(item);
		
       //add code for updating repository item	
               return checkFormRedirect(getSuccessUrl(), getFailureUrl(), req, res);
         }

	
	
    public boolean handleDelete(DynamoHttpServletRequest req,
			DynamoHttpServletResponse res) throws ServletException,
			IOException ,RepositoryException{
//    	Set<RepositoryItem> blogs = new HashSet<RepositoryItem>();
//    	for (int i = 0; i <getPostName().length; i++){
//    	RepositoryItem [] items = getBlogRepository().getItems(arg0);
//    	getBlogRepository().removeItem((getPostName()[i].getRepositoryId(),"Blog"); //add code for delete a repository item	
//    	RepositoryItem blog = getBlogRepository().getItem("Blog");
//    	getBlogRepository().removeItem(blog.getRepositoryId(),"Blog");
    	getBlogRepository().removeItem(getBlogId(),"Blog");   
    	return checkFormRedirect(getSuccessUrl(), getFailureUrl(), req, res);
        }


}
