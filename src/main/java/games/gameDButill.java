package games;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class gameDButill {

    private static boolean custo;
    private static Connection conn = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    /***
     * 
     * @param name
     * @param discription
     * @param uploadPath
     * @param link
     * @return
     */
    public static boolean gameInsert(String name, String discription, String uploadPath, String link) {

        boolean isSucces = false;

        try {

            conn = connection.getConnection();
            stmt = conn.createStatement();
            String sql = "INSERT INTO games(gameId,gameName,discription,gameImage,gameLink) VALUES(0,'" + name + "','"
                    + discription + "','" + uploadPath + "','" + link + "')";
            int dataInsert = stmt.executeUpdate(sql);

            if (dataInsert > 0) {

                isSucces = true;
            } else {
                isSucces = false;
            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return isSucces;

    }

//Read
    public static List<games> getgames() {

        ArrayList<games> games = new ArrayList<>();

        try {
            conn = connection.getConnection();
            stmt = conn.createStatement();
            String sql = "select * from games";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int Id = rs.getInt(1);
                String name = rs.getString(2);
                String discription = rs.getString(3);
                String image = rs.getString(4);
                String link = rs.getString(5);

                games game1 = new games(Id, name, discription, image, link);
                games.add(game1);

            }
        } catch (Exception e) {

            e.printStackTrace();
        }

        return games;

    }

    /**
     * 
     * @param id
     * @return
     */
    public static boolean deleteGame(String id) {

        int conID = Integer.parseInt(id);

        boolean isSucces = false;

        try {

            conn = connection.getConnection();
            stmt = conn.createStatement();
            String sql = "DELETE FROM games where gameId ='" + conID + "' ";
            int dataDelete = stmt.executeUpdate(sql);

            if (dataDelete > 0) {

                isSucces = true;
            } else {
                isSucces = false;
            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return isSucces;

    }

    public static boolean gameDataUpdate(String id, String name, String discription, String link) {

        int conID = Integer.parseInt(id);

        boolean isSucces = false;

        try {

            conn = connection.getConnection();
            stmt = conn.createStatement();
            String sql = "update games set gameName='" + name + "',discription='" + discription + "',gameLink='" + link
                    + "' WHERE gameId='" + conID + "'";
            int dataUpdate = stmt.executeUpdate(sql);

            if (dataUpdate > 0) {

                isSucces = true;
            } else {
                isSucces = false;
            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return isSucces;

    }

    public static List<games> gamePage() {

        ArrayList<games> games = new ArrayList<>();

        try {
            conn = connection.getConnection();
            stmt = conn.createStatement();
            String sql = "select * from games";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int Id = rs.getInt(1);
                String name = rs.getString(2);
                String discription = rs.getString(3);
                String path = rs.getString(4);
                String link = rs.getString(5);

                String image = "gameImages/" + path.substring(path.lastIndexOf("/") + 1);

                games game1 = new games(Id, name, discription, image, link);
                games.add(game1);

            }
        } catch (Exception e) {

            e.printStackTrace();
        }

        return games;

    }

}
