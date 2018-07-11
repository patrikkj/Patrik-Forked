import java.io.*;
public class Encryptor{
	public static String encrypt(int num,int length){		// ecrypts num into length characters
		String str="";
		int n1,n2,n3,n4,r1,r2,r3,r4;
		n4=num/74805201;	r4=num%74805201;
		n3=r4/804357;		r3=r4%804357;
		n2=r3/8649;			r2=r3%8649;
		n1=r2/93;			r1=r2%93;
		str+=(char)(33+n4)+""+(char)(33+n3)+""+(char)(33+n2)+""+(char)(33+n1)+""+
			(char)(33+r1);
		str=str.substring(5-length,5);
		return str;
	}
	public static int decrypt(String str,int length){		// decrypts str of length characters
		if(length==5)
			return (int)(str.charAt(0)-33)*74805201+(int)(str.charAt(1)-33)*804357+
				(int)(str.charAt(2)-33)*8649+(int)(str.charAt(3)-33)*93+(int)(str.charAt(4)-33);
		if(length==4)
			return (int)(str.charAt(0)-33)*804357+(int)(str.charAt(1)-33)*8649+(int)(str.charAt(2)-33)*93+
				(int)(str.charAt(3)-161);
		if(length==3)
			return (int)(str.charAt(0)-33)*8649+(int)(str.charAt(1)-33)*93+(int)(str.charAt(2)-33);
		if(length==2)
			return (int)(str.charAt(0)-33)*93+(int)(str.charAt(1)-33);
		return (int)(str.charAt(0)-33);
	}
	public static String encryptBool(int num[]){			// encrypts 7 bools into 2 characters
		int prod=num[0]*1+num[1]*2+num[2]*4+num[3]*8+num[4]*16+num[5]*32+num[6]*64;
		return encrypt(prod,2);
	}
	public static void decryptBool(String str,int num[]){	// decrypts str into 7 bools
		int dec=decrypt(str,2);
		int rem[]=new int[7];
		num[6]=dec/64;		rem[6]=dec%64;
		num[5]=rem[6]/32;	rem[5]=rem[6]%32;
		num[4]=rem[5]/16;	rem[4]=rem[5]%16;
		num[3]=rem[4]/8;	rem[3]=rem[4]%8;
		num[2]=rem[3]/4;	rem[2]=rem[3]%4;	
		num[1]=rem[2]/2;	rem[1]=rem[2]%2;
		num[0]=rem[1]/1;	
	}
}