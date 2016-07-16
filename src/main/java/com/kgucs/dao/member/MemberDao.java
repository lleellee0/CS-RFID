package com.kgucs.dao.member;

import com.kgucs.dao.AbstractDao;

public class MemberDao {
	final StringBuffer sql = new StringBuffer();
	final MemberVo mv = new MemberVo();
	
	public void insert(final MemberVo vo) throws Exception {
		sql.append("INSERT INTO member ");
		sql.append("(id, password, std_number, name, member_level) ");
		sql.append("VALUES (?,password(?),?,?,?)");
		
		new AbstractDao() {
			@Override
			public void query() throws Exception {
				pstmt = con.prepareStatement(sql.toString());
				pstmt.setString(1, vo.getId());
				pstmt.setString(2, vo.getPassword());
				pstmt.setString(3, vo.getStd_number());
				pstmt.setString(4, vo.getName());
				pstmt.setInt(5, vo.getMember_level());
				
				pstmt.executeUpdate();
			}
		}.execute();
	}
	
	public MemberVo selectByIdAndPassword(final String id, final String password) {
		/*
		 * 파라미터에 final이 붙는 이유 http://devbible.tistory.com/30
		 */
		sql.append("SELECT * FROM ");
		sql.append("member WHERE ");
		sql.append("id=? AND password=password(?)");
		
		new AbstractDao() {
			@Override
			public void query() throws Exception {
				pstmt = con.prepareStatement(sql.toString());
				pstmt.setString(1, id);
				pstmt.setString(2, password);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					mv.setIndex(rs.getInt(1));
					mv.setId(rs.getString(2));
					mv.setPassword(rs.getString(3));
					mv.setStd_number(rs.getString(4));
					mv.setName(rs.getString(5));
					mv.setMember_level(rs.getInt(6));
				}
			}
		}.execute();
		return mv;
	}
}
