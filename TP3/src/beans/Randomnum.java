package beans;

public class Randomnum {

	private double somme;
	
	
	



	public double getSomme() {
		return somme;
	}






	public void setSomme(double somme) {
		this.somme = somme;
	}






	public void calcule(int nombre){
		 somme= Math.random() * nombre;
	}
}
