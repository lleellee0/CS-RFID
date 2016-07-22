package com.kgucs.dao.actionlog;

import java.util.ArrayList;
import java.util.List;

import com.kgucs.dao.AbstractDao;
import com.kgucs.dao.book.BookVo;

public class ActionLogDao {
	StringBuffer sql = null;
	final ActionLogVo mv = new ActionLogVo();
	final List<ActionLogVo> list = new ArrayList<ActionLogVo>();
	final List<BookVo> bookList = new ArrayList<BookVo>();
	int count = 0;
	
	public void insert(final ActionLogVo vo) {
		sql = new StringBuffer();
		sql.append("INSERT INTO action_log ");
		sql.append("(type, type_index, action, member_index) ");
		sql.append("VALUES (?, ?, ?, ?)");
		
		new AbstractDao() {
			@Override
			public void query() throws Exception {
				pstmt = con.prepareStatement(sql.toString());
				pstmt.setString(1, vo.getType());
				pstmt.setInt(2, vo.getType_index());
				pstmt.setString(3, vo.getAction());
				pstmt.setInt(4, vo.getMember_index());	
				pstmt.executeUpdate();
			}
		}.execute();
	}
	
	public ActionLogVo selectByIndex(final int index) {
		sql = new StringBuffer();
		sql.append("SELECT * FROM ");
		sql.append("action_log WHERE ");
		sql.append("`index`=?");
		
		new AbstractDao() {
			@Override
			public void query() throws Exception {
				pstmt = con.prepareStatement(sql.toString());
				pstmt.setInt(1, index);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					mv.setIndex(rs.getInt(1));
					mv.setType(rs.getString(2));
					mv.setType_index(rs.getInt(3));
					mv.setAction(rs.getString(4));
					mv.setMember_index(rs.getInt(5));
					mv.setAction_date(rs.getString(6));
				}
			}
		}.execute();
		return mv;
	}
	
	public ActionLogVo selectByRfid(final int rfid) {
		/*
		 * 파라미터에 final이 붙는 이유 http://devbible.tistory.com/30
		 */
		sql = new StringBuffer();
		sql.append("SELECT * FROM ");
		sql.append("action_log WHERE ");
		sql.append("rfid=?");
		
		new AbstractDao() {
			@Override
			public void query() throws Exception {
				pstmt = con.prepareStatement(sql.toString());
				pstmt.setInt(1, rfid);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					mv.setIndex(rs.getInt(1));
					mv.setType(rs.getString(2));
					mv.setType_index(rs.getInt(3));
					mv.setAction(rs.getString(4));
					mv.setMember_index(rs.getInt(5));
					mv.setAction_date(rs.getString(6));
				}
			}
		}.execute();
		return mv;
	}
	
	public List<ActionLogVo> selectAllActions() {
		/*
		 * 사용된 쿼리
		 * SELECT action_log.index, action_log.type, CASE WHEN action_log.type = 'book' THEN book.title
	WHEN action_log.type = 'equipment' THEN equipment.title
	END AS title, action_log.action, member.std_number, member.name, action_log.action_date
	FROM action_log
	LEFT JOIN book ON book.index = action_log.type_index
	LEFT JOIN equipment ON equipment.index = action_log.type_index
	LEFT JOIN member ON action_log.member_index = member.index
	ORDER BY action_log.index DESC;
		 */
		
		sql = new StringBuffer();
		sql.append(" SELECT action_log.index, action_log.type, CASE WHEN action_log.type = 'book' THEN book.title ");
		sql.append(" WHEN action_log.type = 'equipment' THEN equipment.title ");
		sql.append(" END AS title, action_log.action, member.std_number, member.name, action_log.action_date ");
		sql.append(" FROM action_log ");
		sql.append(" LEFT JOIN book ON book.index = action_log.type_index ");
		sql.append(" LEFT JOIN equipment ON equipment.index = action_log.type_index ");
		sql.append(" LEFT JOIN member ON action_log.member_index = member.index ");
		sql.append(" ORDER BY action_log.index DESC ");
		
		new AbstractDao() {
			@Override
			public void query() throws Exception {
				pstmt = con.prepareStatement(sql.toString());
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					ActionLogVo vo = new ActionLogVo(); 
					vo.setIndex(rs.getInt(1));
					vo.setType(rs.getString(2));
					vo.setTitle(rs.getString(3));
					vo.setAction(rs.getString(4));
					vo.setStd_number(rs.getString(5));
					vo.setName(rs.getString(6));
					
					// datetime 뒤에 .0이 붙는 것 제거
					String actionDate = rs.getString(7);
					vo.setAction_date(actionDate.substring(0, actionDate.indexOf('.')));
					
					list.add(vo);
				}
			}
		}.execute();
		return list;
	}
	
	public List<BookVo> selectTopThreeBooks() {
		sql = new StringBuffer();
		
		/*
		 *  사용된 쿼리 
		 *	SELECT result2.* FROM 
		 *	(SELECT type_index, count(*) as count FROM action_log WHERE type='book' GROUP BY type_index ORDER BY count(*) DESC LIMIT 3) 
		 *	result1 
		 *	LEFT JOIN 
		 *	(SELECT * FROM book) result2 
		 *	ON result1.type_index = result2.index GROUP BY result1.type_index ORDER BY count DESC;
		 */
		
		sql.append("SELECT result2.* FROM ");
		sql.append("(SELECT type_index, count(*) as count FROM action_log ");
		sql.append("WHERE type='book' GROUP BY type_index ORDER BY count(*) DESC LIMIT 3) ");
		sql.append("result1 LEFT JOIN (SELECT * FROM book) result2 ON result1.type_index = result2.index ");
		sql.append("GROUP BY result1.type_index ORDER BY count DESC");
		
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

					bookList.add(vo);
				}
			}
		}.execute();
		return bookList;
	}
	
	/*
	public List<ActionLogVo> selectByPage(final int page) {
		sql = new StringBuffer();
		sql.append("SELECT * FROM ");
		sql.append("action_log LIMIT ");
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
					ActionLogVo vo = new ActionLogVo(); 
					vo.setIndex(rs.getInt(1));
					vo.setType(rs.getString(2));
					vo.setType_index(rs.getInt(3));
					vo.setAction(rs.getString(4));
					vo.setMember_index(rs.getInt(5));
					vo.setAction_date(rs.getString(6));
					list.add(vo);
				}
			}
		}.execute();
		return list;
	}
	*/
}
