public with sharing class Human {
    public String firstName;
    public String lastName;
    public String email;
    public String genderSex;
    public String iSomker;
    public Integer age;
    public Boolean isSuperHuman=False;
    
    
    
public Human(String lastNameProvided , String emailProvided, Integer ageProvided, String genderSexprovided)
{
 this.lastName=lastNameProvided;
 this.email=emailProvided;
 this.genderSex=genderSexprovided;
 this.age=ageProvided;
}

}
