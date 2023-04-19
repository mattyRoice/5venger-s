package org.hub.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FilterVO {
	
	private Integer mno;
	private String firstName;
	private String lastName;
}
