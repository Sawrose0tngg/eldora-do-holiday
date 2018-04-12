package org.eldoradoholidays.test;

import static org.junit.Assert.assertEquals;
import org.eldoradoholidays.dao.UserDAO;
import org.eldoradoholidays.dto.User;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class UserTest {

	private static AnnotationConfigApplicationContext context;

	private static UserDAO userDao;
	private User user;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("org.eldoradoholidays");
		context.refresh();

		userDao = (UserDAO) context.getBean("userDao");
	}

	@Test
	public void addUser() {
		user = new User();
		user.setName("rose");
		user.setEmail("rose@gmail.com");
		user.setAddress("Kathmandu Napal");
		user.setPassword("rose");
		user.setContact_Number("98123456780");

		assertEquals("Failed to add user!", true, userDao.addUser(user));

	}
}
