package com.web.insideframe.memberdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Statement;
import com.web.insideframe.common.DBConnection;
import com.web.insideframe.memberdto.MemberDTO;

public class MemberDAO {
	private DBConnection connection;
	
	private Connection conn;
	private PreparedStatement ps;
	private Statement st;
	private ResultSet rs;
	
	private String sql ="";
	
	public void setConnection(DBConnection connection){
		this.connection = connection;
	}
	
	public void insert(MemberDTO mdto){
		try {
			conn = connection.getConnetion();
			sql = "insert into member(email,pw,name,mtype) values(?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, mdto.getEmail());
			ps.setString(2, mdto.getPw());
			ps.setString(3, mdto.getName());
			ps.setString(4, mdto.getmType());

			ps.executeUpdate();
			
			ps.close();
			conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public MemberDTO select(String email){
		MemberDTO mdto = null;
		try {
			conn = connection.getConnetion();
			sql = "select * from member where email = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, email);

			rs = ps.executeQuery();
			
			if(rs.next()){
				mdto = new MemberDTO();
				mdto.setEmail(rs.getString("email"));
				mdto.setName(rs.getString("name"));
				mdto.setmType(rs.getString("mtype"));
				mdto.setImage(rs.getString("image"));
				mdto.setBirth(rs.getString("birth"));
				mdto.setHeight(rs.getInt("height"));
				mdto.setWeight(rs.getInt("weight"));
				mdto.setPhone(rs.getString("phone"));
				mdto.setSex(rs.getString("sex"));
			}
			rs.close();
			ps.close();
			conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return mdto;
	}
	public List selectMembers(MemberDTO mdto){
		//MemberDTO mdto = null;
		List mList = new ArrayList();
		List mList2 = new ArrayList();
		
		return mList;
	}
	//��� ��ü �˻�
	public ArrayList<MemberDTO> selectAllActor(){
		ArrayList<MemberDTO> mList = new ArrayList<>();
		try {
			conn = connection.getConnetion();
			sql = "select * from member where mtype = '���'";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()){
				MemberDTO mdto = new MemberDTO();
				mdto.setEmail(rs.getString("email"));
				mdto.setPw(rs.getString("pw"));
				mdto.setName(rs.getString("name"));
				mdto.setmType(rs.getString("mtype"));
				mdto.setImage(rs.getString("image"));
				mdto.setBirth(rs.getString("birth"));
				mdto.setHeight(rs.getInt("height"));
				mdto.setWeight(rs.getInt("weight"));
				mdto.setPhone(rs.getString("phone"));
				mdto.setSex(rs.getString("sex"));
				
				mList.add(mdto);
			}
			
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return mList;
	}
	
	//���� ��ü �˻�
	public ArrayList<MemberDTO> selectAllDirector(){
		ArrayList<MemberDTO> mList = new ArrayList<>();
		try {
			conn = connection.getConnetion();
			sql = "select * from member where mtype = '����'";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()){
				MemberDTO mdto = new MemberDTO();
				mdto.setEmail(rs.getString("email"));
				mdto.setPw(rs.getString("pw"));
				mdto.setName(rs.getString("name"));
				mdto.setmType(rs.getString("mtype"));
				mdto.setImage(rs.getString("image"));
				mdto.setBirth(rs.getString("birth"));
				mdto.setHeight(rs.getInt("height"));
				mdto.setWeight(rs.getInt("weight"));
				mdto.setPhone(rs.getString("phone"));
				mdto.setSex(rs.getString("sex"));
				
				mList.add(mdto);
			}
			
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return mList;
	}
	
	//���� �̸��� �˻�
	public ArrayList<MemberDTO> selectConditionDirectorAsName(String name){
		ArrayList<MemberDTO> mList = new ArrayList<>();
		try {
			conn = connection.getConnetion();
			sql = "select * from member where name like '%"+name+"%' and mtype='����'";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()){
				MemberDTO mdto = new MemberDTO();
				mdto.setEmail(rs.getString("email"));
				mdto.setPw(rs.getString("pw"));
				mdto.setName(rs.getString("name"));
				mdto.setmType(rs.getString("mtype"));
				mdto.setImage(rs.getString("image"));
				mdto.setBirth(rs.getString("birth"));
				mdto.setHeight(rs.getInt("height"));
				mdto.setWeight(rs.getInt("weight"));
				mdto.setPhone(rs.getString("phone"));
				mdto.setSex(rs.getString("sex"));
				
				mList.add(mdto);
			}
			
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return mList;
	}
	
	//���� ��ǰ�� �˻�
		public ArrayList<MemberDTO> selectConditionDirectorAsTitle(String title){
			ArrayList<MemberDTO> mList = new ArrayList<>();
			try {
				System.out.println("title="+title);
				conn = connection.getConnetion();
				sql = "select * from member where email in (select distinct email from career where title like '%" + title + "%' and roll='����')";
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				
				while(rs.next()){
					MemberDTO mdto = new MemberDTO();
					mdto.setEmail(rs.getString("email"));
					mdto.setPw(rs.getString("pw"));
					mdto.setName(rs.getString("name"));
					mdto.setmType(rs.getString("mtype"));
					mdto.setImage(rs.getString("image"));
					mdto.setBirth(rs.getString("birth"));
					mdto.setHeight(rs.getInt("height"));
					mdto.setWeight(rs.getInt("weight"));
					mdto.setPhone(rs.getString("phone"));
					mdto.setSex(rs.getString("sex"));
					
					mList.add(mdto);
				}
				
				rs.close();
				ps.close();
				conn.close();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			return mList;
		}
	
	public void delete(String email){
		MemberDTO mdto = null;
		
		try {
			conn = connection.getConnetion();
			sql = "delete from member where email = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, email);

			ps.executeUpdate();
			
			conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	public void deleteAll(){
		try {
			conn = connection.getConnetion();
			sql = "delete from member";
			ps = conn.prepareStatement(sql);
			
			ps.executeUpdate();
			
			ps.close();
			conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
	}
	
	
}

