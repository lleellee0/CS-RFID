package com.kgucs.dao.book;

import java.util.ArrayList;
import java.util.List;

import com.kgucs.dao.AbstractDao;
import com.kgucs.setting.SingletonSetting;

public class BookDao {
	StringBuffer sql = null;
	final BookVo mv = new BookVo();
	final List<BookVo> list = new ArrayList<BookVo>();
	int count = 0;
	
	public void insert(final BookVo vo) {
		sql = new StringBuffer();
		sql.append("INSERT INTO book ");
		sql.append("(rfid, title, writer, publisher, content, img, borrowed_member_index) ");
		sql.append("VALUES (?, ?, ?, ?, ?, ?, ?)");
		
		new AbstractDao() {
			@Override
			public void query() throws Exception {
				pstmt = con.prepareStatement(sql.toString());
				pstmt.setInt(1, vo.getRfid());
				pstmt.setString(2, vo.getTitle());
				pstmt.setString(3, vo.getWriter());
				pstmt.setString(4, vo.getPublisher());
				pstmt.setString(5, vo.getContent());
				pstmt.setString(6, vo.getImg());
				pstmt.setInt(7, vo.getBorrowed_member_index());
				
				pstmt.executeUpdate();
			}
		}.execute();
	}
	
	public void update(final BookVo vo) {
		sql = new StringBuffer();
		sql.append("UPDATE book ");
		sql.append("SET rfid=?, title=?, writer=?, publisher=?, content=?, img=?, borrowed_member_index=? ");
		sql.append("WHERE `index`=?");
		
		System.out.println(sql);
		
		new AbstractDao() {
			@Override
			public void query() throws Exception {
				pstmt = con.prepareStatement(sql.toString());
				pstmt.setInt(1, vo.getRfid());
				pstmt.setString(2, vo.getTitle());
				pstmt.setString(3, vo.getWriter());
				pstmt.setString(4, vo.getPublisher());
				pstmt.setString(5, vo.getContent());
				pstmt.setString(6, vo.getImg());
				pstmt.setInt(7, vo.getBorrowed_member_index());
				pstmt.setInt(8, vo.getIndex());
				
				pstmt.executeUpdate();
			}
		}.execute();
	}
	
	public List<BookVo> selectAll() {
		sql = new StringBuffer();
		sql.append("SELECT * FROM ");
		sql.append("book");
		
		new AbstractDao() {
			@Override
			public void query() throws Exception {
				pstmt = con.prepareStatement(sql.toString());
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					BookVo vo = new BookVo(); 
					vo.setIndex(rs.getInt(1));
					vo.setRfid(rs.getInt(2));
					vo.setTitle(rs.getString(3));
					vo.setWriter(rs.getString(4));
					vo.setPublisher(rs.getString(5));
					vo.setContent(rs.getString(6));
					vo.setImg(rs.getString(7));
					vo.setBorrowed_member_index(rs.getInt(8));
					vo.setDue_date(rs.getString(9));
					list.add(vo);
				}
			}
		}.execute();
		return list;
	}
	
	public BookVo selectByIndex(final int index) {
		/*
		 * 파라미터에 final이 붙는 이유 http://devbible.tistory.com/30
		 */
		sql = new StringBuffer();
		sql.append("SELECT * FROM ");
		sql.append("book WHERE ");
		sql.append("`index`=?");
		
		new AbstractDao() {
			@Override
			public void query() throws Exception {
				pstmt = con.prepareStatement(sql.toString());
				pstmt.setInt(1, index);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					mv.setIndex(rs.getInt(1));
					mv.setRfid(rs.getInt(2));
					mv.setTitle(rs.getString(3));
					mv.setWriter(rs.getString(4));
					mv.setPublisher(rs.getString(5));
					mv.setContent(rs.getString(6));
					mv.setImg(rs.getString(7));
					mv.setBorrowed_member_index(rs.getInt(8));
					mv.setDue_date(rs.getString(9));
				}
			}
		}.execute();
		return mv;
	}
	
	public BookVo selectByRfid(final int rfid) {
		/*
		 * 파라미터에 final이 붙는 이유 http://devbible.tistory.com/30
		 */
		sql = new StringBuffer();
		sql.append("SELECT * FROM ");
		sql.append("book WHERE ");
		sql.append("rfid=?");
		
		new AbstractDao() {
			@Override
			public void query() throws Exception {
				pstmt = con.prepareStatement(sql.toString());
				pstmt.setInt(1, rfid);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					mv.setIndex(rs.getInt(1));
					mv.setRfid(rs.getInt(2));
					mv.setTitle(rs.getString(3));
					mv.setWriter(rs.getString(4));
					mv.setPublisher(rs.getString(5));
					mv.setContent(rs.getString(6));
					mv.setImg(rs.getString(7));
					mv.setBorrowed_member_index(rs.getInt(8));
					mv.setDue_date(rs.getString(9));
				}
			}
		}.execute();
		return mv;
	}
	
	public List<BookVo> selectByPage(final int page) {
		sql = new StringBuffer();
		sql.append("SELECT * FROM ");
		sql.append("book LIMIT ");
		sql.append("?, ?");
		
		new AbstractDao() {
			@Override
			public void query() throws Exception {
				pstmt = con.prepareStatement(sql.toString());
				
				SingletonSetting ssi = SingletonSetting.getInstance();
				int pageSize = ssi.getPageSize();
				
				
				pstmt.setInt(1, (page-1) * pageSize);
				pstmt.setInt(2, pageSize);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					BookVo vo = new BookVo(); 
					vo.setIndex(rs.getInt(1));
					vo.setRfid(rs.getInt(2));
					vo.setTitle(rs.getString(3));
					vo.setWriter(rs.getString(4));
					vo.setPublisher(rs.getString(5));
					vo.setContent(rs.getString(6));
					vo.setImg(rs.getString(7));
					vo.setBorrowed_member_index(rs.getInt(8));
					vo.setDue_date(rs.getString(9));
					list.add(vo);
				}
			}
		}.execute();
		return list;
	}
	
	public List<BookVo> selectByBorrowedMemberIndex(final int memberIndex) {
		sql = new StringBuffer();
		sql.append("SELECT * FROM ");
		sql.append("book WHERE borrowed_member_index=?");
		
		new AbstractDao() {
			@Override
			public void query() throws Exception {
				pstmt = con.prepareStatement(sql.toString());
				
				pstmt.setInt(1, memberIndex);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					BookVo vo = new BookVo(); 
					vo.setIndex(rs.getInt(1));
					vo.setRfid(rs.getInt(2));
					vo.setTitle(rs.getString(3));
					vo.setWriter(rs.getString(4));
					vo.setPublisher(rs.getString(5));
					vo.setContent(rs.getString(6));
					vo.setImg(rs.getString(7));
					vo.setBorrowed_member_index(rs.getInt(8));
					vo.setDue_date(rs.getString(9));
					list.add(vo);
				}
			}
		}.execute();
		return list;
	}
	
	public List<BookVo> selectByTitle(final String title) {
		sql = new StringBuffer();
		sql.append("SELECT * FROM ");
		sql.append("book WHERE ");
		sql.append("title=?");
		
		new AbstractDao() {
			@Override
			public void query() throws Exception {
				pstmt = con.prepareStatement(sql.toString());
				
				pstmt.setString(1, title);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					BookVo vo = new BookVo(); 
					vo.setIndex(rs.getInt(1));
					vo.setRfid(rs.getInt(2));
					vo.setTitle(rs.getString(3));
					vo.setWriter(rs.getString(4));
					vo.setPublisher(rs.getString(5));
					vo.setContent(rs.getString(6));
					vo.setImg(rs.getString(7));
					vo.setBorrowed_member_index(rs.getInt(8));
					vo.setDue_date(rs.getString(9));
					list.add(vo);
				}
			}
		}.execute();
		return list;
	}
	
	public int getLastPageNumber() {
		sql = new StringBuffer();
		sql.append("SELECT count(*) FROM ");
		sql.append("book");
		
		new AbstractDao() {
			@Override
			public void query() throws Exception {
				pstmt = con.prepareStatement(sql.toString());
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					count = rs.getInt(1);
				}
			}
		}.execute();
		SingletonSetting ssi = SingletonSetting.getInstance();
		int pageSize = ssi.getPageSize();

		return (count/pageSize) + 1;
	}
	
	public int getCount() {
		sql = new StringBuffer();
		sql.append("SELECT count(*) FROM ");
		sql.append("book");
		
		new AbstractDao() {
			@Override
			public void query() throws Exception {
				pstmt = con.prepareStatement(sql.toString());
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					count = rs.getInt(1);
				}
			}
		}.execute();

		return count;
	}
	
	public int getUsedCount() {
		sql = new StringBuffer();
		sql.append("SELECT count(*) FROM ");
		sql.append("book WHERE borrowed_member_index <> 0");
		
		new AbstractDao() {
			@Override
			public void query() throws Exception {
				pstmt = con.prepareStatement(sql.toString());
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					count = rs.getInt(1);
				}
			}
		}.execute();

		return count;
	}
}
