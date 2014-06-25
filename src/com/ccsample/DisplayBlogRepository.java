package com.ccsample;

import atg.servlet.DynamoHttpServletRequest;
import atg.servlet.DynamoHttpServletResponse;
import atg.servlet.DynamoServlet;
import java.io.IOException;
import atg.repository.Repository;
import atg.repository.RepositoryItem;
import atg.repository.RepositoryView;
import atg.repository.rql.RqlStatement;
import javax.servlet.ServletException;

public class DisplayBlogRepository extends DynamoServlet {
	private Repository blogRepository;
	@Override
	public void service(DynamoHttpServletRequest request,
			DynamoHttpServletResponse response) throws ServletException, IOException {
		 try {
		 	RepositoryView view = getBlogRepository().getView("Blog");
		 	RqlStatement statement = RqlStatement.parseRqlStatement("ALL");
		 	RepositoryItem [] items =statement.executeQuery (view, null);
		 	if (items == null) {
		 		System.out.println(" Is null.");
		 	}
		 	else {
		 		request.setParameter("items", items);
		 	}
		 } catch (Exception e) {
		 	System.out.println(e);
		 }
		 
		 
		 try {
			 	RepositoryView view = getBlogRepository().getView("Post");
			 	RqlStatement statement = RqlStatement.parseRqlStatement("ALL");
			 	RepositoryItem [] items =statement.executeQuery (view, null);
			 	if (items == null) {
			 		System.out.println(" Is null.");
			 	}
			 	else {
			 		request.setParameter("element.Post_multi", items);
			 	}
			 } catch (Exception e) {
			 	System.out.println(e);
			 }
		 
		request.serviceLocalParameter("ousername", request, response);
	}
	public Repository getBlogRepository() {
		return blogRepository;
	}
	public void setBlogRepository(Repository blogRepository) {
		this.blogRepository = blogRepository;
	}
}
