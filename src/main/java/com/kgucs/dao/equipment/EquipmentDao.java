package com.kgucs.dao.equipment;

import java.util.ArrayList;
import java.util.List;

import com.kgucs.dao.AbstractDao;
import com.kgucs.setting.SingletonSetting;

public class EquipmentDao {
	StringBuffer sql = null;
	final EquipmentVo mv = new EquipmentVo();
	final List<EquipmentVo> list = new ArrayList<EquipmentVo>();
	int count = 0;
	
	public void insert(final EquipmentVo vo) throws Exception {
		sql = new StringBuffer();
		sql.append("INSERT INTO equipment ");
		sql.append("(rfid, title, content, img, borrowed_member_index) ");
		sql.append("VALUES (?, ?, ?, ?, ?)");
		
		new AbstractDao() {
			@Override
			public void query() throws Exception {
				pstmt = con.prepareStatement(sql.toString());
				pstmt.setInt(1, vo.getRfid());
				pstmt.setString(2, vo.getTitle());
				pstmt.setString(3, vo.getContent());
				pstmt.setString(4, vo.getImg());
				pstmt.setInt(5, vo.getBorrowed_member_index());
				
				pstmt.executeUpdate();
			}
		}.execute();
	}
	
	public EquipmentVo selectByIndex(final int index) {
		/*
		 * 파라미터에 final이 붙는 이유 http://devbible.tistory.com/30
		 */
		sql = new StringBuffer();
		sql.append("SELECT * FROM ");
		sql.append("equipment WHERE ");
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
					mv.setContent(rs.getString(4));
					mv.setImg(rs.getString(5));
					mv.setBorrowed_member_index(rs.getInt(6));
					mv.setDue_date(rs.getString(7));
				}
			}
		}.execute();
		return mv;
	}
	
	public List<EquipmentVo> selectByPage(final int page) {
		sql = new StringBuffer();
		sql.append("SELECT * FROM ");
		sql.append("equipment LIMIT ");
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
					EquipmentVo vo = new EquipmentVo(); 
					vo.setIndex(rs.getInt(1));
					vo.setRfid(rs.getInt(2));
					vo.setTitle(rs.getString(3));
					vo.setContent(rs.getString(4));
					vo.setImg(rs.getString(5));
					vo.setBorrowed_member_index(rs.getInt(6));
					vo.setDue_date(rs.getString(7));
					list.add(vo);
				}
			}
		}.execute();
		return list;
	}
	
	public int getLastPageNumber() {
		sql = new StringBuffer();
		sql.append("SELECT count(*) FROM ");
		sql.append("equipment");
		
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
}
