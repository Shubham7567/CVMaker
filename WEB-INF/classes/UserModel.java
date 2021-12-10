import java.sql.Date;

public class UserModel{
    private int UserID;
    private String Name;
    private String Email;
    private String Password;
    private Date CreatedDate;
    private int CreatedBy;
    private Date ModifiedOn;
    private int ModifiedBy;

    public int getUserID(){
        return this.UserID;
    }
    public void setUserID(int UserID){
        this.UserID = UserID;
    }

    public String getName(){
        return this.Name;
    }
    public void setName(String Name){
        this.Name = Name;
    }

    public String getEmail(){
        return this.Email;
    }
    public void setEmail(String Email){
        this.Email = Email;
    }

    public String getPassword(){
        return this.Password;
    }
    public void setPassword(String Password){
        this.Password = Password;
    }
    
    public Date getCreatedOn(){
        return this.CreatedDate;
    }
    public void setCreatedDate(Date CreatedDate){
        this.CreatedDate = CreatedDate;
    }

    public int getCreatedBy(){
        return this.CreatedBy;
    }
    public void setCreatedBy(int CreatedBy){
        this.CreatedBy = CreatedBy;
    }

    public int getModifiedBy(){
        return this.ModifiedBy;
    }
    public void setModifiedBy(int ModifiedBy){
        this.ModifiedBy = ModifiedBy;
    }

    public Date getModifiedOn()
    {
        return this.ModifiedOn;
    }
    public void setModifiedOn(Date ModifiedOn)
    {
        this.ModifiedOn = ModifiedOn;
    }
}