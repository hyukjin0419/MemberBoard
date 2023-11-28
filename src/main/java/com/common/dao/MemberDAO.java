package com.common.dao;

import com.common.bean.MemberVO;
import com.common.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    private final String M_INSERT = "insert into member (userid, username, photo, email, detail) values (?,?,?,?,?)";
    private final String M_UPDATE = "update member set userid=?, username=?, email=?, photo=?, detail=? where sid=?";
    private final String M_DELETE = "delete from member where sid=?";
    private final String M_GET = "select * from member  where sid=?";
    private final String M_LIST = "select * from member order by regdate desc";

    public int insertMember(MemberVO data){
        System.out.println("===> JDBC로 insertMember() 기능 처리");
        int result = 0;
        conn = JDBCUtil.getConnection();
        try{
            stmt = conn.prepareStatement(M_INSERT);
            stmt.setString(1, data.getUserid());
            stmt.setString(2, data.getUsername());
            stmt.setString(3, data.getPhoto());
            stmt.setString(4, data.getEmail());
            stmt.setString(5, data.getDetail());
            result = stmt.executeUpdate();
        } catch (SQLException e){
            e.printStackTrace();
        }
        return result;
    }

    public void deleteMember(MemberVO data){
        System.out.println("===> JDBC로 deleteMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(M_DELETE);
            stmt.setInt(1, data.getSid());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void deleteMember(int data){
        System.out.println("===> JDBC로 deleteMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(M_DELETE);
            stmt.setInt(1, data);
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int updateMember(MemberVO data) {
        System.out.println("===> JDBC로 updateMember() 기능 처리");
        try{
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(M_UPDATE);
            stmt.setString(1, data.getUserid());
            stmt.setString(2, data.getUsername());
            stmt.setString(3, data.getEmail());
            stmt.setString(4, data.getPhoto());
            stmt.setString(5, data.getDetail());
            stmt.setInt(6, data.getSid());

            System.out.println(data.getUsername() + "-" + data.getEmail() + "-" + data.getPhoto() + "-" + data.getDetail() + "-" + data.getSid());
            stmt.executeUpdate();
            return 1;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public MemberVO getOne(int sid) {
        MemberVO one = new MemberVO();
        System.out.println("===> JDBC로 getMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(M_GET);
            stmt.setInt(1, sid);
            rs = stmt.executeQuery();
            if(rs.next()) {
                one.setSid(rs.getInt("sid"));
                one.setUserid((rs.getString("userid")));
                one.setUsername((rs.getString("username")));
                one.setEmail((rs.getString("email")));
                one.setPhoto((rs.getString("photo")));
                one.setDetail((rs.getString("detail")));
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return one;
    }

    public ArrayList<MemberVO> getMemberList() {
        ArrayList<MemberVO> list = null;
        conn = JDBCUtil.getConnection();
        try{
            stmt = conn.prepareStatement(M_LIST);
            rs = stmt.executeQuery();
            list = new ArrayList<MemberVO>();
            MemberVO one = new MemberVO();
            while(rs.next()) {
                one = new MemberVO();
                one.setSid(rs.getInt("sid"));
                one.setUserid((rs.getString("userid")));
                one.setUsername((rs.getString("username")));
                one.setEmail((rs.getString("email")));
                one.setRegdate((rs.getDate("regdate")));
                list.add(one);
            }
            rs.close();
        } catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    }

    public String getPhotoFilename(int sid) {
        String filename = null;
        try{
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(M_GET);
            stmt.setInt(1,sid);
            rs = stmt.executeQuery();
            if(rs.next()) {
                filename = rs.getString("photo");
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("===> JDBC로 getPhotoFilename() 기능 처리");
        return filename;
    }
}




























