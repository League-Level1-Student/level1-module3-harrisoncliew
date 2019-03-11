
public class NetflixRunner {
	public static void main(String[] args) {
		NetflixQueue n = new NetflixQueue();
		Movie m = new Movie("Mission Impossible VII", 4);
		Movie q = new Movie("Documentary on Netflix", 1);
		Movie w = new Movie("Hulu is better: the Movie", 3);
		Movie hmm = new Movie("Hulu is bad: the Movie", 2);
		Movie o = new Movie("Captain Marvel", 5);
		System.out.println(w.getTicketPrice());
		n.addMovie(o);
		n.addMovie(m);
		n.addMovie(hmm);
		n.addMovie(w);
		n.addMovie(q);
		n.printMovies();
		System.out.println("The best movie is " + n.getBestMovie() + ".");
		System.out.println("The second best movie is " + n.getMovie(1) + ".");
	}
}
