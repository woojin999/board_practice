package com.myweb.www;


import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.myweb.www.domain.BoardVO;
import com.myweb.www.repository.BoardDAO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.myweb.www.config.RootConfig.class})
public class BoardReposTest {
	private static Logger log = LoggerFactory.getLogger(BoardReposTest.class);
	
	@Inject
	private BoardDAO bdao;
	
	@Test
	public void insertBoardTest() throws Exception {
		int isUp = bdao.insert(new BoardVO("Test","Tester", "TestDescription"));
	}
	@Test
	public void insertBoardDummyTest() throws Exception {
		int isUp = 1; 
		for (int i =6; i < 50; i++) {
		isUp *=	bdao.insert(new BoardVO("Test"+(i),"Tester"+(i), "TestDescription"+(i)));
			
		}
	}
}
