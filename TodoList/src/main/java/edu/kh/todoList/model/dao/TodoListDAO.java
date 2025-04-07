package edu.kh.todoList.model.dao;

public interface TodoListDAO {
	public List<Todo> todoListFullVIew(Connection conn);
	public int getCompleteCount(Connection conn)
}
