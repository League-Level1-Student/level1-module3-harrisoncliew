public class Athlete {

     static int nextBibNumber = 0;
     static String raceLocation = "New York";
     static String raceStartTime = "9.00am";

     String name;
     int speed;
     int bibNumber;

Athlete (String name, int speed){
     this.name = name;
     this.speed = speed;
     nextBibNumber++;
     this.bibNumber = nextBibNumber;
     
}

public static void main(String[] args) {
     //create two athletes      //print their names, bibNumbers, and the location of their race. 
	Athlete a1 = new Athlete("Mr.John", 10);
	Athlete a2 = new Athlete("Mr. John II", 100);
	System.out.println(a1.name);
	System.out.println(a1.bibNumber);
	System.out.println(a1.raceLocation);
	System.out.println(a2.name);
	System.out.println(a2.bibNumber);
	System.out.println(a2.raceLocation);
	Athlete.raceLocation = "Something";
}
}