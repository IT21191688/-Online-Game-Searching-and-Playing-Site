package HRManager;

public class cvUpload {
    
    private int id;
    private String name;
    private String email;
    private String position;
    private String cvpath;
    private String action;
    
    public cvUpload(int id, String name, String email,String position, String cvpath, String action) {
        super();
        this.id = id;
        this.name = name;
        this.email = email;
        this.position = position;
        this.cvpath = cvpath;
        this.action = action;
    }
    
    public int getId() {
        return id;
    }
  
    public String getName() {
        return name;
    }
    
    public String getEmail() {
        return email;
    }
    public String getposition() {
        return position;
    }
   
    public String getCvpath() {
        return cvpath;
    }
    
    public String getAction() {
        return action;
    }

}
