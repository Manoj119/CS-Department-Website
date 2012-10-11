package Helper;
import java.util.*;

public class SecureRandom {
	private static String randomAlphanumeric ( ) {
		return Long.toHexString(Double.doubleToLongBits(Math.random()));
	}
	public static void main(String[] args) {
		System.out.print("SecureRandom Generating .. ");
		System.out.print( SecureRandom.randomAlphanumeric());
	}
}