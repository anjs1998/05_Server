package edu.kh.todoList.model.dao;

import java.sql.Connection;
import java.util.List;

import edu.kh.todoList.model.dto.Todo;

public interface TodoListDAO {
	
	public int getCompleteCount(Connection conn) throws Exception; //inpl에서 Exception을 throw하려면 interface측에서도 똑같이 작성해줘야 한다.
	List<Todo> todoListFullView(Connection conn) throws Exception;
	public int todoAdd(Connection conn, String title, String detail) throws Exception;
	
	public Todo todoDetail(Connection conn, int todoNo) throws Exception;
	public int todoComplete(Connection conn, int todoNo) throws Exception;
}
