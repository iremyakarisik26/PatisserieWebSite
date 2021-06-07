package Class;
import java.util.*;
public class Kullanici {
	public Boolean ozelvarmi(String kullanici_sifre){
		Boolean b=true;
		String[] ozel= {"-","*","/","%","^","!","!","+","<",">"};
		int sayac=0;
		for(int i=0; i<kullanici_sifre.length();i++) {
			
			if(Arrays.asList(ozel).contains(String.valueOf(kullanici_sifre.charAt(i)))) {
				sayac++;
			}
		}
		if(sayac<3) {
			b=false;
		}
		return b;
		
	}

}
// aslist liste gibi iþlem yaptýrýyor. ozel dizisine