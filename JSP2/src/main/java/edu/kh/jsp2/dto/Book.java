package edu.kh.jsp2.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//@Getter
//@Setter
//@ToString
@Data // @Getter + @Setter + @ToString
@NoArgsConstructor
@AllArgsConstructor
public class Book {
	// field
	private String title;
	private String writer;
	private int price;
	
}
