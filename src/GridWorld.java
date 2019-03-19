import java.awt.Color;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class GridWorld {
	public static void main(String[] args) {
		World g = new World();
		int w = 0;
		int o = 0;
		for (int j = 0; j < 10; j++) {
		for (int i = 0; i < 10; i++) {
			Flower f = new Flower();
			Location d = new Location(i,j);
			g.add(d, f);
		}
		}
		
		
		g.show();
		
	}
}
